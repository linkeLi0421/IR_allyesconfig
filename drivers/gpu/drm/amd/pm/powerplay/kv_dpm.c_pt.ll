; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/kv_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amd_pm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kv_pt_config_reg = type { i32, i32, i32, i32, i32 }
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
%struct.kv_power_info = type { [5 x i32], i32, %struct.kv_sys_info, %struct.kv_pl, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, [8 x %struct.SMU7_Fusion_GraphicsLevel], %struct.SMU7_Fusion_ACPILevel, [8 x %struct.SMU7_Fusion_UvdLevel], [8 x %struct.SMU7_Fusion_ExtClkLevel], [8 x %struct.SMU7_Fusion_ExtClkLevel], [8 x %struct.SMU7_Fusion_ExtClkLevel], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.amdgpu_ps, %struct.kv_ps, %struct.amdgpu_ps, %struct.kv_ps }
%struct.kv_sys_info = type { i32, i32, i32, i32, [4 x i32], [4 x i32], i16, i8, i8, %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_vid_mapping_table, i32 }
%struct.sumo_sclk_voltage_mapping_table = type { i32, [5 x %struct.sumo_sclk_voltage_mapping_entry] }
%struct.sumo_sclk_voltage_mapping_entry = type { i32, i16, i16 }
%struct.sumo_vid_mapping_table = type { i32, [4 x %struct.sumo_vid_mapping_entry] }
%struct.sumo_vid_mapping_entry = type { i16, i16 }
%struct.kv_pl = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.SMU7_Fusion_GraphicsLevel = type { i32, i32, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.SMU7_Fusion_ACPILevel = type { i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8] }
%struct.SMU7_Fusion_UvdLevel = type { i32, i32, i16, i8, i8, i8, i8, [2 x i8] }
%struct.SMU7_Fusion_ExtClkLevel = type { i32, i16, i8, i8, i32 }
%struct.amdgpu_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.kv_ps = type { [5 x %struct.kv_pl], i32, i8, i8, i8, i8, i8 }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, [19 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct._ATOM_CLK_VOLT_CAPABILITY, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i32, [4 x i32], [4 x i16], i16, i16, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%union._ATOM_TDP_CONFIG = type { %struct._ATOM_TDP_CONFIG_BITS }
%struct._ATOM_TDP_CONFIG_BITS = type { i32 }
%struct._ATOM_AVAILABLE_SCLK_LIST = type { i32, i16, i16 }
%struct._ATOM_CLK_VOLT_CAPABILITY = type { i32, i32 }
%struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x i8], [7 x %struct._EXT_DISPLAY_PATH], i8, i8, i8, i8, i8, [3 x i8] }
%struct._EXT_DISPLAY_PATH = type { i16, i16, i16, i8, i8, i16, %union.anon.113, i8, i16, i16 }
%union.anon.113 = type { i8 }
%struct.amdgpu_clock_voltage_dependency_entry = type { i32, i16 }
%struct.amdgpu_uvd_clock_voltage_dependency_entry = type { i32, i32, i16 }
%struct.amdgpu_vce_clock_voltage_dependency_entry = type { i32, i32, i16 }
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._StateArray = type { i8, [1 x %struct._ATOM_PPLIB_STATE_V2] }
%struct._ATOM_PPLIB_STATE_V2 = type { i8, i8, [1 x i8] }
%struct._NonClockInfoArray = type { i8, i8, [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO] }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ClockInfoArray = type { i8, i8, [1 x i8] }
%struct._ATOM_PPLIB_SUMO_CLOCK_INFO = type { i16, i8, i8, i16, i16, [2 x i32] }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }
%struct.atom_clock_dividers = type { i32, %union.anon.114, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32 }

@kv_dpm_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @kv_dpm_early_init, ptr @kv_dpm_late_init, ptr @kv_dpm_sw_init, ptr @kv_dpm_sw_fini, ptr null, ptr @kv_dpm_hw_init, ptr @kv_dpm_hw_fini, ptr null, ptr @kv_dpm_suspend, ptr @kv_dpm_resume, ptr @kv_dpm_is_idle, ptr @kv_dpm_wait_for_idle, ptr null, ptr null, ptr @kv_dpm_soft_reset, ptr null, ptr @kv_dpm_set_clockgating_state, ptr @kv_dpm_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kv_smu_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 3, i32 1, i32 0, i32 0, ptr @kv_dpm_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kv_dpm\00", [25 x i8] zeroinitializer }, align 32
@kv_dpm_funcs = internal constant { %struct.amd_pm_funcs, [80 x i8] } { %struct.amd_pm_funcs { ptr @kv_dpm_pre_set_power_state, ptr @kv_dpm_set_power_state, ptr @kv_dpm_post_set_power_state, ptr @kv_dpm_display_configuration_changed, ptr @kv_dpm_print_power_state, ptr null, ptr @kv_dpm_enable_bapm, ptr @kv_check_state_equal, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kv_dpm_force_performance_level, ptr null, ptr null, ptr null, ptr null, ptr @kv_dpm_read_sensor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kv_dpm_debugfs_print_current_performance_level, ptr null, ptr @amdgpu_get_vce_clock_state, ptr null, ptr null, ptr null, ptr @kv_set_powergating_by_smu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kv_dpm_get_sclk, ptr @kv_dpm_get_mclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu_kv_smc_bapm_enable failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kv_calculate_ds_divider failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kv_update_vce_dpm failed\0A\00", [38 x i8] zeroinitializer }, align 32
@kv_dpm_print_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kv_dpm_print_power_state\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c\00", [44 x i8] zeroinitializer }, align 32
@kv_dpm_print_power_state._entry_ptr = internal global ptr @kv_dpm_print_power_state._entry, section ".printk_index", align 4
@kv_dpm_print_power_state._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 2904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09\09power level %d    sclk: %u vddc: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@kv_dpm_print_power_state._entry_ptr.9 = internal global ptr @kv_dpm_print_power_state._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid dpm profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uvd    %sabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vce    %sabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"power level %d    sclk: %u vddc: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@kv_dpm_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @kv_dpm_set_interrupt_state, ptr @kv_dpm_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IH: thermal low to high\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IH: thermal high to low\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@amdgpu_dpm = external dso_local local_unnamed_addr global i32, align 4
@kv_dpm_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&adev->pm.dpm.thermal.work)\00", [50 x i8] zeroinitializer }, align 32
@kv_dpm_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 3027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016[drm] amdgpu: dpm initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kv_dpm_sw_init\00", [17 x i8] zeroinitializer }, align 32
@kv_dpm_sw_init._entry_ptr = internal global ptr @kv_dpm_sw_init._entry, section ".printk_index", align 4
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: dpm initialization failed\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_bapm = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported IGP table: %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"The htcTmpLmt should be larger than htcHystLmt.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kv_process_firmware_header failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kv_program_bootup_state failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kv_upload_dpm_settings failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kv_populate_uvd_table failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kv_populate_vce_table failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kv_populate_samu_table failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kv_populate_acp_table failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"kv_enable_auto_thermal_throttling failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"kv_enable_dpm_voltage_scaling failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kv_set_dpm_interval failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kv_set_dpm_boot_state failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kv_enable_ulv failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kv_enable_smc_cac failed\0A\00", [38 x i8] zeroinitializer }, align 32
@didt_config_kv = internal constant { [73 x %struct.kv_pt_config_reg], [364 x i8] } { [73 x %struct.kv_pt_config_reg] [%struct.kv_pt_config_reg { i32 16, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 16, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 16, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 16, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 17, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 17, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 17, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 17, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 18, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 18, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 18, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 18, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 2, i32 16383, i32 0, i32 4, i32 2 }, %struct.kv_pt_config_reg { i32 2, i32 67043328, i32 16, i32 128, i32 2 }, %struct.kv_pt_config_reg { i32 2, i32 2013265920, i32 27, i32 3, i32 2 }, %struct.kv_pt_config_reg { i32 1, i32 65535, i32 0, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 1, i32 -65536, i32 16, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 0, i32 1, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 48, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 48, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 48, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 48, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 49, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 49, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 49, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 49, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 50, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 50, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 50, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 50, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 34, i32 16383, i32 0, i32 4, i32 2 }, %struct.kv_pt_config_reg { i32 34, i32 67043328, i32 16, i32 128, i32 2 }, %struct.kv_pt_config_reg { i32 34, i32 2013265920, i32 27, i32 3, i32 2 }, %struct.kv_pt_config_reg { i32 33, i32 65535, i32 0, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 33, i32 -65536, i32 16, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 32, i32 1, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 80, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 80, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 80, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 80, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 81, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 81, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 81, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 81, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 82, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 82, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 82, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 82, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 66, i32 16383, i32 0, i32 4, i32 2 }, %struct.kv_pt_config_reg { i32 66, i32 67043328, i32 16, i32 128, i32 2 }, %struct.kv_pt_config_reg { i32 66, i32 2013265920, i32 27, i32 3, i32 2 }, %struct.kv_pt_config_reg { i32 65, i32 65535, i32 0, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 65, i32 -65536, i32 16, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 64, i32 1, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 112, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 112, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 112, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 112, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 113, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 113, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 113, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 113, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 114, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 114, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 114, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 114, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 98, i32 16383, i32 0, i32 4, i32 2 }, %struct.kv_pt_config_reg { i32 98, i32 67043328, i32 16, i32 128, i32 2 }, %struct.kv_pt_config_reg { i32 98, i32 2013265920, i32 27, i32 3, i32 2 }, %struct.kv_pt_config_reg { i32 97, i32 65535, i32 0, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 97, i32 -65536, i32 16, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 96, i32 1, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [364 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 230, i64 231]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"kv_dpm_ip_funcs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3328, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"kv_smu_ip_block\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3345, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3329, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"kv_dpm_funcs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3354, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1929, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1940, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1956, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2899, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2902, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2875, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2882, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2882, i32 59 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2882, i32 67 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2883, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2884, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"kv_dpm_irq_funcs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3371, i32 42 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3195, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3200, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3018, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3027, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 3034, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2572, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 2588, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1266, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1273, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1279, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1284, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1289, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1294, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1299, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1310, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1316, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1321, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1326, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1331, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1342, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [15 x i8] c"didt_config_kv\00", align 1
@___asan_gen_.191 = private constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 293, i32 38 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @kv_dpm_print_power_state._entry, ptr @kv_dpm_print_power_state._entry.7, ptr @kv_dpm_print_power_state._entry_ptr, ptr @kv_dpm_print_power_state._entry_ptr.9, ptr @kv_dpm_sw_init._entry, ptr @kv_dpm_sw_init._entry_ptr, ptr @kv_dpm_ip_funcs, ptr @kv_smu_ip_block, ptr @.str, ptr @kv_dpm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @kv_dpm_irq_funcs, ptr @.str.16, ptr @.str.17, ptr @kv_dpm_sw_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @didt_config_kv], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_smu_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_funcs to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_print_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_print_power_state._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @didt_config_kv to i32), i32 1460, i32 1824, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @kv_dpm_early_init(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @kv_dpm_funcs, ptr %pp_funcs, align 4
  %1 = ptrtoint ptr %powerplay to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %handle, ptr %powerplay, align 8
  %irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35, i32 11
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %irq.i, align 4
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35, i32 11, i32 2
  %3 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @kv_dpm_irq_funcs, ptr %funcs.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_late_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %acp_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %acp_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %acp_power_gated.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %if.end.kv_dpm_powergate_acp.exit_crit_edge, label %if.end.i

if.end.kv_dpm_powergate_acp.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_dpm_powergate_acp.exit

if.end.i:                                         ; preds = %if.end
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end10.i [
    i32 7, label %if.end.i.kv_dpm_powergate_acp.exit_crit_edge
    i32 9, label %if.end.i.kv_dpm_powergate_acp.exit_crit_edge8
  ]

if.end.i.kv_dpm_powergate_acp.exit_crit_edge8:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_dpm_powergate_acp.exit

if.end.i.kv_dpm_powergate_acp.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_dpm_powergate_acp.exit

if.end10.i:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %acp_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %acp_power_gated.i, align 2
  %call.i.i.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 345) #13
  %caps_acp_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 65
  %10 = ptrtoint ptr %caps_acp_pg.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %caps_acp_pg.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not.i = icmp eq i8 %11, 0
  br i1 %tobool17.not.i, label %if.end10.i.kv_dpm_powergate_acp.exit_crit_edge, label %cleanup.sink.split.i

if.end10.i.kv_dpm_powergate_acp.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_dpm_powergate_acp.exit

cleanup.sink.split.i:                             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i39.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 311) #13
  br label %kv_dpm_powergate_acp.exit

kv_dpm_powergate_acp.exit:                        ; preds = %cleanup.sink.split.i, %if.end10.i.kv_dpm_powergate_acp.exit_crit_edge, %if.end.i.kv_dpm_powergate_acp.exit_crit_edge, %if.end.i.kv_dpm_powergate_acp.exit_crit_edge8, %if.end.kv_dpm_powergate_acp.exit_crit_edge
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i, align 4
  %samu_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %samu_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %samu_power_gated.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.i4 = icmp eq i8 %15, 1
  br i1 %cmp.i4, label %kv_dpm_powergate_acp.exit.cleanup_crit_edge, label %if.end.i5

kv_dpm_powergate_acp.exit.cleanup_crit_edge:      ; preds = %kv_dpm_powergate_acp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i5:                                        ; preds = %kv_dpm_powergate_acp.exit
  %16 = ptrtoint ptr %samu_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %samu_power_gated.i, align 1
  %call.i.i.i6 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 343) #13
  %caps_samu_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %13, i32 0, i32 64
  %17 = ptrtoint ptr %caps_samu_pg.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %caps_samu_pg.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not.i = icmp eq i8 %18, 0
  br i1 %tobool10.not.i, label %if.end.i5.cleanup_crit_edge, label %cleanup.sink.split.i7

if.end.i5.cleanup_crit_edge:                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split.i7:                            ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i32.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 313) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i7, %if.end.i5.cleanup_crit_edge, %kv_dpm_powergate_acp.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  %data_offset.i110.i = alloca i16, align 2
  %frev.i111.i = alloca i8, align 1
  %crev.i112.i = alloca i8, align 1
  %frev.i.i = alloca i8, align 1
  %crev.i.i = alloca i8, align 1
  %data_offset.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98
  %thermal = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35, i32 11
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 230, ptr noundef %irq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 231, ptr noundef %irq) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %state, align 4
  %user_state = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 10
  %1 = ptrtoint ptr %user_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %user_state, align 4
  %forced_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 36
  %2 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %forced_level, align 4
  %default_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 61, i32 4
  %3 = ptrtoint ptr %default_sclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %default_sclk, align 4
  %default_sclk16 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 3
  %5 = ptrtoint ptr %default_sclk16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %default_sclk16, align 4
  %default_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 61, i32 3
  %6 = ptrtoint ptr %default_mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_mclk, align 4
  %default_mclk19 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 4
  %8 = ptrtoint ptr %default_mclk19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %default_mclk19, align 8
  %current_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 1
  %9 = ptrtoint ptr %current_sclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %current_sclk, align 4
  %current_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 2
  %10 = ptrtoint ptr %current_mclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %current_mclk, align 8
  %int_thermal_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 7
  %11 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %int_thermal_type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_dpm to i32))
  %12 = load i32, ptr @amdgpu_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end8
  tail call void @__init_work(ptr noundef %thermal, i32 noundef 0) #13
  %13 = ptrtoint ptr %thermal to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %thermal, align 4
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @kv_dpm_sw_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry44 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35, i32 0, i32 1
  %14 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry44, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @amdgpu_dpm_thermal_work_handler, ptr %func, align 4
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 1124) #16
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %do.body.dpm_failed_crit_edge, label %if.end.i

do.body.dpm_failed_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %dpm_failed

if.end.i:                                         ; preds = %do.body
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %priv.i, align 4
  %call1.i = tail call i32 @amdgpu_get_platform_caps(ptr noundef %handle) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.dpm_failed_crit_edge

if.end.i.dpm_failed_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dpm_failed

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @amdgpu_parse_extended_power_table(ptr noundef %handle) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.body.preheader.i, label %if.end3.i.dpm_failed_crit_edge

if.end3.i.dpm_failed_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dpm_failed

for.body.preheader.i:                             ; preds = %if.end3.i
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 30, ptr %call7.i.i.i, align 8
  %arrayidx.1.i = getelementptr [5 x i32], ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 30, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr [5 x i32], ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 30, ptr %arrayidx.2.i, align 8
  %arrayidx.3.i = getelementptr [5 x i32], ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 30, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr [5 x i32], ptr %call7.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 30, ptr %arrayidx.4.i, align 8
  %sram_end.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 13
  %24 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 262144, ptr %sram_end.i, align 4
  %enable_nb_dpm.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 52
  %25 = ptrtoint ptr %enable_nb_dpm.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %enable_nb_dpm.i, align 8
  %caps_power_containment.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 54
  %26 = ptrtoint ptr %caps_power_containment.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %caps_power_containment.i, align 2
  %caps_cac.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 53
  %27 = ptrtoint ptr %caps_cac.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %caps_cac.i, align 1
  %enable_didt.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 49
  %28 = ptrtoint ptr %enable_didt.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %enable_didt.i, align 1
  %pp_feature.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 24
  %29 = ptrtoint ptr %pp_feature.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pp_feature.i, align 8
  %31 = trunc i32 %30 to i8
  %32 = lshr i8 %31, 3
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 68
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %34, align 8
  %enable_auto_thermal_throttling.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 51
  %36 = ptrtoint ptr %enable_auto_thermal_throttling.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %enable_auto_thermal_throttling.i, align 1
  %disable_nb_ps3_in_battery.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %disable_nb_ps3_in_battery.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %disable_nb_ps3_in_battery.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_bapm to i32))
  %38 = load i32, ptr @amdgpu_bapm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp18.i = icmp ne i32 %38, 0
  %.sink141.i = zext i1 %cmp18.i to i8
  %39 = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink141.i, ptr %39, align 1
  %voltage_drop_t.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %voltage_drop_t.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %voltage_drop_t.i, align 4
  %caps_sclk_throttle_low_notification.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 59
  %42 = ptrtoint ptr %caps_sclk_throttle_low_notification.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %caps_sclk_throttle_low_notification.i, align 1
  %caps_fps.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 60
  %43 = ptrtoint ptr %caps_fps.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %caps_fps.i, align 8
  %pg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 100
  %44 = ptrtoint ptr %pg_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pg_flags.i, align 4
  %caps_uvd_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 62
  %46 = trunc i32 %45 to i8
  %47 = lshr i8 %46, 3
  %48 = and i8 %47, 1
  %49 = ptrtoint ptr %caps_uvd_pg.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %caps_uvd_pg.i, align 2
  %caps_uvd_dpm.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 61
  %50 = ptrtoint ptr %caps_uvd_dpm.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %caps_uvd_dpm.i, align 1
  %caps_vce_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 63
  %51 = lshr i8 %46, 4
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %caps_vce_pg.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %caps_vce_pg.i, align 1
  %caps_samu_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 64
  %and33.i = lshr i32 %45, 10
  %54 = trunc i32 %and33.i to i8
  %55 = and i8 %54, 1
  %56 = ptrtoint ptr %caps_samu_pg.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %caps_samu_pg.i, align 4
  %caps_acp_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 65
  %and39.i = lshr i32 %45, 9
  %57 = trunc i32 %and39.i to i8
  %58 = and i8 %57, 1
  %59 = ptrtoint ptr %caps_acp_pg.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %caps_acp_pg.i, align 1
  %caps_stable_p_state.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 66
  %60 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %caps_stable_p_state.i, align 2
  %61 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv.i, align 4
  %mode_info1.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i.i) #13
  %63 = ptrtoint ptr %frev.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %frev.i.i, align 1, !annotation !100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i.i) #13
  %64 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %crev.i.i, align 1, !annotation !100
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i.i) #13
  %65 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %data_offset.i.i, align 2, !annotation !100
  %66 = ptrtoint ptr %mode_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mode_info1.i.i, align 4
  %call2.i.i = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %67, i32 noundef 30, ptr noundef null, ptr noundef nonnull %frev.i.i, ptr noundef nonnull %crev.i.i, ptr noundef nonnull %data_offset.i.i) #13
  br i1 %call2.i.i, label %if.then.i.i, label %for.body.preheader.i.if.end47.i_crit_edge

for.body.preheader.i.if.end47.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

if.then.i.i:                                      ; preds = %for.body.preheader.i
  %68 = ptrtoint ptr %mode_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mode_info1.i.i, align 4
  %bios.i.i = getelementptr inbounds %struct.atom_context, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %bios.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bios.i.i, align 4
  %72 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %data_offset.i.i, align 2
  %conv.i.i = zext i16 %73 to i32
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 %conv.i.i
  %74 = ptrtoint ptr %crev.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %crev.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %75)
  %cmp.not.i.i = icmp eq i8 %75, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %kv_parse_sys_info_table.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %ulBootUpEngineClock.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %ulBootUpEngineClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %ulBootUpEngineClock.i.i, align 1
  %78 = call i32 @llvm.bswap.i32(i32 %77) #13
  %sys_info.i.i = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 2
  %bootup_sclk.i.i = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %bootup_sclk.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %bootup_sclk.i.i, align 4
  %ulBootUpUMAClock.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %ulBootUpUMAClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %ulBootUpUMAClock.i.i, align 1
  %82 = call i32 @llvm.bswap.i32(i32 %81) #13
  %83 = ptrtoint ptr %sys_info.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %sys_info.i.i, align 4
  %usBootUpNBVoltage.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 58
  %84 = ptrtoint ptr %usBootUpNBVoltage.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %usBootUpNBVoltage.i.i, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85) #13
  %bootup_nb_voltage_index.i.i = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 6
  %87 = ptrtoint ptr %bootup_nb_voltage_index.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %bootup_nb_voltage_index.i.i, align 4
  %ucHtcTmpLmt.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 10
  %88 = ptrtoint ptr %ucHtcTmpLmt.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ucHtcTmpLmt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp12.i.i = icmp eq i8 %89, 0
  %spec.select.i.i = select i1 %cmp12.i.i, i8 -53, i8 %89
  %90 = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 7
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %spec.select.i.i, ptr %90, align 2
  %ucHtcHystLmt.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 11
  %92 = ptrtoint ptr %ucHtcHystLmt.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ucHtcHystLmt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp21.i.i = icmp eq i8 %93, 0
  %.sink131.i.i = select i1 %cmp21.i.i, i8 5, i8 %93
  %94 = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %.sink131.i.i, ptr %94, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i.i, i8 %.sink131.i.i)
  %cmp36.not.i.i = icmp ugt i8 %spec.select.i.i, %.sink131.i.i
  br i1 %cmp36.not.i.i, label %if.end.i.i.if.end39.i.i_crit_edge, label %if.then38.i.i

if.end.i.i.if.end39.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i.i

if.then38.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #13
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then38.i.i, %if.end.i.i.if.end39.i.i_crit_edge
  %ulSystemConfig.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 13
  %96 = ptrtoint ptr %ulSystemConfig.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %ulSystemConfig.i.i, align 1
  %98 = lshr i32 %97, 27
  %.lobit.i.i = and i32 %98, 1
  %99 = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 3
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %.lobit.i.i, ptr %99, align 4
  %ulNbpStateMemclkFreq.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 54
  %ulNbpStateNClkFreq.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 56
  %101 = ptrtoint ptr %ulNbpStateMemclkFreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %ulNbpStateMemclkFreq.i.i, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102) #13
  %arrayidx49.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 4, i32 0
  %104 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx49.i.i, align 4
  %105 = ptrtoint ptr %ulNbpStateNClkFreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %ulNbpStateNClkFreq.i.i, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106) #13
  %arrayidx52.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 5, i32 0
  %108 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx52.i.i, align 4
  %arrayidx.1.i.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %arrayidx.1.i.i, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110) #13
  %arrayidx49.1.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 4, i32 1
  %112 = ptrtoint ptr %arrayidx49.1.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx49.1.i.i, align 4
  %arrayidx50.1.i.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx50.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %arrayidx50.1.i.i, align 1
  %115 = call i32 @llvm.bswap.i32(i32 %114) #13
  %arrayidx52.1.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 5, i32 1
  %116 = ptrtoint ptr %arrayidx52.1.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx52.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %arrayidx.2.i.i, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #13
  %arrayidx49.2.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 4, i32 2
  %120 = ptrtoint ptr %arrayidx49.2.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx49.2.i.i, align 4
  %arrayidx50.2.i.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %arrayidx50.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %arrayidx50.2.i.i, align 1
  %123 = call i32 @llvm.bswap.i32(i32 %122) #13
  %arrayidx52.2.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 5, i32 2
  %124 = ptrtoint ptr %arrayidx52.2.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx52.2.i.i, align 4
  %arrayidx.3.i.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i.i, i32 0, i32 3
  %125 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %arrayidx.3.i.i, align 1
  %127 = call i32 @llvm.bswap.i32(i32 %126) #13
  %arrayidx49.3.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 4, i32 3
  %128 = ptrtoint ptr %arrayidx49.3.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx49.3.i.i, align 4
  %arrayidx50.3.i.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i.i, i32 0, i32 3
  %129 = ptrtoint ptr %arrayidx50.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %arrayidx50.3.i.i, align 1
  %131 = call i32 @llvm.bswap.i32(i32 %130) #13
  %arrayidx52.3.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 5, i32 3
  %132 = ptrtoint ptr %arrayidx52.3.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx52.3.i.i, align 4
  %ulGPUCapInfo.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 7
  %133 = ptrtoint ptr %ulGPUCapInfo.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %ulGPUCapInfo.i.i, align 1
  %135 = and i32 %134, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool54.not.i.i = icmp eq i32 %135, 0
  br i1 %tobool54.not.i.i, label %if.end39.i.i.if.end56.i.i_crit_edge, label %if.then55.i.i

if.end39.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i.i

if.then55.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %caps_enable_dfs_bypass.i.i = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 67
  %136 = ptrtoint ptr %caps_enable_dfs_bypass.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %caps_enable_dfs_bypass.i.i, align 1
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then55.i.i, %if.end39.i.i.if.end56.i.i_crit_edge
  %sclk_voltage_mapping_table.i.i = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9
  %sAvail_SCLK.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i.i, i32 0, i32 24
  %137 = ptrtoint ptr %sAvail_SCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %sAvail_SCLK.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp1.not.i.i.i = icmp eq i32 %138, 0
  br i1 %cmp1.not.i.i.i, label %if.end56.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

if.end56.i.i.for.inc.i.i.i_crit_edge:             ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1
  %139 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx4.i.i.i, align 4
  %usVoltageIndex.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %usVoltageIndex.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %usVoltageIndex.i.i.i, align 1
  %vid_2bit.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 0, i32 1
  %142 = ptrtoint ptr %vid_2bit.i.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %vid_2bit.i.i.i, align 4
  %143 = ptrtoint ptr %sAvail_SCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %sAvail_SCLK.i.i, align 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %if.end56.i.i.for.inc.i.i.i_crit_edge
  %n.1.i.i.i = phi i32 [ 1, %if.then.i.i.i ], [ 0, %if.end56.i.i.for.inc.i.i.i_crit_edge ]
  %prev_sclk.1.i.i.i = phi i32 [ %144, %if.then.i.i.i ], [ 0, %if.end56.i.i.for.inc.i.i.i_crit_edge ]
  %arrayidx.1.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 1
  %145 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %arrayidx.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %prev_sclk.1.i.i.i)
  %cmp1.1.i.i.i = icmp ugt i32 %146, %prev_sclk.1.i.i.i
  br i1 %cmp1.1.i.i.i, label %if.then.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 %n.1.i.i.i
  %147 = ptrtoint ptr %arrayidx4.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx4.1.i.i.i, align 4
  %usVoltageIndex.1.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 1, i32 1
  %148 = ptrtoint ptr %usVoltageIndex.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %usVoltageIndex.1.i.i.i, align 1
  %vid_2bit.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 %n.1.i.i.i, i32 1
  %150 = ptrtoint ptr %vid_2bit.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %vid_2bit.1.i.i.i, align 4
  %151 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %arrayidx.1.i.i.i, align 1
  %inc.1.i.i.i = add nuw nsw i32 %n.1.i.i.i, 1
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %n.1.1.i.i.i = phi i32 [ %inc.1.i.i.i, %if.then.1.i.i.i ], [ %n.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ]
  %prev_sclk.1.1.i.i.i = phi i32 [ %152, %if.then.1.i.i.i ], [ %prev_sclk.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ]
  %arrayidx.2.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 2
  %153 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %arrayidx.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %prev_sclk.1.1.i.i.i)
  %cmp1.2.i.i.i = icmp ugt i32 %154, %prev_sclk.1.1.i.i.i
  br i1 %cmp1.2.i.i.i, label %if.then.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i.i.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.2.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 %n.1.1.i.i.i
  %155 = ptrtoint ptr %arrayidx4.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx4.2.i.i.i, align 4
  %usVoltageIndex.2.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 2, i32 1
  %156 = ptrtoint ptr %usVoltageIndex.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %157 = load i16, ptr %usVoltageIndex.2.i.i.i, align 1
  %vid_2bit.2.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 %n.1.1.i.i.i, i32 1
  %158 = ptrtoint ptr %vid_2bit.2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %vid_2bit.2.i.i.i, align 4
  %159 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %arrayidx.2.i.i.i, align 1
  %inc.2.i.i.i = add nuw nsw i32 %n.1.1.i.i.i, 1
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.then.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %n.1.2.i.i.i = phi i32 [ %inc.2.i.i.i, %if.then.2.i.i.i ], [ %n.1.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ]
  %prev_sclk.1.2.i.i.i = phi i32 [ %160, %if.then.2.i.i.i ], [ %prev_sclk.1.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ]
  %arrayidx.3.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 3
  %161 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %arrayidx.3.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %prev_sclk.1.2.i.i.i)
  %cmp1.3.i.i.i = icmp ugt i32 %162, %prev_sclk.1.2.i.i.i
  br i1 %cmp1.3.i.i.i, label %if.then.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge

for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i.i.i

if.then.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.3.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 %n.1.2.i.i.i
  %163 = ptrtoint ptr %arrayidx4.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx4.3.i.i.i, align 4
  %usVoltageIndex.3.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 3, i32 1
  %164 = ptrtoint ptr %usVoltageIndex.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %usVoltageIndex.3.i.i.i, align 1
  %vid_2bit.3.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 %n.1.2.i.i.i, i32 1
  %166 = ptrtoint ptr %vid_2bit.3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %vid_2bit.3.i.i.i, align 4
  %167 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %arrayidx.3.i.i.i, align 1
  %inc.3.i.i.i = add nuw nsw i32 %n.1.2.i.i.i, 1
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.then.3.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge
  %n.1.3.i.i.i = phi i32 [ %inc.3.i.i.i, %if.then.3.i.i.i ], [ %n.1.2.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge ]
  %prev_sclk.1.3.i.i.i = phi i32 [ %168, %if.then.3.i.i.i ], [ %prev_sclk.1.2.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge ]
  %arrayidx.4.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 4
  %169 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %arrayidx.4.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %prev_sclk.1.3.i.i.i)
  %cmp1.4.i.i.i = icmp ugt i32 %170, %prev_sclk.1.3.i.i.i
  br i1 %cmp1.4.i.i.i, label %if.then.4.i.i.i, label %for.inc.3.i.i.i.sumo_construct_sclk_voltage_mapping_table.exit.i.i_crit_edge

for.inc.3.i.i.i.sumo_construct_sclk_voltage_mapping_table.exit.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sumo_construct_sclk_voltage_mapping_table.exit.i.i

if.then.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx4.4.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 %n.1.3.i.i.i
  %171 = ptrtoint ptr %arrayidx4.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %arrayidx4.4.i.i.i, align 4
  %usVoltageIndex.4.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 4, i32 1
  %172 = ptrtoint ptr %usVoltageIndex.4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 2)
  %173 = load i16, ptr %usVoltageIndex.4.i.i.i, align 1
  %vid_2bit.4.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 9, i32 1, i32 %n.1.3.i.i.i, i32 1
  %174 = ptrtoint ptr %vid_2bit.4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %vid_2bit.4.i.i.i, align 4
  %inc.4.i.i.i = add nuw nsw i32 %n.1.3.i.i.i, 1
  br label %sumo_construct_sclk_voltage_mapping_table.exit.i.i

sumo_construct_sclk_voltage_mapping_table.exit.i.i: ; preds = %if.then.4.i.i.i, %for.inc.3.i.i.i.sumo_construct_sclk_voltage_mapping_table.exit.i.i_crit_edge
  %n.1.4.i.i.i = phi i32 [ %inc.4.i.i.i, %if.then.4.i.i.i ], [ %n.1.3.i.i.i, %for.inc.3.i.i.i.sumo_construct_sclk_voltage_mapping_table.exit.i.i_crit_edge ]
  %175 = ptrtoint ptr %sclk_voltage_mapping_table.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %n.1.4.i.i.i, ptr %sclk_voltage_mapping_table.i.i, align 4
  %vid_mapping_table.i.i = getelementptr inbounds %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10
  %176 = ptrtoint ptr %sAvail_SCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %sAvail_SCLK.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp1.not.i107.i.i = icmp eq i32 %177, 0
  br i1 %cmp1.not.i107.i.i, label %sumo_construct_sclk_voltage_mapping_table.exit.i.i.for.inc.i111.i.i_crit_edge, label %if.then.i109.i.i

sumo_construct_sclk_voltage_mapping_table.exit.i.i.for.inc.i111.i.i_crit_edge: ; preds = %sumo_construct_sclk_voltage_mapping_table.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i111.i.i

if.then.i109.i.i:                                 ; preds = %sumo_construct_sclk_voltage_mapping_table.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %usVoltageID.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 0, i32 2
  %178 = ptrtoint ptr %usVoltageID.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %179 = load i16, ptr %usVoltageID.i.i.i, align 1
  %usVoltageIndex.i108.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 0, i32 1
  %180 = ptrtoint ptr %usVoltageIndex.i108.i.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 2)
  %181 = load i16, ptr %usVoltageIndex.i108.i.i, align 1
  %idxprom.i.i.i = zext i16 %181 to i32
  %vid_7bit.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom.i.i.i, i32 1
  %182 = ptrtoint ptr %vid_7bit.i.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %179, ptr %vid_7bit.i.i.i, align 2
  %183 = load i16, ptr %usVoltageIndex.i108.i.i, align 1
  %idxprom10.i.i.i = zext i16 %183 to i32
  %arrayidx11.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom10.i.i.i
  %184 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %arrayidx11.i.i.i, align 4
  br label %for.inc.i111.i.i

for.inc.i111.i.i:                                 ; preds = %if.then.i109.i.i, %sumo_construct_sclk_voltage_mapping_table.exit.i.i.for.inc.i111.i.i_crit_edge
  %185 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %arrayidx.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp1.not.1.i.i.i = icmp eq i32 %186, 0
  br i1 %cmp1.not.1.i.i.i, label %for.inc.i111.i.i.for.inc.1.i115.i.i_crit_edge, label %if.then.1.i113.i.i

for.inc.i111.i.i.for.inc.1.i115.i.i_crit_edge:    ; preds = %for.inc.i111.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i115.i.i

if.then.1.i113.i.i:                               ; preds = %for.inc.i111.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %usVoltageID.1.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 1, i32 2
  %187 = ptrtoint ptr %usVoltageID.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %187, i32 2)
  %188 = load i16, ptr %usVoltageID.1.i.i.i, align 1
  %usVoltageIndex.1.i112.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 1, i32 1
  %189 = ptrtoint ptr %usVoltageIndex.1.i112.i.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %usVoltageIndex.1.i112.i.i, align 1
  %idxprom.1.i.i.i = zext i16 %190 to i32
  %vid_7bit.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom.1.i.i.i, i32 1
  %191 = ptrtoint ptr %vid_7bit.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %188, ptr %vid_7bit.1.i.i.i, align 2
  %192 = load i16, ptr %usVoltageIndex.1.i112.i.i, align 1
  %idxprom10.1.i.i.i = zext i16 %192 to i32
  %arrayidx11.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom10.1.i.i.i
  %193 = ptrtoint ptr %arrayidx11.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %arrayidx11.1.i.i.i, align 4
  br label %for.inc.1.i115.i.i

for.inc.1.i115.i.i:                               ; preds = %if.then.1.i113.i.i, %for.inc.i111.i.i.for.inc.1.i115.i.i_crit_edge
  %194 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %arrayidx.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp1.not.2.i.i.i = icmp eq i32 %195, 0
  br i1 %cmp1.not.2.i.i.i, label %for.inc.1.i115.i.i.for.inc.2.i119.i.i_crit_edge, label %if.then.2.i117.i.i

for.inc.1.i115.i.i.for.inc.2.i119.i.i_crit_edge:  ; preds = %for.inc.1.i115.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i119.i.i

if.then.2.i117.i.i:                               ; preds = %for.inc.1.i115.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %usVoltageID.2.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 2, i32 2
  %196 = ptrtoint ptr %usVoltageID.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 2)
  %197 = load i16, ptr %usVoltageID.2.i.i.i, align 1
  %usVoltageIndex.2.i116.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 2, i32 1
  %198 = ptrtoint ptr %usVoltageIndex.2.i116.i.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 2)
  %199 = load i16, ptr %usVoltageIndex.2.i116.i.i, align 1
  %idxprom.2.i.i.i = zext i16 %199 to i32
  %vid_7bit.2.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom.2.i.i.i, i32 1
  %200 = ptrtoint ptr %vid_7bit.2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %197, ptr %vid_7bit.2.i.i.i, align 2
  %201 = load i16, ptr %usVoltageIndex.2.i116.i.i, align 1
  %idxprom10.2.i.i.i = zext i16 %201 to i32
  %arrayidx11.2.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom10.2.i.i.i
  %202 = ptrtoint ptr %arrayidx11.2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %arrayidx11.2.i.i.i, align 4
  br label %for.inc.2.i119.i.i

for.inc.2.i119.i.i:                               ; preds = %if.then.2.i117.i.i, %for.inc.1.i115.i.i.for.inc.2.i119.i.i_crit_edge
  %203 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %arrayidx.3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp1.not.3.i.i.i = icmp eq i32 %204, 0
  br i1 %cmp1.not.3.i.i.i, label %for.inc.2.i119.i.i.for.inc.3.i123.i.i_crit_edge, label %if.then.3.i121.i.i

for.inc.2.i119.i.i.for.inc.3.i123.i.i_crit_edge:  ; preds = %for.inc.2.i119.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i123.i.i

if.then.3.i121.i.i:                               ; preds = %for.inc.2.i119.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %usVoltageID.3.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 3, i32 2
  %205 = ptrtoint ptr %usVoltageID.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 2)
  %206 = load i16, ptr %usVoltageID.3.i.i.i, align 1
  %usVoltageIndex.3.i120.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 3, i32 1
  %207 = ptrtoint ptr %usVoltageIndex.3.i120.i.i to i32
  call void @__asan_loadN_noabort(i32 %207, i32 2)
  %208 = load i16, ptr %usVoltageIndex.3.i120.i.i, align 1
  %idxprom.3.i.i.i = zext i16 %208 to i32
  %vid_7bit.3.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom.3.i.i.i, i32 1
  %209 = ptrtoint ptr %vid_7bit.3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %206, ptr %vid_7bit.3.i.i.i, align 2
  %210 = load i16, ptr %usVoltageIndex.3.i120.i.i, align 1
  %idxprom10.3.i.i.i = zext i16 %210 to i32
  %arrayidx11.3.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom10.3.i.i.i
  %211 = ptrtoint ptr %arrayidx11.3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %210, ptr %arrayidx11.3.i.i.i, align 4
  br label %for.inc.3.i123.i.i

for.inc.3.i123.i.i:                               ; preds = %if.then.3.i121.i.i, %for.inc.2.i119.i.i.for.inc.3.i123.i.i_crit_edge
  %212 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %arrayidx.4.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp1.not.4.i.i.i = icmp eq i32 %213, 0
  br i1 %cmp1.not.4.i.i.i, label %for.inc.3.i123.i.i.for.inc.4.i.i.i_crit_edge, label %if.then.4.i125.i.i

for.inc.3.i123.i.i.for.inc.4.i.i.i_crit_edge:     ; preds = %for.inc.3.i123.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i.i.i

if.then.4.i125.i.i:                               ; preds = %for.inc.3.i123.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %usVoltageID.4.i.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 4, i32 2
  %214 = ptrtoint ptr %usVoltageID.4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 2)
  %215 = load i16, ptr %usVoltageID.4.i.i.i, align 1
  %usVoltageIndex.4.i124.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i.i, i32 4, i32 1
  %216 = ptrtoint ptr %usVoltageIndex.4.i124.i.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %217 = load i16, ptr %usVoltageIndex.4.i124.i.i, align 1
  %idxprom.4.i.i.i = zext i16 %217 to i32
  %vid_7bit.4.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom.4.i.i.i, i32 1
  %218 = ptrtoint ptr %vid_7bit.4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %215, ptr %vid_7bit.4.i.i.i, align 2
  %219 = load i16, ptr %usVoltageIndex.4.i124.i.i, align 1
  %idxprom10.4.i.i.i = zext i16 %219 to i32
  %arrayidx11.4.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %idxprom10.4.i.i.i
  %220 = ptrtoint ptr %arrayidx11.4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %arrayidx11.4.i.i.i, align 4
  br label %for.inc.4.i.i.i

for.inc.4.i.i.i:                                  ; preds = %if.then.4.i125.i.i, %for.inc.3.i123.i.i.for.inc.4.i.i.i_crit_edge
  %arrayidx16.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1
  %vid_7bit17.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 0, i32 1
  %221 = ptrtoint ptr %vid_7bit17.i.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %vid_7bit17.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %222)
  %cmp18.i.i.i = icmp eq i16 %222, 0
  br i1 %cmp18.i.i.i, label %for.cond21.preheader.i.i.i, label %for.inc.4.i.i.i.for.inc48.i.i.i_crit_edge

for.inc.4.i.i.i.for.inc48.i.i.i_crit_edge:        ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.i.i.i

for.cond21.preheader.i.i.i:                       ; preds = %for.inc.4.i.i.i
  %vid_7bit27.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 1, i32 1
  %223 = ptrtoint ptr %vid_7bit27.i.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %vid_7bit27.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %224)
  %cmp29.not.i.i.i = icmp eq i16 %224, 0
  br i1 %cmp29.not.i.i.i, label %for.cond21.19.i.i.i, label %for.cond21.preheader.i.i.i.for.end42.thread.i.i.i_crit_edge

for.cond21.preheader.i.i.i.for.end42.thread.i.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end42.thread.i.i.i

for.cond21.19.i.i.i:                              ; preds = %for.cond21.preheader.i.i.i
  %vid_7bit27.110.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 2, i32 1
  %225 = ptrtoint ptr %vid_7bit27.110.i.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %vid_7bit27.110.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %226)
  %cmp29.not.111.i.i.i = icmp eq i16 %226, 0
  br i1 %cmp29.not.111.i.i.i, label %for.cond21.213.i.i.i, label %for.cond21.19.i.i.i.for.end42.thread.i.i.i_crit_edge

for.cond21.19.i.i.i.for.end42.thread.i.i.i_crit_edge: ; preds = %for.cond21.19.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end42.thread.i.i.i

for.cond21.213.i.i.i:                             ; preds = %for.cond21.19.i.i.i
  %vid_7bit27.214.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 3, i32 1
  %227 = ptrtoint ptr %vid_7bit27.214.i.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %vid_7bit27.214.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %cmp29.not.215.i.i.i = icmp eq i16 %228, 0
  br i1 %cmp29.not.215.i.i.i, label %for.cond21.213.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge, label %for.cond21.213.i.i.i.for.end42.thread.i.i.i_crit_edge

for.cond21.213.i.i.i.for.end42.thread.i.i.i_crit_edge: ; preds = %for.cond21.213.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end42.thread.i.i.i

for.cond21.213.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge: ; preds = %for.cond21.213.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sumo_construct_vid_mapping_table.exit.i.i

for.end42.thread.i.i.i:                           ; preds = %for.cond21.213.i.i.i.for.end42.thread.i.i.i_crit_edge, %for.cond21.19.i.i.i.for.end42.thread.i.i.i_crit_edge, %for.cond21.preheader.i.i.i.for.end42.thread.i.i.i_crit_edge
  %vid_7bit27.lcssa.i.i.i = phi ptr [ %vid_7bit27.i.i.i, %for.cond21.preheader.i.i.i.for.end42.thread.i.i.i_crit_edge ], [ %vid_7bit27.110.i.i.i, %for.cond21.19.i.i.i.for.end42.thread.i.i.i_crit_edge ], [ %vid_7bit27.214.i.i.i, %for.cond21.213.i.i.i.for.end42.thread.i.i.i_crit_edge ]
  %j.0.lcssa7.i.i.i = phi i32 [ 1, %for.cond21.preheader.i.i.i.for.end42.thread.i.i.i_crit_edge ], [ 2, %for.cond21.19.i.i.i.for.end42.thread.i.i.i_crit_edge ], [ 3, %for.cond21.213.i.i.i.for.end42.thread.i.i.i_crit_edge ]
  %arrayidx26.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %j.0.lcssa7.i.i.i
  %229 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx26.i.i.i, align 4
  %231 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %arrayidx16.i.i.i, align 4
  %232 = ptrtoint ptr %vid_7bit27.lcssa.i.i.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 0, ptr %vid_7bit27.lcssa.i.i.i, align 2
  br label %for.inc48.i.i.i

for.inc48.i.i.i:                                  ; preds = %for.end42.thread.i.i.i, %for.inc.4.i.i.i.for.inc48.i.i.i_crit_edge
  %arrayidx16.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 1
  %vid_7bit17.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 1, i32 1
  %233 = ptrtoint ptr %vid_7bit17.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %vid_7bit17.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %234)
  %cmp18.1.i.i.i = icmp eq i16 %234, 0
  br i1 %cmp18.1.i.i.i, label %for.cond21.preheader.1.i.i.i, label %for.inc48.i.i.i.for.inc48.1.i.i.i_crit_edge

for.inc48.i.i.i.for.inc48.1.i.i.i_crit_edge:      ; preds = %for.inc48.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.1.i.i.i

for.cond21.preheader.1.i.i.i:                     ; preds = %for.inc48.i.i.i
  %vid_7bit27.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 2, i32 1
  %235 = ptrtoint ptr %vid_7bit27.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %vid_7bit27.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %236)
  %cmp29.not.1.i.i.i = icmp eq i16 %236, 0
  br i1 %cmp29.not.1.i.i.i, label %for.cond21.1.1.i.i.i, label %for.cond21.preheader.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge

for.cond21.preheader.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge: ; preds = %for.cond21.preheader.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end42.thread.1.i.i.i

for.cond21.1.1.i.i.i:                             ; preds = %for.cond21.preheader.1.i.i.i
  %vid_7bit27.1.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 3, i32 1
  %237 = ptrtoint ptr %vid_7bit27.1.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %vid_7bit27.1.1.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %cmp29.not.1.1.i.i.i = icmp eq i16 %238, 0
  br i1 %cmp29.not.1.1.i.i.i, label %for.cond21.1.1.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge, label %for.cond21.1.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge

for.cond21.1.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge: ; preds = %for.cond21.1.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end42.thread.1.i.i.i

for.cond21.1.1.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge: ; preds = %for.cond21.1.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sumo_construct_vid_mapping_table.exit.i.i

for.end42.thread.1.i.i.i:                         ; preds = %for.cond21.1.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge, %for.cond21.preheader.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge
  %vid_7bit27.lcssa.1.i.i.i = phi ptr [ %vid_7bit27.1.i.i.i, %for.cond21.preheader.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge ], [ %vid_7bit27.1.1.i.i.i, %for.cond21.1.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge ]
  %j.0.lcssa7.1.i.i.i = phi i32 [ 2, %for.cond21.preheader.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge ], [ 3, %for.cond21.1.1.i.i.i.for.end42.thread.1.i.i.i_crit_edge ]
  %arrayidx26.1.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 %j.0.lcssa7.1.i.i.i
  %239 = ptrtoint ptr %arrayidx26.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx26.1.i.i.i, align 4
  %241 = ptrtoint ptr %arrayidx16.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %arrayidx16.1.i.i.i, align 4
  %242 = ptrtoint ptr %vid_7bit27.lcssa.1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 0, ptr %vid_7bit27.lcssa.1.i.i.i, align 2
  br label %for.inc48.1.i.i.i

for.inc48.1.i.i.i:                                ; preds = %for.end42.thread.1.i.i.i, %for.inc48.i.i.i.for.inc48.1.i.i.i_crit_edge
  %arrayidx16.2.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 2
  %vid_7bit17.2.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 2, i32 1
  %243 = ptrtoint ptr %vid_7bit17.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %vid_7bit17.2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %244)
  %cmp18.2.i.i.i = icmp eq i16 %244, 0
  br i1 %cmp18.2.i.i.i, label %for.cond21.preheader.2.i.i.i, label %for.inc48.1.i.i.i.for.inc48.2.i.i.i_crit_edge

for.inc48.1.i.i.i.for.inc48.2.i.i.i_crit_edge:    ; preds = %for.inc48.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc48.2.i.i.i

for.cond21.preheader.2.i.i.i:                     ; preds = %for.inc48.1.i.i.i
  %vid_7bit27.2.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 3, i32 1
  %245 = ptrtoint ptr %vid_7bit27.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %vid_7bit27.2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %246)
  %cmp29.not.2.i.i.i = icmp eq i16 %246, 0
  br i1 %cmp29.not.2.i.i.i, label %for.cond21.preheader.2.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge, label %for.end42.thread.2.i.i.i

for.cond21.preheader.2.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge: ; preds = %for.cond21.preheader.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sumo_construct_vid_mapping_table.exit.i.i

for.end42.thread.2.i.i.i:                         ; preds = %for.cond21.preheader.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx26.2.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 3
  %247 = ptrtoint ptr %arrayidx26.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx26.2.i.i.i, align 4
  %249 = ptrtoint ptr %arrayidx16.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %arrayidx16.2.i.i.i, align 4
  %250 = ptrtoint ptr %vid_7bit27.2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %vid_7bit27.2.i.i.i, align 2
  br label %for.inc48.2.i.i.i

for.inc48.2.i.i.i:                                ; preds = %for.end42.thread.2.i.i.i, %for.inc48.1.i.i.i.for.inc48.2.i.i.i_crit_edge
  %vid_7bit17.3.i.i.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 2, i32 10, i32 1, i32 3, i32 1
  %251 = ptrtoint ptr %vid_7bit17.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %vid_7bit17.3.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %252)
  %cmp18.3.i.i.i = icmp eq i16 %252, 0
  %spec.select.i.i.i = select i1 %cmp18.3.i.i.i, i32 3, i32 4
  br label %sumo_construct_vid_mapping_table.exit.i.i

sumo_construct_vid_mapping_table.exit.i.i:        ; preds = %for.inc48.2.i.i.i, %for.cond21.preheader.2.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge, %for.cond21.1.1.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge, %for.cond21.213.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge
  %i.1.lcssa.i.i.i = phi i32 [ 0, %for.cond21.213.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge ], [ 1, %for.cond21.1.1.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge ], [ 2, %for.cond21.preheader.2.i.i.i.sumo_construct_vid_mapping_table.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %for.inc48.2.i.i.i ]
  %253 = ptrtoint ptr %vid_mapping_table.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %i.1.lcssa.i.i.i, ptr %vid_mapping_table.i.i, align 4
  %254 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %priv.i, align 4
  %sclk_voltage_mapping_table.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %255, i32 0, i32 2, i32 9
  %256 = ptrtoint ptr %sclk_voltage_mapping_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %sclk_voltage_mapping_table.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp.not.i.i.i = icmp eq i32 %257, 0
  br i1 %cmp.not.i.i.i, label %sumo_construct_vid_mapping_table.exit.i.i.kv_construct_max_power_limits_table.exit.i.i_crit_edge, label %if.then.i127.i.i

sumo_construct_vid_mapping_table.exit.i.i.kv_construct_max_power_limits_table.exit.i.i_crit_edge: ; preds = %sumo_construct_vid_mapping_table.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_construct_max_power_limits_table.exit.i.i

if.then.i127.i.i:                                 ; preds = %sumo_construct_vid_mapping_table.exit.i.i
  %max_clock_voltage_on_ac.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 13
  %sub.i.i.i = add i32 %257, -1
  %arrayidx.i.i.i = getelementptr %struct.kv_power_info, ptr %255, i32 0, i32 2, i32 9, i32 1, i32 %sub.i.i.i
  %258 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx.i.i.i, align 4
  %260 = ptrtoint ptr %max_clock_voltage_on_ac.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %max_clock_voltage_on_ac.i.i, align 4
  %vid_2bit.i126.i.i = getelementptr %struct.kv_power_info, ptr %255, i32 0, i32 2, i32 9, i32 1, i32 %sub.i.i.i, i32 1
  %261 = ptrtoint ptr %vid_2bit.i126.i.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %vid_2bit.i126.i.i, align 4
  %conv.i.i.i = zext i16 %262 to i32
  %dyn_state.i.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21
  %263 = ptrtoint ptr %dyn_state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %dyn_state.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %264, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else9.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i127.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %conv.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %264, %conv.i.i.i
  %entries.i.i.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  %265 = ptrtoint ptr %entries.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %entries.i.i.i.i.i, align 4
  br i1 %cmp.i.i.i.i.i, label %if.then3.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then3.i.i.i.i.i:                               ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %v.i.i.i.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %266, i32 %conv.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i.i = add i32 %264, -1
  %v7.i.i.i.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %266, i32 %sub.i.i.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i.i.i

if.else9.i.i.i.i.i:                               ; preds = %if.then.i127.i.i
  %vid_mapping_table.i.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %255, i32 0, i32 2, i32 10
  %267 = ptrtoint ptr %vid_mapping_table.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %vid_mapping_table.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp1046.not.i.i.i.i.i = icmp eq i32 %268, 0
  br i1 %cmp1046.not.i.i.i.i.i, label %if.else9.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge, label %if.else9.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

if.else9.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %if.else9.i.i.i.i.i
  br label %for.body.i.i.i.i.i

if.else9.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge:   ; preds = %if.else9.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.else9.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %i.047.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %if.else9.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %arrayidx13.i.i.i.i.i = getelementptr %struct.kv_power_info, ptr %255, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i.i.i
  %269 = ptrtoint ptr %arrayidx13.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %arrayidx13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %270, i16 %262)
  %cmp16.i.i.i.i.i = icmp eq i16 %270, %262
  br i1 %cmp16.i.i.i.i.i, label %if.then18.i.i.i.i.i, label %for.inc.i.i.i.i.i

if.then18.i.i.i.i.i:                              ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vid_7bit.i.i.i.i.i = getelementptr %struct.kv_power_info, ptr %255, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i.i
  %inc.i.i.i.i.i = add nuw i32 %i.047.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %268
  br i1 %exitcond.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge:    ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i.i.i

for.end.i.i.i.i.i:                                ; preds = %for.inc.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge, %if.else9.i.i.i.i.i.for.end.i.i.i.i.i_crit_edge
  %sub24.i.i.i.i.i = add i32 %268, -1
  %vid_7bit26.i.i.i.i.i = getelementptr %struct.kv_power_info, ptr %255, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i.i.i

kv_convert_2bit_index_to_voltage.exit.i.i.i:      ; preds = %for.end.i.i.i.i.i, %if.then18.i.i.i.i.i, %if.else.i.i.i.i.i, %if.then3.i.i.i.i.i
  %retval.0.in.in.i.i.i.i.i = phi ptr [ %v.i.i.i.i.i, %if.then3.i.i.i.i.i ], [ %v7.i.i.i.i.i, %if.else.i.i.i.i.i ], [ %vid_7bit.i.i.i.i.i, %if.then18.i.i.i.i.i ], [ %vid_7bit26.i.i.i.i.i, %for.end.i.i.i.i.i ]
  %271 = ptrtoint ptr %retval.0.in.in.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %retval.0.in.i.i.i.i.i = load i16, ptr %retval.0.in.in.i.i.i.i.i, align 2
  %mul.neg.i.i.i.i.i = mul i16 %retval.0.in.i.i.i.i.i, -25
  %sub.i5.i.i.i.i = add i16 %mul.neg.i.i.i.i.i, 6200
  %vddc.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 13, i32 2
  %272 = ptrtoint ptr %vddc.i.i.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %sub.i5.i.i.i.i, ptr %vddc.i.i.i, align 4
  br label %kv_construct_max_power_limits_table.exit.i.i

kv_construct_max_power_limits_table.exit.i.i:     ; preds = %kv_convert_2bit_index_to_voltage.exit.i.i.i, %sumo_construct_vid_mapping_table.exit.i.i.kv_construct_max_power_limits_table.exit.i.i_crit_edge
  %nbp_memory_clock.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %255, i32 0, i32 2, i32 4
  %273 = ptrtoint ptr %nbp_memory_clock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %nbp_memory_clock.i.i.i, align 4
  %mclk.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 13, i32 1
  %275 = ptrtoint ptr %mclk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %mclk.i.i.i, align 4
  br label %if.end47.i

kv_parse_sys_info_table.exit.i:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv4.i.i = zext i8 %75 to i32
  %276 = ptrtoint ptr %frev.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %frev.i.i, align 1
  %conv7.i.i = zext i8 %277 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %conv7.i.i, i32 noundef %conv4.i.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #13
  br label %dpm_failed

if.end47.i:                                       ; preds = %kv_construct_max_power_limits_table.exit.i.i, %for.body.preheader.i.if.end47.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i.i) #13
  %uvd_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 5
  %vce_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 6
  %samu_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 7
  %acp_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 8
  %278 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %uvd_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool.not.i.i = icmp eq i8 %279, 0
  br i1 %tobool.not.i.i, label %if.end47.i.if.end.i104.i_crit_edge, label %for.body.lr.ph.i.i

if.end47.i.if.end.i104.i_crit_edge:               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i104.i

for.body.lr.ph.i.i:                               ; preds = %if.end47.i
  %entries.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 5, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0115.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %280 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %entries.i.i, align 4
  %v.i.i = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %281, i32 %i.0115.i.i, i32 2
  %282 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %v.i.i, align 4
  %mul.neg.i.i.i = mul i16 %283, -25
  %sub.i.i102.i = add i16 %mul.neg.i.i.i, 6200
  store i16 %sub.i.i102.i, ptr %v.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0115.i.i, 1
  %284 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %uvd_clock_voltage_dependency_table.i.i, align 4
  %conv.i103.i = zext i8 %285 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i103.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end.i104.i_crit_edge

for.body.i.i.if.end.i104.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i104.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.end.i104.i:                                    ; preds = %for.body.i.i.if.end.i104.i_crit_edge, %if.end47.i.if.end.i104.i_crit_edge
  %286 = ptrtoint ptr %vce_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %vce_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %tobool16.not.i.i = icmp eq i8 %287, 0
  br i1 %tobool16.not.i.i, label %if.end.i104.i.if.end34.i.i_crit_edge, label %for.body23.lr.ph.i.i

if.end.i104.i.if.end34.i.i_crit_edge:             ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

for.body23.lr.ph.i.i:                             ; preds = %if.end.i104.i
  %entries24.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 6, i32 1
  br label %for.body23.i.i

for.body23.i.i:                                   ; preds = %for.body23.i.i.for.body23.i.i_crit_edge, %for.body23.lr.ph.i.i
  %i.1118.i.i = phi i32 [ 0, %for.body23.lr.ph.i.i ], [ %inc32.i.i, %for.body23.i.i.for.body23.i.i_crit_edge ]
  %288 = ptrtoint ptr %entries24.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %entries24.i.i, align 4
  %v26.i.i = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %289, i32 %i.1118.i.i, i32 2
  %290 = ptrtoint ptr %v26.i.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %v26.i.i, align 4
  %mul.neg.i107.i.i = mul i16 %291, -25
  %sub.i108.i.i = add i16 %mul.neg.i107.i.i, 6200
  store i16 %sub.i108.i.i, ptr %v26.i.i, align 4
  %inc32.i.i = add nuw nsw i32 %i.1118.i.i, 1
  %292 = ptrtoint ptr %vce_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %vce_clock_voltage_dependency_table.i.i, align 4
  %conv20.i.i = zext i8 %293 to i32
  %cmp21.i105.i = icmp ult i32 %inc32.i.i, %conv20.i.i
  br i1 %cmp21.i105.i, label %for.body23.i.i.for.body23.i.i_crit_edge, label %for.body23.i.i.if.end34.i.i_crit_edge

for.body23.i.i.if.end34.i.i_crit_edge:            ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.i

for.body23.i.i.for.body23.i.i_crit_edge:          ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body23.i.i

if.end34.i.i:                                     ; preds = %for.body23.i.i.if.end34.i.i_crit_edge, %if.end.i104.i.if.end34.i.i_crit_edge
  %294 = ptrtoint ptr %samu_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %samu_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool36.not.i.i = icmp eq i32 %295, 0
  br i1 %tobool36.not.i.i, label %if.end34.i.i.if.end53.i.i_crit_edge, label %for.body42.lr.ph.i.i

if.end34.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i.i

for.body42.lr.ph.i.i:                             ; preds = %if.end34.i.i
  %entries43.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 7, i32 1
  br label %for.body42.i.i

for.body42.i.i:                                   ; preds = %for.body42.i.i.for.body42.i.i_crit_edge, %for.body42.lr.ph.i.i
  %i.2120.i.i = phi i32 [ 0, %for.body42.lr.ph.i.i ], [ %inc51.i.i, %for.body42.i.i.for.body42.i.i_crit_edge ]
  %296 = ptrtoint ptr %entries43.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %entries43.i.i, align 4
  %v45.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %297, i32 %i.2120.i.i, i32 1
  %298 = ptrtoint ptr %v45.i.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %v45.i.i, align 4
  %mul.neg.i109.i.i = mul i16 %299, -25
  %sub.i110.i.i = add i16 %mul.neg.i109.i.i, 6200
  store i16 %sub.i110.i.i, ptr %v45.i.i, align 4
  %inc51.i.i = add nuw i32 %i.2120.i.i, 1
  %300 = ptrtoint ptr %samu_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %samu_clock_voltage_dependency_table.i.i, align 4
  %cmp40.i.i = icmp ult i32 %inc51.i.i, %301
  br i1 %cmp40.i.i, label %for.body42.i.i.for.body42.i.i_crit_edge, label %for.body42.i.i.if.end53.i.i_crit_edge

for.body42.i.i.if.end53.i.i_crit_edge:            ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i.i

for.body42.i.i.for.body42.i.i_crit_edge:          ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body42.i.i

if.end53.i.i:                                     ; preds = %for.body42.i.i.if.end53.i.i_crit_edge, %if.end34.i.i.if.end53.i.i_crit_edge
  %302 = ptrtoint ptr %acp_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %acp_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool55.not.i.i = icmp eq i32 %303, 0
  br i1 %tobool55.not.i.i, label %if.end53.i.i.kv_patch_voltage_values.exit.i_crit_edge, label %for.body61.lr.ph.i.i

if.end53.i.i.kv_patch_voltage_values.exit.i_crit_edge: ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_patch_voltage_values.exit.i

for.body61.lr.ph.i.i:                             ; preds = %if.end53.i.i
  %entries62.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 8, i32 1
  br label %for.body61.i.i

for.body61.i.i:                                   ; preds = %for.body61.i.i.for.body61.i.i_crit_edge, %for.body61.lr.ph.i.i
  %i.3122.i.i = phi i32 [ 0, %for.body61.lr.ph.i.i ], [ %inc70.i.i, %for.body61.i.i.for.body61.i.i_crit_edge ]
  %304 = ptrtoint ptr %entries62.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %entries62.i.i, align 4
  %v64.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %305, i32 %i.3122.i.i, i32 1
  %306 = ptrtoint ptr %v64.i.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %v64.i.i, align 4
  %mul.neg.i111.i.i = mul i16 %307, -25
  %sub.i112.i.i = add i16 %mul.neg.i111.i.i, 6200
  store i16 %sub.i112.i.i, ptr %v64.i.i, align 4
  %inc70.i.i = add nuw i32 %i.3122.i.i, 1
  %308 = ptrtoint ptr %acp_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %acp_clock_voltage_dependency_table.i.i, align 4
  %cmp59.i.i = icmp ult i32 %inc70.i.i, %309
  br i1 %cmp59.i.i, label %for.body61.i.i.for.body61.i.i_crit_edge, label %for.body61.i.i.kv_patch_voltage_values.exit.i_crit_edge

for.body61.i.i.kv_patch_voltage_values.exit.i_crit_edge: ; preds = %for.body61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_patch_voltage_values.exit.i

for.body61.i.i.for.body61.i.i_crit_edge:          ; preds = %for.body61.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body61.i.i

kv_patch_voltage_values.exit.i:                   ; preds = %for.body61.i.i.kv_patch_voltage_values.exit.i_crit_edge, %if.end53.i.i.kv_patch_voltage_values.exit.i_crit_edge
  %310 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %priv.i, align 4
  %bootup_sclk.i107.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 2, i32 1
  %312 = ptrtoint ptr %bootup_sclk.i107.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %bootup_sclk.i107.i, align 4
  %boot_pl.i.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 3
  %314 = ptrtoint ptr %boot_pl.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %boot_pl.i.i, align 4
  %bootup_nb_voltage_index.i108.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 2, i32 6
  %315 = ptrtoint ptr %bootup_nb_voltage_index.i108.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %bootup_nb_voltage_index.i108.i, align 4
  %conv.i109.i = trunc i16 %316 to i8
  %vddc_index.i.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 3, i32 1
  %317 = ptrtoint ptr %vddc_index.i.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %conv.i109.i, ptr %vddc_index.i.i, align 4
  %ds_divider_index.i.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 3, i32 2
  %318 = ptrtoint ptr %ds_divider_index.i.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 0, ptr %ds_divider_index.i.i, align 1
  %ss_divider_index.i.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 3, i32 3
  %319 = ptrtoint ptr %ss_divider_index.i.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 0, ptr %ss_divider_index.i.i, align 2
  %allow_gnb_slow.i.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 3, i32 4
  %320 = ptrtoint ptr %allow_gnb_slow.i.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 1, ptr %allow_gnb_slow.i.i, align 1
  %force_nbp_state.i.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 3, i32 5
  %321 = ptrtoint ptr %force_nbp_state.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 0, ptr %force_nbp_state.i.i, align 4
  %display_wm.i.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 3, i32 6
  %322 = ptrtoint ptr %display_wm.i.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 0, ptr %display_wm.i.i, align 1
  %vce_wm.i.i = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 3, i32 7
  %323 = ptrtoint ptr %vce_wm.i.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 0, ptr %vce_wm.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i110.i) #13
  %324 = ptrtoint ptr %data_offset.i110.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 -1, ptr %data_offset.i110.i, align 2, !annotation !100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i111.i) #13
  %325 = ptrtoint ptr %frev.i111.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 -1, ptr %frev.i111.i, align 1, !annotation !100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i112.i) #13
  %326 = ptrtoint ptr %crev.i112.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 -1, ptr %crev.i112.i, align 1, !annotation !100
  %327 = ptrtoint ptr %mode_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %mode_info1.i.i, align 4
  %call.i.i = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %328, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i111.i, ptr noundef nonnull %crev.i112.i, ptr noundef nonnull %data_offset.i110.i) #13
  br i1 %call.i.i, label %if.end.i118.i, label %kv_patch_voltage_values.exit.i.kv_parse_power_table.exit.thread.i_crit_edge

kv_patch_voltage_values.exit.i.kv_parse_power_table.exit.thread.i_crit_edge: ; preds = %kv_patch_voltage_values.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_parse_power_table.exit.thread.i

if.end.i118.i:                                    ; preds = %kv_patch_voltage_values.exit.i
  %329 = ptrtoint ptr %mode_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %mode_info1.i.i, align 4
  %bios.i114.i = getelementptr inbounds %struct.atom_context, ptr %330, i32 0, i32 2
  %331 = ptrtoint ptr %bios.i114.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %bios.i114.i, align 4
  %333 = ptrtoint ptr %data_offset.i110.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %data_offset.i110.i, align 2
  %conv.i115.i = zext i16 %334 to i32
  %add.ptr.i116.i = getelementptr i8, ptr %332, i32 %conv.i115.i
  call void @amdgpu_add_thermal_controller(ptr noundef %handle) #13
  %335 = ptrtoint ptr %mode_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %mode_info1.i.i, align 4
  %bios4.i.i = getelementptr inbounds %struct.atom_context, ptr %336, i32 0, i32 2
  %337 = ptrtoint ptr %bios4.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %bios4.i.i, align 4
  %339 = ptrtoint ptr %data_offset.i110.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %data_offset.i110.i, align 2
  %conv5.i.i = zext i16 %340 to i32
  %add.ptr6.i.i = getelementptr i8, ptr %338, i32 %conv5.i.i
  %usStateArrayOffset.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i116.i, i32 0, i32 6
  %341 = ptrtoint ptr %usStateArrayOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %341, i32 2)
  %342 = load i16, ptr %usStateArrayOffset.i.i, align 1
  %343 = call i16 @llvm.bswap.i16(i16 %342) #13
  %conv7.i117.i = zext i16 %343 to i32
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 %conv7.i117.i
  %usClockInfoArrayOffset.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i116.i, i32 0, i32 7
  %344 = ptrtoint ptr %usClockInfoArrayOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %344, i32 2)
  %345 = load i16, ptr %usClockInfoArrayOffset.i.i, align 1
  %346 = call i16 @llvm.bswap.i16(i16 %345) #13
  %conv13.i.i = zext i16 %346 to i32
  %add.ptr14.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 %conv13.i.i
  %usNonClockInfoArrayOffset.i.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i116.i, i32 0, i32 8
  %347 = ptrtoint ptr %usNonClockInfoArrayOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %347, i32 2)
  %348 = load i16, ptr %usNonClockInfoArrayOffset.i.i, align 1
  %349 = call i16 @llvm.bswap.i16(i16 %348) #13
  %conv19.i.i = zext i16 %349 to i32
  %add.ptr20.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 %conv19.i.i
  %350 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %add.ptr8.i.i, align 1
  %conv21.i.i = zext i8 %351 to i32
  %352 = mul nuw nsw i32 %conv21.i.i, 40
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %352, i32 noundef 3520) #17
  %dpm.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15
  %353 = ptrtoint ptr %dpm.i.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %call8.i.i.i.i, ptr %dpm.i.i, align 4
  %tobool.not.i121.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i121.i, label %if.end.i118.i.kv_parse_power_table.exit.thread.i_crit_edge, label %if.end28.i.i

if.end.i118.i.kv_parse_power_table.exit.thread.i_crit_edge: ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_parse_power_table.exit.thread.i

if.end28.i.i:                                     ; preds = %if.end.i118.i
  %354 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %add.ptr8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %cmp208.not.i.i = icmp eq i8 %355, 0
  br i1 %cmp208.not.i.i, label %if.end28.i.i.for.end81.i.i_crit_edge, label %for.body.lr.ph.i122.i

if.end28.i.i.for.end81.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end81.i.i

for.body.lr.ph.i122.i:                            ; preds = %if.end28.i.i
  %states.i.i = getelementptr inbounds %struct._StateArray, ptr %add.ptr8.i.i, i32 0, i32 1
  %nonClockInfo.i.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i.i, i32 0, i32 2
  %clockInfo.i.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i.i, i32 0, i32 2
  %ucEntrySize.i.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i.i, i32 0, i32 1
  %ucEntrySize75.i.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i.i, i32 0, i32 1
  %boot_ps.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 4
  %uvd_ps.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 5
  br label %for.body.i123.i

for.body.i123.i:                                  ; preds = %for.inc79.i.i.for.body.i123.i_crit_edge, %for.body.lr.ph.i122.i
  %power_state_offset.0212.i.i = phi ptr [ %states.i.i, %for.body.lr.ph.i122.i ], [ %add.ptr78.i.i, %for.inc79.i.i.for.body.i123.i_crit_edge ]
  %i.0209.i.i = phi i32 [ 0, %for.body.lr.ph.i122.i ], [ %inc80.i.i, %for.inc79.i.i.for.body.i123.i_crit_edge ]
  %nonClockInfoIndex.i.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0212.i.i, i32 0, i32 1
  %356 = ptrtoint ptr %nonClockInfoIndex.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %nonClockInfoIndex.i.i, align 1
  %conv32.i.i = zext i8 %357 to i32
  %arrayidx.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i.i, i32 0, i32 %conv32.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %358 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %358, i32 noundef 3520, i32 noundef 72) #16
  %cmp34.i.i = icmp eq ptr %call7.i.i.i.i, null
  %359 = ptrtoint ptr %dpm.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dpm.i.i, align 4
  br i1 %cmp34.i.i, label %cleanup.thread.i.i, label %if.end40.i.i

cleanup.thread.i.i:                               ; preds = %for.body.i123.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %360) #13
  br label %kv_parse_power_table.exit.thread.i

if.end40.i.i:                                     ; preds = %for.body.i123.i
  %ps_priv.i.i = getelementptr %struct.amdgpu_ps, ptr %360, i32 %i.0209.i.i, i32 9
  %361 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %call7.i.i.i.i, ptr %ps_priv.i.i, align 4
  %clockInfoIndex.i.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0212.i.i, i32 0, i32 2
  %362 = ptrtoint ptr %power_state_offset.0212.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %power_state_offset.0212.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %cmp48204.not.i.i = icmp eq i8 %363, 0
  br i1 %cmp48204.not.i.i, label %if.end40.i.i.for.end.i.i_crit_edge, label %if.end40.i.i.for.body50.i.i_crit_edge

if.end40.i.i.for.body50.i.i_crit_edge:            ; preds = %if.end40.i.i
  br label %for.body50.i.i

if.end40.i.i.for.end.i.i_crit_edge:               ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body50.i.i:                                   ; preds = %for.inc.i.i.for.body50.i.i_crit_edge, %if.end40.i.i.for.body50.i.i_crit_edge
  %k.0206.i.i = phi i32 [ %k.1.i.i, %for.inc.i.i.for.body50.i.i_crit_edge ], [ 0, %if.end40.i.i.for.body50.i.i_crit_edge ]
  %j.0205.i.i = phi i32 [ %inc70.i128.i, %for.inc.i.i.for.body50.i.i_crit_edge ], [ 0, %if.end40.i.i.for.body50.i.i_crit_edge ]
  %arrayidx51.i.i = getelementptr i8, ptr %clockInfoIndex.i.i, i32 %j.0205.i.i
  %364 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx51.i.i, align 1
  %conv52.i.i = zext i8 %365 to i32
  %366 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %add.ptr14.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %365, i8 %367)
  %cmp55.not.i.i = icmp ult i8 %365, %367
  br i1 %cmp55.not.i.i, label %if.end58.i.i, label %for.body50.i.i.for.inc.i.i_crit_edge

for.body50.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end58.i.i:                                     ; preds = %for.body50.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %k.0206.i.i)
  %cmp59.i124.i = icmp sgt i32 %k.0206.i.i, 4
  br i1 %cmp59.i124.i, label %if.end58.i.i.for.end.i.i_crit_edge, label %if.end62.i.i

if.end58.i.i.for.end.i.i_crit_edge:               ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

if.end62.i.i:                                     ; preds = %if.end58.i.i
  %368 = ptrtoint ptr %ucEntrySize.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %ucEntrySize.i.i, align 1
  %conv64.i.i = zext i8 %369 to i32
  %mul.i.i = mul nuw nsw i32 %conv64.i.i, %conv52.i.i
  %add.ptr65.i.i = getelementptr i8, ptr %clockInfo.i.i, i32 %mul.i.i
  %370 = ptrtoint ptr %dpm.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %dpm.i.i, align 4
  %372 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %priv.i, align 4
  %ps_priv.i.i.i.i = getelementptr %struct.amdgpu_ps, ptr %371, i32 %i.0209.i.i, i32 9
  %374 = ptrtoint ptr %ps_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %ps_priv.i.i.i.i, align 4
  %arrayidx.i.i125.i = getelementptr [5 x %struct.kv_pl], ptr %375, i32 0, i32 %k.0206.i.i
  %376 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_loadN_noabort(i32 %376, i32 2)
  %377 = load i16, ptr %add.ptr65.i.i, align 1
  %378 = call i16 @llvm.bswap.i16(i16 %377) #13
  %conv.i.i126.i = zext i16 %378 to i32
  %ucEngineClockHigh.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr65.i.i, i32 0, i32 1
  %379 = ptrtoint ptr %ucEngineClockHigh.i.i.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %ucEngineClockHigh.i.i.i, align 1
  %conv2.i.i.i = zext i8 %380 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 16
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i126.i
  %381 = ptrtoint ptr %arrayidx.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %or.i.i.i, ptr %arrayidx.i.i125.i, align 4
  %vddcIndex.i.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr65.i.i, i32 0, i32 2
  %382 = ptrtoint ptr %vddcIndex.i.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %vddcIndex.i.i.i, align 1
  %vddc_index.i.i.i = getelementptr [5 x %struct.kv_pl], ptr %375, i32 0, i32 %k.0206.i.i, i32 1
  %384 = ptrtoint ptr %vddc_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %383, ptr %vddc_index.i.i.i, align 4
  %add.i.i.i = add nsw i32 %k.0206.i.i, 1
  %num_levels.i.i.i = getelementptr inbounds %struct.kv_ps, ptr %375, i32 0, i32 1
  %385 = ptrtoint ptr %num_levels.i.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %add.i.i.i, ptr %num_levels.i.i.i, align 4
  %caps_sclk_ds.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %373, i32 0, i32 68
  %386 = ptrtoint ptr %caps_sclk_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %caps_sclk_ds.i.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool.not.i.i.i = icmp eq i8 %387, 0
  br i1 %tobool.not.i.i.i, label %if.end62.i.i.for.inc.i.i_crit_edge, label %if.then.i.i127.i

if.end62.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i127.i:                                 ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ds_divider_index.i.i.i = getelementptr [5 x %struct.kv_pl], ptr %375, i32 0, i32 %k.0206.i.i, i32 2
  %388 = ptrtoint ptr %ds_divider_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 5, ptr %ds_divider_index.i.i.i, align 1
  %ss_divider_index.i.i.i = getelementptr [5 x %struct.kv_pl], ptr %375, i32 0, i32 %k.0206.i.i, i32 3
  %389 = ptrtoint ptr %ss_divider_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 5, ptr %ss_divider_index.i.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i127.i, %if.end62.i.i.for.inc.i.i_crit_edge, %for.body50.i.i.for.inc.i.i_crit_edge
  %k.1.i.i = phi i32 [ %k.0206.i.i, %for.body50.i.i.for.inc.i.i_crit_edge ], [ %add.i.i.i, %if.end62.i.i.for.inc.i.i_crit_edge ], [ %add.i.i.i, %if.then.i.i127.i ]
  %inc70.i128.i = add nuw nsw i32 %j.0205.i.i, 1
  %390 = ptrtoint ptr %power_state_offset.0212.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %power_state_offset.0212.i.i, align 1
  %conv47.i.i = zext i8 %391 to i32
  %cmp48.i.i = icmp ult i32 %inc70.i128.i, %conv47.i.i
  br i1 %cmp48.i.i, label %for.inc.i.i.for.body50.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.inc.i.i.for.body50.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body50.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end58.i.i.for.end.i.i_crit_edge, %if.end40.i.i.for.end.i.i_crit_edge
  %392 = ptrtoint ptr %dpm.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %dpm.i.i, align 4
  %arrayidx74.i.i = getelementptr %struct.amdgpu_ps, ptr %393, i32 %i.0209.i.i
  %394 = ptrtoint ptr %ucEntrySize75.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %ucEntrySize75.i.i, align 1
  %ps_priv.i.i187.i.i = getelementptr %struct.amdgpu_ps, ptr %393, i32 %i.0209.i.i, i32 9
  %396 = ptrtoint ptr %ps_priv.i.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ps_priv.i.i187.i.i, align 4
  %ulCapsAndSettings.i.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i.i, i32 0, i32 %conv32.i.i, i32 3
  %398 = ptrtoint ptr %ulCapsAndSettings.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %398, i32 4)
  %399 = load i32, ptr %ulCapsAndSettings.i.i.i, align 1
  %400 = call i32 @llvm.bswap.i32(i32 %399) #13
  %401 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %arrayidx74.i.i, align 4
  %402 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %402, i32 2)
  %403 = load i16, ptr %arrayidx.i.i, align 1
  %404 = call i16 @llvm.bswap.i16(i16 %403) #13
  %conv.i188.i.i = zext i16 %404 to i32
  %class.i.i.i = getelementptr %struct.amdgpu_ps, ptr %393, i32 %i.0209.i.i, i32 1
  %405 = ptrtoint ptr %class.i.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %conv.i188.i.i, ptr %class.i.i.i, align 4
  %usClassification2.i.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i.i, i32 0, i32 %conv32.i.i, i32 5
  %406 = ptrtoint ptr %usClassification2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %406, i32 2)
  %407 = load i16, ptr %usClassification2.i.i.i, align 1
  %408 = call i16 @llvm.bswap.i16(i16 %407) #13
  %conv1.i.i.i = zext i16 %408 to i32
  %class2.i.i.i = getelementptr %struct.amdgpu_ps, ptr %393, i32 %i.0209.i.i, i32 2
  %409 = ptrtoint ptr %class2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %conv1.i.i.i, ptr %class2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %395)
  %cmp.i.i.i = icmp ugt i8 %395, 12
  br i1 %cmp.i.i.i, label %if.then.i189.i.i, label %if.else.i.i.i

if.then.i189.i.i:                                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ulVCLK.i.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i.i, i32 0, i32 %conv32.i.i, i32 6
  %410 = ptrtoint ptr %ulVCLK.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %410, i32 4)
  %411 = load i32, ptr %ulVCLK.i.i.i, align 1
  %412 = call i32 @llvm.bswap.i32(i32 %411) #13
  %vclk.i.i.i = getelementptr %struct.amdgpu_ps, ptr %393, i32 %i.0209.i.i, i32 3
  %413 = ptrtoint ptr %vclk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %412, ptr %vclk.i.i.i, align 4
  %ulDCLK.i.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i.i, i32 0, i32 %conv32.i.i, i32 7
  %414 = ptrtoint ptr %ulDCLK.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %414, i32 4)
  %415 = load i32, ptr %ulDCLK.i.i.i, align 1
  %416 = call i32 @llvm.bswap.i32(i32 %415) #13
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vclk4.i.i.i = getelementptr %struct.amdgpu_ps, ptr %393, i32 %i.0209.i.i, i32 3
  %417 = ptrtoint ptr %vclk4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 0, ptr %vclk4.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i189.i.i
  %.sink.i.i.i = phi i32 [ %416, %if.then.i189.i.i ], [ 0, %if.else.i.i.i ]
  %418 = getelementptr %struct.amdgpu_ps, ptr %393, i32 %i.0209.i.i, i32 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %.sink.i.i.i, ptr %418, align 4
  %and.i.i.i = and i32 %conv.i188.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i190.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i190.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge, label %if.then7.i.i.i

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %420 = ptrtoint ptr %boot_ps.i.i.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %arrayidx74.i.i, ptr %boot_ps.i.i.i, align 4
  %421 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %priv.i, align 4
  %num_levels.i.i.i.i = getelementptr inbounds %struct.kv_ps, ptr %397, i32 0, i32 1
  %423 = ptrtoint ptr %num_levels.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 1, ptr %num_levels.i.i.i.i, align 4
  %boot_pl.i.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %422, i32 0, i32 3
  %424 = call ptr @memcpy(ptr %397, ptr %boot_pl.i.i.i.i, i32 12)
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then7.i.i.i, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %425 = ptrtoint ptr %class.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %class.i.i.i, align 4
  %and10.i.i.i = and i32 %426, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end8.i.i.i.for.inc79.i.i_crit_edge, label %if.then12.i.i.i

if.end8.i.i.i.for.inc79.i.i_crit_edge:            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc79.i.i

if.then12.i.i.i:                                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %427 = ptrtoint ptr %uvd_ps.i.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %arrayidx74.i.i, ptr %uvd_ps.i.i.i, align 4
  br label %for.inc79.i.i

for.inc79.i.i:                                    ; preds = %if.then12.i.i.i, %if.end8.i.i.i.for.inc79.i.i_crit_edge
  %428 = ptrtoint ptr %power_state_offset.0212.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %power_state_offset.0212.i.i, align 1
  %conv77.i.i = zext i8 %429 to i32
  %add.i.i = add nuw nsw i32 %conv77.i.i, 2
  %add.ptr78.i.i = getelementptr i8, ptr %power_state_offset.0212.i.i, i32 %add.i.i
  %inc80.i.i = add nuw nsw i32 %i.0209.i.i, 1
  %430 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %add.ptr8.i.i, align 1
  %conv30.i.i = zext i8 %431 to i32
  %cmp.i129.i = icmp ult i32 %inc80.i.i, %conv30.i.i
  br i1 %cmp.i129.i, label %for.inc79.i.i.for.body.i123.i_crit_edge, label %for.end81.i.i.loopexit

for.inc79.i.i.for.body.i123.i_crit_edge:          ; preds = %for.inc79.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i123.i

for.end81.i.i.loopexit:                           ; preds = %for.inc79.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv30.i.i.le = zext i8 %431 to i32
  br label %for.end81.i.i

for.end81.i.i:                                    ; preds = %for.end81.i.i.loopexit, %if.end28.i.i.for.end81.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ 0, %if.end28.i.i.for.end81.i.i_crit_edge ], [ %conv30.i.i.le, %for.end81.i.i.loopexit ]
  %num_ps.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 1
  %432 = ptrtoint ptr %num_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %.lcssa.i.i, ptr %num_ps.i.i, align 4
  %num_of_vce_states.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 6
  %433 = ptrtoint ptr %num_of_vce_states.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %num_of_vce_states.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %434)
  %cmp89213.not.i.i = icmp eq i32 %434, 0
  br i1 %cmp89213.not.i.i, label %for.end81.i.i.if.end53_crit_edge, label %for.body91.lr.ph.i.i

for.end81.i.i.if.end53_crit_edge:                 ; preds = %for.end81.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

for.body91.lr.ph.i.i:                             ; preds = %for.end81.i.i
  %clockInfo96.i.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i.i, i32 0, i32 2
  %ucEntrySize97.i.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i.i, i32 0, i32 1
  br label %for.body91.i.i

for.body91.i.i:                                   ; preds = %for.body91.i.i.for.body91.i.i_crit_edge, %for.body91.lr.ph.i.i
  %i.1214.i.i = phi i32 [ 0, %for.body91.lr.ph.i.i ], [ %inc113.i.i, %for.body91.i.i.for.body91.i.i_crit_edge ]
  %clk_idx.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 7, i32 %i.1214.i.i, i32 4
  %435 = ptrtoint ptr %clk_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %clk_idx.i.i, align 4
  %conv95.i.i = zext i8 %436 to i32
  %437 = ptrtoint ptr %ucEntrySize97.i.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %ucEntrySize97.i.i, align 1
  %conv98.i.i = zext i8 %438 to i32
  %mul99.i.i = mul nuw nsw i32 %conv98.i.i, %conv95.i.i
  %arrayidx100.i.i = getelementptr [1 x i8], ptr %clockInfo96.i.i, i32 0, i32 %mul99.i.i
  %439 = ptrtoint ptr %arrayidx100.i.i to i32
  call void @__asan_loadN_noabort(i32 %439, i32 2)
  %440 = load i16, ptr %arrayidx100.i.i, align 1
  %441 = call i16 @llvm.bswap.i16(i16 %440) #13
  %conv101.i.i = zext i16 %441 to i32
  %ucEngineClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx100.i.i, i32 0, i32 1
  %442 = ptrtoint ptr %ucEngineClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %ucEngineClockHigh.i.i, align 1
  %conv102.i.i = zext i8 %443 to i32
  %shl.i.i = shl nuw nsw i32 %conv102.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv101.i.i
  %sclk107.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 7, i32 %i.1214.i.i, i32 2
  %444 = ptrtoint ptr %sclk107.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %or.i.i, ptr %sclk107.i.i, align 4
  %mclk.i.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 7, i32 %i.1214.i.i, i32 3
  %445 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 0, ptr %mclk.i.i, align 4
  %inc113.i.i = add nuw i32 %i.1214.i.i, 1
  %446 = ptrtoint ptr %num_of_vce_states.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %num_of_vce_states.i.i, align 4
  %cmp89.i.i = icmp ult i32 %inc113.i.i, %447
  br i1 %cmp89.i.i, label %for.body91.i.i.for.body91.i.i_crit_edge, label %for.body91.i.i.if.end53_crit_edge

for.body91.i.i.if.end53_crit_edge:                ; preds = %for.body91.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

for.body91.i.i.for.body91.i.i_crit_edge:          ; preds = %for.body91.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91.i.i

kv_parse_power_table.exit.thread.i:               ; preds = %cleanup.thread.i.i, %if.end.i118.i.kv_parse_power_table.exit.thread.i_crit_edge, %kv_patch_voltage_values.exit.i.kv_parse_power_table.exit.thread.i_crit_edge
  %retval.2.i.ph.i = phi i32 [ -12, %cleanup.thread.i.i ], [ -12, %if.end.i118.i.kv_parse_power_table.exit.thread.i_crit_edge ], [ -22, %kv_patch_voltage_values.exit.i.kv_parse_power_table.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i112.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i111.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i110.i) #13
  br label %dpm_failed

if.end53:                                         ; preds = %for.body91.i.i.if.end53_crit_edge, %for.end81.i.i.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i112.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i111.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i110.i) #13
  %enable_dpm.i = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i.i, i32 0, i32 50
  %448 = ptrtoint ptr %enable_dpm.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 1, ptr %enable_dpm.i, align 2
  %boot_ps = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 4
  %449 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %boot_ps, align 4
  %requested_ps = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 3
  %451 = ptrtoint ptr %requested_ps to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %450, ptr %requested_ps, align 4
  %current_ps = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 2
  %452 = ptrtoint ptr %current_ps to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr %450, ptr %current_ps, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_dpm to i32))
  %453 = load i32, ptr @amdgpu_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %453)
  %cmp60 = icmp eq i32 %453, 1
  br i1 %cmp60, label %if.then61, label %if.end53.if.end62_crit_edge

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  call void @amdgpu_pm_print_power_states(ptr noundef %handle) #13
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end53.if.end62_crit_edge
  call void @mutex_unlock(ptr noundef %pm) #13
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #18
  br label %cleanup

dpm_failed:                                       ; preds = %kv_parse_power_table.exit.thread.i, %kv_parse_sys_info_table.exit.i, %if.end3.i.dpm_failed_crit_edge, %if.end.i.dpm_failed_crit_edge, %do.body.dpm_failed_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.2.i.ph.i, %kv_parse_power_table.exit.thread.i ], [ -22, %kv_parse_sys_info_table.exit.i ], [ %call4.i, %if.end3.i.dpm_failed_crit_edge ], [ %call1.i, %if.end.i.dpm_failed_crit_edge ], [ -12, %do.body.dpm_failed_crit_edge ]
  %dpm.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15
  %num_ps.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 1
  %454 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %num_ps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %455)
  %cmp14.i = icmp sgt i32 %455, 0
  br i1 %cmp14.i, label %dpm_failed.for.body.i_crit_edge, label %dpm_failed.kv_dpm_fini.exit_crit_edge

dpm_failed.kv_dpm_fini.exit_crit_edge:            ; preds = %dpm_failed
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_dpm_fini.exit

dpm_failed.for.body.i_crit_edge:                  ; preds = %dpm_failed
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %dpm_failed.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %dpm_failed.for.body.i_crit_edge ]
  %456 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %dpm.i, align 4
  %ps_priv.i = getelementptr %struct.amdgpu_ps, ptr %457, i32 %i.015.i, i32 9
  %458 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %ps_priv.i, align 4
  call void @kfree(ptr noundef %459) #13
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %460 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %num_ps.i, align 4
  %cmp.i106 = icmp slt i32 %inc.i, %461
  br i1 %cmp.i106, label %for.body.i.for.body.i_crit_edge, label %for.body.i.kv_dpm_fini.exit_crit_edge

for.body.i.kv_dpm_fini.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_dpm_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

kv_dpm_fini.exit:                                 ; preds = %for.body.i.kv_dpm_fini.exit_crit_edge, %dpm_failed.kv_dpm_fini.exit_crit_edge
  %462 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %dpm.i, align 4
  call void @kfree(ptr noundef %463) #13
  %priv.i107 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %464 = ptrtoint ptr %priv.i107 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %priv.i107, align 4
  call void @kfree(ptr noundef %465) #13
  call void @amdgpu_free_extended_power_table(ptr noundef %handle) #13
  call void @mutex_unlock(ptr noundef %pm) #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #13
  br label %cleanup

cleanup:                                          ; preds = %kv_dpm_fini.exit, %if.end62, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %kv_dpm_fini.exit ], [ 0, %if.end62 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98
  %thermal = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 35
  %call = tail call zeroext i1 @flush_work(ptr noundef %thermal) #13
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #13
  %dpm.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15
  %num_ps.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 1
  %0 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.i = icmp sgt i32 %1, 0
  br i1 %cmp14.i, label %entry.for.body.i_crit_edge, label %entry.kv_dpm_fini.exit_crit_edge

entry.kv_dpm_fini.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_dpm_fini.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm.i, align 4
  %ps_priv.i = getelementptr %struct.amdgpu_ps, ptr %3, i32 %i.015.i, i32 9
  %4 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv.i, align 4
  tail call void @kfree(ptr noundef %5) #13
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %6 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ps.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.kv_dpm_fini.exit_crit_edge

for.body.i.kv_dpm_fini.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_dpm_fini.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

kv_dpm_fini.exit:                                 ; preds = %for.body.i.kv_dpm_fini.exit_crit_edge, %entry.kv_dpm_fini.exit_crit_edge
  %8 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm.i, align 4
  tail call void @kfree(ptr noundef %9) #13
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  tail call void @kfree(ptr noundef %11) #13
  tail call void @amdgpu_free_extended_power_table(ptr noundef %handle) #13
  tail call void @mutex_unlock(ptr noundef %pm) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_dpm to i32))
  %0 = load i32, ptr @amdgpu_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #13
  %priv.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %1 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i.i, align 4
  %uvd_power_gated.i.i = getelementptr inbounds %struct.kv_power_info, ptr %2, i32 0, i32 44
  %3 = ptrtoint ptr %uvd_power_gated.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %uvd_power_gated.i.i, align 4
  %4 = load ptr, ptr %priv.i.i.i, align 4
  %low_sclk_interrupt_t.i.i = getelementptr inbounds %struct.kv_power_info, ptr %4, i32 0, i32 43
  %5 = ptrtoint ptr %low_sclk_interrupt_t.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %low_sclk_interrupt_t.i.i, align 4
  %call = tail call fastcc i32 @kv_dpm_enable(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %spec.select = zext i1 %tobool1.not to i8
  %6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %6, align 8
  tail call void @mutex_unlock(ptr noundef %pm) #13
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %handle) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #13
  tail call fastcc void @kv_dpm_disable(ptr noundef %handle)
  tail call void @mutex_unlock(ptr noundef %pm) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #13
  tail call fastcc void @kv_dpm_disable(ptr noundef %handle)
  %boot_ps = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 4
  %2 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_ps, align 4
  %requested_ps = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 3
  %4 = ptrtoint ptr %requested_ps to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %requested_ps, align 4
  %current_ps = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 2
  %5 = ptrtoint ptr %current_ps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %current_ps, align 4
  tail call void @mutex_unlock(ptr noundef %pm) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then:                                          ; preds = %entry
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #13
  %priv.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %2 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i.i, align 4
  %uvd_power_gated.i.i = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %uvd_power_gated.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %uvd_power_gated.i.i, align 4
  %5 = load ptr, ptr %priv.i.i.i, align 4
  %low_sclk_interrupt_t.i.i = getelementptr inbounds %struct.kv_power_info, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %low_sclk_interrupt_t.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %low_sclk_interrupt_t.i.i, align 4
  %call = tail call fastcc i32 @kv_dpm_enable(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %. = zext i1 %tobool2.not to i8
  %7 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %., ptr %dpm_enabled, align 8
  tail call void @mutex_unlock(ptr noundef %pm) #13
  %8 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dpm_enabled, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.then.if.end15_crit_edge, label %if.then13

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %handle) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @kv_dpm_is_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kv_dpm_wait_for_idle(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kv_dpm_soft_reset(ptr nocapture noundef readnone %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kv_dpm_set_clockgating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kv_dpm_set_powergating_state(ptr nocapture noundef readnone %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_pre_set_power_state(ptr noundef %handle) #4 align 64 {
entry:
  %limit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_ps1 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 3
  %2 = ptrtoint ptr %requested_ps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %requested_ps1, align 4
  %requested_ps.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 36
  %4 = ptrtoint ptr %requested_ps.sroa.5.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %requested_ps.sroa.5.0.copyload = load ptr, ptr %requested_ps.sroa.5.0..sroa_idx, align 4
  %requested_rps.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71
  %5 = call ptr @memmove(ptr %requested_rps.i, ptr %3, i32 36)
  %requested_ps.sroa.5.0.requested_rps.i.sroa_idx = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %6 = ptrtoint ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %requested_ps.sroa.5.0.copyload, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %requested_ps.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72
  %7 = call ptr @memcpy(ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.copyload, i32 72)
  store ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  store ptr %requested_rps.i, ptr %requested_ps1, align 4
  %8 = load ptr, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %9 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i) #13
  %10 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %limit.i, align 4, !annotation !100
  %dyn_state.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21
  %max_clock_voltage_on_ac.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 13
  %vce_active.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 7
  %11 = ptrtoint ptr %vce_active.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vce_active.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vce_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 8
  %13 = ptrtoint ptr %vce_level.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vce_level.i, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 7, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %evclk9.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 5
  %17 = ptrtoint ptr %evclk9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %evclk9.i, align 4
  %18 = load i32, ptr %vce_level.i, align 4
  %ecclk.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 7, i32 %18, i32 1
  %19 = ptrtoint ptr %ecclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ecclk.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %evclk18.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 5
  %21 = ptrtoint ptr %evclk18.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %evclk18.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %20, %if.then.i ]
  %22 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %22, align 4
  %mclk20.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 13, i32 1
  %24 = ptrtoint ptr %mclk20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mclk20.i, align 4
  %caps_stable_p_state.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 66
  %26 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %caps_stable_p_state.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not.i = icmp eq i8 %27, 0
  br i1 %tobool21.not.i, label %if.end.i.if.end37.i_crit_edge, label %if.then22.i

if.end.i.if.end37.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then22.i:                                      ; preds = %if.end.i
  %28 = ptrtoint ptr %max_clock_voltage_on_ac.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_clock_voltage_on_ac.i, align 4
  %mul.i = mul i32 %29, 75
  %div.i = udiv i32 %mul.i, 100
  %30 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dyn_state.i, align 4
  %entries.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then22.i
  %i.0.in.i = phi i32 [ %31, %if.then22.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.if.end37.i_crit_edge

for.cond.i.if.end37.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

for.body.i:                                       ; preds = %for.cond.i
  %32 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %entries.i, align 4
  %arrayidx24.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %33, i32 %i.0.i
  %34 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx24.i, align 4
  %cmp25.not.i = icmp ult i32 %div.i, %35
  br i1 %cmp25.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp31.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp31.not.i, label %for.end.i.if.end37.i_crit_edge, label %if.then32.i

for.end.i.if.end37.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then32.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %33, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then32.i, %for.end.i.if.end37.i_crit_edge, %for.cond.i.if.end37.i_crit_edge, %if.end.i.if.end37.i_crit_edge
  %sclk.0.i = phi i32 [ 10000, %if.end.i.if.end37.i_crit_edge ], [ %37, %if.then32.i ], [ %35, %for.end.i.if.end37.i_crit_edge ], [ %div.i, %for.cond.i.if.end37.i_crit_edge ]
  %stable_p_state_sclk.2.i = phi i32 [ 0, %if.end.i.if.end37.i_crit_edge ], [ %37, %if.then32.i ], [ %35, %for.end.i.if.end37.i_crit_edge ], [ %div.i, %for.cond.i.if.end37.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end37.i.if.end60.i_crit_edge, label %if.then40.i

if.end37.i.if.end60.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  %vce_level46.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 8
  %38 = ptrtoint ptr %vce_level46.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vce_level46.i, align 4
  %sclk48.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 7, i32 %39, i32 2
  %40 = ptrtoint ptr %sclk48.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sclk48.i, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %sclk.0.i, i32 %41) #13
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end60.i_crit_edge
  %sclk.1.i = phi i32 [ %sclk.0.i, %if.end37.i.if.end60.i_crit_edge ], [ %42, %if.then40.i ]
  %need_dfs_bypass.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 2
  %43 = ptrtoint ptr %need_dfs_bypass.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %need_dfs_bypass.i, align 4
  %num_levels.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 1
  %44 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp627.not.i = icmp eq i32 %45, 0
  br i1 %cmp627.not.i, label %if.end60.i.for.end73.i_crit_edge, label %if.end60.i.for.body63.i_crit_edge

if.end60.i.for.body63.i_crit_edge:                ; preds = %if.end60.i
  br label %for.body63.i

if.end60.i.for.end73.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end73.i

for.body63.i:                                     ; preds = %for.inc72.i.for.body63.i_crit_edge, %if.end60.i.for.body63.i_crit_edge
  %i.18.i = phi i32 [ %inc.i, %for.inc72.i.for.body63.i_crit_edge ], [ 0, %if.end60.i.for.body63.i_crit_edge ]
  %arrayidx64.i = getelementptr [5 x %struct.kv_pl], ptr %8, i32 0, i32 %i.18.i
  %46 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sclk.1.i)
  %cmp66.i = icmp ult i32 %47, %sclk.1.i
  br i1 %cmp66.i, label %if.then67.i, label %for.body63.i.for.inc72.i_crit_edge

for.body63.i.for.inc72.i_crit_edge:               ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc72.i

if.then67.i:                                      ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sclk.1.i, ptr %arrayidx64.i, align 4
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %if.then67.i, %for.body63.i.for.inc72.i_crit_edge
  %inc.i = add nuw i32 %i.18.i, 1
  %49 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_levels.i, align 4
  %cmp62.i = icmp ult i32 %inc.i, %50
  br i1 %cmp62.i, label %for.inc72.i.for.body63.i_crit_edge, label %for.inc72.i.for.end73.i_crit_edge

for.inc72.i.for.end73.i_crit_edge:                ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end73.i

for.inc72.i.for.body63.i_crit_edge:               ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body63.i

for.end73.i:                                      ; preds = %for.inc72.i.for.end73.i_crit_edge, %if.end60.i.for.end73.i_crit_edge
  %51 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool76.not.i = icmp eq i32 %52, 0
  %53 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp10912.not.i = icmp eq i32 %54, 0
  br i1 %tobool76.not.i, label %if.else105.i, label %for.cond78.preheader.i

for.cond78.preheader.i:                           ; preds = %for.end73.i
  br i1 %cmp10912.not.i, label %for.cond78.preheader.i.if.end137.i_crit_edge, label %for.body81.lr.ph.i

for.cond78.preheader.i.if.end137.i_crit_edge:     ; preds = %for.cond78.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137.i

for.body81.lr.ph.i:                               ; preds = %for.cond78.preheader.i
  %high_voltage_t.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 10
  %entries95.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  br label %for.body81.i

for.body81.i:                                     ; preds = %for.inc102.i.for.body81.i_crit_edge, %for.body81.lr.ph.i
  %i.210.i = phi i32 [ 0, %for.body81.lr.ph.i ], [ %inc103.i, %for.inc102.i.for.body81.i_crit_edge ]
  %55 = ptrtoint ptr %high_voltage_t.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %high_voltage_t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool82.not.i = icmp eq i16 %56, 0
  br i1 %tobool82.not.i, label %for.body81.i.for.inc102.i_crit_edge, label %land.lhs.true83.i

for.body81.i.for.inc102.i_crit_edge:              ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102.i

land.lhs.true83.i:                                ; preds = %for.body81.i
  %vddc_index.i = getelementptr [5 x %struct.kv_pl], ptr %8, i32 0, i32 %i.210.i, i32 1
  %57 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vddc_index.i, align 4
  %conv88.i = zext i8 %58 to i16
  %mul.neg.i.i = mul nsw i16 %conv88.i, -25
  %sub.i.i = add nsw i16 %mul.neg.i.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %sub.i.i)
  %cmp91.i = icmp ult i16 %56, %sub.i.i
  br i1 %cmp91.i, label %if.then93.i, label %land.lhs.true83.i.for.inc102.i_crit_edge

land.lhs.true83.i.for.inc102.i_crit_edge:         ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc102.i

if.then93.i:                                      ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx87.i = getelementptr [5 x %struct.kv_pl], ptr %8, i32 0, i32 %i.210.i
  call fastcc void @kv_get_high_voltage_limit(ptr noundef %handle, ptr noundef nonnull %limit.i) #13
  %59 = ptrtoint ptr %entries95.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %entries95.i, align 4
  %61 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %limit.i, align 4
  %arrayidx96.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %60, i32 %62
  %63 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx96.i, align 4
  %65 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx87.i, align 4
  br label %for.inc102.i

for.inc102.i:                                     ; preds = %if.then93.i, %land.lhs.true83.i.for.inc102.i_crit_edge, %for.body81.i.for.inc102.i_crit_edge
  %inc103.i = add nuw i32 %i.210.i, 1
  %66 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_levels.i, align 4
  %cmp80.i = icmp ult i32 %inc103.i, %67
  br i1 %cmp80.i, label %for.inc102.i.for.body81.i_crit_edge, label %for.inc102.i.if.end137.i_crit_edge

for.inc102.i.if.end137.i_crit_edge:               ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137.i

for.inc102.i.for.body81.i_crit_edge:              ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body81.i

if.else105.i:                                     ; preds = %for.end73.i
  br i1 %cmp10912.not.i, label %if.else105.i.if.end137.i_crit_edge, label %for.body111.lr.ph.i

if.else105.i.if.end137.i_crit_edge:               ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137.i

for.body111.lr.ph.i:                              ; preds = %if.else105.i
  %high_voltage_t112.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 10
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.inc134.i.for.body111.i_crit_edge, %for.body111.lr.ph.i
  %i.313.i = phi i32 [ 0, %for.body111.lr.ph.i ], [ %inc135.i, %for.inc134.i.for.body111.i_crit_edge ]
  %68 = ptrtoint ptr %high_voltage_t112.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %high_voltage_t112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool114.not.i = icmp eq i16 %69, 0
  br i1 %tobool114.not.i, label %for.body111.i.for.inc134.i_crit_edge, label %land.lhs.true115.i

for.body111.i.for.inc134.i_crit_edge:             ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc134.i

land.lhs.true115.i:                               ; preds = %for.body111.i
  %vddc_index120.i = getelementptr [5 x %struct.kv_pl], ptr %8, i32 0, i32 %i.313.i, i32 1
  %70 = ptrtoint ptr %vddc_index120.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %vddc_index120.i, align 4
  %conv121.i = zext i8 %71 to i16
  %mul.neg.i1.i = mul nsw i16 %conv121.i, -25
  %sub.i2.i = add nsw i16 %mul.neg.i1.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %sub.i2.i)
  %cmp124.i = icmp ult i16 %69, %sub.i2.i
  br i1 %cmp124.i, label %if.then126.i, label %land.lhs.true115.i.for.inc134.i_crit_edge

land.lhs.true115.i.for.inc134.i_crit_edge:        ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc134.i

if.then126.i:                                     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx119.i = getelementptr [5 x %struct.kv_pl], ptr %8, i32 0, i32 %i.313.i
  call fastcc void @kv_get_high_voltage_limit(ptr noundef %handle, ptr noundef nonnull %limit.i) #13
  %72 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %limit.i, align 4
  %arrayidx129.i = getelementptr %struct.kv_power_info, ptr %9, i32 0, i32 2, i32 9, i32 1, i32 %73
  %74 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx129.i, align 4
  %76 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx119.i, align 4
  br label %for.inc134.i

for.inc134.i:                                     ; preds = %if.then126.i, %land.lhs.true115.i.for.inc134.i_crit_edge, %for.body111.i.for.inc134.i_crit_edge
  %inc135.i = add nuw i32 %i.313.i, 1
  %77 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_levels.i, align 4
  %cmp109.i = icmp ult i32 %inc135.i, %78
  br i1 %cmp109.i, label %for.inc134.i.for.body111.i_crit_edge, label %for.inc134.i.if.end137.i_crit_edge

for.inc134.i.if.end137.i_crit_edge:               ; preds = %for.inc134.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end137.i

for.inc134.i.for.body111.i_crit_edge:             ; preds = %for.inc134.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body111.i

if.end137.i:                                      ; preds = %for.inc134.i.if.end137.i_crit_edge, %if.else105.i.if.end137.i_crit_edge, %for.inc102.i.if.end137.i_crit_edge, %for.cond78.preheader.i.if.end137.i_crit_edge
  %79 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %caps_stable_p_state.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool139.not.i = icmp eq i8 %80, 0
  br i1 %tobool139.not.i, label %if.end137.i.if.end152.i_crit_edge, label %for.cond141.preheader.i

if.end137.i.if.end152.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

for.cond141.preheader.i:                          ; preds = %if.end137.i
  %81 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp14315.not.i = icmp eq i32 %82, 0
  br i1 %cmp14315.not.i, label %for.cond141.preheader.i.if.end152.i_crit_edge, label %for.cond141.preheader.i.for.body145.i_crit_edge

for.cond141.preheader.i.for.body145.i_crit_edge:  ; preds = %for.cond141.preheader.i
  br label %for.body145.i

for.cond141.preheader.i.if.end152.i_crit_edge:    ; preds = %for.cond141.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

for.body145.i:                                    ; preds = %for.body145.i.for.body145.i_crit_edge, %for.cond141.preheader.i.for.body145.i_crit_edge
  %i.416.i = phi i32 [ %inc150.i, %for.body145.i.for.body145.i_crit_edge ], [ 0, %for.cond141.preheader.i.for.body145.i_crit_edge ]
  %arrayidx147.i = getelementptr [5 x %struct.kv_pl], ptr %8, i32 0, i32 %i.416.i
  %83 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %stable_p_state_sclk.2.i, ptr %arrayidx147.i, align 4
  %inc150.i = add nuw i32 %i.416.i, 1
  %84 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_levels.i, align 4
  %cmp143.i = icmp ult i32 %inc150.i, %85
  br i1 %cmp143.i, label %for.body145.i.for.body145.i_crit_edge, label %for.body145.i.if.end152.i_crit_edge

for.body145.i.if.end152.i_crit_edge:              ; preds = %for.body145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152.i

for.body145.i.for.body145.i_crit_edge:            ; preds = %for.body145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body145.i

if.end152.i:                                      ; preds = %for.body145.i.if.end152.i_crit_edge, %for.cond141.preheader.i.if.end152.i_crit_edge, %if.end137.i.if.end152.i_crit_edge
  %dclk.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 4
  %86 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool153.not.i = icmp eq i32 %87, 0
  br i1 %tobool153.not.i, label %lor.lhs.false.i, label %if.end152.i.lor.end.i_crit_edge

if.end152.i.lor.end.i_crit_edge:                  ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %if.end152.i
  %vclk.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 3
  %88 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool154.not.i = icmp eq i32 %89, 0
  br i1 %tobool154.not.i, label %lor.lhs.false155.i, label %lor.lhs.false.i.lor.end.i_crit_edge

lor.lhs.false.i.lor.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.i

lor.lhs.false155.i:                               ; preds = %lor.lhs.false.i
  %evclk156.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 5
  %90 = ptrtoint ptr %evclk156.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %evclk156.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool157.not.i = icmp eq i32 %91, 0
  br i1 %tobool157.not.i, label %lor.rhs.i, label %lor.lhs.false155.i.lor.end.i_crit_edge

lor.lhs.false155.i.lor.end.i_crit_edge:           ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool159.i = icmp ne i32 %93, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false155.i.lor.end.i_crit_edge, %lor.lhs.false.i.lor.end.i_crit_edge, %if.end152.i.lor.end.i_crit_edge
  %94 = phi i1 [ true, %lor.lhs.false155.i.lor.end.i_crit_edge ], [ true, %lor.lhs.false.i.lor.end.i_crit_edge ], [ true, %if.end152.i.lor.end.i_crit_edge ], [ %tobool159.i, %lor.rhs.i ]
  %video_start.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 6
  %frombool.i = zext i1 %94 to i8
  %95 = ptrtoint ptr %video_start.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %frombool.i, ptr %video_start.i, align 2
  %class.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 1
  %96 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %class.i, align 4
  %and.i = and i32 %97, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp160.i = icmp eq i32 %and.i, 1
  %spec.select.i = zext i1 %cmp160.i to i8
  %98 = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 7
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %spec.select.i, ptr %98, align 1
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %100 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %asic_type.i, align 8
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %101, label %if.else173.i [
    i32 7, label %lor.end.i.if.then172.i_crit_edge
    i32 9, label %lor.end.i.if.then172.i_crit_edge26
  ]

lor.end.i.if.then172.i_crit_edge26:               ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then172.i

lor.end.i.if.then172.i_crit_edge:                 ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then172.i

if.then172.i:                                     ; preds = %lor.end.i.if.then172.i_crit_edge, %lor.end.i.if.then172.i_crit_edge26
  %dpm0_pg_nb_ps_lo.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 3
  %103 = ptrtoint ptr %dpm0_pg_nb_ps_lo.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %dpm0_pg_nb_ps_lo.i, align 1
  %dpm0_pg_nb_ps_hi.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 4
  %104 = ptrtoint ptr %dpm0_pg_nb_ps_hi.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %dpm0_pg_nb_ps_hi.i, align 2
  %dpmx_nb_ps_lo.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 5
  %105 = ptrtoint ptr %dpmx_nb_ps_lo.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %dpmx_nb_ps_lo.i, align 1
  %dpmx_nb_ps_hi.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 6
  %106 = ptrtoint ptr %dpmx_nb_ps_hi.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %dpmx_nb_ps_hi.i, align 4
  br label %kv_apply_state_adjust_rules.exit

if.else173.i:                                     ; preds = %lor.end.i
  %dpm0_pg_nb_ps_lo174.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 3
  %107 = ptrtoint ptr %dpm0_pg_nb_ps_lo174.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 3, ptr %dpm0_pg_nb_ps_lo174.i, align 1
  %dpm0_pg_nb_ps_hi175.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 4
  %108 = ptrtoint ptr %dpm0_pg_nb_ps_hi175.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %dpm0_pg_nb_ps_hi175.i, align 2
  %dpmx_nb_ps_lo176.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 5
  %109 = ptrtoint ptr %dpmx_nb_ps_lo176.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 3, ptr %dpmx_nb_ps_lo176.i, align 1
  %dpmx_nb_ps_hi177.i = getelementptr inbounds %struct.kv_ps, ptr %8, i32 0, i32 6
  %110 = ptrtoint ptr %dpmx_nb_ps_hi177.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %dpmx_nb_ps_hi177.i, align 4
  %nb_dpm_enable.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 2, i32 3
  %111 = ptrtoint ptr %nb_dpm_enable.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nb_dpm_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool179.not.i = icmp eq i32 %112, 0
  br i1 %tobool179.not.i, label %if.else173.i.kv_apply_state_adjust_rules.exit_crit_edge, label %if.then180.i

if.else173.i.kv_apply_state_adjust_rules.exit_crit_edge: ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_apply_state_adjust_rules.exit

if.then180.i:                                     ; preds = %if.else173.i
  %arrayidx182.i = getelementptr %struct.kv_power_info, ptr %9, i32 0, i32 2, i32 4, i32 3
  %113 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx182.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %114)
  %cmp183.not.i = icmp ult i32 %25, %114
  br i1 %cmp183.not.i, label %lor.lhs.false185.i, label %if.then180.i.lor.end197.i_crit_edge

if.then180.i.lor.end197.i_crit_edge:              ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end197.i

lor.lhs.false185.i:                               ; preds = %if.then180.i
  %115 = ptrtoint ptr %video_start.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %video_start.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool187.not.i = icmp eq i8 %116, 0
  br i1 %tobool187.not.i, label %lor.lhs.false189.i, label %lor.lhs.false185.i.lor.end197.i_crit_edge

lor.lhs.false185.i.lor.end197.i_crit_edge:        ; preds = %lor.lhs.false185.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end197.i

lor.lhs.false189.i:                               ; preds = %lor.lhs.false185.i
  %new_active_crtc_count.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 18
  %117 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp192.i = icmp sgt i32 %118, 2
  br i1 %cmp192.i, label %lor.lhs.false189.i.lor.end197.i_crit_edge, label %lor.rhs194.i

lor.lhs.false189.i.lor.end197.i_crit_edge:        ; preds = %lor.lhs.false189.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end197.i

lor.rhs194.i:                                     ; preds = %lor.lhs.false189.i
  call void @__sanitizer_cov_trace_pc() #15
  %disable_nb_ps3_in_battery.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 5
  %119 = ptrtoint ptr %disable_nb_ps3_in_battery.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %disable_nb_ps3_in_battery.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool195.not.i = icmp eq i8 %120, 0
  %phi.cast.i = select i1 %tobool195.not.i, i8 3, i8 2
  br label %lor.end197.i

lor.end197.i:                                     ; preds = %lor.rhs194.i, %lor.lhs.false189.i.lor.end197.i_crit_edge, %lor.lhs.false185.i.lor.end197.i_crit_edge, %if.then180.i.lor.end197.i_crit_edge
  %121 = phi i8 [ 2, %lor.lhs.false189.i.lor.end197.i_crit_edge ], [ 2, %lor.lhs.false185.i.lor.end197.i_crit_edge ], [ 2, %if.then180.i.lor.end197.i_crit_edge ], [ %phi.cast.i, %lor.rhs194.i ]
  %122 = ptrtoint ptr %dpm0_pg_nb_ps_lo174.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %dpm0_pg_nb_ps_lo174.i, align 1
  %123 = ptrtoint ptr %dpm0_pg_nb_ps_hi175.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 2, ptr %dpm0_pg_nb_ps_hi175.i, align 2
  %124 = ptrtoint ptr %dpmx_nb_ps_lo176.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %121, ptr %dpmx_nb_ps_lo176.i, align 1
  %125 = ptrtoint ptr %dpmx_nb_ps_hi177.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 2, ptr %dpmx_nb_ps_hi177.i, align 4
  br label %kv_apply_state_adjust_rules.exit

kv_apply_state_adjust_rules.exit:                 ; preds = %lor.end197.i, %if.else173.i.kv_apply_state_adjust_rules.exit_crit_edge, %if.then172.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_set_power_state(ptr noundef %handle) #1 align 64 {
entry:
  %low_sclk_interrupt_t.i312 = alloca i32, align 4
  %clk_bypass_cntl.i184 = alloca i8, align 1
  %low_sclk_interrupt_t.i = alloca i32, align 4
  %clk_bypass_cntl.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71
  %current_rps = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 69
  %bapm_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bapm_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bapm_enable, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %ac_power = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 23
  %4 = ptrtoint ptr %ac_power to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ac_power, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1 = icmp ne i8 %5, 0
  %call2 = tail call i32 @amdgpu_kv_smc_bapm_enable(ptr noundef %handle, i1 noundef zeroext %tobool1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %6 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asic_type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %7, label %if.else [
    i32 7, label %if.end5.if.then8_crit_edge
    i32 9, label %if.end5.if.then8_crit_edge343
  ]

if.end5.if.then8_crit_edge343:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.then8:                                         ; preds = %if.end5.if.then8_crit_edge, %if.end5.if.then8_crit_edge343
  %enable_dpm = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 50
  %9 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_dpm, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.then10

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  tail call fastcc void @kv_set_valid_clock_range(ptr noundef %handle, ptr noundef %requested_rps)
  %ps_priv.i.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %11 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps_priv.i.i, align 4
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clk_bypass_cntl.i) #13
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 67
  %15 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %caps_enable_dfs_bypass.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then10.kv_update_dfs_bypass_settings.exit_crit_edge, label %if.then.i

if.then10.kv_update_dfs_bypass_settings.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_update_dfs_bypass_settings.exit

if.then.i:                                        ; preds = %if.then10
  %need_dfs_bypass.i = getelementptr inbounds %struct.kv_ps, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %need_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %need_dfs_bypass.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %graphics_boot_level.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 36
  %19 = ptrtoint ptr %graphics_boot_level.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %graphics_boot_level.i, align 4
  %idxprom.i = zext i8 %20 to i32
  %ClkBypassCntl.i = getelementptr %struct.kv_power_info, ptr %14, i32 0, i32 22, i32 %idxprom.i, i32 16
  %21 = ptrtoint ptr %ClkBypassCntl.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ClkBypassCntl.i, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ %22, %cond.true.i ], [ 0, %if.then.i.cond.end.i_crit_edge ]
  %23 = ptrtoint ptr %clk_bypass_cntl.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cond.i, ptr %clk_bypass_cntl.i, align 1
  %dpm_table_start.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 14
  %24 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dpm_table_start.i, align 4
  %graphics_boot_level4.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 36
  %26 = ptrtoint ptr %graphics_boot_level4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %graphics_boot_level4.i, align 4
  %conv5.i = zext i8 %27 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, 28
  %add6.i = add i32 %25, 107
  %add7.i = add i32 %add6.i, %mul.i
  %sram_end.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 13
  %28 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sram_end.i, align 4
  %call8.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add7.i, ptr noundef nonnull %clk_bypass_cntl.i, i32 noundef 1, i32 noundef %29) #13
  br label %kv_update_dfs_bypass_settings.exit

kv_update_dfs_bypass_settings.exit:               ; preds = %cond.end.i, %if.then10.kv_update_dfs_bypass_settings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clk_bypass_cntl.i) #13
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i = getelementptr inbounds %struct.kv_power_info, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %lowest_valid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lowest_valid.i, align 4
  %highest_valid.i = getelementptr inbounds %struct.kv_power_info, ptr %31, i32 0, i32 9
  %34 = ptrtoint ptr %highest_valid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %highest_valid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i = icmp ugt i32 %33, %35
  br i1 %cmp.i, label %if.then14, label %kv_update_dfs_bypass_settings.exit.for.body.i_crit_edge

kv_update_dfs_bypass_settings.exit.for.body.i_crit_edge: ; preds = %kv_update_dfs_bypass_settings.exit
  br label %for.body.i

for.body.i:                                       ; preds = %kv_get_sleep_divider_id_from_clock.exit.i.for.body.i_crit_edge, %kv_update_dfs_bypass_settings.exit.for.body.i_crit_edge
  %i.019.i = phi i32 [ %inc.i, %kv_get_sleep_divider_id_from_clock.exit.i.for.body.i_crit_edge ], [ %33, %kv_update_dfs_bypass_settings.exit.for.body.i_crit_edge ]
  %SclkFrequency.i = getelementptr %struct.kv_power_info, ptr %31, i32 0, i32 22, i32 %i.019.i, i32 1
  %36 = ptrtoint ptr %SclkFrequency.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %SclkFrequency.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %37)
  %cmp1.i.i = icmp ult i32 %37, 10000
  br i1 %cmp1.i.i, label %for.body.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %if.end.i.i

for.body.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %38 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i, align 4
  %caps_sclk_ds.i.i = getelementptr inbounds %struct.kv_power_info, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %caps_sclk_ds.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %caps_sclk_ds.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i

if.end.i.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 319999, i32 %37)
  %cmp5.i.i = icmp ugt i32 %37, 319999
  br i1 %cmp5.i.i, label %for.cond.i.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.1

for.cond.i.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i.1:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 159999, i32 %37)
  %cmp5.i.i.1 = icmp ugt i32 %37, 159999
  br i1 %cmp5.i.i.1, label %for.cond.i.i.1.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.2

for.cond.i.i.1.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i.2:                                   ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 79999, i32 %37)
  %cmp5.i.i.2 = icmp ugt i32 %37, 79999
  br i1 %cmp5.i.i.2, label %for.cond.i.i.2.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.3

for.cond.i.i.2.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i.3:                                   ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 39999, i32 %37)
  %cmp5.i.i.3 = icmp ugt i32 %37, 39999
  br i1 %cmp5.i.i.3, label %for.cond.i.i.3.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i.i.4

for.cond.i.i.3.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i

for.cond.i.i.4:                                   ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %37)
  %cmp5.i.i.4 = icmp ugt i32 %37, 19999
  %spec.select = select i1 %cmp5.i.i.4, i8 1, i8 0
  br label %kv_get_sleep_divider_id_from_clock.exit.i

kv_get_sleep_divider_id_from_clock.exit.i:        ; preds = %for.cond.i.i.4, %for.cond.i.i.3.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i.i.2.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i.i.1.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, %if.end.i.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.body.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ 0, %for.body.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 0, %if.end.i.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 5, %for.cond.i.i.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 4, %for.cond.i.i.1.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 3, %for.cond.i.i.2.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 2, %for.cond.i.i.3.kv_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ %spec.select, %for.cond.i.i.4 ]
  %DeepSleepDivId.i = getelementptr %struct.kv_power_info, ptr %31, i32 0, i32 22, i32 %i.019.i, i32 15
  %42 = ptrtoint ptr %DeepSleepDivId.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %retval.0.i.i, ptr %DeepSleepDivId.i, align 2
  %inc.i = add i32 %i.019.i, 1
  %43 = ptrtoint ptr %highest_valid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %highest_valid.i, align 4
  %cmp3.not.i = icmp ugt i32 %inc.i, %44
  br i1 %cmp3.not.i, label %if.end15, label %kv_get_sleep_divider_id_from_clock.exit.i.for.body.i_crit_edge

kv_get_sleep_divider_id_from_clock.exit.i.for.body.i_crit_edge: ; preds = %kv_get_sleep_divider_id_from_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then14:                                        ; preds = %kv_update_dfs_bypass_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end15:                                         ; preds = %kv_get_sleep_divider_id_from_clock.exit.i
  call fastcc void @kv_calculate_nbps_level_settings(ptr noundef %handle)
  %45 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i119 = getelementptr inbounds %struct.kv_power_info, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %lowest_valid.i119 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lowest_valid.i119, align 4
  %highest_valid.i120 = getelementptr inbounds %struct.kv_power_info, ptr %46, i32 0, i32 9
  %49 = ptrtoint ptr %highest_valid.i120 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %highest_valid.i120, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.i121 = icmp ugt i32 %48, %50
  br i1 %cmp.i121, label %if.end15.kv_calculate_dpm_settings.exit_crit_edge, label %if.end15.for.body.i125_crit_edge

if.end15.for.body.i125_crit_edge:                 ; preds = %if.end15
  br label %for.body.i125

if.end15.kv_calculate_dpm_settings.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_calculate_dpm_settings.exit

for.body.i125:                                    ; preds = %for.body.i125.for.body.i125_crit_edge, %if.end15.for.body.i125_crit_edge
  %51 = phi i32 [ %54, %for.body.i125.for.body.i125_crit_edge ], [ %50, %if.end15.for.body.i125_crit_edge ]
  %i.02.i = phi i32 [ %inc.i123, %for.body.i125.for.body.i125_crit_edge ], [ %48, %if.end15.for.body.i125_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i, i32 %51)
  %cmp5.i = icmp eq i32 %i.02.i, %51
  %conv.i = zext i1 %cmp5.i to i8
  %DisplayWatermark.i = getelementptr %struct.kv_power_info, ptr %46, i32 0, i32 22, i32 %i.02.i, i32 9
  %52 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i, ptr %DisplayWatermark.i, align 4
  %inc.i123 = add i32 %i.02.i, 1
  %53 = ptrtoint ptr %highest_valid.i120 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %highest_valid.i120, align 4
  %cmp3.not.i124 = icmp ugt i32 %inc.i123, %54
  br i1 %cmp3.not.i124, label %for.body.i125.kv_calculate_dpm_settings.exit_crit_edge, label %for.body.i125.for.body.i125_crit_edge

for.body.i125.for.body.i125_crit_edge:            ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i125

for.body.i125.kv_calculate_dpm_settings.exit_crit_edge: ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_calculate_dpm_settings.exit

kv_calculate_dpm_settings.exit:                   ; preds = %for.body.i125.kv_calculate_dpm_settings.exit_crit_edge, %if.end15.kv_calculate_dpm_settings.exit_crit_edge
  %call.i = call fastcc i32 @kv_force_dpm_lowest(ptr noundef %handle) #13
  %55 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i127 = getelementptr inbounds %struct.kv_power_info, ptr %56, i32 0, i32 8
  %highest_valid.i128 = getelementptr inbounds %struct.kv_power_info, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %lowest_valid.i127 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lowest_valid.i127, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %58, label %kv_calculate_dpm_settings.exit.for.inc.1.i_crit_edge [
    i32 0, label %for.inc.i.thread
    i32 1, label %kv_calculate_dpm_settings.exit.land.lhs.true.1.i_crit_edge
  ]

kv_calculate_dpm_settings.exit.land.lhs.true.1.i_crit_edge: ; preds = %kv_calculate_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.1.i

kv_calculate_dpm_settings.exit.for.inc.1.i_crit_edge: ; preds = %kv_calculate_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

for.inc.i.thread:                                 ; preds = %kv_calculate_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  %EnabledForActivity.i.i = getelementptr %struct.kv_power_info, ptr %56, i32 0, i32 22, i32 0, i32 10
  %60 = ptrtoint ptr %EnabledForActivity.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %EnabledForActivity.i.i, align 1
  br label %land.lhs.true.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i.thread, %kv_calculate_dpm_settings.exit.land.lhs.true.1.i_crit_edge
  %61 = ptrtoint ptr %highest_valid.i128 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %highest_valid.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp2.not.1.i = icmp eq i32 %62, 0
  br i1 %cmp2.not.1.i, label %land.lhs.true.1.i.for.inc.1.ithread-pre-split_crit_edge, label %if.then.1.i

land.lhs.true.1.i.for.inc.1.ithread-pre-split_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.ithread-pre-split

if.then.1.i:                                      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.1.i = getelementptr %struct.kv_power_info, ptr %64, i32 0, i32 22, i32 1, i32 10
  %65 = ptrtoint ptr %EnabledForActivity.i.1.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %EnabledForActivity.i.1.i, align 1
  br label %for.inc.1.ithread-pre-split

for.inc.1.ithread-pre-split:                      ; preds = %if.then.1.i, %land.lhs.true.1.i.for.inc.1.ithread-pre-split_crit_edge
  %66 = ptrtoint ptr %lowest_valid.i127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr = load i32, ptr %lowest_valid.i127, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.1.ithread-pre-split, %kv_calculate_dpm_settings.exit.for.inc.1.i_crit_edge
  %67 = phi i32 [ %.pr, %for.inc.1.ithread-pre-split ], [ %58, %kv_calculate_dpm_settings.exit.for.inc.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp1.not.2.i = icmp ugt i32 %67, 2
  br i1 %cmp1.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %68 = ptrtoint ptr %highest_valid.i128 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %highest_valid.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp2.not.2.i = icmp ult i32 %69, 2
  br i1 %cmp2.not.2.i, label %land.lhs.true.2.i.kv_enable_new_levels.exit_crit_edge, label %if.then.2.i

land.lhs.true.2.i.kv_enable_new_levels.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_enable_new_levels.exit

if.then.2.i:                                      ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.2.i = getelementptr %struct.kv_power_info, ptr %71, i32 0, i32 22, i32 2, i32 10
  %72 = ptrtoint ptr %EnabledForActivity.i.2.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %EnabledForActivity.i.2.i, align 1
  %73 = ptrtoint ptr %lowest_valid.i127 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pr11.i = load i32, ptr %lowest_valid.i127, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %74 = phi i32 [ %.pr11.i, %if.then.2.i ], [ %67, %for.inc.1.i.for.inc.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp1.not.3.i = icmp ugt i32 %74, 3
  br i1 %cmp1.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %75 = ptrtoint ptr %highest_valid.i128 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr13.i = load i32, ptr %highest_valid.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr13.i)
  %cmp2.not.3.i = icmp ult i32 %.pr13.i, 3
  br i1 %cmp2.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %if.then.3.i

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.3.i = getelementptr %struct.kv_power_info, ptr %77, i32 0, i32 22, i32 3, i32 10
  %78 = ptrtoint ptr %EnabledForActivity.i.3.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %EnabledForActivity.i.3.i, align 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %79 = ptrtoint ptr %lowest_valid.i127 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr23.i = load i32, ptr %lowest_valid.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr23.i)
  %cmp1.not.4.i = icmp ugt i32 %.pr23.i, 4
  br i1 %cmp1.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %80 = ptrtoint ptr %highest_valid.i128 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr25.i = load i32, ptr %highest_valid.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr25.i)
  %cmp2.not.4.i = icmp ult i32 %.pr25.i, 4
  br i1 %cmp2.not.4.i, label %land.lhs.true.4.i.kv_enable_new_levels.exit_crit_edge, label %if.then.4.i

land.lhs.true.4.i.kv_enable_new_levels.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_enable_new_levels.exit

if.then.4.i:                                      ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.4.i = getelementptr %struct.kv_power_info, ptr %82, i32 0, i32 22, i32 4, i32 10
  %83 = ptrtoint ptr %EnabledForActivity.i.4.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %EnabledForActivity.i.4.i, align 1
  %84 = ptrtoint ptr %lowest_valid.i127 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr15.i = load i32, ptr %lowest_valid.i127, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %85 = phi i32 [ %.pr15.i, %if.then.4.i ], [ %.pr23.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %85)
  %cmp1.not.5.i = icmp ugt i32 %85, 5
  br i1 %cmp1.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %86 = ptrtoint ptr %highest_valid.i128 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr17.i = load i32, ptr %highest_valid.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr17.i)
  %cmp2.not.5.i = icmp ult i32 %.pr17.i, 5
  br i1 %cmp2.not.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge, label %if.then.5.i

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.5.i = getelementptr %struct.kv_power_info, ptr %88, i32 0, i32 22, i32 5, i32 10
  %89 = ptrtoint ptr %EnabledForActivity.i.5.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %EnabledForActivity.i.5.i, align 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %90 = ptrtoint ptr %lowest_valid.i127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr27.pr.i = load i32, ptr %lowest_valid.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr27.pr.i)
  %cmp1.not.6.i = icmp ugt i32 %.pr27.pr.i, 6
  br i1 %cmp1.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %91 = ptrtoint ptr %highest_valid.i128 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr29.pr.i = load i32, ptr %highest_valid.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr29.pr.i)
  %cmp2.not.6.i = icmp ult i32 %.pr29.pr.i, 6
  br i1 %cmp2.not.6.i, label %land.lhs.true.6.i.kv_enable_new_levels.exit_crit_edge, label %if.then.6.i

land.lhs.true.6.i.kv_enable_new_levels.exit_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_enable_new_levels.exit

if.then.6.i:                                      ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.6.i = getelementptr %struct.kv_power_info, ptr %93, i32 0, i32 22, i32 6, i32 10
  %94 = ptrtoint ptr %EnabledForActivity.i.6.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %EnabledForActivity.i.6.i, align 1
  %95 = ptrtoint ptr %lowest_valid.i127 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr19.i = load i32, ptr %lowest_valid.i127, align 4
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %96 = phi i32 [ %.pr19.i, %if.then.6.i ], [ %.pr27.pr.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %96)
  %cmp1.not.7.i = icmp ugt i32 %96, 7
  br i1 %cmp1.not.7.i, label %for.inc.6.i.kv_enable_new_levels.exit_crit_edge, label %land.lhs.true.7.i

for.inc.6.i.kv_enable_new_levels.exit_crit_edge:  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_enable_new_levels.exit

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %97 = ptrtoint ptr %highest_valid.i128 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr21.i = load i32, ptr %highest_valid.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.pr21.i)
  %cmp2.not.7.i = icmp ult i32 %.pr21.i, 7
  br i1 %cmp2.not.7.i, label %land.lhs.true.7.i.kv_enable_new_levels.exit_crit_edge, label %if.then.7.i

land.lhs.true.7.i.kv_enable_new_levels.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_enable_new_levels.exit

if.then.7.i:                                      ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.7.i = getelementptr %struct.kv_power_info, ptr %99, i32 0, i32 22, i32 7, i32 10
  %100 = ptrtoint ptr %EnabledForActivity.i.7.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %EnabledForActivity.i.7.i, align 1
  br label %kv_enable_new_levels.exit

kv_enable_new_levels.exit:                        ; preds = %if.then.7.i, %land.lhs.true.7.i.kv_enable_new_levels.exit_crit_edge, %for.inc.6.i.kv_enable_new_levels.exit_crit_edge, %land.lhs.true.6.i.kv_enable_new_levels.exit_crit_edge, %land.lhs.true.4.i.kv_enable_new_levels.exit_crit_edge, %land.lhs.true.2.i.kv_enable_new_levels.exit_crit_edge
  %101 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv.i, align 4
  %dpm_table_start.i131 = getelementptr inbounds %struct.kv_power_info, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %dpm_table_start.i131 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dpm_table_start.i131, align 4
  %add.i = add i32 %104, 84
  %graphics_level.i = getelementptr inbounds %struct.kv_power_info, ptr %102, i32 0, i32 22
  %sram_end.i132 = getelementptr inbounds %struct.kv_power_info, ptr %102, i32 0, i32 13
  %105 = ptrtoint ptr %sram_end.i132 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sram_end.i132, align 4
  %call1.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add.i, ptr noundef %graphics_level.i, i32 noundef 224, i32 noundef %106) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i133 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i133, label %if.end.i, label %kv_enable_new_levels.exit.kv_upload_dpm_settings.exit_crit_edge

kv_enable_new_levels.exit.kv_upload_dpm_settings.exit_crit_edge: ; preds = %kv_enable_new_levels.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_upload_dpm_settings.exit

if.end.i:                                         ; preds = %kv_enable_new_levels.exit
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %dpm_table_start.i131 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dpm_table_start.i131, align 4
  %add3.i = add i32 %108, 76
  %graphics_dpm_level_count.i = getelementptr inbounds %struct.kv_power_info, ptr %102, i32 0, i32 16
  %109 = ptrtoint ptr %sram_end.i132 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sram_end.i132, align 4
  %call5.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add3.i, ptr noundef %graphics_dpm_level_count.i, i32 noundef 1, i32 noundef %110) #13
  br label %kv_upload_dpm_settings.exit

kv_upload_dpm_settings.exit:                      ; preds = %if.end.i, %kv_enable_new_levels.exit.kv_upload_dpm_settings.exit_crit_edge
  %111 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ps_priv.i.i, align 4
  %113 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %asic_type, align 8
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %114, label %if.end.i138 [
    i32 7, label %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge
    i32 9, label %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge344
  ]

kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge344: ; preds = %kv_upload_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_program_nbps_index_settings.exit

kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge: ; preds = %kv_upload_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_program_nbps_index_settings.exit

if.end.i138:                                      ; preds = %kv_upload_dpm_settings.exit
  %116 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv.i, align 4
  %nb_dpm_enable.i = getelementptr inbounds %struct.kv_power_info, ptr %117, i32 0, i32 2, i32 3
  %118 = ptrtoint ptr %nb_dpm_enable.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nb_dpm_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i137 = icmp eq i32 %119, 0
  br i1 %tobool.not.i137, label %if.end.i138.kv_program_nbps_index_settings.exitthread-pre-split_crit_edge, label %if.then4.i

if.end.i138.kv_program_nbps_index_settings.exitthread-pre-split_crit_edge: ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_program_nbps_index_settings.exitthread-pre-split

if.then4.i:                                       ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #15
  %smc_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %120 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %smc_rreg.i, align 4
  %call5.i139 = call i32 %121(ptr noundef %handle, i32 noundef 260584) #13
  %dpm0_pg_nb_ps_lo.i = getelementptr inbounds %struct.kv_ps, ptr %112, i32 0, i32 3
  %122 = ptrtoint ptr %dpm0_pg_nb_ps_lo.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %dpm0_pg_nb_ps_lo.i, align 1
  %conv.i140 = zext i8 %123 to i32
  %dpm0_pg_nb_ps_hi.i = getelementptr inbounds %struct.kv_ps, ptr %112, i32 0, i32 4
  %124 = ptrtoint ptr %dpm0_pg_nb_ps_hi.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %dpm0_pg_nb_ps_hi.i, align 2
  %conv6.i = zext i8 %125 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or.i = or i32 %shl7.i, %conv.i140
  %dpmx_nb_ps_lo.i = getelementptr inbounds %struct.kv_ps, ptr %112, i32 0, i32 5
  %126 = ptrtoint ptr %dpmx_nb_ps_lo.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %dpmx_nb_ps_lo.i, align 1
  %conv8.i = zext i8 %127 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %or.i, %shl9.i
  %dpmx_nb_ps_hi.i = getelementptr inbounds %struct.kv_ps, ptr %112, i32 0, i32 6
  %128 = ptrtoint ptr %dpmx_nb_ps_hi.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %dpmx_nb_ps_hi.i, align 4
  %conv11.i = zext i8 %129 to i32
  %shl12.i = shl nuw i32 %conv11.i, 24
  %or13.i = or i32 %or10.i, %shl12.i
  %smc_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %130 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %smc_wreg.i, align 8
  call void %131(ptr noundef %handle, i32 noundef 260584, i32 noundef %or13.i) #13
  br label %kv_program_nbps_index_settings.exitthread-pre-split

kv_program_nbps_index_settings.exitthread-pre-split: ; preds = %if.then4.i, %if.end.i138.kv_program_nbps_index_settings.exitthread-pre-split_crit_edge
  %132 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pr339 = load i32, ptr %asic_type, align 8
  br label %kv_program_nbps_index_settings.exit

kv_program_nbps_index_settings.exit:              ; preds = %kv_program_nbps_index_settings.exitthread-pre-split, %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge, %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge344
  %133 = phi i32 [ %.pr339, %kv_program_nbps_index_settings.exitthread-pre-split ], [ %114, %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge ], [ %114, %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge344 ]
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %133, label %if.else.i [
    i32 7, label %kv_program_nbps_index_settings.exit.if.then.i143_crit_edge
    i32 9, label %kv_program_nbps_index_settings.exit.if.then.i143_crit_edge345
  ]

kv_program_nbps_index_settings.exit.if.then.i143_crit_edge345: ; preds = %kv_program_nbps_index_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i143

kv_program_nbps_index_settings.exit.if.then.i143_crit_edge: ; preds = %kv_program_nbps_index_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i143

if.then.i143:                                     ; preds = %kv_program_nbps_index_settings.exit.if.then.i143_crit_edge, %kv_program_nbps_index_settings.exit.if.then.i143_crit_edge345
  %call.i142 = call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 65) #13
  br label %kv_unforce_levels.exit

if.else.i:                                        ; preds = %kv_program_nbps_index_settings.exit
  %135 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i.i = getelementptr inbounds %struct.kv_power_info, ptr %136, i32 0, i32 8
  %137 = ptrtoint ptr %lowest_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %lowest_valid.i.i, align 4
  %highest_valid.i.i = getelementptr inbounds %struct.kv_power_info, ptr %136, i32 0, i32 9
  %139 = ptrtoint ptr %highest_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %highest_valid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %140)
  %cmp.not7.i.i = icmp ugt i32 %138, %140
  br i1 %cmp.not7.i.i, label %if.else.i.kv_set_enabled_levels.exit.i_crit_edge, label %if.else.i.for.body.i.i_crit_edge

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

if.else.i.kv_set_enabled_levels.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %new_mask.09.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.for.body.i.i_crit_edge ]
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %138, %if.else.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.08.i.i
  %or.i.i = or i32 %shl.i.i, %new_mask.09.i.i
  %inc.i.i = add i32 %i.08.i.i, 1
  %cmp.not.i.i = icmp ugt i32 %inc.i.i, %140
  br i1 %cmp.not.i.i, label %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit.i

kv_set_enabled_levels.exit.i:                     ; preds = %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge, %if.else.i.kv_set_enabled_levels.exit.i_crit_edge
  %new_mask.0.lcssa.i.i = phi i32 [ 0, %if.else.i.kv_set_enabled_levels.exit.i_crit_edge ], [ %or.i.i, %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge ]
  %call1.i.i = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i.i) #13
  br label %kv_unforce_levels.exit

kv_unforce_levels.exit:                           ; preds = %kv_set_enabled_levels.exit.i, %if.then.i143
  %141 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i146 = getelementptr inbounds %struct.kv_power_info, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %lowest_valid.i146 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %lowest_valid.i146, align 4
  %highest_valid.i147 = getelementptr inbounds %struct.kv_power_info, ptr %142, i32 0, i32 9
  %145 = ptrtoint ptr %highest_valid.i147 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %highest_valid.i147, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp.not7.i = icmp ugt i32 %144, %146
  br i1 %cmp.not7.i, label %kv_unforce_levels.exit.kv_set_enabled_levels.exit_crit_edge, label %kv_unforce_levels.exit.for.body.i150_crit_edge

kv_unforce_levels.exit.for.body.i150_crit_edge:   ; preds = %kv_unforce_levels.exit
  br label %for.body.i150

kv_unforce_levels.exit.kv_set_enabled_levels.exit_crit_edge: ; preds = %kv_unforce_levels.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit

for.body.i150:                                    ; preds = %for.body.i150.for.body.i150_crit_edge, %kv_unforce_levels.exit.for.body.i150_crit_edge
  %new_mask.09.i = phi i32 [ %or.i148, %for.body.i150.for.body.i150_crit_edge ], [ 0, %kv_unforce_levels.exit.for.body.i150_crit_edge ]
  %i.08.i = phi i32 [ %inc.i149, %for.body.i150.for.body.i150_crit_edge ], [ %144, %kv_unforce_levels.exit.for.body.i150_crit_edge ]
  %shl.i = shl nuw i32 1, %i.08.i
  %or.i148 = or i32 %shl.i, %new_mask.09.i
  %inc.i149 = add i32 %i.08.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i149, %146
  br i1 %cmp.not.i, label %for.body.i150.kv_set_enabled_levels.exit_crit_edge, label %for.body.i150.for.body.i150_crit_edge

for.body.i150.for.body.i150_crit_edge:            ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i150

for.body.i150.kv_set_enabled_levels.exit_crit_edge: ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit

kv_set_enabled_levels.exit:                       ; preds = %for.body.i150.kv_set_enabled_levels.exit_crit_edge, %kv_unforce_levels.exit.kv_set_enabled_levels.exit_crit_edge
  %new_mask.0.lcssa.i = phi i32 [ 0, %kv_unforce_levels.exit.kv_set_enabled_levels.exit_crit_edge ], [ %or.i148, %for.body.i150.kv_set_enabled_levels.exit_crit_edge ]
  %call1.i151 = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i) #13
  %call.i152 = call fastcc i32 @kv_force_dpm_lowest(ptr noundef %handle) #13
  %147 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %asic_type, align 8
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %148, label %if.else.i160 [
    i32 7, label %kv_set_enabled_levels.exit.if.then.i155_crit_edge
    i32 9, label %kv_set_enabled_levels.exit.if.then.i155_crit_edge346
  ]

kv_set_enabled_levels.exit.if.then.i155_crit_edge346: ; preds = %kv_set_enabled_levels.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i155

kv_set_enabled_levels.exit.if.then.i155_crit_edge: ; preds = %kv_set_enabled_levels.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i155

if.then.i155:                                     ; preds = %kv_set_enabled_levels.exit.if.then.i155_crit_edge, %kv_set_enabled_levels.exit.if.then.i155_crit_edge346
  %call.i154 = call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 65) #13
  br label %kv_unforce_levels.exit172

if.else.i160:                                     ; preds = %kv_set_enabled_levels.exit
  %150 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i.i157 = getelementptr inbounds %struct.kv_power_info, ptr %151, i32 0, i32 8
  %152 = ptrtoint ptr %lowest_valid.i.i157 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %lowest_valid.i.i157, align 4
  %highest_valid.i.i158 = getelementptr inbounds %struct.kv_power_info, ptr %151, i32 0, i32 9
  %154 = ptrtoint ptr %highest_valid.i.i158 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %highest_valid.i.i158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %155)
  %cmp.not7.i.i159 = icmp ugt i32 %153, %155
  br i1 %cmp.not7.i.i159, label %if.else.i160.kv_set_enabled_levels.exit.i170_crit_edge, label %if.else.i160.for.body.i.i167_crit_edge

if.else.i160.for.body.i.i167_crit_edge:           ; preds = %if.else.i160
  br label %for.body.i.i167

if.else.i160.kv_set_enabled_levels.exit.i170_crit_edge: ; preds = %if.else.i160
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit.i170

for.body.i.i167:                                  ; preds = %for.body.i.i167.for.body.i.i167_crit_edge, %if.else.i160.for.body.i.i167_crit_edge
  %new_mask.09.i.i161 = phi i32 [ %or.i.i164, %for.body.i.i167.for.body.i.i167_crit_edge ], [ 0, %if.else.i160.for.body.i.i167_crit_edge ]
  %i.08.i.i162 = phi i32 [ %inc.i.i165, %for.body.i.i167.for.body.i.i167_crit_edge ], [ %153, %if.else.i160.for.body.i.i167_crit_edge ]
  %shl.i.i163 = shl nuw i32 1, %i.08.i.i162
  %or.i.i164 = or i32 %shl.i.i163, %new_mask.09.i.i161
  %inc.i.i165 = add i32 %i.08.i.i162, 1
  %cmp.not.i.i166 = icmp ugt i32 %inc.i.i165, %155
  br i1 %cmp.not.i.i166, label %for.body.i.i167.kv_set_enabled_levels.exit.i170_crit_edge, label %for.body.i.i167.for.body.i.i167_crit_edge

for.body.i.i167.for.body.i.i167_crit_edge:        ; preds = %for.body.i.i167
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i167

for.body.i.i167.kv_set_enabled_levels.exit.i170_crit_edge: ; preds = %for.body.i.i167
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit.i170

kv_set_enabled_levels.exit.i170:                  ; preds = %for.body.i.i167.kv_set_enabled_levels.exit.i170_crit_edge, %if.else.i160.kv_set_enabled_levels.exit.i170_crit_edge
  %new_mask.0.lcssa.i.i168 = phi i32 [ 0, %if.else.i160.kv_set_enabled_levels.exit.i170_crit_edge ], [ %or.i.i164, %for.body.i.i167.kv_set_enabled_levels.exit.i170_crit_edge ]
  %call1.i.i169 = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i.i168) #13
  br label %kv_unforce_levels.exit172

kv_unforce_levels.exit172:                        ; preds = %kv_set_enabled_levels.exit.i170, %if.then.i155
  %call24 = call fastcc i32 @kv_update_vce_dpm(ptr noundef %handle, ptr noundef %requested_rps, ptr noundef %current_rps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %kv_unforce_levels.exit172
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end27:                                         ; preds = %kv_unforce_levels.exit172
  %156 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_sclk_interrupt_t.i) #13
  %caps_sclk_throttle_low_notification.i = getelementptr inbounds %struct.kv_power_info, ptr %157, i32 0, i32 59
  %158 = ptrtoint ptr %caps_sclk_throttle_low_notification.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %caps_sclk_throttle_low_notification.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i174 = icmp eq i8 %159, 0
  br i1 %tobool.not.i174, label %if.end27.kv_update_sclk_t.exit_crit_edge, label %if.then.i178

if.end27.kv_update_sclk_t.exit_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_update_sclk_t.exit

if.then.i178:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %low_sclk_interrupt_t1.i = getelementptr inbounds %struct.kv_power_info, ptr %157, i32 0, i32 43
  %160 = ptrtoint ptr %low_sclk_interrupt_t1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %low_sclk_interrupt_t1.i, align 4
  %162 = ptrtoint ptr %low_sclk_interrupt_t.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %low_sclk_interrupt_t.i, align 4
  %dpm_table_start.i175 = getelementptr inbounds %struct.kv_power_info, ptr %157, i32 0, i32 14
  %163 = ptrtoint ptr %dpm_table_start.i175 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %dpm_table_start.i175, align 4
  %add.i176 = add i32 %164, 764
  %sram_end.i177 = getelementptr inbounds %struct.kv_power_info, ptr %157, i32 0, i32 13
  %165 = ptrtoint ptr %sram_end.i177 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sram_end.i177, align 4
  %call2.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add.i176, ptr noundef nonnull %low_sclk_interrupt_t.i, i32 noundef 4, i32 noundef %166) #13
  br label %kv_update_sclk_t.exit

kv_update_sclk_t.exit:                            ; preds = %if.then.i178, %if.end27.kv_update_sclk_t.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_t.i) #13
  %167 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %168)
  %cmp30 = icmp eq i32 %168, 9
  br i1 %cmp30, label %if.then31, label %kv_update_sclk_t.exit.cleanup_crit_edge

kv_update_sclk_t.exit.cleanup_crit_edge:          ; preds = %kv_update_sclk_t.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then31:                                        ; preds = %kv_update_sclk_t.exit
  %169 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %priv.i, align 4
  %enable_nb_dpm.i = getelementptr inbounds %struct.kv_power_info, ptr %170, i32 0, i32 52
  %171 = ptrtoint ptr %enable_nb_dpm.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %enable_nb_dpm.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool1.not.i = icmp eq i8 %172, 0
  br i1 %tobool1.not.i, label %if.then31.cleanup_crit_edge, label %land.lhs.true.i

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then31
  %nb_dpm_enabled.i = getelementptr inbounds %struct.kv_power_info, ptr %170, i32 0, i32 48
  %173 = ptrtoint ptr %nb_dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %nb_dpm_enabled.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool2.not.i182 = icmp eq i8 %174, 0
  br i1 %tobool2.not.i182, label %if.then3.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call4.i = call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 320) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i183 = icmp eq i32 %call4.i, 0
  br i1 %cmp.i183, label %if.then5.i, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %175 = ptrtoint ptr %nb_dpm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %nb_dpm_enabled.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %enable_dpm35 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 50
  %176 = ptrtoint ptr %enable_dpm35 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %enable_dpm35, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool36.not = icmp eq i8 %177, 0
  br i1 %tobool36.not, label %if.else.cleanup_crit_edge, label %if.then37

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %if.else
  tail call fastcc void @kv_set_valid_clock_range(ptr noundef %handle, ptr noundef %requested_rps)
  %ps_priv.i.i185 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %178 = ptrtoint ptr %ps_priv.i.i185 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ps_priv.i.i185, align 4
  %180 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clk_bypass_cntl.i184) #13
  %caps_enable_dfs_bypass.i187 = getelementptr inbounds %struct.kv_power_info, ptr %181, i32 0, i32 67
  %182 = ptrtoint ptr %caps_enable_dfs_bypass.i187 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %caps_enable_dfs_bypass.i187, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i188 = icmp eq i8 %183, 0
  br i1 %tobool.not.i188, label %if.then37.kv_update_dfs_bypass_settings.exit207_crit_edge, label %if.then.i191

if.then37.kv_update_dfs_bypass_settings.exit207_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_update_dfs_bypass_settings.exit207

if.then.i191:                                     ; preds = %if.then37
  %need_dfs_bypass.i189 = getelementptr inbounds %struct.kv_ps, ptr %179, i32 0, i32 2
  %184 = ptrtoint ptr %need_dfs_bypass.i189 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %need_dfs_bypass.i189, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool2.not.i190 = icmp eq i8 %185, 0
  br i1 %tobool2.not.i190, label %if.then.i191.cond.end.i205_crit_edge, label %cond.true.i195

if.then.i191.cond.end.i205_crit_edge:             ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i205

cond.true.i195:                                   ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #15
  %graphics_boot_level.i192 = getelementptr inbounds %struct.kv_power_info, ptr %181, i32 0, i32 36
  %186 = ptrtoint ptr %graphics_boot_level.i192 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %graphics_boot_level.i192, align 4
  %idxprom.i193 = zext i8 %187 to i32
  %ClkBypassCntl.i194 = getelementptr %struct.kv_power_info, ptr %181, i32 0, i32 22, i32 %idxprom.i193, i32 16
  %188 = ptrtoint ptr %ClkBypassCntl.i194 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %ClkBypassCntl.i194, align 1
  br label %cond.end.i205

cond.end.i205:                                    ; preds = %cond.true.i195, %if.then.i191.cond.end.i205_crit_edge
  %cond.i196 = phi i8 [ %189, %cond.true.i195 ], [ 0, %if.then.i191.cond.end.i205_crit_edge ]
  %190 = ptrtoint ptr %clk_bypass_cntl.i184 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %cond.i196, ptr %clk_bypass_cntl.i184, align 1
  %dpm_table_start.i197 = getelementptr inbounds %struct.kv_power_info, ptr %181, i32 0, i32 14
  %191 = ptrtoint ptr %dpm_table_start.i197 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %dpm_table_start.i197, align 4
  %graphics_boot_level4.i198 = getelementptr inbounds %struct.kv_power_info, ptr %181, i32 0, i32 36
  %193 = ptrtoint ptr %graphics_boot_level4.i198 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %graphics_boot_level4.i198, align 4
  %conv5.i199 = zext i8 %194 to i32
  %mul.i200 = mul nuw nsw i32 %conv5.i199, 28
  %add6.i201 = add i32 %192, 107
  %add7.i202 = add i32 %add6.i201, %mul.i200
  %sram_end.i203 = getelementptr inbounds %struct.kv_power_info, ptr %181, i32 0, i32 13
  %195 = ptrtoint ptr %sram_end.i203 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %sram_end.i203, align 4
  %call8.i204 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add7.i202, ptr noundef nonnull %clk_bypass_cntl.i184, i32 noundef 1, i32 noundef %196) #13
  br label %kv_update_dfs_bypass_settings.exit207

kv_update_dfs_bypass_settings.exit207:            ; preds = %cond.end.i205, %if.then37.kv_update_dfs_bypass_settings.exit207_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clk_bypass_cntl.i184) #13
  %197 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i209 = getelementptr inbounds %struct.kv_power_info, ptr %198, i32 0, i32 8
  %199 = ptrtoint ptr %lowest_valid.i209 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %lowest_valid.i209, align 4
  %highest_valid.i210 = getelementptr inbounds %struct.kv_power_info, ptr %198, i32 0, i32 9
  %201 = ptrtoint ptr %highest_valid.i210 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %highest_valid.i210, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %202)
  %cmp.i211 = icmp ugt i32 %200, %202
  br i1 %cmp.i211, label %if.then41, label %kv_update_dfs_bypass_settings.exit207.for.body.i217_crit_edge

kv_update_dfs_bypass_settings.exit207.for.body.i217_crit_edge: ; preds = %kv_update_dfs_bypass_settings.exit207
  br label %for.body.i217

for.body.i217:                                    ; preds = %kv_get_sleep_divider_id_from_clock.exit.i234.for.body.i217_crit_edge, %kv_update_dfs_bypass_settings.exit207.for.body.i217_crit_edge
  %i.019.i214 = phi i32 [ %inc.i232, %kv_get_sleep_divider_id_from_clock.exit.i234.for.body.i217_crit_edge ], [ %200, %kv_update_dfs_bypass_settings.exit207.for.body.i217_crit_edge ]
  %SclkFrequency.i215 = getelementptr %struct.kv_power_info, ptr %198, i32 0, i32 22, i32 %i.019.i214, i32 1
  %203 = ptrtoint ptr %SclkFrequency.i215 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %SclkFrequency.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %204)
  %cmp1.i.i216 = icmp ult i32 %204, 10000
  br i1 %cmp1.i.i216, label %for.body.i217.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, label %if.end.i.i220

for.body.i217.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge: ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i234

if.end.i.i220:                                    ; preds = %for.body.i217
  %205 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %priv.i, align 4
  %caps_sclk_ds.i.i218 = getelementptr inbounds %struct.kv_power_info, ptr %206, i32 0, i32 68
  %207 = ptrtoint ptr %caps_sclk_ds.i.i218 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %caps_sclk_ds.i.i218, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool.not.i.i219 = icmp eq i8 %208, 0
  br i1 %tobool.not.i.i219, label %if.end.i.i220.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, label %for.cond.i.i227

if.end.i.i220.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge: ; preds = %if.end.i.i220
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i234

for.cond.i.i227:                                  ; preds = %if.end.i.i220
  call void @__sanitizer_cov_trace_const_cmp4(i32 319999, i32 %204)
  %cmp5.i.i224 = icmp ugt i32 %204, 319999
  br i1 %cmp5.i.i224, label %for.cond.i.i227.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, label %for.cond.i.i227.1

for.cond.i.i227.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge: ; preds = %for.cond.i.i227
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i234

for.cond.i.i227.1:                                ; preds = %for.cond.i.i227
  call void @__sanitizer_cov_trace_const_cmp4(i32 159999, i32 %204)
  %cmp5.i.i224.1 = icmp ugt i32 %204, 159999
  br i1 %cmp5.i.i224.1, label %for.cond.i.i227.1.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, label %for.cond.i.i227.2

for.cond.i.i227.1.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge: ; preds = %for.cond.i.i227.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i234

for.cond.i.i227.2:                                ; preds = %for.cond.i.i227.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 79999, i32 %204)
  %cmp5.i.i224.2 = icmp ugt i32 %204, 79999
  br i1 %cmp5.i.i224.2, label %for.cond.i.i227.2.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, label %for.cond.i.i227.3

for.cond.i.i227.2.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge: ; preds = %for.cond.i.i227.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i234

for.cond.i.i227.3:                                ; preds = %for.cond.i.i227.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 39999, i32 %204)
  %cmp5.i.i224.3 = icmp ugt i32 %204, 39999
  br i1 %cmp5.i.i224.3, label %for.cond.i.i227.3.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, label %for.cond.i.i227.4

for.cond.i.i227.3.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge: ; preds = %for.cond.i.i227.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_sleep_divider_id_from_clock.exit.i234

for.cond.i.i227.4:                                ; preds = %for.cond.i.i227.3
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %204)
  %cmp5.i.i224.4 = icmp ugt i32 %204, 19999
  %spec.select342 = select i1 %cmp5.i.i224.4, i8 1, i8 0
  br label %kv_get_sleep_divider_id_from_clock.exit.i234

kv_get_sleep_divider_id_from_clock.exit.i234:     ; preds = %for.cond.i.i227.4, %for.cond.i.i227.3.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, %for.cond.i.i227.2.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, %for.cond.i.i227.1.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, %for.cond.i.i227.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, %if.end.i.i220.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge, %for.body.i217.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge
  %retval.0.i.i230 = phi i8 [ 0, %for.body.i217.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge ], [ 0, %if.end.i.i220.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge ], [ 5, %for.cond.i.i227.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge ], [ 4, %for.cond.i.i227.1.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge ], [ 3, %for.cond.i.i227.2.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge ], [ 2, %for.cond.i.i227.3.kv_get_sleep_divider_id_from_clock.exit.i234_crit_edge ], [ %spec.select342, %for.cond.i.i227.4 ]
  %DeepSleepDivId.i231 = getelementptr %struct.kv_power_info, ptr %198, i32 0, i32 22, i32 %i.019.i214, i32 15
  %209 = ptrtoint ptr %DeepSleepDivId.i231 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %retval.0.i.i230, ptr %DeepSleepDivId.i231, align 2
  %inc.i232 = add i32 %i.019.i214, 1
  %210 = ptrtoint ptr %highest_valid.i210 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %highest_valid.i210, align 4
  %cmp3.not.i233 = icmp ugt i32 %inc.i232, %211
  br i1 %cmp3.not.i233, label %if.end42, label %kv_get_sleep_divider_id_from_clock.exit.i234.for.body.i217_crit_edge

kv_get_sleep_divider_id_from_clock.exit.i234.for.body.i217_crit_edge: ; preds = %kv_get_sleep_divider_id_from_clock.exit.i234
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i217

if.then41:                                        ; preds = %kv_update_dfs_bypass_settings.exit207
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end42:                                         ; preds = %kv_get_sleep_divider_id_from_clock.exit.i234
  call fastcc void @kv_calculate_nbps_level_settings(ptr noundef %handle)
  %212 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i238 = getelementptr inbounds %struct.kv_power_info, ptr %213, i32 0, i32 8
  %214 = ptrtoint ptr %lowest_valid.i238 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %lowest_valid.i238, align 4
  %highest_valid.i239 = getelementptr inbounds %struct.kv_power_info, ptr %213, i32 0, i32 9
  %216 = ptrtoint ptr %highest_valid.i239 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %highest_valid.i239, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %217)
  %cmp.i240 = icmp ugt i32 %215, %217
  br i1 %cmp.i240, label %if.end42.kv_calculate_dpm_settings.exit250_crit_edge, label %if.end42.for.body.i249_crit_edge

if.end42.for.body.i249_crit_edge:                 ; preds = %if.end42
  br label %for.body.i249

if.end42.kv_calculate_dpm_settings.exit250_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_calculate_dpm_settings.exit250

for.body.i249:                                    ; preds = %for.body.i249.for.body.i249_crit_edge, %if.end42.for.body.i249_crit_edge
  %218 = phi i32 [ %221, %for.body.i249.for.body.i249_crit_edge ], [ %217, %if.end42.for.body.i249_crit_edge ]
  %i.02.i243 = phi i32 [ %inc.i247, %for.body.i249.for.body.i249_crit_edge ], [ %215, %if.end42.for.body.i249_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i243, i32 %218)
  %cmp5.i244 = icmp eq i32 %i.02.i243, %218
  %conv.i245 = zext i1 %cmp5.i244 to i8
  %DisplayWatermark.i246 = getelementptr %struct.kv_power_info, ptr %213, i32 0, i32 22, i32 %i.02.i243, i32 9
  %219 = ptrtoint ptr %DisplayWatermark.i246 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv.i245, ptr %DisplayWatermark.i246, align 4
  %inc.i247 = add i32 %i.02.i243, 1
  %220 = ptrtoint ptr %highest_valid.i239 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %highest_valid.i239, align 4
  %cmp3.not.i248 = icmp ugt i32 %inc.i247, %221
  br i1 %cmp3.not.i248, label %for.body.i249.kv_calculate_dpm_settings.exit250_crit_edge, label %for.body.i249.for.body.i249_crit_edge

for.body.i249.for.body.i249_crit_edge:            ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i249

for.body.i249.kv_calculate_dpm_settings.exit250_crit_edge: ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_calculate_dpm_settings.exit250

kv_calculate_dpm_settings.exit250:                ; preds = %for.body.i249.kv_calculate_dpm_settings.exit250_crit_edge, %if.end42.kv_calculate_dpm_settings.exit250_crit_edge
  %call.i251 = call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 393) #13
  %222 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %priv.i, align 4
  %dpm_table_start.i253 = getelementptr inbounds %struct.kv_power_info, ptr %223, i32 0, i32 14
  %224 = ptrtoint ptr %dpm_table_start.i253 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dpm_table_start.i253, align 4
  %add.i254 = add i32 %225, 84
  %graphics_level.i255 = getelementptr inbounds %struct.kv_power_info, ptr %223, i32 0, i32 22
  %sram_end.i256 = getelementptr inbounds %struct.kv_power_info, ptr %223, i32 0, i32 13
  %226 = ptrtoint ptr %sram_end.i256 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %sram_end.i256, align 4
  %call1.i257 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add.i254, ptr noundef %graphics_level.i255, i32 noundef 224, i32 noundef %227) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i257)
  %tobool.not.i258 = icmp eq i32 %call1.i257, 0
  br i1 %tobool.not.i258, label %if.end.i262, label %kv_calculate_dpm_settings.exit250.kv_upload_dpm_settings.exit264_crit_edge

kv_calculate_dpm_settings.exit250.kv_upload_dpm_settings.exit264_crit_edge: ; preds = %kv_calculate_dpm_settings.exit250
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_upload_dpm_settings.exit264

if.end.i262:                                      ; preds = %kv_calculate_dpm_settings.exit250
  call void @__sanitizer_cov_trace_pc() #15
  %228 = ptrtoint ptr %dpm_table_start.i253 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %dpm_table_start.i253, align 4
  %add3.i259 = add i32 %229, 76
  %graphics_dpm_level_count.i260 = getelementptr inbounds %struct.kv_power_info, ptr %223, i32 0, i32 16
  %230 = ptrtoint ptr %sram_end.i256 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %sram_end.i256, align 4
  %call5.i261 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add3.i259, ptr noundef %graphics_dpm_level_count.i260, i32 noundef 1, i32 noundef %231) #13
  br label %kv_upload_dpm_settings.exit264

kv_upload_dpm_settings.exit264:                   ; preds = %if.end.i262, %kv_calculate_dpm_settings.exit250.kv_upload_dpm_settings.exit264_crit_edge
  %232 = ptrtoint ptr %ps_priv.i.i185 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ps_priv.i.i185, align 4
  %234 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %asic_type, align 8
  %236 = zext i32 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %235, label %if.end.i270 [
    i32 7, label %kv_upload_dpm_settings.exit264.kv_program_nbps_index_settings.exit289_crit_edge
    i32 9, label %kv_upload_dpm_settings.exit264.kv_program_nbps_index_settings.exit289_crit_edge347
  ]

kv_upload_dpm_settings.exit264.kv_program_nbps_index_settings.exit289_crit_edge347: ; preds = %kv_upload_dpm_settings.exit264
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_program_nbps_index_settings.exit289

kv_upload_dpm_settings.exit264.kv_program_nbps_index_settings.exit289_crit_edge: ; preds = %kv_upload_dpm_settings.exit264
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_program_nbps_index_settings.exit289

if.end.i270:                                      ; preds = %kv_upload_dpm_settings.exit264
  %237 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %priv.i, align 4
  %nb_dpm_enable.i268 = getelementptr inbounds %struct.kv_power_info, ptr %238, i32 0, i32 2, i32 3
  %239 = ptrtoint ptr %nb_dpm_enable.i268 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %nb_dpm_enable.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool.not.i269 = icmp eq i32 %240, 0
  br i1 %tobool.not.i269, label %if.end.i270.kv_program_nbps_index_settings.exit289_crit_edge, label %if.then4.i288

if.end.i270.kv_program_nbps_index_settings.exit289_crit_edge: ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_program_nbps_index_settings.exit289

if.then4.i288:                                    ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #15
  %smc_rreg.i271 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %241 = ptrtoint ptr %smc_rreg.i271 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %smc_rreg.i271, align 4
  %call5.i272 = call i32 %242(ptr noundef %handle, i32 noundef 260584) #13
  %dpm0_pg_nb_ps_lo.i273 = getelementptr inbounds %struct.kv_ps, ptr %233, i32 0, i32 3
  %243 = ptrtoint ptr %dpm0_pg_nb_ps_lo.i273 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %dpm0_pg_nb_ps_lo.i273, align 1
  %conv.i274 = zext i8 %244 to i32
  %dpm0_pg_nb_ps_hi.i275 = getelementptr inbounds %struct.kv_ps, ptr %233, i32 0, i32 4
  %245 = ptrtoint ptr %dpm0_pg_nb_ps_hi.i275 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %dpm0_pg_nb_ps_hi.i275, align 2
  %conv6.i276 = zext i8 %246 to i32
  %shl7.i277 = shl nuw nsw i32 %conv6.i276, 8
  %or.i278 = or i32 %shl7.i277, %conv.i274
  %dpmx_nb_ps_lo.i279 = getelementptr inbounds %struct.kv_ps, ptr %233, i32 0, i32 5
  %247 = ptrtoint ptr %dpmx_nb_ps_lo.i279 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %dpmx_nb_ps_lo.i279, align 1
  %conv8.i280 = zext i8 %248 to i32
  %shl9.i281 = shl nuw nsw i32 %conv8.i280, 16
  %or10.i282 = or i32 %or.i278, %shl9.i281
  %dpmx_nb_ps_hi.i283 = getelementptr inbounds %struct.kv_ps, ptr %233, i32 0, i32 6
  %249 = ptrtoint ptr %dpmx_nb_ps_hi.i283 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %dpmx_nb_ps_hi.i283, align 4
  %conv11.i284 = zext i8 %250 to i32
  %shl12.i285 = shl nuw i32 %conv11.i284, 24
  %or13.i286 = or i32 %or10.i282, %shl12.i285
  %smc_wreg.i287 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 37
  %251 = ptrtoint ptr %smc_wreg.i287 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %smc_wreg.i287, align 8
  call void %252(ptr noundef %handle, i32 noundef 260584, i32 noundef %or13.i286) #13
  br label %kv_program_nbps_index_settings.exit289

kv_program_nbps_index_settings.exit289:           ; preds = %if.then4.i288, %if.end.i270.kv_program_nbps_index_settings.exit289_crit_edge, %kv_upload_dpm_settings.exit264.kv_program_nbps_index_settings.exit289_crit_edge, %kv_upload_dpm_settings.exit264.kv_program_nbps_index_settings.exit289_crit_edge347
  %call.i290 = call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 394) #13
  %253 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i292 = getelementptr inbounds %struct.kv_power_info, ptr %254, i32 0, i32 8
  %255 = ptrtoint ptr %lowest_valid.i292 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %lowest_valid.i292, align 4
  %highest_valid.i293 = getelementptr inbounds %struct.kv_power_info, ptr %254, i32 0, i32 9
  %257 = ptrtoint ptr %highest_valid.i293 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %highest_valid.i293, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %258)
  %cmp.not7.i294 = icmp ugt i32 %256, %258
  br i1 %cmp.not7.i294, label %kv_program_nbps_index_settings.exit289.kv_set_enabled_levels.exit304_crit_edge, label %kv_program_nbps_index_settings.exit289.for.body.i301_crit_edge

kv_program_nbps_index_settings.exit289.for.body.i301_crit_edge: ; preds = %kv_program_nbps_index_settings.exit289
  br label %for.body.i301

kv_program_nbps_index_settings.exit289.kv_set_enabled_levels.exit304_crit_edge: ; preds = %kv_program_nbps_index_settings.exit289
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit304

for.body.i301:                                    ; preds = %for.body.i301.for.body.i301_crit_edge, %kv_program_nbps_index_settings.exit289.for.body.i301_crit_edge
  %new_mask.09.i295 = phi i32 [ %or.i298, %for.body.i301.for.body.i301_crit_edge ], [ 0, %kv_program_nbps_index_settings.exit289.for.body.i301_crit_edge ]
  %i.08.i296 = phi i32 [ %inc.i299, %for.body.i301.for.body.i301_crit_edge ], [ %256, %kv_program_nbps_index_settings.exit289.for.body.i301_crit_edge ]
  %shl.i297 = shl nuw i32 1, %i.08.i296
  %or.i298 = or i32 %shl.i297, %new_mask.09.i295
  %inc.i299 = add i32 %i.08.i296, 1
  %cmp.not.i300 = icmp ugt i32 %inc.i299, %258
  br i1 %cmp.not.i300, label %for.body.i301.kv_set_enabled_levels.exit304_crit_edge, label %for.body.i301.for.body.i301_crit_edge

for.body.i301.for.body.i301_crit_edge:            ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i301

for.body.i301.kv_set_enabled_levels.exit304_crit_edge: ; preds = %for.body.i301
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit304

kv_set_enabled_levels.exit304:                    ; preds = %for.body.i301.kv_set_enabled_levels.exit304_crit_edge, %kv_program_nbps_index_settings.exit289.kv_set_enabled_levels.exit304_crit_edge
  %new_mask.0.lcssa.i302 = phi i32 [ 0, %kv_program_nbps_index_settings.exit289.kv_set_enabled_levels.exit304_crit_edge ], [ %or.i298, %for.body.i301.kv_set_enabled_levels.exit304_crit_edge ]
  %call1.i303 = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i302) #13
  %call49 = call fastcc i32 @kv_update_vce_dpm(ptr noundef %handle, ptr noundef %requested_rps, ptr noundef %current_rps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %kv_set_enabled_levels.exit304
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end52:                                         ; preds = %kv_set_enabled_levels.exit304
  %259 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %priv.i, align 4
  %caps_stable_p_state.i = getelementptr inbounds %struct.kv_power_info, ptr %260, i32 0, i32 66
  %261 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %caps_stable_p_state.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool.not.i306 = icmp eq i8 %262, 0
  br i1 %tobool.not.i306, label %if.then.i308, label %if.end52.kv_update_acp_boot_level.exit_crit_edge

if.end52.kv_update_acp_boot_level.exit_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_update_acp_boot_level.exit

if.then.i308:                                     ; preds = %if.end52
  %acp_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 8
  %263 = ptrtoint ptr %acp_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %acp_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp6.i.i = icmp eq i32 %264, 0
  %i.1.i.i = sext i1 %cmp6.i.i to i8
  %acp_boot_level2.i = getelementptr inbounds %struct.kv_power_info, ptr %260, i32 0, i32 30
  %265 = ptrtoint ptr %acp_boot_level2.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %acp_boot_level2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %266, i8 %i.1.i.i)
  %cmp.not.i307 = icmp eq i8 %266, %i.1.i.i
  br i1 %cmp.not.i307, label %if.then.i308.kv_update_acp_boot_level.exit_crit_edge, label %if.then5.i311

if.then.i308.kv_update_acp_boot_level.exit_crit_edge: ; preds = %if.then.i308
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_update_acp_boot_level.exit

if.then5.i311:                                    ; preds = %if.then.i308
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i309 = zext i8 %i.1.i.i to i32
  %267 = ptrtoint ptr %acp_boot_level2.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %i.1.i.i, ptr %acp_boot_level2.i, align 2
  %shl.i310 = shl nuw i32 1, %conv.i309
  %call9.i = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 303, i32 noundef %shl.i310) #13
  br label %kv_update_acp_boot_level.exit

kv_update_acp_boot_level.exit:                    ; preds = %if.then5.i311, %if.then.i308.kv_update_acp_boot_level.exit_crit_edge, %if.end52.kv_update_acp_boot_level.exit_crit_edge
  %268 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_sclk_interrupt_t.i312) #13
  %caps_sclk_throttle_low_notification.i314 = getelementptr inbounds %struct.kv_power_info, ptr %269, i32 0, i32 59
  %270 = ptrtoint ptr %caps_sclk_throttle_low_notification.i314 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %caps_sclk_throttle_low_notification.i314, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool.not.i315 = icmp eq i8 %271, 0
  br i1 %tobool.not.i315, label %kv_update_acp_boot_level.exit.kv_update_sclk_t.exit323_crit_edge, label %if.then.i321

kv_update_acp_boot_level.exit.kv_update_sclk_t.exit323_crit_edge: ; preds = %kv_update_acp_boot_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_update_sclk_t.exit323

if.then.i321:                                     ; preds = %kv_update_acp_boot_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %low_sclk_interrupt_t1.i316 = getelementptr inbounds %struct.kv_power_info, ptr %269, i32 0, i32 43
  %272 = ptrtoint ptr %low_sclk_interrupt_t1.i316 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %low_sclk_interrupt_t1.i316, align 4
  %274 = ptrtoint ptr %low_sclk_interrupt_t.i312 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %low_sclk_interrupt_t.i312, align 4
  %dpm_table_start.i317 = getelementptr inbounds %struct.kv_power_info, ptr %269, i32 0, i32 14
  %275 = ptrtoint ptr %dpm_table_start.i317 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %dpm_table_start.i317, align 4
  %add.i318 = add i32 %276, 764
  %sram_end.i319 = getelementptr inbounds %struct.kv_power_info, ptr %269, i32 0, i32 13
  %277 = ptrtoint ptr %sram_end.i319 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %sram_end.i319, align 4
  %call2.i320 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add.i318, ptr noundef nonnull %low_sclk_interrupt_t.i312, i32 noundef 4, i32 noundef %278) #13
  br label %kv_update_sclk_t.exit323

kv_update_sclk_t.exit323:                         ; preds = %if.then.i321, %kv_update_acp_boot_level.exit.kv_update_sclk_t.exit323_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_t.i312) #13
  %279 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %priv.i, align 4
  %enable_nb_dpm.i325 = getelementptr inbounds %struct.kv_power_info, ptr %280, i32 0, i32 52
  %281 = ptrtoint ptr %enable_nb_dpm.i325 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %enable_nb_dpm.i325, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %tobool1.not.i326 = icmp eq i8 %282, 0
  br i1 %tobool1.not.i326, label %kv_update_sclk_t.exit323.cleanup_crit_edge, label %land.lhs.true.i330

kv_update_sclk_t.exit323.cleanup_crit_edge:       ; preds = %kv_update_sclk_t.exit323
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i330:                               ; preds = %kv_update_sclk_t.exit323
  %nb_dpm_enabled.i328 = getelementptr inbounds %struct.kv_power_info, ptr %280, i32 0, i32 48
  %283 = ptrtoint ptr %nb_dpm_enabled.i328 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %nb_dpm_enabled.i328, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool2.not.i329 = icmp eq i8 %284, 0
  br i1 %tobool2.not.i329, label %if.then3.i333, label %land.lhs.true.i330.cleanup_crit_edge

land.lhs.true.i330.cleanup_crit_edge:             ; preds = %land.lhs.true.i330
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i333:                                    ; preds = %land.lhs.true.i330
  %call4.i331 = call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 320) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i331)
  %cmp.i332 = icmp eq i32 %call4.i331, 0
  br i1 %cmp.i332, label %if.then5.i334, label %if.then3.i333.cleanup_crit_edge

if.then3.i333.cleanup_crit_edge:                  ; preds = %if.then3.i333
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5.i334:                                    ; preds = %if.then3.i333
  call void @__sanitizer_cov_trace_pc() #15
  %285 = ptrtoint ptr %nb_dpm_enabled.i328 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 1, ptr %nb_dpm_enabled.i328, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i334, %if.then3.i333.cleanup_crit_edge, %land.lhs.true.i330.cleanup_crit_edge, %kv_update_sclk_t.exit323.cleanup_crit_edge, %if.then51, %if.then41, %if.else.cleanup_crit_edge, %if.then5.i, %if.then3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %kv_update_sclk_t.exit.cleanup_crit_edge, %if.then26, %if.then14, %if.then8.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ -22, %if.then14 ], [ %call24, %if.then26 ], [ -22, %if.then41 ], [ %call49, %if.then51 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %kv_update_sclk_t.exit.cleanup_crit_edge ], [ 0, %if.then31.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then3.i.cleanup_crit_edge ], [ 0, %if.then5.i ], [ 0, %kv_update_sclk_t.exit323.cleanup_crit_edge ], [ 0, %land.lhs.true.i330.cleanup_crit_edge ], [ 0, %if.then3.i333.cleanup_crit_edge ], [ 0, %if.then5.i334 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kv_dpm_post_set_power_state(ptr nocapture noundef %handle) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71
  %ps_priv.i.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %2 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i.i, align 4
  %current_rps.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 69
  %4 = call ptr @memcpy(ptr %current_rps.i, ptr %requested_rps, i32 40)
  %current_ps.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 70
  %5 = call ptr @memcpy(ptr %current_ps.i, ptr %3, i32 72)
  %ps_priv.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 69, i32 9
  %6 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  %current_ps5.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 2
  %7 = ptrtoint ptr %current_ps5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %current_rps.i, ptr %current_ps5.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kv_dpm_display_configuration_changed(ptr nocapture noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kv_dpm_print_power_state(ptr noundef %handle, ptr noundef %request_ps) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %class = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 4
  %class2 = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 2
  %4 = ptrtoint ptr %class2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class2, align 4
  tail call void @amdgpu_dpm_print_class_info(i32 noundef %3, i32 noundef %5) #13
  %6 = ptrtoint ptr %request_ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %request_ps, align 4
  tail call void @amdgpu_dpm_print_cap_info(i32 noundef %7) #13
  %vclk = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 3
  %8 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 4
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef %11) #18
  %num_levels = getelementptr inbounds %struct.kv_ps, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21.not = icmp eq i32 %13, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %i.022
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %vddc_index = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %i.022, i32 1
  %16 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vddc_index, align 4
  %conv = zext i8 %17 to i32
  %mul.neg.i = mul nuw nsw i32 %conv, 65511
  %sub.i = add nuw nsw i32 %mul.neg.i, 6200
  %conv7 = and i32 %sub.i, 65535
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %i.022, i32 noundef %15, i32 noundef %conv7) #18
  %inc = add nuw i32 %i.022, 1
  %18 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_levels, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @amdgpu_dpm_print_ps_status(ptr noundef %handle, ptr noundef %request_ps) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kv_dpm_enable_bapm(ptr noundef %handle, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %bapm_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bapm_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bapm_enable, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @amdgpu_kv_smc_bapm_enable(ptr noundef %handle, i1 noundef zeroext %enable) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_check_state_equal(ptr noundef readnone %handle, ptr noundef readonly %current_ps, ptr noundef readonly %request_ps, ptr noundef %equal) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %handle, null
  %cmp1 = icmp eq ptr %current_ps, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %request_ps, null
  %or.cond60 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq ptr %equal, null
  %or.cond61 = or i1 %or.cond60, %cmp5
  br i1 %or.cond61, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ps_priv.i = getelementptr inbounds %struct.amdgpu_ps, ptr %current_ps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %ps_priv.i62 = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i62 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i62, align 4
  %cmp7 = icmp eq ptr %1, null
  br i1 %cmp7, label %if.end.cleanup.sink.split_crit_edge, label %if.end9

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %num_levels = getelementptr inbounds %struct.kv_ps, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_levels, align 4
  %num_levels10 = getelementptr inbounds %struct.kv_ps, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_levels10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_levels10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp11.not = icmp eq i32 %5, %7
  br i1 %cmp11.not, label %for.cond.preheader, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1563.not = icmp eq i32 %5, 0
  br i1 %cmp1563.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %kv_are_power_levels_equal.exit
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %i.064
  %arrayidx17 = getelementptr [5 x %struct.kv_pl], ptr %3, i32 0, i32 %i.064
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %for.body
  %vddc_index.i = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %i.064, i32 1
  %12 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vddc_index.i, align 4
  %vddc_index2.i = getelementptr [5 x %struct.kv_pl], ptr %3, i32 0, i32 %i.064, i32 1
  %14 = ptrtoint ptr %vddc_index2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vddc_index2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp4.i = icmp eq i8 %13, %15
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %ds_divider_index.i = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %i.064, i32 2
  %16 = ptrtoint ptr %ds_divider_index.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ds_divider_index.i, align 1
  %ds_divider_index8.i = getelementptr [5 x %struct.kv_pl], ptr %3, i32 0, i32 %i.064, i32 2
  %18 = ptrtoint ptr %ds_divider_index8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ds_divider_index8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp10.i = icmp eq i8 %17, %19
  br i1 %cmp10.i, label %kv_are_power_levels_equal.exit, label %land.lhs.true6.i.cleanup.sink.split_crit_edge

land.lhs.true6.i.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

kv_are_power_levels_equal.exit:                   ; preds = %land.lhs.true6.i
  %force_nbp_state.i = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %i.064, i32 5
  %20 = ptrtoint ptr %force_nbp_state.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %force_nbp_state.i, align 4
  %force_nbp_state13.i = getelementptr [5 x %struct.kv_pl], ptr %3, i32 0, i32 %i.064, i32 5
  %22 = ptrtoint ptr %force_nbp_state13.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %force_nbp_state13.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp15.i = icmp eq i8 %21, %23
  br i1 %cmp15.i, label %for.cond, label %kv_are_power_levels_equal.exit.cleanup.sink.split_crit_edge

kv_are_power_levels_equal.exit.cleanup.sink.split_crit_edge: ; preds = %kv_are_power_levels_equal.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %vclk = getelementptr inbounds %struct.amdgpu_ps, ptr %current_ps, i32 0, i32 3
  %24 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vclk, align 4
  %vclk21 = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 3
  %26 = ptrtoint ptr %vclk21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vclk21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp22 = icmp eq i32 %25, %27
  br i1 %cmp22, label %land.rhs, label %for.end.land.end_crit_edge

for.end.land.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %dclk = getelementptr inbounds %struct.amdgpu_ps, ptr %current_ps, i32 0, i32 4
  %28 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dclk, align 4
  %dclk23 = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 4
  %30 = ptrtoint ptr %dclk23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dclk23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp24 = icmp eq i32 %29, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end.land.end_crit_edge
  %32 = phi i1 [ false, %for.end.land.end_crit_edge ], [ %cmp24, %land.rhs ]
  %frombool = zext i1 %32 to i8
  %33 = ptrtoint ptr %equal to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %equal, align 1
  %evclk = getelementptr inbounds %struct.amdgpu_ps, ptr %current_ps, i32 0, i32 5
  %34 = ptrtoint ptr %evclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %evclk, align 4
  %evclk25 = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 5
  %36 = ptrtoint ptr %evclk25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %evclk25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp26 = icmp eq i32 %35, %37
  br i1 %cmp26, label %land.rhs27, label %land.end.land.end30_crit_edge

land.end.land.end30_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end30

land.rhs27:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  %ecclk = getelementptr inbounds %struct.amdgpu_ps, ptr %current_ps, i32 0, i32 6
  %38 = ptrtoint ptr %ecclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ecclk, align 4
  %ecclk28 = getelementptr inbounds %struct.amdgpu_ps, ptr %request_ps, i32 0, i32 6
  %40 = ptrtoint ptr %ecclk28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ecclk28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp29 = icmp eq i32 %39, %41
  %phi.cast = zext i1 %cmp29 to i8
  br label %land.end30

land.end30:                                       ; preds = %land.rhs27, %land.end.land.end30_crit_edge
  %42 = phi i8 [ 0, %land.end.land.end30_crit_edge ], [ %phi.cast, %land.rhs27 ]
  %and = and i8 %42, %frombool
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.end30, %kv_are_power_levels_equal.exit.cleanup.sink.split_crit_edge, %land.lhs.true6.i.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %and.sink = phi i8 [ %and, %land.end30 ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 0, %if.end9.cleanup.sink.split_crit_edge ], [ 0, %for.body.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true6.i.cleanup.sink.split_crit_edge ], [ 0, %kv_are_power_levels_equal.exit.cleanup.sink.split_crit_edge ]
  %43 = ptrtoint ptr %equal to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %and.sink, ptr %equal, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_force_performance_level(ptr noundef %handle, i32 noundef %level) #1 align 64 {
entry:
  %enable_mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %level, label %entry.if.end17_crit_edge [
    i32 8, label %if.then
    i32 4, label %if.then3
    i32 1, label %if.then10
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable_mask.i) #13
  %1 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %enable_mask.i, align 4, !annotation !100
  %call.i = call i32 @amdgpu_kv_dpm_get_enable_mask(ptr noundef %handle, ptr noundef nonnull %enable_mask.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %kv_force_dpm_highest.exit.thread

kv_force_dpm_highest.exit.thread:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_mask.i) #13
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then
  %2 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_mask.i, align 4
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.inc.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %and.1.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool1.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool1.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool1.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool1.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool1.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool1.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %and.6.i = lshr i32 %3, 1
  %and.6.lobit.i = and i32 %and.6.i, 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.5.i, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 7, %for.cond.preheader.i.for.end.i_crit_edge ], [ 6, %for.inc.i.for.end.i_crit_edge ], [ 5, %for.inc.1.i.for.end.i_crit_edge ], [ 4, %for.inc.2.i.for.end.i_crit_edge ], [ 3, %for.inc.3.i.for.end.i_crit_edge ], [ 2, %for.inc.4.i.for.end.i_crit_edge ], [ %and.6.lobit.i, %for.inc.5.i ]
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type.i, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %5, label %if.else.i [
    i32 7, label %for.end.i.if.then7.i_crit_edge
    i32 9, label %for.end.i.if.then7.i_crit_edge37
  ]

for.end.i.if.then7.i_crit_edge37:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

for.end.i.if.then7.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

if.then7.i:                                       ; preds = %for.end.i.if.then7.i_crit_edge, %for.end.i.if.then7.i_crit_edge37
  %call8.i = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 260, i32 noundef %i.0.lcssa.i) #13
  br label %kv_force_dpm_highest.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i.i = shl nuw nsw i32 1, %i.0.lcssa.i
  %call.i.i = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 325, i32 noundef %shl.i.i) #13
  br label %kv_force_dpm_highest.exit

kv_force_dpm_highest.exit:                        ; preds = %if.else.i, %if.then7.i
  %retval.0.i = phi i32 [ %call8.i, %if.then7.i ], [ %call.i.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_mask.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %kv_force_dpm_highest.exit.if.end17_crit_edge, label %kv_force_dpm_highest.exit.cleanup_crit_edge

kv_force_dpm_highest.exit.cleanup_crit_edge:      ; preds = %kv_force_dpm_highest.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

kv_force_dpm_highest.exit.if.end17_crit_edge:     ; preds = %kv_force_dpm_highest.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then3:                                         ; preds = %entry
  %call4 = tail call fastcc i32 @kv_force_dpm_lowest(ptr noundef %handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end17_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then10:                                        ; preds = %entry
  %asic_type.i30 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 5
  %7 = ptrtoint ptr %asic_type.i30 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %asic_type.i30, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %8, label %if.else.i32 [
    i32 7, label %if.then10.if.then.i_crit_edge
    i32 9, label %if.then10.if.then.i_crit_edge38
  ]

if.then10.if.then.i_crit_edge38:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then10.if.then.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.if.then.i_crit_edge, %if.then10.if.then.i_crit_edge38
  %call.i31 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 65) #13
  br label %kv_unforce_levels.exit

if.else.i32:                                      ; preds = %if.then10
  %priv.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %10 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i.i.i, align 4
  %lowest_valid.i.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %lowest_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lowest_valid.i.i, align 4
  %highest_valid.i.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %highest_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %highest_valid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not7.i.i = icmp ugt i32 %13, %15
  br i1 %cmp.not7.i.i, label %if.else.i32.kv_set_enabled_levels.exit.i_crit_edge, label %if.else.i32.for.body.i.i_crit_edge

if.else.i32.for.body.i.i_crit_edge:               ; preds = %if.else.i32
  br label %for.body.i.i

if.else.i32.kv_set_enabled_levels.exit.i_crit_edge: ; preds = %if.else.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else.i32.for.body.i.i_crit_edge
  %new_mask.09.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i32.for.body.i.i_crit_edge ]
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %13, %if.else.i32.for.body.i.i_crit_edge ]
  %shl.i.i33 = shl nuw i32 1, %i.08.i.i
  %or.i.i = or i32 %shl.i.i33, %new_mask.09.i.i
  %inc.i.i = add i32 %i.08.i.i, 1
  %cmp.not.i.i = icmp ugt i32 %inc.i.i, %15
  br i1 %cmp.not.i.i, label %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_enabled_levels.exit.i

kv_set_enabled_levels.exit.i:                     ; preds = %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge, %if.else.i32.kv_set_enabled_levels.exit.i_crit_edge
  %new_mask.0.lcssa.i.i = phi i32 [ 0, %if.else.i32.kv_set_enabled_levels.exit.i_crit_edge ], [ %or.i.i, %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i.i) #13
  br label %kv_unforce_levels.exit

kv_unforce_levels.exit:                           ; preds = %kv_set_enabled_levels.exit.i, %if.then.i
  %retval.0.i34 = phi i32 [ %call.i31, %if.then.i ], [ %call1.i.i, %kv_set_enabled_levels.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i34)
  %tobool12.not = icmp eq i32 %retval.0.i34, 0
  br i1 %tobool12.not, label %kv_unforce_levels.exit.if.end17_crit_edge, label %kv_unforce_levels.exit.cleanup_crit_edge

kv_unforce_levels.exit.cleanup_crit_edge:         ; preds = %kv_unforce_levels.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

kv_unforce_levels.exit.if.end17_crit_edge:        ; preds = %kv_unforce_levels.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end17:                                         ; preds = %kv_unforce_levels.exit.if.end17_crit_edge, %if.then3.if.end17_crit_edge, %kv_force_dpm_highest.exit.if.end17_crit_edge, %entry.if.end17_crit_edge
  %forced_level = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 36
  %16 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %level, ptr %forced_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %kv_unforce_levels.exit.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %kv_force_dpm_highest.exit.cleanup_crit_edge, %kv_force_dpm_highest.exit.thread
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %retval.0.i, %kv_force_dpm_highest.exit.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %retval.0.i34, %kv_unforce_levels.exit.cleanup_crit_edge ], [ %call.i, %kv_force_dpm_highest.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_read_sensor(ptr noundef %handle, i32 noundef %idx, ptr nocapture noundef writeonly %value, ptr nocapture noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg, align 4
  %call1 = tail call i32 %3(ptr noundef %handle, i32 noundef -1071644652) #13
  %and = lshr i32 %call1, 16
  %shr = and i32 %and, 31
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %idx, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 10, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp2 = icmp ult i32 %shr, 8
  br i1 %cmp2, label %if.then3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %SclkFrequency = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %shr, i32 1
  %7 = ptrtoint ptr %SclkFrequency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %SclkFrequency, align 4
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smc_rreg, align 4
  %call.i = tail call i32 %10(ptr noundef %handle, i32 noundef -1070592500) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %div4.i = lshr i32 %call.i, 3
  %11 = mul i32 %div4.i, 1000
  %phi.bo.i = add i32 %11, -49000
  %actual_temp.0.i = select i1 %tobool.not.i, i32 0, i32 %phi.bo.i
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5, %if.then3
  %actual_temp.0.i.sink = phi i32 [ %actual_temp.0.i, %sw.bb5 ], [ %8, %if.then3 ]
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %actual_temp.0.i.sink, ptr %value, align 4
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kv_dpm_debugfs_print_current_performance_level(ptr noundef %handle, ptr noundef %m) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg, align 4
  %call1 = tail call i32 %3(ptr noundef %handle, i32 noundef -1071644652) #13
  %and = lshr i32 %call1, 16
  %shr = and i32 %and, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp ugt i32 %shr, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %shr) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %SclkFrequency = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %shr, i32 1
  %4 = ptrtoint ptr %SclkFrequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %SclkFrequency, align 4
  %6 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smc_rreg, align 4
  %call3 = tail call i32 %7(ptr noundef %handle, i32 noundef -1071644524) #13
  %8 = lshr i32 %call3, 1
  %conv = and i32 %8, 255
  %mul.neg.i = mul nuw nsw i32 %conv, 65511
  %sub.i = add nuw nsw i32 %mul.neg.i, 6200
  %uvd_power_gated = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %uvd_power_gated, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #13
  %vce_power_gated = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 45
  %11 = ptrtoint ptr %vce_power_gated to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vce_power_gated, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  %cond10 = select i1 %tobool8.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond10) #13
  %conv11 = and i32 %sub.i, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %5, i32 noundef %conv11) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_get_vce_clock_state(ptr noundef, i32 noundef) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_set_powergating_by_smu(ptr noundef %handle, i32 noundef %block_type, i1 noundef zeroext %gate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %block_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %block_type, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %frombool.i = zext i1 %gate to i8
  %priv.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 4
  %uvd_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %2, i32 0, i32 44
  %3 = ptrtoint ptr %uvd_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %uvd_power_gated.i, align 4
  br i1 %gate, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %call3.i = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 8, i32 noundef 0) #13
  %call.i.i.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 341) #13
  %caps_uvd_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %2, i32 0, i32 62
  %4 = ptrtoint ptr %caps_uvd_pg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %caps_uvd_pg.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not.i = icmp eq i8 %5, 0
  br i1 %tobool6.not.i, label %if.then.i.sw.epilog_crit_edge, label %if.then7.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 96) #13
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  %caps_uvd_pg9.i = getelementptr inbounds %struct.kv_power_info, ptr %2, i32 0, i32 62
  %6 = ptrtoint ptr %caps_uvd_pg9.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %caps_uvd_pg9.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not.i = icmp eq i8 %7, 0
  br i1 %tobool10.not.i, label %if.else.i.if.end13.i_crit_edge, label %if.then11.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 97) #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.else.i.if.end13.i_crit_edge
  %8 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i.i, align 4
  %uvd_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 21, i32 5
  %10 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %uvd_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i.i = icmp eq i8 %11, 0
  %sub.i.i = add i8 %11, -1
  %spec.select.i.i = select i1 %tobool1.not.i.i, i8 0, i8 %sub.i.i
  %12 = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 28
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select.i.i, ptr %12, align 4
  %caps_uvd_dpm.i.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 61
  %14 = ptrtoint ptr %caps_uvd_dpm.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %caps_uvd_dpm.i.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool6.not.i.i, label %if.end13.i.if.then9.i.i_crit_edge, label %lor.lhs.false.i.i

if.end13.i.if.then9.i.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i.i

lor.lhs.false.i.i:                                ; preds = %if.end13.i
  %caps_stable_p_state.i.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 66
  %16 = ptrtoint ptr %caps_stable_p_state.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %caps_stable_p_state.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i.i.if.end13.i.i_crit_edge, label %lor.lhs.false.i.i.if.then9.i.i_crit_edge

lor.lhs.false.i.i.if.then9.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i.i

lor.lhs.false.i.i.if.end13.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i.i

if.then9.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then9.i.i_crit_edge, %if.end13.i.if.then9.i.i_crit_edge
  %conv11.i.i = zext i8 %spec.select.i.i to i32
  %shl.i.i = shl nuw i32 1, %conv11.i.i
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i, %lor.lhs.false.i.i.if.end13.i.i_crit_edge
  %mask.0.i.i = phi i32 [ %shl.i.i, %if.then9.i.i ], [ 31, %lor.lhs.false.i.i.if.end13.i.i_crit_edge ]
  %dpm_table_start.i.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 14
  %18 = ptrtoint ptr %dpm_table_start.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dpm_table_start.i.i, align 4
  %add.i.i = add i32 %19, 744
  %sram_end.i.i = getelementptr inbounds %struct.kv_power_info, ptr %9, i32 0, i32 13
  %20 = ptrtoint ptr %sram_end.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sram_end.i.i, align 4
  %call15.i.i = tail call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %handle, i32 noundef %add.i.i, ptr noundef %12, i32 noundef 1, i32 noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end13.i.i.kv_update_uvd_dpm.exit.i_crit_edge

if.end13.i.i.kv_update_uvd_dpm.exit.i_crit_edge:  ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_update_uvd_dpm.exit.i

if.end18.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i.i = tail call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %handle, i16 noundef zeroext 301, i32 noundef %mask.0.i.i) #13
  %call.i.i30.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 340) #13
  br label %kv_update_uvd_dpm.exit.i

kv_update_uvd_dpm.exit.i:                         ; preds = %if.end18.i.i, %if.end13.i.i.kv_update_uvd_dpm.exit.i_crit_edge
  %call16.i = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 8, i32 noundef 1) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %frombool.i5 = zext i1 %gate to i8
  %priv.i.i6 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %22 = ptrtoint ptr %priv.i.i6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i.i6, align 4
  %vce_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %23, i32 0, i32 45
  %24 = ptrtoint ptr %vce_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool.i5, ptr %vce_power_gated.i, align 1
  br i1 %gate, label %if.then.i8, label %if.else.i9

if.then.i8:                                       ; preds = %sw.bb1
  %call3.i7 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 9, i32 noundef 0) #13
  %call.i.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 347) #13
  %caps_vce_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %23, i32 0, i32 63
  %25 = ptrtoint ptr %caps_vce_pg.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %caps_vce_pg.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not.i = icmp eq i8 %26, 0
  br i1 %tobool5.not.i, label %if.then.i8.sw.epilog_crit_edge, label %if.then6.i

if.then.i8.sw.epilog_crit_edge:                   ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then6.i:                                       ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 270) #13
  br label %sw.epilog

if.else.i9:                                       ; preds = %sw.bb1
  %caps_vce_pg8.i = getelementptr inbounds %struct.kv_power_info, ptr %23, i32 0, i32 63
  %27 = ptrtoint ptr %caps_vce_pg8.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %caps_vce_pg8.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool9.not.i = icmp eq i8 %28, 0
  br i1 %tobool9.not.i, label %if.else.i9.if.end12.i_crit_edge, label %if.then10.i

if.else.i9.if.end12.i_crit_edge:                  ; preds = %if.else.i9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.else.i9
  call void @__sanitizer_cov_trace_pc() #15
  %call11.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 271) #13
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.else.i9.if.end12.i_crit_edge
  %call.i25.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %handle, i32 noundef 346) #13
  %call14.i = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %handle, i32 noundef 9, i32 noundef 1) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end12.i, %if.then6.i, %if.then.i8.sw.epilog_crit_edge, %kv_update_uvd_dpm.exit.i, %if.then7.i, %if.then.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kv_dpm_get_sclk(ptr nocapture noundef readonly %handle, i1 noundef zeroext %low) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  br i1 %low, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %num_levels = getelementptr inbounds %struct.kv_ps, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_levels, align 4
  %sub = add i32 %5, -1
  %arrayidx3 = getelementptr [5 x %struct.kv_pl], ptr %3, i32 0, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0.in = phi ptr [ %arrayidx3, %if.else ], [ %3, %entry.cleanup_crit_edge ]
  %6 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kv_dpm_get_mclk(ptr nocapture noundef readonly %handle, i1 noundef zeroext %low) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %sys_info = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sys_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_info, align 4
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_get_high_voltage_limit(ptr noundef readonly %adev, ptr nocapture noundef writeonly %limit) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %dyn_state = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21
  %tobool.not = icmp eq ptr %dyn_state, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dyn_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %for.cond.preheader

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true
  %i.05 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.05)
  %cmp6 = icmp sgt i32 %i.05, -1
  br i1 %cmp6, label %for.body.lr.ph, label %for.cond.preheader.cleanup37_crit_edge

for.cond.preheader.cleanup37_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %high_voltage_t = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %high_voltage_t to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %high_voltage_t, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  %entries = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ %i.05, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true4:                                   ; preds = %for.body
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %7, i32 %i.07, i32 1
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %v, align 4
  %mul.neg.i = mul i16 %9, -25
  %sub.i = add i16 %mul.neg.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %5)
  %cmp9.not = icmp ugt i16 %sub.i, %5
  br i1 %cmp9.not, label %land.lhs.true4.for.inc_crit_edge, label %land.lhs.true4.cleanup37_crit_edge

land.lhs.true4.cleanup37_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.07, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup37_crit_edge

for.inc.cleanup37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %sclk_voltage_mapping_table = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 9
  %10 = ptrtoint ptr %sclk_voltage_mapping_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sclk_voltage_mapping_table, align 4
  %i.19 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.19)
  %cmp1510 = icmp sgt i32 %i.19, -1
  br i1 %cmp1510, label %for.body17.lr.ph, label %if.else.cleanup37_crit_edge

if.else.cleanup37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.body17.lr.ph:                                 ; preds = %if.else
  %high_voltage_t18 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %high_voltage_t18 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %high_voltage_t18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool20.not = icmp eq i16 %13, 0
  %entries.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  %vid_mapping_table.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 10
  br label %for.body17

for.body17:                                       ; preds = %for.inc33.for.body17_crit_edge, %for.body17.lr.ph
  %i.111 = phi i32 [ %i.19, %for.body17.lr.ph ], [ %i.1, %for.inc33.for.body17_crit_edge ]
  br i1 %tobool20.not, label %for.body17.for.inc33_crit_edge, label %land.lhs.true21

for.body17.for.inc33_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc33

land.lhs.true21:                                  ; preds = %for.body17
  %vid_2bit = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 9, i32 1, i32 %i.111, i32 1
  %14 = ptrtoint ptr %vid_2bit to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid_2bit, align 4
  %conv24 = zext i16 %15 to i32
  %16 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dyn_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool1.not.i.i, label %if.else9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv24)
  %cmp.i.i = icmp ugt i32 %17, %conv24
  %18 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entries.i.i, align 4
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %v.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %19, i32 %conv24, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %17, -1
  %v7.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %19, i32 %sub.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit

if.else9.i.i:                                     ; preds = %land.lhs.true21
  %20 = ptrtoint ptr %vid_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vid_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1046.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp1046.not.i.i, label %if.else9.i.i.for.end.i.i_crit_edge, label %if.else9.i.i.for.body.i.i_crit_edge

if.else9.i.i.for.body.i.i_crit_edge:              ; preds = %if.else9.i.i
  br label %for.body.i.i

if.else9.i.i.for.end.i.i_crit_edge:               ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else9.i.i.for.body.i.i_crit_edge
  %i.047.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else9.i.i.for.body.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i
  %22 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %15)
  %cmp16.i.i = icmp eq i16 %23, %15
  br i1 %cmp16.i.i, label %if.then18.i.i, label %for.inc.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vid_7bit.i.i = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.047.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.else9.i.i.for.end.i.i_crit_edge
  %sub24.i.i = add i32 %21, -1
  %vid_7bit26.i.i = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit

kv_convert_2bit_index_to_voltage.exit:            ; preds = %for.end.i.i, %if.then18.i.i, %if.else.i.i, %if.then3.i.i
  %retval.0.in.in.i.i = phi ptr [ %v.i.i, %if.then3.i.i ], [ %v7.i.i, %if.else.i.i ], [ %vid_7bit.i.i, %if.then18.i.i ], [ %vid_7bit26.i.i, %for.end.i.i ]
  %24 = ptrtoint ptr %retval.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %retval.0.in.i.i = load i16, ptr %retval.0.in.in.i.i, align 2
  %mul.neg.i.i = mul i16 %retval.0.in.i.i, -25
  %sub.i5.i = add i16 %mul.neg.i.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i5.i, i16 %13)
  %cmp29.not = icmp ugt i16 %sub.i5.i, %13
  br i1 %cmp29.not, label %kv_convert_2bit_index_to_voltage.exit.for.inc33_crit_edge, label %kv_convert_2bit_index_to_voltage.exit.cleanup37_crit_edge

kv_convert_2bit_index_to_voltage.exit.cleanup37_crit_edge: ; preds = %kv_convert_2bit_index_to_voltage.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

kv_convert_2bit_index_to_voltage.exit.for.inc33_crit_edge: ; preds = %kv_convert_2bit_index_to_voltage.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc33

for.inc33:                                        ; preds = %kv_convert_2bit_index_to_voltage.exit.for.inc33_crit_edge, %for.body17.for.inc33_crit_edge
  %i.1 = add i32 %i.111, -1
  %cmp15 = icmp sgt i32 %i.1, -1
  br i1 %cmp15, label %for.inc33.for.body17_crit_edge, label %for.inc33.cleanup37_crit_edge

for.inc33.cleanup37_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup37

for.inc33.for.body17_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

cleanup37:                                        ; preds = %for.inc33.cleanup37_crit_edge, %kv_convert_2bit_index_to_voltage.exit.cleanup37_crit_edge, %if.else.cleanup37_crit_edge, %for.inc.cleanup37_crit_edge, %land.lhs.true4.cleanup37_crit_edge, %for.cond.preheader.cleanup37_crit_edge
  %i.111.lcssa.sink = phi i32 [ 0, %for.cond.preheader.cleanup37_crit_edge ], [ 0, %if.else.cleanup37_crit_edge ], [ %i.111, %kv_convert_2bit_index_to_voltage.exit.cleanup37_crit_edge ], [ 0, %for.inc33.cleanup37_crit_edge ], [ %i.07, %land.lhs.true4.cleanup37_crit_edge ], [ 0, %for.inc.cleanup37_crit_edge ]
  %25 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.111.lcssa.sink, ptr %limit, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kv_smc_bapm_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_set_valid_clock_range(ptr noundef readonly %adev, ptr nocapture noundef readonly %new_rps) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.amdgpu_ps, ptr %new_rps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %dyn_state = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21
  %tobool.not = icmp eq ptr %dyn_state, null
  br i1 %tobool.not, label %entry.if.else64_crit_edge, label %land.lhs.true

entry.if.else64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else64

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dyn_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else64_crit_edge, label %for.cond.preheader

land.lhs.true.if.else64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else64

for.cond.preheader:                               ; preds = %land.lhs.true
  %graphics_dpm_level_count = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %graphics_dpm_level_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %graphics_dpm_level_count, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp220.not = icmp eq i8 %7, 0
  br i1 %cmp220.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %entries = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %sub = add nsw i32 %conv, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %9, i32 %i.0221
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp5.not = icmp uge i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0221, i32 %sub)
  %cmp9 = icmp eq i32 %i.0221, %sub
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %lowest_valid = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.0221, ptr %lowest_valid, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0221, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then11, %for.cond.preheader.for.end_crit_edge
  %15 = ptrtoint ptr %graphics_dpm_level_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %graphics_dpm_level_count, align 4
  %conv13 = zext i8 %16 to i32
  %entries19 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  %num_levels = getelementptr inbounds %struct.kv_ps, ptr %1, i32 0, i32 1
  br label %for.cond15

for.cond15:                                       ; preds = %for.body18.for.cond15_crit_edge, %for.end
  %i.1.in = phi i32 [ %conv13, %for.end ], [ %i.1, %for.body18.for.cond15_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp16.not = icmp eq i32 %i.1, 0
  br i1 %cmp16.not, label %for.cond15.for.end31_crit_edge, label %for.body18

for.cond15.for.end31_crit_edge:                   ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end31

for.body18:                                       ; preds = %for.cond15
  %17 = ptrtoint ptr %entries19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entries19, align 4
  %arrayidx20 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %18, i32 %i.1
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx20, align 4
  %21 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_levels, align 4
  %sub23 = add i32 %22, -1
  %arrayidx24 = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %sub23
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx24, align 4
  %cmp26.not = icmp ugt i32 %20, %24
  br i1 %cmp26.not, label %for.body18.for.cond15_crit_edge, label %for.body18.for.end31_crit_edge

for.body18.for.end31_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end31

for.body18.for.cond15_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond15

for.end31:                                        ; preds = %for.body18.for.end31_crit_edge, %for.cond15.for.end31_crit_edge
  %highest_valid = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %highest_valid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.1, ptr %highest_valid, align 4
  %lowest_valid32 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 8
  %26 = ptrtoint ptr %lowest_valid32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lowest_valid32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %i.1)
  %cmp34 = icmp ugt i32 %27, %i.1
  br i1 %cmp34, label %if.then36, label %for.end31.if.end147_crit_edge

for.end31.if.end147_crit_edge:                    ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then36:                                        ; preds = %for.end31
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %30 = ptrtoint ptr %entries19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entries19, align 4
  %arrayidx42 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %31, i32 %i.1
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx42, align 4
  %sub44 = sub i32 %29, %33
  %arrayidx47 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %31, i32 %27
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx47, align 4
  %36 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_levels, align 4
  %sub51 = add i32 %37, -1
  %arrayidx52 = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %sub51
  %38 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx52, align 4
  %sub54 = sub i32 %35, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44, i32 %sub54)
  %cmp55 = icmp ugt i32 %sub44, %sub54
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %highest_valid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %27, ptr %highest_valid, align 4
  br label %if.end147

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %lowest_valid32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.1, ptr %lowest_valid32, align 4
  br label %if.end147

if.else64:                                        ; preds = %land.lhs.true.if.else64_crit_edge, %entry.if.else64_crit_edge
  %graphics_dpm_level_count67 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 16
  %42 = ptrtoint ptr %graphics_dpm_level_count67 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %graphics_dpm_level_count67, align 4
  %conv68 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp69223.not = icmp eq i8 %43, 0
  br i1 %cmp69223.not, label %if.else64.for.end90_crit_edge, label %for.body71.lr.ph

if.else64.for.end90_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end90

for.body71.lr.ph:                                 ; preds = %if.else64
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %sub82 = add nsw i32 %conv68, -1
  br label %for.body71

for.body71:                                       ; preds = %for.inc88.for.body71_crit_edge, %for.body71.lr.ph
  %i.2224 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc89, %for.inc88.for.body71_crit_edge ]
  %arrayidx73 = getelementptr %struct.kv_power_info, ptr %3, i32 0, i32 2, i32 9, i32 1, i32 %i.2224
  %46 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp77.not = icmp uge i32 %47, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2224, i32 %sub82)
  %cmp83 = icmp eq i32 %i.2224, %sub82
  %or.cond212 = select i1 %cmp77.not, i1 true, i1 %cmp83
  br i1 %or.cond212, label %if.then85, label %for.inc88

if.then85:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #15
  %lowest_valid86 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 8
  %48 = ptrtoint ptr %lowest_valid86 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.2224, ptr %lowest_valid86, align 4
  br label %for.end90

for.inc88:                                        ; preds = %for.body71
  %inc89 = add nuw nsw i32 %i.2224, 1
  %exitcond227.not = icmp eq i32 %inc89, %conv68
  br i1 %exitcond227.not, label %for.inc88.for.end90_crit_edge, label %for.inc88.for.body71_crit_edge

for.inc88.for.body71_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body71

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end90

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %if.then85, %if.else64.for.end90_crit_edge
  %49 = ptrtoint ptr %graphics_dpm_level_count67 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %graphics_dpm_level_count67, align 4
  %conv92 = zext i8 %50 to i32
  %num_levels102 = getelementptr inbounds %struct.kv_ps, ptr %1, i32 0, i32 1
  br label %for.cond94

for.cond94:                                       ; preds = %for.body97.for.cond94_crit_edge, %for.end90
  %i.3.in = phi i32 [ %conv92, %for.end90 ], [ %i.3, %for.body97.for.cond94_crit_edge ]
  %i.3 = add i32 %i.3.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3)
  %cmp95.not = icmp eq i32 %i.3, 0
  br i1 %cmp95.not, label %for.cond94.for.end112_crit_edge, label %for.body97

for.cond94.for.end112_crit_edge:                  ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end112

for.body97:                                       ; preds = %for.cond94
  %arrayidx99 = getelementptr %struct.kv_power_info, ptr %3, i32 0, i32 2, i32 9, i32 1, i32 %i.3
  %51 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx99, align 4
  %53 = ptrtoint ptr %num_levels102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_levels102, align 4
  %sub103 = add i32 %54, -1
  %arrayidx104 = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %sub103
  %55 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx104, align 4
  %cmp106.not = icmp ugt i32 %52, %56
  br i1 %cmp106.not, label %for.body97.for.cond94_crit_edge, label %for.body97.for.end112_crit_edge

for.body97.for.end112_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end112

for.body97.for.cond94_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond94

for.end112:                                       ; preds = %for.body97.for.end112_crit_edge, %for.cond94.for.end112_crit_edge
  %highest_valid113 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 9
  %57 = ptrtoint ptr %highest_valid113 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %i.3, ptr %highest_valid113, align 4
  %lowest_valid114 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 8
  %58 = ptrtoint ptr %lowest_valid114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lowest_valid114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %i.3)
  %cmp116 = icmp ugt i32 %59, %i.3
  br i1 %cmp116, label %if.then118, label %for.end112.if.end147_crit_edge

for.end112.if.end147_crit_edge:                   ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end147

if.then118:                                       ; preds = %for.end112
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %1, align 4
  %arrayidx124 = getelementptr %struct.kv_power_info, ptr %3, i32 0, i32 2, i32 9, i32 1, i32 %i.3
  %62 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx124, align 4
  %sub126 = sub i32 %61, %63
  %arrayidx129 = getelementptr %struct.kv_power_info, ptr %3, i32 0, i32 2, i32 9, i32 1, i32 %59
  %64 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx129, align 4
  %66 = ptrtoint ptr %num_levels102 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_levels102, align 4
  %sub133 = add i32 %67, -1
  %arrayidx134 = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %sub133
  %68 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx134, align 4
  %sub136 = sub i32 %65, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %sub126, i32 %sub136)
  %cmp137 = icmp ugt i32 %sub126, %sub136
  br i1 %cmp137, label %if.then139, label %if.else142

if.then139:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %highest_valid113 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %59, ptr %highest_valid113, align 4
  br label %if.end147

if.else142:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %lowest_valid114 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %i.3, ptr %lowest_valid114, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else142, %if.then139, %for.end112.if.end147_crit_edge, %if.else, %if.then57, %for.end31.if.end147_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_calculate_nbps_level_settings(ptr nocapture noundef readonly %adev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mclk1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 13, i32 1
  %2 = ptrtoint ptr %mclk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk1, align 4
  %lowest_valid = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lowest_valid, align 4
  %highest_valid = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %8 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asic_type, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %9, label %for.cond57.preheader [
    i32 7, label %if.end.if.then5_crit_edge
    i32 9, label %if.end.if.then5_crit_edge8
  ]

if.end.if.then5_crit_edge8:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

for.cond57.preheader:                             ; preds = %if.end
  %11 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %12)
  %cmp59.not6 = icmp ugt i32 %5, %12
  br i1 %cmp59.not6, label %for.cond57.preheader.for.end72_crit_edge, label %for.cond57.preheader.for.body60_crit_edge

for.cond57.preheader.for.body60_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body60

for.cond57.preheader.for.end72_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge8
  %13 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %14)
  %cmp8.not2 = icmp ugt i32 %5, %14
  br i1 %cmp8.not2, label %if.then5.for.end_crit_edge, label %if.then5.for.body_crit_edge

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  br label %for.body

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then5.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %5, %if.then5.for.body_crit_edge ]
  %GnbSlow = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.03, i32 6
  %15 = ptrtoint ptr %GnbSlow to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %GnbSlow, align 1
  %ForceNbPs1 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.03, i32 7
  %16 = ptrtoint ptr %ForceNbPs1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ForceNbPs1, align 2
  %UpH = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.03, i32 12
  %17 = ptrtoint ptr %UpH to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %UpH, align 1
  %inc = add i32 %i.03, 1
  %18 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %highest_valid, align 4
  %cmp8.not = icmp ugt i32 %inc, %19
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then5.for.end_crit_edge
  %nb_dpm_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %nb_dpm_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_dpm_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %arrayidx16 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %23)
  %cmp17.not = icmp ult i32 %3, %23
  br i1 %cmp17.not, label %lor.lhs.false18, label %if.end14.if.then24_crit_edge

if.end14.if.then24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false18:                                  ; preds = %if.end14
  %new_active_crtc_count = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 18
  %24 = ptrtoint ptr %new_active_crtc_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_active_crtc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp21 = icmp sgt i32 %25, 2
  br i1 %cmp21, label %lor.lhs.false18.if.then24_crit_edge, label %lor.rhs

lor.lhs.false18.if.then24_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.rhs:                                          ; preds = %lor.lhs.false18
  %video_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %video_start to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %video_start, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool22.not = icmp eq i8 %27, 0
  br i1 %tobool22.not, label %if.else, label %lor.rhs.if.then24_crit_edge

lor.rhs.if.then24_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

if.then24:                                        ; preds = %lor.rhs.if.then24_crit_edge, %lor.lhs.false18.if.then24_crit_edge, %if.end14.if.then24_crit_edge
  %28 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lowest_valid, align 4
  %30 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp28.not4 = icmp ugt i32 %29, %31
  br i1 %cmp28.not4, label %if.then24.cleanup_crit_edge, label %if.then24.for.body29_crit_edge

if.then24.for.body29_crit_edge:                   ; preds = %if.then24
  br label %for.body29

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %if.then24.for.body29_crit_edge
  %i.15 = phi i32 [ %inc34, %for.body29.for.body29_crit_edge ], [ %29, %if.then24.for.body29_crit_edge ]
  %GnbSlow32 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.15, i32 6
  %32 = ptrtoint ptr %GnbSlow32 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %GnbSlow32, align 1
  %inc34 = add i32 %i.15, 1
  %33 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %highest_valid, align 4
  %cmp28.not = icmp ugt i32 %inc34, %34
  br i1 %cmp28.not, label %for.body29.cleanup_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body29

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %lor.rhs
  %battery_state = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %battery_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %battery_state, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool36.not = icmp eq i8 %36, 0
  br i1 %tobool36.not, label %if.else.if.end41_crit_edge, label %if.then37

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %ForceNbPs140 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 0, i32 7
  %37 = ptrtoint ptr %ForceNbPs140 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %ForceNbPs140, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.else.if.end41_crit_edge
  %GnbSlow44 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 1, i32 6
  %38 = ptrtoint ptr %GnbSlow44 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %GnbSlow44, align 1
  %GnbSlow47 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 2, i32 6
  %39 = ptrtoint ptr %GnbSlow47 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %GnbSlow47, align 1
  %GnbSlow50 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 3, i32 6
  %40 = ptrtoint ptr %GnbSlow50 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %GnbSlow50, align 1
  %GnbSlow53 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 4, i32 6
  %41 = ptrtoint ptr %GnbSlow53 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %GnbSlow53, align 1
  br label %cleanup

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.cond57.preheader.for.body60_crit_edge
  %i.27 = phi i32 [ %inc71, %for.body60.for.body60_crit_edge ], [ %5, %for.cond57.preheader.for.body60_crit_edge ]
  %GnbSlow63 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.27, i32 6
  %42 = ptrtoint ptr %GnbSlow63 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %GnbSlow63, align 1
  %ForceNbPs166 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.27, i32 7
  %43 = ptrtoint ptr %ForceNbPs166 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ForceNbPs166, align 2
  %UpH69 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.27, i32 12
  %44 = ptrtoint ptr %UpH69 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %UpH69, align 1
  %inc71 = add i32 %i.27, 1
  %45 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %highest_valid, align 4
  %cmp59.not = icmp ugt i32 %inc71, %46
  br i1 %cmp59.not, label %for.body60.for.end72_crit_edge, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body60

for.body60.for.end72_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end72

for.end72:                                        ; preds = %for.body60.for.end72_crit_edge, %for.cond57.preheader.for.end72_crit_edge
  %nb_dpm_enable74 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %nb_dpm_enable74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nb_dpm_enable74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool75.not = icmp eq i32 %48, 0
  br i1 %tobool75.not, label %for.end72.cleanup_crit_edge, label %land.lhs.true

for.end72.cleanup_crit_edge:                      ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end72
  %battery_state76 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %battery_state76 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %battery_state76, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool77.not = icmp eq i8 %50, 0
  br i1 %tobool77.not, label %land.lhs.true.cleanup_crit_edge, label %if.then78

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then78:                                        ; preds = %land.lhs.true
  %51 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lowest_valid, align 4
  %UpH82 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %52, i32 12
  %53 = ptrtoint ptr %UpH82 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 40, ptr %UpH82, align 1
  %54 = load i32, ptr %lowest_valid, align 4
  %GnbSlow86 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %54, i32 6
  %55 = ptrtoint ptr %GnbSlow86 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %GnbSlow86, align 1
  %56 = load i32, ptr %lowest_valid, align 4
  %57 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp89.not = icmp eq i32 %56, %58
  br i1 %cmp89.not, label %if.then78.cleanup_crit_edge, label %if.then90

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then90:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  %ForceNbPs194 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %56, i32 7
  %59 = ptrtoint ptr %ForceNbPs194 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %ForceNbPs194, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.then78.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.end72.cleanup_crit_edge, %if.end41, %for.body29.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_update_vce_dpm(ptr noundef %adev, ptr nocapture noundef readonly %amdgpu_new_state, ptr nocapture noundef readonly %amdgpu_current_state) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %vce_clock_voltage_dependency_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 6
  %evclk = getelementptr inbounds %struct.amdgpu_ps, ptr %amdgpu_new_state, i32 0, i32 5
  %2 = ptrtoint ptr %evclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %evclk26 = getelementptr inbounds %struct.amdgpu_ps, ptr %amdgpu_current_state, i32 0, i32 5
  %4 = ptrtoint ptr %evclk26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evclk26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.lhs.true25, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp27.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %caps_stable_p_state = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %caps_stable_p_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %caps_stable_p_state, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i8 %9, -1
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.not.i = icmp eq i8 %9, 0
  br i1 %cmp10.not.i, label %if.else.if.end_crit_edge, label %for.body.lr.ph.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.else
  %entries.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 6, i32 1
  %10 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries.i, align 4
  %wide.trip.count.i = zext i8 %9 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %evclk3.i = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %11, i32 %indvars.iv.i, i32 1
  %12 = ptrtoint ptr %evclk3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %evclk3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp4.not.i = icmp ult i32 %13, %3
  br i1 %cmp4.not.i, label %for.inc.i, label %for.end.loopexit.split.loop.exit.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.end.loopexit.split.loop.exit.i:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = trunc i32 %indvars.iv.i to i8
  br label %if.end

if.end:                                           ; preds = %for.end.loopexit.split.loop.exit.i, %for.inc.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then3
  %i.0.lcssa.i.sink = phi i8 [ %sub, %if.then3 ], [ 0, %if.else.if.end_crit_edge ], [ %14, %for.end.loopexit.split.loop.exit.i ], [ %9, %for.inc.i.if.end_crit_edge ]
  %vce_boot_level7 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 29
  %15 = ptrtoint ptr %vce_boot_level7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %i.0.lcssa.i.sink, ptr %vce_boot_level7, align 1
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %17, 745
  %vce_boot_level8 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 29
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sram_end, align 4
  %call9 = tail call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add, ptr noundef %vce_boot_level8, i32 noundef 1, i32 noundef %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %20 = ptrtoint ptr %caps_stable_p_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %caps_stable_p_state, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not = icmp eq i8 %21, 0
  br i1 %tobool14.not, label %if.end12.cleanup.sink.split_crit_edge, label %if.then15

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %vce_boot_level8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vce_boot_level8, align 1
  %conv17 = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv17
  %call18 = tail call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %adev, i16 noundef zeroext 302, i32 noundef %shl) #13
  br label %cleanup.sink.split

land.lhs.true25:                                  ; preds = %entry
  br i1 %cmp27.not, label %land.lhs.true25.cleanup_crit_edge, label %land.lhs.true25.cleanup.sink.split_crit_edge

land.lhs.true25.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true25.cleanup.sink.split_crit_edge, %if.then15, %if.end12.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 346, %if.then15 ], [ 346, %if.end12.cleanup.sink.split_crit_edge ], [ 347, %land.lhs.true25.cleanup.sink.split_crit_edge ]
  %call.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true25.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_force_dpm_lowest(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  %enable_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable_mask) #13
  %0 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enable_mask, align 4, !annotation !100
  %call = call i32 @amdgpu_kv_dpm_get_enable_mask(ptr noundef %adev, ptr noundef nonnull %enable_mask) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enable_mask, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.inc, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %and.1 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool1.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool1.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool1.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool1.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool1.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool1.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool1.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool1.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool1.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool1.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool1.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool1.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  %and.7 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool1.not.7 = icmp eq i32 %and.7, 0
  %spec.select = select i1 %tobool1.not.7, i32 8, i32 7
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.inc.6 ]
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %3 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %asic_type, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %4, label %if.else [
    i32 7, label %for.end.if.then7_crit_edge
    i32 9, label %for.end.if.then7_crit_edge22
  ]

for.end.if.then7_crit_edge22:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

for.end.if.then7_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then7:                                         ; preds = %for.end.if.then7_crit_edge, %for.end.if.then7_crit_edge22
  %call8 = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %adev, i16 noundef zeroext 260, i32 noundef %i.0.lcssa) #13
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw nsw i32 1, %i.0.lcssa
  %call.i = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %adev, i16 noundef zeroext 325, i32 noundef %shl.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ %call.i, %if.else ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_mask) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kv_dpm_get_enable_mask(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kv_notify_message_to_smu(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_print_class_info(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_print_cap_info(i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_print_ps_status(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_set_interrupt_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %entry.sw.epilog20_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.sw.epilog20_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog20

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %state, label %sw.bb.sw.epilog20_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
  ]

sw.bb.sw.epilog20_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog20

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %2 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_rreg, align 4
  %call = tail call i32 %3(ptr noundef %adev, i32 noundef -1039138776) #13
  %and = and i32 %call, -16777217
  br label %sw.epilog20.sink.split

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %smc_rreg3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %4 = ptrtoint ptr %smc_rreg3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smc_rreg3, align 4
  %call4 = tail call i32 %5(ptr noundef %adev, i32 noundef -1039138776) #13
  %or = or i32 %call4, 16777216
  br label %sw.epilog20.sink.split

sw.bb6:                                           ; preds = %entry
  %6 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %state, label %sw.bb6.sw.epilog20_crit_edge [
    i32 0, label %sw.bb7
    i32 1, label %sw.bb12
  ]

sw.bb6.sw.epilog20_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog20

sw.bb7:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %smc_rreg8 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %7 = ptrtoint ptr %smc_rreg8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smc_rreg8, align 4
  %call9 = tail call i32 %8(ptr noundef %adev, i32 noundef -1039138776) #13
  %and10 = and i32 %call9, -33554433
  br label %sw.epilog20.sink.split

sw.bb12:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %smc_rreg13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %9 = ptrtoint ptr %smc_rreg13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smc_rreg13, align 4
  %call14 = tail call i32 %10(ptr noundef %adev, i32 noundef -1039138776) #13
  %or15 = or i32 %call14, 33554432
  br label %sw.epilog20.sink.split

sw.epilog20.sink.split:                           ; preds = %sw.bb12, %sw.bb7, %sw.bb2, %sw.bb1
  %and10.sink = phi i32 [ %and10, %sw.bb7 ], [ %or15, %sw.bb12 ], [ %and, %sw.bb1 ], [ %or, %sw.bb2 ]
  %smc_wreg11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %11 = ptrtoint ptr %smc_wreg11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smc_wreg11, align 8
  tail call void %12(ptr noundef %adev, i32 noundef -1039138776, i32 noundef %and10.sink) #13
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.epilog20.sink.split, %sw.bb6.sw.epilog20_crit_edge, %sw.bb.sw.epilog20_crit_edge, %entry.sw.epilog20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kv_dpm_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %entry1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 230, label %if.end.if.then7_crit_edge
    i32 231, label %sw.bb2
  ]

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

if.then7:                                         ; preds = %sw.bb2, %if.end.if.then7_crit_edge
  %.str.16.sink = phi ptr [ @.str.17, %sw.bb2 ], [ @.str.16, %if.end.if.then7_crit_edge ]
  %.sink = phi i8 [ 1, %sw.bb2 ], [ 0, %if.end.if.then7_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull %.str.16.sink) #13
  %high_to_low = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 35, i32 10
  %3 = ptrtoint ptr %high_to_low to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %high_to_low, align 4
  %thermal10 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %thermal10) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_dpm_powergate_acp(ptr noundef %adev, i1 noundef zeroext %gate) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %gate to i8
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %acp_power_gated = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %acp_power_gated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acp_power_gated, align 2, !range !99
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp = icmp eq i8 %3, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %5, label %if.end10 [
    i32 7, label %if.end.cleanup_crit_edge
    i32 9, label %if.end.cleanup_crit_edge40
  ]

if.end.cleanup_crit_edge40:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %acp_power_gated to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %acp_power_gated, align 2
  br i1 %gate, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end10
  %call.i.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 345) #13
  %caps_acp_pg = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 65
  %8 = ptrtoint ptr %caps_acp_pg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %caps_acp_pg, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.then15.cleanup.sink.split_crit_edge

if.then15.cleanup.sink.split_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %caps_acp_pg21 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 65
  %10 = ptrtoint ptr %caps_acp_pg21 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %caps_acp_pg21, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  br i1 %tobool22.not, label %if.else.if.end25_crit_edge, label %if.then23

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 312) #13
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else.if.end25_crit_edge
  %acp_clock_voltage_dependency_table.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 8
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %caps_stable_p_state.i = getelementptr inbounds %struct.kv_power_info, ptr %13, i32 0, i32 66
  %14 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %caps_stable_p_state.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not.i = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %acp_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %acp_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.i.i = icmp eq i32 %17, 0
  %i.1.i.i = sext i1 %cmp6.i.i to i8
  %18 = trunc i32 %17 to i8
  %conv.i = add i8 %18, -1
  %conv.sink.i = select i1 %tobool1.not.i, i8 %i.1.i.i, i8 %conv.i
  %19 = getelementptr inbounds %struct.kv_power_info, ptr %13, i32 0, i32 30
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.sink.i, ptr %19, align 2
  %dpm_table_start.i = getelementptr inbounds %struct.kv_power_info, ptr %13, i32 0, i32 14
  %21 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dpm_table_start.i, align 4
  %add.i = add i32 %22, 746
  %sram_end.i = getelementptr inbounds %struct.kv_power_info, ptr %13, i32 0, i32 13
  %23 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sram_end.i, align 4
  %call6.i = tail call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add.i, ptr noundef %19, i32 noundef 1, i32 noundef %24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9.i:                                        ; preds = %if.end25
  %25 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %caps_stable_p_state.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool11.not.i = icmp eq i8 %26, 0
  br i1 %tobool11.not.i, label %if.end9.i.cleanup.sink.split_crit_edge, label %if.then12.i

if.end9.i.cleanup.sink.split_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %19, align 2
  %conv14.i = zext i8 %28 to i32
  %shl.i = shl nuw i32 1, %conv14.i
  %call15.i = tail call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %adev, i16 noundef zeroext 303, i32 noundef %shl.i) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12.i, %if.end9.i.cleanup.sink.split_crit_edge, %if.then15.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 311, %if.then15.cleanup.sink.split_crit_edge ], [ 344, %if.then12.i ], [ 344, %if.end9.i.cleanup.sink.split_crit_edge ]
  %call.i.i39 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge40, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_dpm_powergate_samu(ptr noundef %adev, i1 noundef zeroext %gate) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %samu_power_gated = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %samu_power_gated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %samu_power_gated, align 1, !range !99
  %4 = zext i1 %gate to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %samu_power_gated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %samu_power_gated, align 1
  br i1 %gate, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %call.i.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 343) #13
  %caps_samu_pg = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 64
  %6 = ptrtoint ptr %caps_samu_pg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %caps_samu_pg, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %if.then8.cleanup.sink.split_crit_edge

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %caps_samu_pg14 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 64
  %8 = ptrtoint ptr %caps_samu_pg14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %caps_samu_pg14, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.then16

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 314) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else.if.end18_crit_edge
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %caps_stable_p_state.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 66
  %12 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %caps_stable_p_state.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %if.end18.if.end.i_crit_edge, label %if.then2.i

if.end18.if.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %samu_clock_voltage_dependency_table.i31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 7
  %14 = ptrtoint ptr %samu_clock_voltage_dependency_table.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %samu_clock_voltage_dependency_table.i31, align 4
  %16 = trunc i32 %15 to i8
  %conv.i = add i8 %16, -1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.end18.if.end.i_crit_edge
  %conv.sink.i = phi i8 [ %conv.i, %if.then2.i ], [ 0, %if.end18.if.end.i_crit_edge ]
  %17 = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 31
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.sink.i, ptr %17, align 1
  %dpm_table_start.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 14
  %19 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dpm_table_start.i, align 4
  %add.i = add i32 %20, 747
  %sram_end.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 13
  %21 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sram_end.i, align 4
  %call5.i = tail call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add.i, ptr noundef %17, i32 noundef 1, i32 noundef %22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %caps_stable_p_state.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not.i = icmp eq i8 %24, 0
  br i1 %tobool10.not.i, label %if.end8.i.cleanup.sink.split_crit_edge, label %if.then11.i

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %17, align 1
  %conv13.i = zext i8 %26 to i32
  %shl.i = shl nuw i32 1, %conv13.i
  %call14.i = tail call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %adev, i16 noundef zeroext 304, i32 noundef %shl.i) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11.i, %if.end8.i.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 313, %if.then8.cleanup.sink.split_crit_edge ], [ 342, %if.then11.i ], [ 342, %if.end8.i.cleanup.sink.split_crit_edge ]
  %call.i.i32 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_thermal_work_handler(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pm_print_power_states(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_get_platform_caps(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_parse_extended_power_table(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_add_thermal_controller(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_free_extended_power_table(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_dpm_enable(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  %dividers.i = alloca %struct.atom_clock_dividers, align 4
  %dividers.i134.i = alloca %struct.atom_clock_dividers, align 4
  %dividers.i.i = alloca %struct.atom_clock_dividers, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !100
  %sram_end.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sram_end.i, align 4
  %call1.i = call i32 @amdgpu_kv_read_smc_sram_dword(ptr noundef %adev, i32 noundef 131124, ptr noundef nonnull %tmp.i, i32 noundef %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp.i, align 4
  %dpm_table_start.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dpm_table_start.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sram_end.i, align 4
  %call3.i = call i32 @amdgpu_kv_read_smc_sram_dword(ptr noundef %adev, i32 noundef 131120, ptr noundef nonnull %tmp.i, i32 noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end, label %if.then

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i, align 4
  %soft_regs_start.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %soft_regs_start.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %soft_regs_start.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  %caps_fps.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 60
  %15 = ptrtoint ptr %caps_fps.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %caps_fps.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end.kv_init_fps_limits.exit_crit_edge, label %if.then.i143

if.end.kv_init_fps_limits.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_init_fps_limits.exit

if.then.i143:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fps_high_t.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 21
  %17 = ptrtoint ptr %fps_high_t.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 45, ptr %fps_high_t.i, align 2
  %dpm_table_start.i141 = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 14
  %18 = ptrtoint ptr %dpm_table_start.i141 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dpm_table_start.i141, align 4
  %add.i = add i32 %19, 82
  %sram_end.i142 = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 13
  %20 = ptrtoint ptr %sram_end.i142 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sram_end.i142, align 4
  %call2.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add.i, ptr noundef %fps_high_t.i, i32 noundef 2, i32 noundef %21) #13
  %fps_low_t.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 42
  %22 = ptrtoint ptr %fps_low_t.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 30, ptr %fps_low_t.i, align 2
  %23 = ptrtoint ptr %dpm_table_start.i141 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dpm_table_start.i141, align 4
  %add4.i = add i32 %24, 758
  %25 = ptrtoint ptr %sram_end.i142 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sram_end.i142, align 4
  %call7.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add4.i, ptr noundef %fps_low_t.i, i32 noundef 2, i32 noundef %26) #13
  br label %kv_init_fps_limits.exit

kv_init_fps_limits.exit:                          ; preds = %if.then.i143, %if.end.kv_init_fps_limits.exit_crit_edge
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 4
  %dyn_state.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21
  %29 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i = icmp eq i32 %30, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i146

if.then.i146:                                     ; preds = %kv_init_fps_limits.exit
  %graphics_dpm_level_count.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 16
  %31 = ptrtoint ptr %graphics_dpm_level_count.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %graphics_dpm_level_count.i, align 4
  %entries.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  %32 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp192.not.i = icmp eq i32 %33, 0
  br i1 %cmp192.not.i, label %if.then.i146.kv_init_graphics_levels.exit_crit_edge, label %for.body.lr.ph.i

if.then.i146.kv_init_graphics_levels.exit_crit_edge: ; preds = %if.then.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_init_graphics_levels.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i146
  %high_voltage_t.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 10
  %vid_mapping_table.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %kv_set_vid.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0193.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc24.i, %kv_set_vid.exit.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %high_voltage_t.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %high_voltage_t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool3.not.i = icmp eq i16 %35, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end.i147_crit_edge, label %land.lhs.true4.i

for.body.i.if.end.i147_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i147

land.lhs.true4.i:                                 ; preds = %for.body.i
  %36 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %entries.i, align 4
  %v.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %37, i32 %i.0193.i, i32 1
  %38 = ptrtoint ptr %v.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %v.i, align 4
  %mul.neg.i.i = mul i16 %39, -25
  %sub.i.i = add i16 %mul.neg.i.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %sub.i.i)
  %cmp9.i = icmp ult i16 %35, %sub.i.i
  br i1 %cmp9.i, label %land.lhs.true4.i.kv_init_graphics_levels.exit_crit_edge, label %land.lhs.true4.i.if.end.i147_crit_edge

land.lhs.true4.i.if.end.i147_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i147

land.lhs.true4.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_init_graphics_levels.exit

if.end.i147:                                      ; preds = %land.lhs.true4.i.if.end.i147_crit_edge, %for.body.i.if.end.i147_crit_edge
  %40 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %entries.i, align 4
  %arrayidx13.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %41, i32 %i.0193.i
  %42 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx13.i, align 4
  %44 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i.i) #13
  %46 = call ptr @memset(ptr %dividers.i.i, i32 255, i32 32)
  %call1.i.i = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 2, i32 noundef %43, i1 noundef zeroext false, ptr noundef nonnull %dividers.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i147.kv_set_divider_value.exit.i_crit_edge

if.end.i147.kv_set_divider_value.exit.i_crit_edge: ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_divider_value.exit.i

if.end.i.i:                                       ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dividers.i.i, align 4
  %conv.i.i = trunc i32 %48 to i8
  %SclkDid.i.i = getelementptr %struct.kv_power_info, ptr %45, i32 0, i32 22, i32 %i.0193.i, i32 8
  %49 = ptrtoint ptr %SclkDid.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i.i, ptr %SclkDid.i.i, align 1
  %SclkFrequency.i.i = getelementptr %struct.kv_power_info, ptr %45, i32 0, i32 22, i32 %i.0193.i, i32 1
  %50 = ptrtoint ptr %SclkFrequency.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %43, ptr %SclkFrequency.i.i, align 4
  br label %kv_set_divider_value.exit.i

kv_set_divider_value.exit.i:                      ; preds = %if.end.i.i, %if.end.i147.kv_set_divider_value.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i.i) #13
  %51 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %entries.i, align 4
  %v17.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %52, i32 %i.0193.i, i32 1
  %53 = ptrtoint ptr %v17.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %v17.i, align 4
  %55 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool1.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %kv_set_divider_value.exit.i.for.body.i.i_crit_edge

kv_set_divider_value.exit.i.for.body.i.i_crit_edge: ; preds = %kv_set_divider_value.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %kv_set_divider_value.exit.i.for.body.i.i_crit_edge
  %i.053.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %kv_set_divider_value.exit.i.for.body.i.i_crit_edge ]
  %v.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %52, i32 %i.053.i.i, i32 1
  %57 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %v.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %54)
  %cmp3.i.i = icmp eq i16 %58, %54
  br i1 %cmp3.i.i, label %for.body.i.i.kv_convert_vid7_to_vid2.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.kv_convert_vid7_to_vid2.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_convert_vid7_to_vid2.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %56
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i127.i = add i32 %56, -1
  br label %kv_convert_vid7_to_vid2.exit.i

if.else.i.i:                                      ; preds = %kv_set_divider_value.exit.i
  %59 = ptrtoint ptr %vid_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vid_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp854.not.i.i = icmp eq i32 %60, 0
  br i1 %cmp854.not.i.i, label %if.else.i.i.for.end24.i.i_crit_edge, label %if.else.i.i.for.body10.i.i_crit_edge

if.else.i.i.for.body10.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body10.i.i

if.else.i.i.for.end24.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24.i.i

for.body10.i.i:                                   ; preds = %for.inc22.i.i.for.body10.i.i_crit_edge, %if.else.i.i.for.body10.i.i_crit_edge
  %i.155.i.i = phi i32 [ %inc23.i.i, %for.inc22.i.i.for.body10.i.i_crit_edge ], [ 0, %if.else.i.i.for.body10.i.i_crit_edge ]
  %vid_7bit13.i.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 10, i32 1, i32 %i.155.i.i, i32 1
  %61 = ptrtoint ptr %vid_7bit13.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vid_7bit13.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %54)
  %cmp15.i.i = icmp eq i16 %62, %54
  br i1 %cmp15.i.i, label %if.then17.i.i, label %for.inc22.i.i

if.then17.i.i:                                    ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx12.i.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 10, i32 1, i32 %i.155.i.i
  %63 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx12.i.i, align 4
  %conv20.i.i = zext i16 %64 to i32
  br label %kv_convert_vid7_to_vid2.exit.i

for.inc22.i.i:                                    ; preds = %for.body10.i.i
  %inc23.i.i = add nuw i32 %i.155.i.i, 1
  %exitcond58.not.i.i = icmp eq i32 %inc23.i.i, %60
  br i1 %exitcond58.not.i.i, label %for.inc22.i.i.for.end24.i.i_crit_edge, label %for.inc22.i.i.for.body10.i.i_crit_edge

for.inc22.i.i.for.body10.i.i_crit_edge:           ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10.i.i

for.inc22.i.i.for.end24.i.i_crit_edge:            ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24.i.i

for.end24.i.i:                                    ; preds = %for.inc22.i.i.for.end24.i.i_crit_edge, %if.else.i.i.for.end24.i.i_crit_edge
  %sub27.i.i = add i32 %60, -1
  %arrayidx28.i.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 10, i32 1, i32 %sub27.i.i
  %65 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx28.i.i, align 4
  %conv30.i.i = zext i16 %66 to i32
  br label %kv_convert_vid7_to_vid2.exit.i

kv_convert_vid7_to_vid2.exit.i:                   ; preds = %for.end24.i.i, %if.then17.i.i, %for.end.i.i, %for.body.i.i.kv_convert_vid7_to_vid2.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i127.i, %for.end.i.i ], [ %conv20.i.i, %if.then17.i.i ], [ %conv30.i.i, %for.end24.i.i ], [ %i.053.i.i, %for.body.i.i.kv_convert_vid7_to_vid2.exit.i_crit_edge ]
  %67 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.i, align 4
  %voltage_drop_t.i.i = getelementptr inbounds %struct.kv_power_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %voltage_drop_t.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %voltage_drop_t.i.i, align 4
  %conv.i129.i = trunc i32 %70 to i8
  %VoltageDownH.i.i = getelementptr %struct.kv_power_info, ptr %68, i32 0, i32 22, i32 %i.0193.i, i32 14
  %71 = ptrtoint ptr %VoltageDownH.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i129.i, ptr %VoltageDownH.i.i, align 1
  %72 = load ptr, ptr %priv.i, align 4
  %73 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool1.not.i.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else9.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %kv_convert_vid7_to_vid2.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %retval.0.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %74, %retval.0.i.i
  %75 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %entries.i, align 4
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.else.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %v.i.i.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %76, i32 %retval.0.i.i, i32 1
  br label %kv_set_vid.exit.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i.i = add i32 %74, -1
  %v7.i.i.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %76, i32 %sub.i.i.i.i, i32 1
  br label %kv_set_vid.exit.i

if.else9.i.i.i.i:                                 ; preds = %kv_convert_vid7_to_vid2.exit.i
  %vid_mapping_table.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %72, i32 0, i32 2, i32 10
  %77 = ptrtoint ptr %vid_mapping_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vid_mapping_table.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp1046.not.i.i.i.i = icmp eq i32 %78, 0
  br i1 %cmp1046.not.i.i.i.i, label %if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge, label %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge

if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %if.else9.i.i.i.i
  br label %for.body.i.i.i.i

if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %if.else9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.047.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx13.i.i.i.i = getelementptr %struct.kv_power_info, ptr %72, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i.i
  %79 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx13.i.i.i.i, align 4
  %conv15.i.i.i.i = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv15.i.i.i.i)
  %cmp16.i.i.i.i = icmp eq i32 %retval.0.i.i, %conv15.i.i.i.i
  br i1 %cmp16.i.i.i.i, label %if.then18.i.i.i.i, label %for.inc.i.i.i.i

if.then18.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vid_7bit.i.i.i.i = getelementptr %struct.kv_power_info, ptr %72, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i.i, i32 1
  br label %kv_set_vid.exit.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.047.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %78
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge
  %sub24.i.i.i.i = add i32 %78, -1
  %vid_7bit26.i.i.i.i = getelementptr %struct.kv_power_info, ptr %72, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i.i.i, i32 1
  br label %kv_set_vid.exit.i

kv_set_vid.exit.i:                                ; preds = %for.end.i.i.i.i, %if.then18.i.i.i.i, %if.else.i.i.i.i, %if.then3.i.i.i.i
  %retval.0.in.in.i.i.i.i = phi ptr [ %v.i.i.i.i, %if.then3.i.i.i.i ], [ %v7.i.i.i.i, %if.else.i.i.i.i ], [ %vid_7bit.i.i.i.i, %if.then18.i.i.i.i ], [ %vid_7bit26.i.i.i.i, %for.end.i.i.i.i ]
  %arrayidx.i.i = getelementptr %struct.kv_power_info, ptr %68, i32 0, i32 22, i32 %i.0193.i
  %81 = ptrtoint ptr %retval.0.in.in.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %retval.0.in.i.i.i.i = load i16, ptr %retval.0.in.in.i.i.i.i, align 2
  %mul.neg.i.i.i.i = mul i16 %retval.0.in.i.i.i.i, -25
  %sub.i5.i.i.i = add i16 %mul.neg.i.i.i.i, 6200
  %conv2.i.i = zext i16 %sub.i5.i.i.i to i32
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv2.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx21.i = getelementptr [5 x i32], ptr %28, i32 0, i32 %i.0193.i
  %83 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx21.i, align 4
  %85 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv.i, align 4
  %conv.i131.i = trunc i32 %84 to i16
  %AT.i.i = getelementptr %struct.kv_power_info, ptr %86, i32 0, i32 22, i32 %i.0193.i, i32 4
  %87 = ptrtoint ptr %AT.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i131.i, ptr %AT.i.i, align 2
  %88 = load ptr, ptr %priv.i, align 4
  %EnabledForThrottle.i.i = getelementptr %struct.kv_power_info, ptr %88, i32 0, i32 22, i32 %i.0193.i, i32 11
  %89 = ptrtoint ptr %EnabledForThrottle.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %EnabledForThrottle.i.i, align 2
  %90 = ptrtoint ptr %graphics_dpm_level_count.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %graphics_dpm_level_count.i, align 4
  %inc.i = add i8 %91, 1
  store i8 %inc.i, ptr %graphics_dpm_level_count.i, align 4
  %inc24.i = add nuw i32 %i.0193.i, 1
  %92 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dyn_state.i, align 4
  %cmp.i148 = icmp ult i32 %inc24.i, %93
  br i1 %cmp.i148, label %kv_set_vid.exit.i.for.body.i_crit_edge, label %kv_set_vid.exit.i.kv_init_graphics_levels.exit_crit_edge

kv_set_vid.exit.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %kv_set_vid.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_init_graphics_levels.exit

kv_set_vid.exit.i.for.body.i_crit_edge:           ; preds = %kv_set_vid.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.else.i:                                        ; preds = %kv_init_fps_limits.exit
  %sclk_voltage_mapping_table.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 9
  %graphics_dpm_level_count27.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 16
  %94 = ptrtoint ptr %graphics_dpm_level_count27.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %graphics_dpm_level_count27.i, align 4
  %95 = ptrtoint ptr %sclk_voltage_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sclk_voltage_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp29194.not.i = icmp eq i32 %96, 0
  br i1 %cmp29194.not.i, label %if.else.i.kv_init_graphics_levels.exit_crit_edge, label %for.body31.lr.ph.i

if.else.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_init_graphics_levels.exit

for.body31.lr.ph.i:                               ; preds = %if.else.i
  %high_voltage_t32.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 10
  %entries.i.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  br label %for.body31.i

for.body31.i:                                     ; preds = %kv_set_vid.exit179.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %i.1195.i = phi i32 [ 0, %for.body31.lr.ph.i ], [ %inc62.i, %kv_set_vid.exit179.i.for.body31.i_crit_edge ]
  %97 = ptrtoint ptr %high_voltage_t32.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %high_voltage_t32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool34.not.i = icmp eq i16 %98, 0
  br i1 %tobool34.not.i, label %for.body31.i.if.end47.i_crit_edge, label %land.lhs.true35.i

for.body31.i.if.end47.i_crit_edge:                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

land.lhs.true35.i:                                ; preds = %for.body31.i
  %vid_2bit40.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 9, i32 1, i32 %i.1195.i, i32 1
  %99 = ptrtoint ptr %vid_2bit40.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vid_2bit40.i, align 4
  %conv41.i = zext i16 %100 to i32
  %101 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv.i, align 4
  %103 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool1.not.i.i.i = icmp eq i32 %104, 0
  br i1 %tobool1.not.i.i.i, label %if.else9.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv41.i)
  %cmp.i.i.i = icmp ugt i32 %104, %conv41.i
  %105 = ptrtoint ptr %entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %entries.i.i.i, align 4
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.else.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %v.i.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %106, i32 %conv41.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %104, -1
  %v7.i.i.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %106, i32 %sub.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i

if.else9.i.i.i:                                   ; preds = %land.lhs.true35.i
  %vid_mapping_table.i.i = getelementptr inbounds %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 10
  %107 = ptrtoint ptr %vid_mapping_table.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vid_mapping_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp1046.not.i.i.i = icmp eq i32 %108, 0
  br i1 %cmp1046.not.i.i.i, label %if.else9.i.i.i.for.end.i.i.i_crit_edge, label %if.else9.i.i.i.for.body.i.i.i_crit_edge

if.else9.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.else9.i.i.i
  br label %for.body.i.i.i

if.else9.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.else9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.else9.i.i.i.for.body.i.i.i_crit_edge
  %i.047.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.else9.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx13.i.i.i = getelementptr %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i
  %109 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx13.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %100)
  %cmp16.i.i.i = icmp eq i16 %110, %100
  br i1 %cmp16.i.i.i, label %if.then18.i.i.i, label %for.inc.i.i.i

if.then18.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vid_7bit.i.i.i = getelementptr %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.047.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %108
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.else9.i.i.i.for.end.i.i.i_crit_edge
  %sub24.i.i.i = add i32 %108, -1
  %vid_7bit26.i.i.i = getelementptr %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i

kv_convert_2bit_index_to_voltage.exit.i:          ; preds = %for.end.i.i.i, %if.then18.i.i.i, %if.else.i.i.i, %if.then3.i.i.i
  %retval.0.in.in.i.i.i = phi ptr [ %v.i.i.i, %if.then3.i.i.i ], [ %v7.i.i.i, %if.else.i.i.i ], [ %vid_7bit.i.i.i, %if.then18.i.i.i ], [ %vid_7bit26.i.i.i, %for.end.i.i.i ]
  %111 = ptrtoint ptr %retval.0.in.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %retval.0.in.i.i.i = load i16, ptr %retval.0.in.in.i.i.i, align 2
  %mul.neg.i.i.i = mul i16 %retval.0.in.i.i.i, -25
  %sub.i5.i.i = add i16 %mul.neg.i.i.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %sub.i5.i.i)
  %cmp44.i = icmp ult i16 %98, %sub.i5.i.i
  br i1 %cmp44.i, label %kv_convert_2bit_index_to_voltage.exit.i.kv_init_graphics_levels.exit_crit_edge, label %kv_convert_2bit_index_to_voltage.exit.i.if.end47.i_crit_edge

kv_convert_2bit_index_to_voltage.exit.i.if.end47.i_crit_edge: ; preds = %kv_convert_2bit_index_to_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

kv_convert_2bit_index_to_voltage.exit.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %kv_convert_2bit_index_to_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_init_graphics_levels.exit

if.end47.i:                                       ; preds = %kv_convert_2bit_index_to_voltage.exit.i.if.end47.i_crit_edge, %for.body31.i.if.end47.i_crit_edge
  %arrayidx49.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 9, i32 1, i32 %i.1195.i
  %112 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx49.i, align 4
  %114 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i134.i) #13
  %116 = call ptr @memset(ptr %dividers.i134.i, i32 255, i32 32)
  %call1.i136.i = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 2, i32 noundef %113, i1 noundef zeroext false, ptr noundef nonnull %dividers.i134.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136.i)
  %tobool.not.i137.i = icmp eq i32 %call1.i136.i, 0
  br i1 %tobool.not.i137.i, label %if.end.i141.i, label %if.end47.i.kv_set_divider_value.exit142.i_crit_edge

if.end47.i.kv_set_divider_value.exit142.i_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_set_divider_value.exit142.i

if.end.i141.i:                                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %117 = ptrtoint ptr %dividers.i134.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dividers.i134.i, align 4
  %conv.i138.i = trunc i32 %118 to i8
  %SclkDid.i139.i = getelementptr %struct.kv_power_info, ptr %115, i32 0, i32 22, i32 %i.1195.i, i32 8
  %119 = ptrtoint ptr %SclkDid.i139.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i138.i, ptr %SclkDid.i139.i, align 1
  %SclkFrequency.i140.i = getelementptr %struct.kv_power_info, ptr %115, i32 0, i32 22, i32 %i.1195.i, i32 1
  %120 = ptrtoint ptr %SclkFrequency.i140.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %113, ptr %SclkFrequency.i140.i, align 4
  br label %kv_set_divider_value.exit142.i

kv_set_divider_value.exit142.i:                   ; preds = %if.end.i141.i, %if.end47.i.kv_set_divider_value.exit142.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i134.i) #13
  %vid_2bit53.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 9, i32 1, i32 %i.1195.i, i32 1
  %121 = ptrtoint ptr %vid_2bit53.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %vid_2bit53.i, align 4
  %conv54.i = zext i16 %122 to i32
  %123 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv.i, align 4
  %voltage_drop_t.i144.i = getelementptr inbounds %struct.kv_power_info, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %voltage_drop_t.i144.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %voltage_drop_t.i144.i, align 4
  %conv.i145.i = trunc i32 %126 to i8
  %VoltageDownH.i146.i = getelementptr %struct.kv_power_info, ptr %124, i32 0, i32 22, i32 %i.1195.i, i32 14
  %127 = ptrtoint ptr %VoltageDownH.i146.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv.i145.i, ptr %VoltageDownH.i146.i, align 1
  %128 = load ptr, ptr %priv.i, align 4
  %129 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool1.not.i.i.i148.i = icmp eq i32 %130, 0
  br i1 %tobool1.not.i.i.i148.i, label %if.else9.i.i.i159.i, label %if.then.i.i.i151.i

if.then.i.i.i151.i:                               ; preds = %kv_set_divider_value.exit142.i
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %conv54.i)
  %cmp.i.i.i149.i = icmp ugt i32 %130, %conv54.i
  %131 = ptrtoint ptr %entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %entries.i.i.i, align 4
  br i1 %cmp.i.i.i149.i, label %if.then3.i.i.i153.i, label %if.else.i.i.i156.i

if.then3.i.i.i153.i:                              ; preds = %if.then.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #15
  %v.i.i.i152.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %132, i32 %conv54.i, i32 1
  br label %kv_set_vid.exit179.i

if.else.i.i.i156.i:                               ; preds = %if.then.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i154.i = add i32 %130, -1
  %v7.i.i.i155.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %132, i32 %sub.i.i.i154.i, i32 1
  br label %kv_set_vid.exit179.i

if.else9.i.i.i159.i:                              ; preds = %kv_set_divider_value.exit142.i
  %vid_mapping_table.i.i157.i = getelementptr inbounds %struct.kv_power_info, ptr %128, i32 0, i32 2, i32 10
  %133 = ptrtoint ptr %vid_mapping_table.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vid_mapping_table.i.i157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp1046.not.i.i.i158.i = icmp eq i32 %134, 0
  br i1 %cmp1046.not.i.i.i158.i, label %if.else9.i.i.i159.i.for.end.i.i.i172.i_crit_edge, label %if.else9.i.i.i159.i.for.body.i.i.i164.i_crit_edge

if.else9.i.i.i159.i.for.body.i.i.i164.i_crit_edge: ; preds = %if.else9.i.i.i159.i
  br label %for.body.i.i.i164.i

if.else9.i.i.i159.i.for.end.i.i.i172.i_crit_edge: ; preds = %if.else9.i.i.i159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i172.i

for.body.i.i.i164.i:                              ; preds = %for.inc.i.i.i169.i.for.body.i.i.i164.i_crit_edge, %if.else9.i.i.i159.i.for.body.i.i.i164.i_crit_edge
  %i.047.i.i.i160.i = phi i32 [ %inc.i.i.i167.i, %for.inc.i.i.i169.i.for.body.i.i.i164.i_crit_edge ], [ 0, %if.else9.i.i.i159.i.for.body.i.i.i164.i_crit_edge ]
  %arrayidx13.i.i.i161.i = getelementptr %struct.kv_power_info, ptr %128, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i160.i
  %135 = ptrtoint ptr %arrayidx13.i.i.i161.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx13.i.i.i161.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %122)
  %cmp16.i.i.i163.i = icmp eq i16 %136, %122
  br i1 %cmp16.i.i.i163.i, label %if.then18.i.i.i166.i, label %for.inc.i.i.i169.i

if.then18.i.i.i166.i:                             ; preds = %for.body.i.i.i164.i
  call void @__sanitizer_cov_trace_pc() #15
  %vid_7bit.i.i.i165.i = getelementptr %struct.kv_power_info, ptr %128, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i160.i, i32 1
  br label %kv_set_vid.exit179.i

for.inc.i.i.i169.i:                               ; preds = %for.body.i.i.i164.i
  %inc.i.i.i167.i = add nuw i32 %i.047.i.i.i160.i, 1
  %exitcond.not.i.i.i168.i = icmp eq i32 %inc.i.i.i167.i, %134
  br i1 %exitcond.not.i.i.i168.i, label %for.inc.i.i.i169.i.for.end.i.i.i172.i_crit_edge, label %for.inc.i.i.i169.i.for.body.i.i.i164.i_crit_edge

for.inc.i.i.i169.i.for.body.i.i.i164.i_crit_edge: ; preds = %for.inc.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i164.i

for.inc.i.i.i169.i.for.end.i.i.i172.i_crit_edge:  ; preds = %for.inc.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i.i172.i

for.end.i.i.i172.i:                               ; preds = %for.inc.i.i.i169.i.for.end.i.i.i172.i_crit_edge, %if.else9.i.i.i159.i.for.end.i.i.i172.i_crit_edge
  %sub24.i.i.i170.i = add i32 %134, -1
  %vid_7bit26.i.i.i171.i = getelementptr %struct.kv_power_info, ptr %128, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i.i170.i, i32 1
  br label %kv_set_vid.exit179.i

kv_set_vid.exit179.i:                             ; preds = %for.end.i.i.i172.i, %if.then18.i.i.i166.i, %if.else.i.i.i156.i, %if.then3.i.i.i153.i
  %retval.0.in.in.i.i.i173.i = phi ptr [ %v.i.i.i152.i, %if.then3.i.i.i153.i ], [ %v7.i.i.i155.i, %if.else.i.i.i156.i ], [ %vid_7bit.i.i.i165.i, %if.then18.i.i.i166.i ], [ %vid_7bit26.i.i.i171.i, %for.end.i.i.i172.i ]
  %arrayidx.i174.i = getelementptr %struct.kv_power_info, ptr %124, i32 0, i32 22, i32 %i.1195.i
  %137 = ptrtoint ptr %retval.0.in.in.i.i.i173.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %retval.0.in.i.i.i175.i = load i16, ptr %retval.0.in.in.i.i.i173.i, align 2
  %mul.neg.i.i.i176.i = mul i16 %retval.0.in.i.i.i175.i, -25
  %sub.i5.i.i177.i = add i16 %mul.neg.i.i.i176.i, 6200
  %conv2.i178.i = zext i16 %sub.i5.i.i177.i to i32
  %138 = ptrtoint ptr %arrayidx.i174.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv2.i178.i, ptr %arrayidx.i174.i, align 4
  %arrayidx57.i = getelementptr [5 x i32], ptr %28, i32 0, i32 %i.1195.i
  %139 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx57.i, align 4
  %141 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv.i, align 4
  %conv.i181.i = trunc i32 %140 to i16
  %AT.i182.i = getelementptr %struct.kv_power_info, ptr %142, i32 0, i32 22, i32 %i.1195.i, i32 4
  %143 = ptrtoint ptr %AT.i182.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv.i181.i, ptr %AT.i182.i, align 2
  %144 = load ptr, ptr %priv.i, align 4
  %EnabledForThrottle.i184.i = getelementptr %struct.kv_power_info, ptr %144, i32 0, i32 22, i32 %i.1195.i, i32 11
  %145 = ptrtoint ptr %EnabledForThrottle.i184.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %EnabledForThrottle.i184.i, align 2
  %146 = ptrtoint ptr %graphics_dpm_level_count27.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %graphics_dpm_level_count27.i, align 4
  %inc60.i = add i8 %147, 1
  store i8 %inc60.i, ptr %graphics_dpm_level_count27.i, align 4
  %inc62.i = add nuw i32 %i.1195.i, 1
  %148 = ptrtoint ptr %sclk_voltage_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sclk_voltage_mapping_table.i, align 4
  %cmp29.i = icmp ult i32 %inc62.i, %149
  br i1 %cmp29.i, label %kv_set_vid.exit179.i.for.body31.i_crit_edge, label %kv_set_vid.exit179.i.kv_init_graphics_levels.exit_crit_edge

kv_set_vid.exit179.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %kv_set_vid.exit179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_init_graphics_levels.exit

kv_set_vid.exit179.i.for.body31.i_crit_edge:      ; preds = %kv_set_vid.exit179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31.i

kv_init_graphics_levels.exit:                     ; preds = %kv_set_vid.exit179.i.kv_init_graphics_levels.exit_crit_edge, %kv_convert_2bit_index_to_voltage.exit.i.kv_init_graphics_levels.exit_crit_edge, %if.else.i.kv_init_graphics_levels.exit_crit_edge, %kv_set_vid.exit.i.kv_init_graphics_levels.exit_crit_edge, %land.lhs.true4.i.kv_init_graphics_levels.exit_crit_edge, %if.then.i146.kv_init_graphics_levels.exit_crit_edge
  %150 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.i = getelementptr %struct.kv_power_info, ptr %151, i32 0, i32 22, i32 0, i32 10
  %152 = ptrtoint ptr %EnabledForActivity.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %EnabledForActivity.i.i, align 1
  %153 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.1.i = getelementptr %struct.kv_power_info, ptr %153, i32 0, i32 22, i32 1, i32 10
  %154 = ptrtoint ptr %EnabledForActivity.i.1.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %EnabledForActivity.i.1.i, align 1
  %155 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.2.i = getelementptr %struct.kv_power_info, ptr %155, i32 0, i32 22, i32 2, i32 10
  %156 = ptrtoint ptr %EnabledForActivity.i.2.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %EnabledForActivity.i.2.i, align 1
  %157 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.3.i = getelementptr %struct.kv_power_info, ptr %157, i32 0, i32 22, i32 3, i32 10
  %158 = ptrtoint ptr %EnabledForActivity.i.3.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %EnabledForActivity.i.3.i, align 1
  %159 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.4.i = getelementptr %struct.kv_power_info, ptr %159, i32 0, i32 22, i32 4, i32 10
  %160 = ptrtoint ptr %EnabledForActivity.i.4.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %EnabledForActivity.i.4.i, align 1
  %161 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.5.i = getelementptr %struct.kv_power_info, ptr %161, i32 0, i32 22, i32 5, i32 10
  %162 = ptrtoint ptr %EnabledForActivity.i.5.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %EnabledForActivity.i.5.i, align 1
  %163 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.6.i = getelementptr %struct.kv_power_info, ptr %163, i32 0, i32 22, i32 6, i32 10
  %164 = ptrtoint ptr %EnabledForActivity.i.6.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %EnabledForActivity.i.6.i, align 1
  %165 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.7.i = getelementptr %struct.kv_power_info, ptr %165, i32 0, i32 22, i32 7, i32 10
  %166 = ptrtoint ptr %EnabledForActivity.i.7.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %EnabledForActivity.i.7.i, align 1
  %167 = load ptr, ptr %priv.i, align 4
  %168 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool1.not.i151 = icmp eq i32 %169, 0
  br i1 %tobool1.not.i151, label %if.else.i157, label %if.then.i154

if.then.i154:                                     ; preds = %kv_init_graphics_levels.exit
  %graphics_dpm_level_count.i152 = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 16
  %170 = ptrtoint ptr %graphics_dpm_level_count.i152 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %graphics_dpm_level_count.i152, align 4
  %conv.i = zext i8 %171 to i32
  %entries.i153 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  %boot_pl.i = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i155.for.cond.i_crit_edge, %if.then.i154
  %i.0.in.i = phi i32 [ %conv.i, %if.then.i154 ], [ %i.0.i, %for.body.i155.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i, label %for.cond.i.if.end6_crit_edge, label %for.body.i155

for.cond.i.if.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

for.body.i155:                                    ; preds = %for.cond.i
  %172 = ptrtoint ptr %entries.i153 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %entries.i153, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %173, i32 %i.0.i
  %174 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.i, align 4
  %176 = ptrtoint ptr %boot_pl.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %boot_pl.i, align 4
  %cmp3.i = icmp eq i32 %175, %177
  br i1 %cmp3.i, label %for.body.i155.if.end6_crit_edge, label %for.body.i155.for.cond.i_crit_edge

for.body.i155.for.cond.i_crit_edge:               ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.body.i155.if.end6_crit_edge:                  ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.else.i157:                                     ; preds = %kv_init_graphics_levels.exit
  %sclk_voltage_mapping_table.i156 = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 2, i32 9
  %178 = ptrtoint ptr %sclk_voltage_mapping_table.i156 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %sclk_voltage_mapping_table.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp8.i = icmp eq i32 %179, 0
  br i1 %cmp8.i, label %if.then5, label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i157
  %graphics_dpm_level_count12.i = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 16
  %180 = ptrtoint ptr %graphics_dpm_level_count12.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %graphics_dpm_level_count12.i, align 4
  %conv13.i = zext i8 %181 to i32
  %boot_pl21.i = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 3
  br label %for.cond15.i

for.cond15.i:                                     ; preds = %for.body18.i.for.cond15.i_crit_edge, %if.end11.i
  %i.1.in.i = phi i32 [ %conv13.i, %if.end11.i ], [ %i.1.i, %for.body18.i.for.cond15.i_crit_edge ]
  %i.1.i = add i32 %i.1.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %cmp16.not.i = icmp eq i32 %i.1.i, 0
  br i1 %cmp16.not.i, label %for.cond15.i.if.end6_crit_edge, label %for.body18.i

for.cond15.i.if.end6_crit_edge:                   ; preds = %for.cond15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

for.body18.i:                                     ; preds = %for.cond15.i
  %arrayidx20.i = getelementptr %struct.kv_power_info, ptr %167, i32 0, i32 2, i32 9, i32 1, i32 %i.1.i
  %182 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx20.i, align 4
  %184 = ptrtoint ptr %boot_pl21.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %boot_pl21.i, align 4
  %cmp23.i = icmp eq i32 %183, %185
  br i1 %cmp23.i, label %for.body18.i.if.end6_crit_edge, label %for.body18.i.for.cond15.i_crit_edge

for.body18.i.for.cond15.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond15.i

for.body18.i.if.end6_crit_edge:                   ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.else.i157
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end6:                                          ; preds = %for.body18.i.if.end6_crit_edge, %for.cond15.i.if.end6_crit_edge, %for.body.i155.if.end6_crit_edge, %for.cond.i.if.end6_crit_edge
  %i.0.lcssa.sink59.i = phi i32 [ 0, %for.cond15.i.if.end6_crit_edge ], [ %i.1.i, %for.body18.i.if.end6_crit_edge ], [ 0, %for.cond.i.if.end6_crit_edge ], [ %i.0.i, %for.body.i155.if.end6_crit_edge ]
  %conv6.i = trunc i32 %i.0.lcssa.sink59.i to i8
  %graphics_boot_level.i = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 36
  %186 = ptrtoint ptr %graphics_boot_level.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv6.i, ptr %graphics_boot_level.i, align 4
  %187 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.i158 = getelementptr %struct.kv_power_info, ptr %188, i32 0, i32 22, i32 %i.0.lcssa.sink59.i, i32 10
  %189 = ptrtoint ptr %EnabledForActivity.i.i158 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %EnabledForActivity.i.i158, align 1
  %190 = load ptr, ptr %priv.i, align 4
  %191 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool1.not.i161 = icmp eq i32 %192, 0
  %graphics_dpm_level_count69.i = getelementptr inbounds %struct.kv_power_info, ptr %190, i32 0, i32 16
  %193 = ptrtoint ptr %graphics_dpm_level_count69.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %graphics_dpm_level_count69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp71246.not.i = icmp eq i8 %194, 0
  br i1 %tobool1.not.i161, label %if.else66.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end6
  br i1 %cmp71246.not.i, label %for.cond.preheader.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, label %for.body.lr.ph.i164

for.cond.preheader.i.kv_calculate_dfs_bypass_settings.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_calculate_dfs_bypass_settings.exit

for.body.lr.ph.i164:                              ; preds = %for.cond.preheader.i
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %190, i32 0, i32 67
  %entries.i163 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  br label %for.body.i166

for.body.i166:                                    ; preds = %for.inc.i.for.body.i166_crit_edge, %for.body.lr.ph.i164
  %i.0243.i = phi i32 [ 0, %for.body.lr.ph.i164 ], [ %inc.i170, %for.inc.i.for.body.i166_crit_edge ]
  %195 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %caps_enable_dfs_bypass.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool3.not.i165 = icmp eq i8 %196, 0
  br i1 %tobool3.not.i165, label %if.else61.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i166
  %197 = ptrtoint ptr %entries.i163 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %entries.i163, align 4
  %arrayidx.i167 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %198, i32 %i.0243.i
  %199 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %200)
  %cmp.not.i.i = icmp ult i32 %200, 40000
  %sub.i.i168 = add i32 %200, -40000
  %sub1.i.i = sub i32 40000, %200
  %cond.i.i = select i1 %cmp.not.i.i, i32 %sub1.i.i, i32 %sub.i.i168
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i)
  %cmp6.i = icmp ult i32 %cond.i.i, 200
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i169

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %201 = ptrtoint ptr %ClkBypassCntl.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 3, ptr %ClkBypassCntl.i, align 1
  br label %for.inc.i

if.else.i169:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %200)
  %cmp.not.i204.i = icmp ult i32 %200, 30000
  %sub.i205.i = add i32 %200, -30000
  %sub1.i206.i = sub i32 30000, %200
  %cond.i207.i = select i1 %cmp.not.i204.i, i32 %sub1.i206.i, i32 %sub.i205.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i207.i)
  %cmp14.i = icmp ult i32 %cond.i207.i, 200
  br i1 %cmp14.i, label %if.then16.i, label %if.else20.i

if.then16.i:                                      ; preds = %if.else.i169
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl19.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %202 = ptrtoint ptr %ClkBypassCntl19.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 2, ptr %ClkBypassCntl19.i, align 1
  br label %for.inc.i

if.else20.i:                                      ; preds = %if.else.i169
  call void @__sanitizer_cov_trace_const_cmp4(i32 26600, i32 %200)
  %cmp.not.i208.i = icmp ult i32 %200, 26600
  %sub.i209.i = add i32 %200, -26600
  %sub1.i210.i = sub i32 26600, %200
  %cond.i211.i = select i1 %cmp.not.i208.i, i32 %sub1.i210.i, i32 %sub.i209.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i211.i)
  %cmp25.i = icmp ult i32 %cond.i211.i, 200
  br i1 %cmp25.i, label %if.then27.i, label %if.else31.i

if.then27.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl30.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %203 = ptrtoint ptr %ClkBypassCntl30.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 7, ptr %ClkBypassCntl30.i, align 1
  br label %for.inc.i

if.else31.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %200)
  %cmp.not.i212.i = icmp ult i32 %200, 20000
  %sub.i213.i = add i32 %200, -20000
  %sub1.i214.i = sub i32 20000, %200
  %cond.i215.i = select i1 %cmp.not.i212.i, i32 %sub1.i214.i, i32 %sub.i213.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i215.i)
  %cmp36.i = icmp ult i32 %cond.i215.i, 200
  br i1 %cmp36.i, label %if.then38.i, label %if.else42.i

if.then38.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl41.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %204 = ptrtoint ptr %ClkBypassCntl41.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 6, ptr %ClkBypassCntl41.i, align 1
  br label %for.inc.i

if.else42.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %200)
  %cmp.not.i216.i = icmp ult i32 %200, 10000
  %sub.i217.i = add i32 %200, -10000
  %sub1.i218.i = sub i32 10000, %200
  %cond.i219.i = select i1 %cmp.not.i216.i, i32 %sub1.i218.i, i32 %sub.i217.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i219.i)
  %cmp47.i = icmp ult i32 %cond.i219.i, 200
  %ClkBypassCntl52.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  br i1 %cmp47.i, label %if.then49.i, label %if.else53.i

if.then49.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #15
  %205 = ptrtoint ptr %ClkBypassCntl52.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 8, ptr %ClkBypassCntl52.i, align 1
  br label %for.inc.i

if.else53.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #15
  %206 = ptrtoint ptr %ClkBypassCntl52.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %ClkBypassCntl52.i, align 1
  br label %for.inc.i

if.else61.i:                                      ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl64.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %207 = ptrtoint ptr %ClkBypassCntl64.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %ClkBypassCntl64.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else61.i, %if.else53.i, %if.then49.i, %if.then38.i, %if.then27.i, %if.then16.i, %if.then8.i
  %inc.i170 = add nuw nsw i32 %i.0243.i, 1
  %208 = ptrtoint ptr %graphics_dpm_level_count69.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %graphics_dpm_level_count69.i, align 4
  %conv.i171 = zext i8 %209 to i32
  %cmp.i172 = icmp ult i32 %inc.i170, %conv.i171
  br i1 %cmp.i172, label %for.inc.i.for.body.i166_crit_edge, label %for.inc.i.kv_calculate_dfs_bypass_settings.exit_crit_edge

for.inc.i.kv_calculate_dfs_bypass_settings.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_calculate_dfs_bypass_settings.exit

for.inc.i.for.body.i166_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i166

if.else66.i:                                      ; preds = %if.end6
  br i1 %cmp71246.not.i, label %if.else66.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, label %for.body73.lr.ph.i

if.else66.i.kv_calculate_dfs_bypass_settings.exit_crit_edge: ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_calculate_dfs_bypass_settings.exit

for.body73.lr.ph.i:                               ; preds = %if.else66.i
  %caps_enable_dfs_bypass74.i = getelementptr inbounds %struct.kv_power_info, ptr %190, i32 0, i32 67
  br label %for.body73.i

for.body73.i:                                     ; preds = %for.inc144.i.for.body73.i_crit_edge, %for.body73.lr.ph.i
  %i.1247.i = phi i32 [ 0, %for.body73.lr.ph.i ], [ %inc145.i, %for.inc144.i.for.body73.i_crit_edge ]
  %210 = ptrtoint ptr %caps_enable_dfs_bypass74.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %caps_enable_dfs_bypass74.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool75.not.i = icmp eq i8 %211, 0
  br i1 %tobool75.not.i, label %if.else139.i, label %if.then76.i

if.then76.i:                                      ; preds = %for.body73.i
  %arrayidx78.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 2, i32 9, i32 1, i32 %i.1247.i
  %212 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %213)
  %cmp.not.i220.i = icmp ult i32 %213, 40000
  %sub.i221.i = add i32 %213, -40000
  %sub1.i222.i = sub i32 40000, %213
  %cond.i223.i = select i1 %cmp.not.i220.i, i32 %sub1.i222.i, i32 %sub.i221.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i223.i)
  %cmp80.i = icmp ult i32 %cond.i223.i, 200
  br i1 %cmp80.i, label %if.then82.i, label %if.else86.i

if.then82.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl85.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %214 = ptrtoint ptr %ClkBypassCntl85.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 3, ptr %ClkBypassCntl85.i, align 1
  br label %for.inc144.i

if.else86.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %213)
  %cmp.not.i224.i = icmp ult i32 %213, 30000
  %sub.i225.i = add i32 %213, -30000
  %sub1.i226.i = sub i32 30000, %213
  %cond.i227.i = select i1 %cmp.not.i224.i, i32 %sub1.i226.i, i32 %sub.i225.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i227.i)
  %cmp91.i = icmp ult i32 %cond.i227.i, 200
  br i1 %cmp91.i, label %if.then93.i, label %if.else97.i

if.then93.i:                                      ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl96.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %215 = ptrtoint ptr %ClkBypassCntl96.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 2, ptr %ClkBypassCntl96.i, align 1
  br label %for.inc144.i

if.else97.i:                                      ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26600, i32 %213)
  %cmp.not.i228.i = icmp ult i32 %213, 26600
  %sub.i229.i = add i32 %213, -26600
  %sub1.i230.i = sub i32 26600, %213
  %cond.i231.i = select i1 %cmp.not.i228.i, i32 %sub1.i230.i, i32 %sub.i229.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i231.i)
  %cmp102.i = icmp ult i32 %cond.i231.i, 200
  br i1 %cmp102.i, label %if.then104.i, label %if.else108.i

if.then104.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl107.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %216 = ptrtoint ptr %ClkBypassCntl107.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 7, ptr %ClkBypassCntl107.i, align 1
  br label %for.inc144.i

if.else108.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %213)
  %cmp.not.i232.i = icmp ult i32 %213, 20000
  %sub.i233.i = add i32 %213, -20000
  %sub1.i234.i = sub i32 20000, %213
  %cond.i235.i = select i1 %cmp.not.i232.i, i32 %sub1.i234.i, i32 %sub.i233.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i235.i)
  %cmp113.i = icmp ult i32 %cond.i235.i, 200
  br i1 %cmp113.i, label %if.then115.i, label %if.else119.i

if.then115.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl118.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %217 = ptrtoint ptr %ClkBypassCntl118.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 6, ptr %ClkBypassCntl118.i, align 1
  br label %for.inc144.i

if.else119.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %213)
  %cmp.not.i236.i = icmp ult i32 %213, 10000
  %sub.i237.i = add i32 %213, -10000
  %sub1.i238.i = sub i32 10000, %213
  %cond.i239.i = select i1 %cmp.not.i236.i, i32 %sub1.i238.i, i32 %sub.i237.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i239.i)
  %cmp124.i = icmp ult i32 %cond.i239.i, 200
  %ClkBypassCntl129.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  br i1 %cmp124.i, label %if.then126.i, label %if.else130.i

if.then126.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #15
  %218 = ptrtoint ptr %ClkBypassCntl129.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 8, ptr %ClkBypassCntl129.i, align 1
  br label %for.inc144.i

if.else130.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #15
  %219 = ptrtoint ptr %ClkBypassCntl129.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %ClkBypassCntl129.i, align 1
  br label %for.inc144.i

if.else139.i:                                     ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #15
  %ClkBypassCntl142.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %220 = ptrtoint ptr %ClkBypassCntl142.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %ClkBypassCntl142.i, align 1
  br label %for.inc144.i

for.inc144.i:                                     ; preds = %if.else139.i, %if.else130.i, %if.then126.i, %if.then115.i, %if.then104.i, %if.then93.i, %if.then82.i
  %inc145.i = add nuw nsw i32 %i.1247.i, 1
  %221 = ptrtoint ptr %graphics_dpm_level_count69.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %graphics_dpm_level_count69.i, align 4
  %conv70.i = zext i8 %222 to i32
  %cmp71.i = icmp ult i32 %inc145.i, %conv70.i
  br i1 %cmp71.i, label %for.inc144.i.for.body73.i_crit_edge, label %for.inc144.i.kv_calculate_dfs_bypass_settings.exit_crit_edge

for.inc144.i.kv_calculate_dfs_bypass_settings.exit_crit_edge: ; preds = %for.inc144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_calculate_dfs_bypass_settings.exit

for.inc144.i.for.body73.i_crit_edge:              ; preds = %for.inc144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body73.i

kv_calculate_dfs_bypass_settings.exit:            ; preds = %for.inc144.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, %if.else66.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, %for.inc.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, %for.cond.preheader.i.kv_calculate_dfs_bypass_settings.exit_crit_edge
  %223 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %priv.i, align 4
  %dpm_table_start.i174 = getelementptr inbounds %struct.kv_power_info, ptr %224, i32 0, i32 14
  %225 = ptrtoint ptr %dpm_table_start.i174 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %dpm_table_start.i174, align 4
  %add.i175 = add i32 %226, 84
  %graphics_level.i = getelementptr inbounds %struct.kv_power_info, ptr %224, i32 0, i32 22
  %sram_end.i176 = getelementptr inbounds %struct.kv_power_info, ptr %224, i32 0, i32 13
  %227 = ptrtoint ptr %sram_end.i176 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %sram_end.i176, align 4
  %call1.i177 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add.i175, ptr noundef %graphics_level.i, i32 noundef 224, i32 noundef %228) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i177)
  %tobool.not.i178 = icmp eq i32 %call1.i177, 0
  br i1 %tobool.not.i178, label %kv_upload_dpm_settings.exit, label %kv_calculate_dfs_bypass_settings.exit.if.then9_crit_edge

kv_calculate_dfs_bypass_settings.exit.if.then9_crit_edge: ; preds = %kv_calculate_dfs_bypass_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

kv_upload_dpm_settings.exit:                      ; preds = %kv_calculate_dfs_bypass_settings.exit
  %229 = ptrtoint ptr %dpm_table_start.i174 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %dpm_table_start.i174, align 4
  %add3.i = add i32 %230, 76
  %graphics_dpm_level_count.i179 = getelementptr inbounds %struct.kv_power_info, ptr %224, i32 0, i32 16
  %231 = ptrtoint ptr %sram_end.i176 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %sram_end.i176, align 4
  %call5.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add3.i, ptr noundef %graphics_dpm_level_count.i179, i32 noundef 1, i32 noundef %232) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not, label %if.end10, label %kv_upload_dpm_settings.exit.if.then9_crit_edge

kv_upload_dpm_settings.exit.if.then9_crit_edge:   ; preds = %kv_upload_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

if.then9:                                         ; preds = %kv_upload_dpm_settings.exit.if.then9_crit_edge, %kv_calculate_dfs_bypass_settings.exit.if.then9_crit_edge
  %retval.0.i221 = phi i32 [ %call5.i, %kv_upload_dpm_settings.exit.if.then9_crit_edge ], [ %call1.i177, %kv_calculate_dfs_bypass_settings.exit.if.then9_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #13
  br label %cleanup

if.end10:                                         ; preds = %kv_upload_dpm_settings.exit
  %233 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %priv.i, align 4
  %uvd_clock_voltage_dependency_table.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i) #13
  %235 = call ptr @memset(ptr %dividers.i, i32 255, i32 32)
  %236 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %cmp1.i = icmp eq i8 %237, 0
  br i1 %cmp1.i, label %kv_populate_uvd_table.exit.thread225, label %if.end.i182

kv_populate_uvd_table.exit.thread225:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #13
  br label %if.end14

if.end.i182:                                      ; preds = %if.end10
  %uvd_level_count.i = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 17
  %238 = ptrtoint ptr %uvd_level_count.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %uvd_level_count.i, align 1
  %239 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %cmp5185.not.i = icmp eq i8 %240, 0
  br i1 %cmp5185.not.i, label %if.end.i182.for.end.i_crit_edge, label %for.body.lr.ph.i185

if.end.i182.for.end.i_crit_edge:                  ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i185:                              ; preds = %if.end.i182
  %high_voltage_t.i183 = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 10
  %entries.i184 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 5, i32 1
  br label %for.body.i187

for.body.i187:                                    ; preds = %if.end57.i.for.body.i187_crit_edge, %for.body.lr.ph.i185
  %i.0186.i = phi i32 [ 0, %for.body.lr.ph.i185 ], [ %inc63.i, %if.end57.i.for.body.i187_crit_edge ]
  %241 = ptrtoint ptr %high_voltage_t.i183 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %high_voltage_t.i183, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %tobool.not.i186 = icmp eq i16 %242, 0
  br i1 %tobool.not.i186, label %for.body.i187.if.end14.i_crit_edge, label %land.lhs.true.i

for.body.i187.if.end14.i_crit_edge:               ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %for.body.i187
  %243 = ptrtoint ptr %entries.i184 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %entries.i184, align 4
  %v.i188 = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %244, i32 %i.0186.i, i32 2
  %245 = ptrtoint ptr %v.i188 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %v.i188, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %242, i16 %246)
  %cmp11.i = icmp ult i16 %242, %246
  br i1 %cmp11.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %for.body.i187.if.end14.i_crit_edge
  %247 = ptrtoint ptr %entries.i184 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %entries.i184, align 4
  %arrayidx16.i = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %248, i32 %i.0186.i
  %249 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx16.i, align 4
  %arrayidx17.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i
  %251 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %arrayidx17.i, align 4
  %252 = load ptr, ptr %entries.i184, align 4
  %dclk.i = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %252, i32 %i.0186.i, i32 1
  %253 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %dclk.i, align 4
  %DclkFrequency.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 1
  %255 = ptrtoint ptr %DclkFrequency.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %DclkFrequency.i, align 4
  %256 = load ptr, ptr %entries.i184, align 4
  %v24.i = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %256, i32 %i.0186.i, i32 2
  %257 = ptrtoint ptr %v24.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %v24.i, align 4
  %MinVddNb.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 2
  %259 = ptrtoint ptr %MinVddNb.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %258, ptr %MinVddNb.i, align 4
  %260 = load ptr, ptr %entries.i184, align 4
  %arrayidx28.i = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %260, i32 %i.0186.i
  %261 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx28.i, align 4
  %263 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %priv.i, align 4
  %caps_enable_dfs_bypass.i.i = getelementptr inbounds %struct.kv_power_info, ptr %264, i32 0, i32 67
  %265 = ptrtoint ptr %caps_enable_dfs_bypass.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %caps_enable_dfs_bypass.i.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool.not.i.i189 = icmp eq i8 %266, 0
  br i1 %tobool.not.i.i189, label %if.end14.i.kv_get_clk_bypass.exit.i_crit_edge, label %if.then.i.i

if.end14.i.kv_get_clk_bypass.exit.i_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %262)
  %cmp.not.i.i.i = icmp ult i32 %262, 40000
  %sub.i.i.i190 = add i32 %262, -40000
  %sub1.i.i.i = sub i32 40000, %262
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %sub1.i.i.i, i32 %sub.i.i.i190
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i.i)
  %cmp.i.i = icmp ult i32 %cond.i.i.i, 200
  br i1 %cmp.i.i, label %if.then.i.i.kv_get_clk_bypass.exit.i_crit_edge, label %if.else.i.i191

if.then.i.i.kv_get_clk_bypass.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit.i

if.else.i.i191:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %262)
  %cmp.not.i29.i.i = icmp ult i32 %262, 30000
  %sub.i30.i.i = add i32 %262, -30000
  %sub1.i31.i.i = sub i32 30000, %262
  %cond.i32.i.i = select i1 %cmp.not.i29.i.i, i32 %sub1.i31.i.i, i32 %sub.i30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i32.i.i)
  %cmp4.i.i = icmp ult i32 %cond.i32.i.i, 200
  br i1 %cmp4.i.i, label %if.else.i.i191.kv_get_clk_bypass.exit.i_crit_edge, label %if.else6.i.i

if.else.i.i191.kv_get_clk_bypass.exit.i_crit_edge: ; preds = %if.else.i.i191
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit.i

if.else6.i.i:                                     ; preds = %if.else.i.i191
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %262)
  %cmp.not.i33.i.i = icmp ult i32 %262, 20000
  %sub.i34.i.i = add i32 %262, -20000
  %sub1.i35.i.i = sub i32 20000, %262
  %cond.i36.i.i = select i1 %cmp.not.i33.i.i, i32 %sub1.i35.i.i, i32 %sub.i34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i36.i.i)
  %cmp8.i.i = icmp ult i32 %cond.i36.i.i, 200
  br i1 %cmp8.i.i, label %if.else6.i.i.kv_get_clk_bypass.exit.i_crit_edge, label %if.else10.i.i

if.else6.i.i.kv_get_clk_bypass.exit.i_crit_edge:  ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit.i

if.else10.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %262)
  %cmp.not.i37.i.i = icmp ult i32 %262, 15000
  %sub.i38.i.i = add i32 %262, -15000
  %sub1.i39.i.i = sub i32 15000, %262
  %cond.i40.i.i = select i1 %cmp.not.i37.i.i, i32 %sub1.i39.i.i, i32 %sub.i38.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i40.i.i)
  %cmp12.i.i = icmp ult i32 %cond.i40.i.i, 200
  br i1 %cmp12.i.i, label %if.else10.i.i.kv_get_clk_bypass.exit.i_crit_edge, label %if.else14.i.i

if.else10.i.i.kv_get_clk_bypass.exit.i_crit_edge: ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit.i

if.else14.i.i:                                    ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %262)
  %cmp.not.i41.i.i = icmp ult i32 %262, 10000
  %sub.i42.i.i = add i32 %262, -10000
  %sub1.i43.i.i = sub i32 10000, %262
  %cond.i44.i.i = select i1 %cmp.not.i41.i.i, i32 %sub1.i43.i.i, i32 %sub.i42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i44.i.i)
  %cmp16.i.i = icmp ult i32 %cond.i44.i.i, 200
  %..i.i = select i1 %cmp16.i.i, i8 8, i8 0
  br label %kv_get_clk_bypass.exit.i

kv_get_clk_bypass.exit.i:                         ; preds = %if.else14.i.i, %if.else10.i.i.kv_get_clk_bypass.exit.i_crit_edge, %if.else6.i.i.kv_get_clk_bypass.exit.i_crit_edge, %if.else.i.i191.kv_get_clk_bypass.exit.i_crit_edge, %if.then.i.i.kv_get_clk_bypass.exit.i_crit_edge, %if.end14.i.kv_get_clk_bypass.exit.i_crit_edge
  %value.0.i.i = phi i8 [ 3, %if.then.i.i.kv_get_clk_bypass.exit.i_crit_edge ], [ 2, %if.else.i.i191.kv_get_clk_bypass.exit.i_crit_edge ], [ 7, %if.else6.i.i.kv_get_clk_bypass.exit.i_crit_edge ], [ 6, %if.else10.i.i.kv_get_clk_bypass.exit.i_crit_edge ], [ %..i.i, %if.else14.i.i ], [ 0, %if.end14.i.kv_get_clk_bypass.exit.i_crit_edge ]
  %VClkBypassCntl.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 5
  %267 = ptrtoint ptr %VClkBypassCntl.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %value.0.i.i, ptr %VClkBypassCntl.i, align 4
  %268 = ptrtoint ptr %entries.i184 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %entries.i184, align 4
  %dclk36.i = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %269, i32 %i.0186.i, i32 1
  %270 = ptrtoint ptr %dclk36.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %dclk36.i, align 4
  %272 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %priv.i, align 4
  %caps_enable_dfs_bypass.i149.i = getelementptr inbounds %struct.kv_power_info, ptr %273, i32 0, i32 67
  %274 = ptrtoint ptr %caps_enable_dfs_bypass.i149.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %caps_enable_dfs_bypass.i149.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i150.i = icmp eq i8 %275, 0
  br i1 %tobool.not.i150.i, label %kv_get_clk_bypass.exit.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.then.i156.i

kv_get_clk_bypass.exit.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %kv_get_clk_bypass.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit183.i

if.then.i156.i:                                   ; preds = %kv_get_clk_bypass.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %271)
  %cmp.not.i.i151.i = icmp ult i32 %271, 40000
  %sub.i.i152.i = add i32 %271, -40000
  %sub1.i.i153.i = sub i32 40000, %271
  %cond.i.i154.i = select i1 %cmp.not.i.i151.i, i32 %sub1.i.i153.i, i32 %sub.i.i152.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i154.i)
  %cmp.i155.i = icmp ult i32 %cond.i.i154.i, 200
  br i1 %cmp.i155.i, label %if.then.i156.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.else.i162.i

if.then.i156.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %if.then.i156.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit183.i

if.else.i162.i:                                   ; preds = %if.then.i156.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %271)
  %cmp.not.i29.i157.i = icmp ult i32 %271, 30000
  %sub.i30.i158.i = add i32 %271, -30000
  %sub1.i31.i159.i = sub i32 30000, %271
  %cond.i32.i160.i = select i1 %cmp.not.i29.i157.i, i32 %sub1.i31.i159.i, i32 %sub.i30.i158.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i32.i160.i)
  %cmp4.i161.i = icmp ult i32 %cond.i32.i160.i, 200
  br i1 %cmp4.i161.i, label %if.else.i162.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.else6.i168.i

if.else.i162.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %if.else.i162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit183.i

if.else6.i168.i:                                  ; preds = %if.else.i162.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %271)
  %cmp.not.i33.i163.i = icmp ult i32 %271, 20000
  %sub.i34.i164.i = add i32 %271, -20000
  %sub1.i35.i165.i = sub i32 20000, %271
  %cond.i36.i166.i = select i1 %cmp.not.i33.i163.i, i32 %sub1.i35.i165.i, i32 %sub.i34.i164.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i36.i166.i)
  %cmp8.i167.i = icmp ult i32 %cond.i36.i166.i, 200
  br i1 %cmp8.i167.i, label %if.else6.i168.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.else10.i174.i

if.else6.i168.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %if.else6.i168.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit183.i

if.else10.i174.i:                                 ; preds = %if.else6.i168.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %271)
  %cmp.not.i37.i169.i = icmp ult i32 %271, 15000
  %sub.i38.i170.i = add i32 %271, -15000
  %sub1.i39.i171.i = sub i32 15000, %271
  %cond.i40.i172.i = select i1 %cmp.not.i37.i169.i, i32 %sub1.i39.i171.i, i32 %sub.i38.i170.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i40.i172.i)
  %cmp12.i173.i = icmp ult i32 %cond.i40.i172.i, 200
  br i1 %cmp12.i173.i, label %if.else10.i174.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.else14.i181.i

if.else10.i174.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %if.else10.i174.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit183.i

if.else14.i181.i:                                 ; preds = %if.else10.i174.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %271)
  %cmp.not.i41.i175.i = icmp ult i32 %271, 10000
  %sub.i42.i176.i = add i32 %271, -10000
  %sub1.i43.i177.i = sub i32 10000, %271
  %cond.i44.i178.i = select i1 %cmp.not.i41.i175.i, i32 %sub1.i43.i177.i, i32 %sub.i42.i176.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i44.i178.i)
  %cmp16.i179.i = icmp ult i32 %cond.i44.i178.i, 200
  %..i180.i = select i1 %cmp16.i179.i, i8 8, i8 0
  br label %kv_get_clk_bypass.exit183.i

kv_get_clk_bypass.exit183.i:                      ; preds = %if.else14.i181.i, %if.else10.i174.i.kv_get_clk_bypass.exit183.i_crit_edge, %if.else6.i168.i.kv_get_clk_bypass.exit183.i_crit_edge, %if.else.i162.i.kv_get_clk_bypass.exit183.i_crit_edge, %if.then.i156.i.kv_get_clk_bypass.exit183.i_crit_edge, %kv_get_clk_bypass.exit.i.kv_get_clk_bypass.exit183.i_crit_edge
  %value.0.i182.i = phi i8 [ 3, %if.then.i156.i.kv_get_clk_bypass.exit183.i_crit_edge ], [ 2, %if.else.i162.i.kv_get_clk_bypass.exit183.i_crit_edge ], [ 7, %if.else6.i168.i.kv_get_clk_bypass.exit183.i_crit_edge ], [ 6, %if.else10.i174.i.kv_get_clk_bypass.exit183.i_crit_edge ], [ %..i180.i, %if.else14.i181.i ], [ 0, %kv_get_clk_bypass.exit.i.kv_get_clk_bypass.exit183.i_crit_edge ]
  %DClkBypassCntl.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 6
  %276 = ptrtoint ptr %DClkBypassCntl.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %value.0.i182.i, ptr %DClkBypassCntl.i, align 1
  %277 = ptrtoint ptr %entries.i184 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %entries.i184, align 4
  %arrayidx42.i = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %278, i32 %i.0186.i
  %279 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx42.i, align 4
  %call44.i = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 2, i32 noundef %280, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i192, label %kv_get_clk_bypass.exit183.i.kv_populate_uvd_table.exit.thread_crit_edge

kv_get_clk_bypass.exit183.i.kv_populate_uvd_table.exit.thread_crit_edge: ; preds = %kv_get_clk_bypass.exit183.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_populate_uvd_table.exit.thread

if.end47.i192:                                    ; preds = %kv_get_clk_bypass.exit183.i
  %281 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %dividers.i, align 4
  %conv48.i = trunc i32 %282 to i8
  %VclkDivider.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 3
  %283 = ptrtoint ptr %VclkDivider.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv48.i, ptr %VclkDivider.i, align 2
  %284 = ptrtoint ptr %entries.i184 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %entries.i184, align 4
  %dclk53.i = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %285, i32 %i.0186.i, i32 1
  %286 = ptrtoint ptr %dclk53.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %dclk53.i, align 4
  %call54.i = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 2, i32 noundef %287, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end47.i192.kv_populate_uvd_table.exit.thread_crit_edge

if.end47.i192.kv_populate_uvd_table.exit.thread_crit_edge: ; preds = %if.end47.i192
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_populate_uvd_table.exit.thread

if.end57.i:                                       ; preds = %if.end47.i192
  %288 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %dividers.i, align 4
  %conv59.i = trunc i32 %289 to i8
  %DclkDivider.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 4
  %290 = ptrtoint ptr %DclkDivider.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv59.i, ptr %DclkDivider.i, align 1
  %291 = ptrtoint ptr %uvd_level_count.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %uvd_level_count.i, align 1
  %inc.i193 = add i8 %292, 1
  store i8 %inc.i193, ptr %uvd_level_count.i, align 1
  %inc63.i = add nuw nsw i32 %i.0186.i, 1
  %293 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  %conv4.i = zext i8 %294 to i32
  %cmp5.i = icmp ult i32 %inc63.i, %conv4.i
  br i1 %cmp5.i, label %if.end57.i.for.body.i187_crit_edge, label %if.end57.i.for.end.i_crit_edge

if.end57.i.for.end.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end57.i.for.body.i187_crit_edge:               ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i187

for.end.i:                                        ; preds = %if.end57.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge, %if.end.i182.for.end.i_crit_edge
  %dpm_table_start.i194 = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 14
  %295 = ptrtoint ptr %dpm_table_start.i194 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %dpm_table_start.i194, align 4
  %add.i195 = add i32 %296, 78
  %sram_end.i196 = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 13
  %297 = ptrtoint ptr %sram_end.i196 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %sram_end.i196, align 4
  %call65.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add.i195, ptr noundef %uvd_level_count.i, i32 noundef 1, i32 noundef %298) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %for.end.i.kv_populate_uvd_table.exit.thread_crit_edge

for.end.i.kv_populate_uvd_table.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_populate_uvd_table.exit.thread

if.end68.i:                                       ; preds = %for.end.i
  %uvd_interval.i = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 32
  %299 = ptrtoint ptr %uvd_interval.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %uvd_interval.i, align 4
  %300 = ptrtoint ptr %dpm_table_start.i194 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %dpm_table_start.i194, align 4
  %add70.i = add i32 %301, 748
  %302 = ptrtoint ptr %sram_end.i196 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %sram_end.i196, align 4
  %call73.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add70.i, ptr noundef %uvd_interval.i, i32 noundef 1, i32 noundef %303) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %kv_populate_uvd_table.exit, label %if.end68.i.kv_populate_uvd_table.exit.thread_crit_edge

if.end68.i.kv_populate_uvd_table.exit.thread_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_populate_uvd_table.exit.thread

kv_populate_uvd_table.exit.thread:                ; preds = %if.end68.i.kv_populate_uvd_table.exit.thread_crit_edge, %for.end.i.kv_populate_uvd_table.exit.thread_crit_edge, %if.end47.i192.kv_populate_uvd_table.exit.thread_crit_edge, %kv_get_clk_bypass.exit183.i.kv_populate_uvd_table.exit.thread_crit_edge
  %retval.0.i197.ph = phi i32 [ %call73.i, %if.end68.i.kv_populate_uvd_table.exit.thread_crit_edge ], [ %call65.i, %for.end.i.kv_populate_uvd_table.exit.thread_crit_edge ], [ %call54.i, %if.end47.i192.kv_populate_uvd_table.exit.thread_crit_edge ], [ %call44.i, %kv_get_clk_bypass.exit183.i.kv_populate_uvd_table.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #13
  br label %if.then13

kv_populate_uvd_table.exit:                       ; preds = %if.end68.i
  %304 = ptrtoint ptr %dpm_table_start.i194 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %dpm_table_start.i194, align 4
  %add78.i = add i32 %305, 328
  %uvd_level79.i = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 24
  %306 = ptrtoint ptr %sram_end.i196 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %sram_end.i196, align 4
  %call81.i = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add78.i, ptr noundef %uvd_level79.i, i32 noundef 128, i32 noundef %307) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool12.not = icmp eq i32 %call81.i, 0
  br i1 %tobool12.not, label %kv_populate_uvd_table.exit.if.end14_crit_edge, label %kv_populate_uvd_table.exit.if.then13_crit_edge

kv_populate_uvd_table.exit.if.then13_crit_edge:   ; preds = %kv_populate_uvd_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

kv_populate_uvd_table.exit.if.end14_crit_edge:    ; preds = %kv_populate_uvd_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %kv_populate_uvd_table.exit.if.then13_crit_edge, %kv_populate_uvd_table.exit.thread
  %retval.0.i197224 = phi i32 [ %retval.0.i197.ph, %kv_populate_uvd_table.exit.thread ], [ %call81.i, %kv_populate_uvd_table.exit.if.then13_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end14:                                         ; preds = %kv_populate_uvd_table.exit.if.end14_crit_edge, %kv_populate_uvd_table.exit.thread225
  %call15 = call fastcc i32 @kv_populate_vce_table(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = call fastcc i32 @kv_populate_samu_table(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i32 @kv_populate_acp_table(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %smc_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %308 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %smc_wreg.i, align 8
  call void %309(ptr noundef %adev, i32 noundef -1071644248, i32 noundef 1073725696) #13
  %smc_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %310 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %smc_rreg.i, align 4
  %call.i = call i32 %311(ptr noundef %adev, i32 noundef -1071644664) #13
  %and.i = and i32 %call.i, -2097201
  %or.i = or i32 %and.i, 2097152
  %312 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %smc_wreg.i, align 8
  call void %313(ptr noundef %adev, i32 noundef -1071644664, i32 noundef %or.i) #13
  %enable_auto_thermal_throttling = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 51
  %314 = ptrtoint ptr %enable_auto_thermal_throttling to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %enable_auto_thermal_throttling, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool27.not = icmp eq i8 %315, 0
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  %call29 = call fastcc i32 @kv_enable_auto_thermal_throttling(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then31

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31) #13
  br label %cleanup

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %call34 = call fastcc i32 @kv_enable_dpm_voltage_scaling(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %call38 = call fastcc i32 @kv_set_dpm_interval(ptr noundef %adev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %316 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %priv.i, align 4
  %dpm_table_start.i200 = getelementptr inbounds %struct.kv_power_info, ptr %317, i32 0, i32 14
  %318 = ptrtoint ptr %dpm_table_start.i200 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %dpm_table_start.i200, align 4
  %add.i201 = add i32 %319, 752
  %graphics_boot_level.i202 = getelementptr inbounds %struct.kv_power_info, ptr %317, i32 0, i32 36
  %sram_end.i203 = getelementptr inbounds %struct.kv_power_info, ptr %317, i32 0, i32 13
  %320 = ptrtoint ptr %sram_end.i203 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %sram_end.i203, align 4
  %call1.i204 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add.i201, ptr noundef %graphics_boot_level.i202, i32 noundef 1, i32 noundef %321) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i204)
  %tobool43.not = icmp eq i32 %call1.i204, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call.i205 = call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 98) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool47.not = icmp eq i32 %call.i205, 0
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call fastcc void @kv_start_dpm(ptr noundef %adev)
  call fastcc void @kv_enable_didt(ptr noundef %adev, i1 noundef zeroext true)
  %322 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %priv.i, align 4
  %caps_cac.i = getelementptr inbounds %struct.kv_power_info, ptr %323, i32 0, i32 53
  %324 = ptrtoint ptr %caps_cac.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %caps_cac.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool.not.i207 = icmp eq i8 %325, 0
  br i1 %tobool.not.i207, label %if.end49.if.end57_crit_edge, label %if.then.i208

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then.i208:                                     ; preds = %if.end49
  %call3.i209 = call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 83) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i209)
  %tobool4.not.i = icmp eq i32 %call3.i209, 0
  %cac_enabled6.i = getelementptr inbounds %struct.kv_power_info, ptr %323, i32 0, i32 11
  br i1 %tobool4.not.i, label %if.else.i211, label %if.then56

if.else.i211:                                     ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #15
  %326 = ptrtoint ptr %cac_enabled6.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 1, ptr %cac_enabled6.i, align 2
  br label %if.end57

if.then56:                                        ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #15
  %327 = ptrtoint ptr %cac_enabled6.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 0, ptr %cac_enabled6.i, align 2
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end57:                                         ; preds = %if.else.i211, %if.end49.if.end57_crit_edge
  %328 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %priv.i, align 4
  %acp_boot_level.i = getelementptr inbounds %struct.kv_power_info, ptr %329, i32 0, i32 30
  %330 = ptrtoint ptr %acp_boot_level.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 -1, ptr %acp_boot_level.i, align 2
  %call58 = call i32 @amdgpu_kv_smc_bapm_enable(ptr noundef %adev, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 94
  %331 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %irq, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %tobool62.not = icmp eq i8 %332, 0
  br i1 %tobool62.not, label %if.end61.cleanup_crit_edge, label %land.lhs.true

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end61
  %int_thermal_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %333 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %int_thermal_type, align 4
  %call63 = call zeroext i1 @amdgpu_is_internal_thermal_sensor(i32 noundef %334) #13
  br i1 %call63, label %if.then64, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %335 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %smc_rreg.i, align 4
  %call.i214 = call i32 %336(ptr noundef %adev, i32 noundef -1039138776) #13
  %and.i215 = and i32 %call.i214, -65536
  %or10.i = or i32 %and.i215, 35753
  %337 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %smc_wreg.i, align 8
  call void %338(ptr noundef %adev, i32 noundef -1039138776, i32 noundef %or10.i) #13
  %min_temp11.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 35, i32 1
  %339 = ptrtoint ptr %min_temp11.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 90000, ptr %min_temp11.i, align 4
  %max_temp15.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 35, i32 2
  %340 = ptrtoint ptr %max_temp15.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 120000, ptr %max_temp15.i, align 4
  %irq70 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 35, i32 11
  %call71 = call i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %irq70, i32 noundef 0) #13
  %call76 = call i32 @amdgpu_irq_get(ptr noundef %adev, ptr noundef %irq70, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %land.lhs.true.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then60, %if.then56, %if.then48, %if.then44, %if.then40, %if.then36, %if.then31, %if.then25, %if.then21, %if.then17, %if.then13, %if.then9, %if.then5, %if.then
  %retval.0 = phi i32 [ %call3.i, %if.then ], [ -22, %if.then5 ], [ %retval.0.i221, %if.then9 ], [ %retval.0.i197224, %if.then13 ], [ %call15, %if.then17 ], [ %call19, %if.then21 ], [ %call23, %if.then25 ], [ %call29, %if.then31 ], [ %call34, %if.then36 ], [ %call38, %if.then40 ], [ %call1.i204, %if.then44 ], [ %call.i205, %if.then48 ], [ %call3.i209, %if.then56 ], [ %call58, %if.then60 ], [ 0, %if.then64 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_pm_compute_clocks(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_populate_vce_table(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %vce_clock_voltage_dependency_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #13
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %cmp = icmp eq ptr %vce_clock_voltage_dependency_table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1 = icmp eq i8 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vce_level_count = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %vce_level_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vce_level_count, align 2
  %6 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5111.not = icmp eq i8 %7, 0
  br i1 %cmp5111.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %high_voltage_t = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 10
  %entries = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %if.end36.for.body_crit_edge ]
  %8 = ptrtoint ptr %high_voltage_t to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %high_voltage_t, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %11, i32 %i.0112, i32 2
  %12 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %13)
  %cmp11 = icmp ult i16 %9, %13
  br i1 %cmp11, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entries, align 4
  %evclk = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %15, i32 %i.0112, i32 1
  %16 = ptrtoint ptr %evclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %evclk, align 4
  %arrayidx17 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 25, i32 %i.0112
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx17, align 4
  %19 = load ptr, ptr %entries, align 4
  %v20 = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %19, i32 %i.0112, i32 2
  %20 = ptrtoint ptr %v20 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %v20, align 4
  %MinVoltage = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 25, i32 %i.0112, i32 1
  %22 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %MinVoltage, align 4
  %23 = load ptr, ptr %entries, align 4
  %evclk25 = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %23, i32 %i.0112, i32 1
  %24 = ptrtoint ptr %evclk25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %evclk25, align 4
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 4
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %27, i32 0, i32 67
  %28 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %caps_enable_dfs_bypass.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end14.kv_get_clk_bypass.exit_crit_edge, label %if.then.i

if.end14.kv_get_clk_bypass.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %25)
  %cmp.not.i.i = icmp ult i32 %25, 40000
  %sub.i.i = add i32 %25, -40000
  %sub1.i.i = sub i32 40000, %25
  %cond.i.i = select i1 %cmp.not.i.i, i32 %sub1.i.i, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i)
  %cmp.i = icmp ult i32 %cond.i.i, 200
  br i1 %cmp.i, label %if.then.i.kv_get_clk_bypass.exit_crit_edge, label %if.else.i

if.then.i.kv_get_clk_bypass.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %25)
  %cmp.not.i29.i = icmp ult i32 %25, 30000
  %sub.i30.i = add i32 %25, -30000
  %sub1.i31.i = sub i32 30000, %25
  %cond.i32.i = select i1 %cmp.not.i29.i, i32 %sub1.i31.i, i32 %sub.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i32.i)
  %cmp4.i = icmp ult i32 %cond.i32.i, 200
  br i1 %cmp4.i, label %if.else.i.kv_get_clk_bypass.exit_crit_edge, label %if.else6.i

if.else.i.kv_get_clk_bypass.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %25)
  %cmp.not.i33.i = icmp ult i32 %25, 20000
  %sub.i34.i = add i32 %25, -20000
  %sub1.i35.i = sub i32 20000, %25
  %cond.i36.i = select i1 %cmp.not.i33.i, i32 %sub1.i35.i, i32 %sub.i34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i36.i)
  %cmp8.i = icmp ult i32 %cond.i36.i, 200
  br i1 %cmp8.i, label %if.else6.i.kv_get_clk_bypass.exit_crit_edge, label %if.else10.i

if.else6.i.kv_get_clk_bypass.exit_crit_edge:      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.else10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %25)
  %cmp.not.i37.i = icmp ult i32 %25, 15000
  %sub.i38.i = add i32 %25, -15000
  %sub1.i39.i = sub i32 15000, %25
  %cond.i40.i = select i1 %cmp.not.i37.i, i32 %sub1.i39.i, i32 %sub.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i40.i)
  %cmp12.i = icmp ult i32 %cond.i40.i, 200
  br i1 %cmp12.i, label %if.else10.i.kv_get_clk_bypass.exit_crit_edge, label %if.else14.i

if.else10.i.kv_get_clk_bypass.exit_crit_edge:     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.else14.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %25)
  %cmp.not.i41.i = icmp ult i32 %25, 10000
  %sub.i42.i = add i32 %25, -10000
  %sub1.i43.i = sub i32 10000, %25
  %cond.i44.i = select i1 %cmp.not.i41.i, i32 %sub1.i43.i, i32 %sub.i42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i44.i)
  %cmp16.i = icmp ult i32 %cond.i44.i, 200
  %..i = select i1 %cmp16.i, i8 8, i8 0
  br label %kv_get_clk_bypass.exit

kv_get_clk_bypass.exit:                           ; preds = %if.else14.i, %if.else10.i.kv_get_clk_bypass.exit_crit_edge, %if.else6.i.kv_get_clk_bypass.exit_crit_edge, %if.else.i.kv_get_clk_bypass.exit_crit_edge, %if.then.i.kv_get_clk_bypass.exit_crit_edge, %if.end14.kv_get_clk_bypass.exit_crit_edge
  %value.0.i = phi i8 [ 3, %if.then.i.kv_get_clk_bypass.exit_crit_edge ], [ 2, %if.else.i.kv_get_clk_bypass.exit_crit_edge ], [ 7, %if.else6.i.kv_get_clk_bypass.exit_crit_edge ], [ 6, %if.else10.i.kv_get_clk_bypass.exit_crit_edge ], [ %..i, %if.else14.i ], [ 0, %if.end14.kv_get_clk_bypass.exit_crit_edge ]
  %ClkBypassCntl = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 25, i32 %i.0112, i32 3
  %30 = ptrtoint ptr %ClkBypassCntl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %value.0.i, ptr %ClkBypassCntl, align 1
  %31 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entries, align 4
  %evclk32 = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %32, i32 %i.0112, i32 1
  %33 = ptrtoint ptr %evclk32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %evclk32, align 4
  %call33 = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 2, i32 noundef %34, i1 noundef zeroext false, ptr noundef nonnull %dividers) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %kv_get_clk_bypass.exit.cleanup_crit_edge

kv_get_clk_bypass.exit.cleanup_crit_edge:         ; preds = %kv_get_clk_bypass.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36:                                         ; preds = %kv_get_clk_bypass.exit
  %35 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dividers, align 4
  %conv37 = trunc i32 %36 to i8
  %Divider = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 25, i32 %i.0112, i32 2
  %37 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv37, ptr %Divider, align 2
  %38 = ptrtoint ptr %vce_level_count to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vce_level_count, align 2
  %inc = add i8 %39, 1
  store i8 %inc, ptr %vce_level_count, align 2
  %inc41 = add nuw nsw i32 %i.0112, 1
  %40 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  %conv4 = zext i8 %41 to i32
  %cmp5 = icmp ult i32 %inc41, %conv4
  br i1 %cmp5, label %if.end36.for.body_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %43, 79
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sram_end, align 4
  %call43 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add, ptr noundef %vce_level_count, i32 noundef 1, i32 noundef %45) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %for.end
  %vce_interval = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 33
  %46 = ptrtoint ptr %vce_interval to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %vce_interval, align 1
  %47 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dpm_table_start, align 4
  %add48 = add i32 %48, 749
  %49 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sram_end, align 4
  %call51 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add48, ptr noundef %vce_interval, i32 noundef 1, i32 noundef %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dpm_table_start, align 4
  %add56 = add i32 %52, 456
  %vce_level57 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 25
  %53 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sram_end, align 4
  %call59 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add56, ptr noundef %vce_level57, i32 noundef 96, i32 noundef %54) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end46.cleanup_crit_edge, %for.end.cleanup_crit_edge, %kv_get_clk_bypass.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end54 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call43, %for.end.cleanup_crit_edge ], [ %call51, %if.end46.cleanup_crit_edge ], [ %call33, %kv_get_clk_bypass.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_populate_samu_table(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %samu_clock_voltage_dependency_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #13
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %cmp = icmp eq ptr %samu_clock_voltage_dependency_table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %samu_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %samu_level_count = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %samu_level_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %samu_level_count, align 4
  %6 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %samu_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3111.not = icmp eq i32 %7, 0
  br i1 %cmp3111.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %high_voltage_t = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 10
  %entries = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %if.end32.for.body_crit_edge ]
  %8 = ptrtoint ptr %high_voltage_t to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %high_voltage_t, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %for.body.if.end10_crit_edge, label %land.lhs.true

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %11, i32 %i.0112, i32 1
  %12 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %13)
  %cmp7 = icmp ult i16 %9, %13
  br i1 %cmp7, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entries, align 4
  %arrayidx12 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %15, i32 %i.0112
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 27, i32 %i.0112
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx13, align 4
  %19 = load ptr, ptr %entries, align 4
  %v16 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %19, i32 %i.0112, i32 1
  %20 = ptrtoint ptr %v16 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %v16, align 4
  %MinVoltage = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 27, i32 %i.0112, i32 1
  %22 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %MinVoltage, align 4
  %23 = load ptr, ptr %entries, align 4
  %arrayidx20 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %23, i32 %i.0112
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 4
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %27, i32 0, i32 67
  %28 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %caps_enable_dfs_bypass.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end10.kv_get_clk_bypass.exit_crit_edge, label %if.then.i

if.end10.kv_get_clk_bypass.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %25)
  %cmp.not.i.i = icmp ult i32 %25, 40000
  %sub.i.i = add i32 %25, -40000
  %sub1.i.i = sub i32 40000, %25
  %cond.i.i = select i1 %cmp.not.i.i, i32 %sub1.i.i, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i)
  %cmp.i = icmp ult i32 %cond.i.i, 200
  br i1 %cmp.i, label %if.then.i.kv_get_clk_bypass.exit_crit_edge, label %if.else.i

if.then.i.kv_get_clk_bypass.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %25)
  %cmp.not.i29.i = icmp ult i32 %25, 30000
  %sub.i30.i = add i32 %25, -30000
  %sub1.i31.i = sub i32 30000, %25
  %cond.i32.i = select i1 %cmp.not.i29.i, i32 %sub1.i31.i, i32 %sub.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i32.i)
  %cmp4.i = icmp ult i32 %cond.i32.i, 200
  br i1 %cmp4.i, label %if.else.i.kv_get_clk_bypass.exit_crit_edge, label %if.else6.i

if.else.i.kv_get_clk_bypass.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %25)
  %cmp.not.i33.i = icmp ult i32 %25, 20000
  %sub.i34.i = add i32 %25, -20000
  %sub1.i35.i = sub i32 20000, %25
  %cond.i36.i = select i1 %cmp.not.i33.i, i32 %sub1.i35.i, i32 %sub.i34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i36.i)
  %cmp8.i = icmp ult i32 %cond.i36.i, 200
  br i1 %cmp8.i, label %if.else6.i.kv_get_clk_bypass.exit_crit_edge, label %if.else10.i

if.else6.i.kv_get_clk_bypass.exit_crit_edge:      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.else10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %25)
  %cmp.not.i37.i = icmp ult i32 %25, 15000
  %sub.i38.i = add i32 %25, -15000
  %sub1.i39.i = sub i32 15000, %25
  %cond.i40.i = select i1 %cmp.not.i37.i, i32 %sub1.i39.i, i32 %sub.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i40.i)
  %cmp12.i = icmp ult i32 %cond.i40.i, 200
  br i1 %cmp12.i, label %if.else10.i.kv_get_clk_bypass.exit_crit_edge, label %if.else14.i

if.else10.i.kv_get_clk_bypass.exit_crit_edge:     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_get_clk_bypass.exit

if.else14.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %25)
  %cmp.not.i41.i = icmp ult i32 %25, 10000
  %sub.i42.i = add i32 %25, -10000
  %sub1.i43.i = sub i32 10000, %25
  %cond.i44.i = select i1 %cmp.not.i41.i, i32 %sub1.i43.i, i32 %sub.i42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i44.i)
  %cmp16.i = icmp ult i32 %cond.i44.i, 200
  %..i = select i1 %cmp16.i, i8 8, i8 0
  br label %kv_get_clk_bypass.exit

kv_get_clk_bypass.exit:                           ; preds = %if.else14.i, %if.else10.i.kv_get_clk_bypass.exit_crit_edge, %if.else6.i.kv_get_clk_bypass.exit_crit_edge, %if.else.i.kv_get_clk_bypass.exit_crit_edge, %if.then.i.kv_get_clk_bypass.exit_crit_edge, %if.end10.kv_get_clk_bypass.exit_crit_edge
  %value.0.i = phi i8 [ 3, %if.then.i.kv_get_clk_bypass.exit_crit_edge ], [ 2, %if.else.i.kv_get_clk_bypass.exit_crit_edge ], [ 7, %if.else6.i.kv_get_clk_bypass.exit_crit_edge ], [ 6, %if.else10.i.kv_get_clk_bypass.exit_crit_edge ], [ %..i, %if.else14.i ], [ 0, %if.end10.kv_get_clk_bypass.exit_crit_edge ]
  %ClkBypassCntl = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 27, i32 %i.0112, i32 3
  %30 = ptrtoint ptr %ClkBypassCntl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %value.0.i, ptr %ClkBypassCntl, align 1
  %31 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entries, align 4
  %arrayidx27 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %32, i32 %i.0112
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx27, align 4
  %call29 = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 2, i32 noundef %34, i1 noundef zeroext false, ptr noundef nonnull %dividers) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %kv_get_clk_bypass.exit.cleanup_crit_edge

kv_get_clk_bypass.exit.cleanup_crit_edge:         ; preds = %kv_get_clk_bypass.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %kv_get_clk_bypass.exit
  %35 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dividers, align 4
  %conv33 = trunc i32 %36 to i8
  %Divider = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 27, i32 %i.0112, i32 2
  %37 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv33, ptr %Divider, align 2
  %38 = ptrtoint ptr %samu_level_count to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %samu_level_count, align 4
  %inc = add i8 %39, 1
  store i8 %inc, ptr %samu_level_count, align 4
  %inc37 = add nuw i32 %i.0112, 1
  %40 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %samu_clock_voltage_dependency_table, align 4
  %cmp3 = icmp ult i32 %inc37, %41
  br i1 %cmp3, label %if.end32.for.body_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %43, 81
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sram_end, align 4
  %call39 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add, ptr noundef %samu_level_count, i32 noundef 1, i32 noundef %45) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end42:                                         ; preds = %for.end
  %samu_interval = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 35
  %46 = ptrtoint ptr %samu_interval to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %samu_interval, align 1
  %47 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dpm_table_start, align 4
  %add44 = add i32 %48, 751
  %49 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sram_end, align 4
  %call47 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add44, ptr noundef %samu_interval, i32 noundef 1, i32 noundef %50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dpm_table_start, align 4
  %add52 = add i32 %52, 648
  %samu_level53 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 27
  %53 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sram_end, align 4
  %call55 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add52, ptr noundef %samu_level53, i32 noundef 96, i32 noundef %54) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end42.cleanup_crit_edge, %for.end.cleanup_crit_edge, %kv_get_clk_bypass.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call39, %for.end.cleanup_crit_edge ], [ %call47, %if.end42.cleanup_crit_edge ], [ %call55, %if.end50 ], [ %call29, %kv_get_clk_bypass.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_populate_acp_table(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %acp_clock_voltage_dependency_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #13
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %cmp = icmp eq ptr %acp_clock_voltage_dependency_table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %acp_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %acp_level_count = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %acp_level_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %acp_level_count, align 1
  %6 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %acp_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp383.not = icmp eq i32 %7, 0
  br i1 %cmp383.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %entries = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %if.end14.for.body_crit_edge ]
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %9, i32 %i.084
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 26, i32 %i.084
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %13, i32 %i.084, i32 1
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %v, align 4
  %MinVoltage = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 26, i32 %i.084, i32 1
  %16 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %MinVoltage, align 4
  %17 = load ptr, ptr %entries, align 4
  %arrayidx10 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %17, i32 %i.084
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %call12 = call i32 @amdgpu_atombios_get_clock_dividers(ptr noundef %adev, i8 noundef zeroext 2, i32 noundef %19, i1 noundef zeroext false, ptr noundef nonnull %dividers) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %20 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dividers, align 4
  %conv = trunc i32 %21 to i8
  %Divider = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 26, i32 %i.084, i32 2
  %22 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %Divider, align 2
  %23 = ptrtoint ptr %acp_level_count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %acp_level_count, align 1
  %inc = add i8 %24, 1
  store i8 %inc, ptr %acp_level_count, align 1
  %inc18 = add nuw i32 %i.084, 1
  %25 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %acp_clock_voltage_dependency_table, align 4
  %cmp3 = icmp ult i32 %inc18, %26
  br i1 %cmp3, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end.for.end_crit_edge
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %28, 80
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sram_end, align 4
  %call20 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add, ptr noundef %acp_level_count, i32 noundef 1, i32 noundef %30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %for.end
  %acp_interval = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 34
  %31 = ptrtoint ptr %acp_interval to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %acp_interval, align 2
  %32 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dpm_table_start, align 4
  %add25 = add i32 %33, 750
  %34 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sram_end, align 4
  %call28 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add25, ptr noundef %acp_interval, i32 noundef 1, i32 noundef %35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dpm_table_start, align 4
  %add33 = add i32 %37, 552
  %acp_level34 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 26
  %38 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sram_end, align 4
  %call36 = call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add33, ptr noundef %acp_level34, i32 noundef 96, i32 noundef %39) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end23.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call20, %for.end.cleanup_crit_edge ], [ %call28, %if.end23.cleanup_crit_edge ], [ %call36, %if.end31 ], [ %call12, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_enable_auto_thermal_throttling(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %graphics_therm_throttle_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %graphics_therm_throttle_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %graphics_therm_throttle_enable, align 2
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %4, 754
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sram_end, align 4
  %call2 = tail call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add, ptr noundef %graphics_therm_throttle_enable, i32 noundef 1, i32 noundef %6) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_enable_dpm_voltage_scaling(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %graphics_voltage_change_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %graphics_voltage_change_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %graphics_voltage_change_enable, align 1
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %4, 755
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sram_end, align 4
  %call2 = tail call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add, ptr noundef %graphics_voltage_change_enable, i32 noundef 1, i32 noundef %6) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_set_dpm_interval(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %graphics_interval = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %graphics_interval to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %graphics_interval, align 1
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %4, 753
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sram_end, align 4
  %call2 = tail call i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %add, ptr noundef %graphics_interval, i32 noundef 1, i32 noundef %6) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_start_dpm(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %0 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smc_rreg, align 4
  %call = tail call i32 %1(ptr noundef %adev, i32 noundef -1071644672) #13
  %or = or i32 %call, 1
  %smc_wreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %2 = ptrtoint ptr %smc_wreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smc_wreg, align 8
  tail call void %3(ptr noundef %adev, i32 noundef -1071644672, i32 noundef %or) #13
  %call1 = tail call i32 @amdgpu_kv_smc_dpm_enable(ptr noundef %adev, i1 noundef zeroext true) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_enable_didt(ptr noundef %adev, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %caps_sq_ramping = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %caps_sq_ramping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %caps_sq_ramping, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %caps_db_ramping = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %caps_db_ramping to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %caps_db_ramping, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %caps_td_ramping = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 57
  %6 = ptrtoint ptr %caps_td_ramping to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %caps_td_ramping, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %caps_tcp_ramping = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 58
  %8 = ptrtoint ptr %caps_tcp_ramping to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %caps_tcp_ramping, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false4.if.then_crit_edge

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef %adev) #13
  br i1 %enable, label %if.then7, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %if.then
  %didt_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 49
  %smc_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %didt_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 50
  %smc_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  br label %while.body.i

while.body.i:                                     ; preds = %if.end28.i.while.body.i_crit_edge, %if.then7
  %10 = phi i32 [ 16, %if.then7 ], [ %44, %if.end28.i.while.body.i_crit_edge ]
  %cache.03.i = phi i32 [ 0, %if.then7 ], [ %cache.1.i, %if.end28.i.while.body.i_crit_edge ]
  %config_regs.01.i = phi ptr [ @didt_config_kv, %if.then7 ], [ %incdec.ptr.i, %if.end28.i.while.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.01.i, i32 0, i32 4
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %12, label %sw.default.i [
    i32 3, label %if.then3.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

if.then3.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %value.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.01.i, i32 0, i32 3
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i, align 4
  %shift.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.01.i, i32 0, i32 2
  %16 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %15, %17
  %mask.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.01.i, i32 0, i32 1
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shl.i, %19
  %or.i = or i32 %and.i, %cache.03.i
  br label %if.end28.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smc_rreg.i, align 4
  %call.i = tail call i32 %21(ptr noundef %adev, i32 noundef %10) #13
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %didt_rreg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %didt_rreg.i, align 8
  %call8.i = tail call i32 %23(ptr noundef %adev, i32 noundef %10) #13
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %10, i32 noundef 0) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb6.i, %sw.bb.i
  %data.0.i = phi i32 [ %call10.i, %sw.default.i ], [ %call8.i, %sw.bb6.i ], [ %call.i, %sw.bb.i ]
  %mask11.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.01.i, i32 0, i32 1
  %24 = ptrtoint ptr %mask11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask11.i, align 4
  %neg.i = xor i32 %25, -1
  %and12.i = and i32 %data.0.i, %neg.i
  %value13.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.01.i, i32 0, i32 3
  %26 = ptrtoint ptr %value13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value13.i, align 4
  %shift14.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.01.i, i32 0, i32 2
  %28 = ptrtoint ptr %shift14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %shift14.i, align 4
  %shl15.i = shl i32 %27, %29
  %and17.i = and i32 %shl15.i, %25
  %or18.i = or i32 %and12.i, %cache.03.i
  %or19.i = or i32 %or18.i, %and17.i
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %31, label %sw.default25.i [
    i32 1, label %sw.bb21.i
    i32 2, label %sw.bb23.i
  ]

sw.bb21.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smc_wreg.i, align 8
  %35 = ptrtoint ptr %config_regs.01.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_regs.01.i, align 4
  tail call void %34(ptr noundef %adev, i32 noundef %36, i32 noundef %or19.i) #13
  br label %if.end28.i

sw.bb23.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %didt_wreg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %didt_wreg.i, align 4
  %39 = ptrtoint ptr %config_regs.01.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %config_regs.01.i, align 4
  tail call void %38(ptr noundef %adev, i32 noundef %40, i32 noundef %or19.i) #13
  br label %if.end28.i

sw.default25.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %config_regs.01.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %config_regs.01.i, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %42, i32 noundef %or19.i, i32 noundef 0) #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %sw.default25.i, %sw.bb23.i, %sw.bb21.i, %if.then3.i
  %cache.1.i = phi i32 [ %or.i, %if.then3.i ], [ 0, %sw.default25.i ], [ 0, %sw.bb23.i ], [ 0, %sw.bb21.i ]
  %incdec.ptr.i = getelementptr %struct.kv_pt_config_reg, ptr %config_regs.01.i, i32 1
  %43 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %incdec.ptr.i, align 4
  %cmp1.not.i = icmp eq i32 %44, -1
  br i1 %cmp1.not.i, label %if.end28.i.if.end11_crit_edge, label %if.end28.i.while.body.i_crit_edge

if.end28.i.while.body.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end28.i.if.end11_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %if.end28.i.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %45 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i, align 4
  %caps_sq_ramping.i = getelementptr inbounds %struct.kv_power_info, ptr %46, i32 0, i32 55
  %47 = ptrtoint ptr %caps_sq_ramping.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %caps_sq_ramping.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %if.end11.if.end4.i_crit_edge, label %if.then.i

if.end11.if.end4.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %didt_rreg.i1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 49
  %49 = ptrtoint ptr %didt_rreg.i1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %didt_rreg.i1, align 8
  %call1.i = tail call i32 %50(ptr noundef %adev, i32 noundef 0) #13
  %and.i2 = and i32 %call1.i, -2
  %masksel.i = zext i1 %enable to i32
  %data.0.i3 = or i32 %and.i2, %masksel.i
  %didt_wreg.i4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 50
  %51 = ptrtoint ptr %didt_wreg.i4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %didt_wreg.i4, align 4
  tail call void %52(ptr noundef %adev, i32 noundef 0, i32 noundef %data.0.i3) #13
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %if.end11.if.end4.i_crit_edge
  %caps_db_ramping.i = getelementptr inbounds %struct.kv_power_info, ptr %46, i32 0, i32 56
  %53 = ptrtoint ptr %caps_db_ramping.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %caps_db_ramping.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool5.not.i = icmp eq i8 %54, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end16.i_crit_edge, label %if.then6.i

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %didt_rreg7.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 49
  %55 = ptrtoint ptr %didt_rreg7.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %didt_rreg7.i, align 8
  %call8.i5 = tail call i32 %56(ptr noundef %adev, i32 noundef 32) #13
  %and13.i = and i32 %call8.i5, -2
  %masksel74.i = zext i1 %enable to i32
  %data.1.i = or i32 %and13.i, %masksel74.i
  %didt_wreg15.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 50
  %57 = ptrtoint ptr %didt_wreg15.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %didt_wreg15.i, align 4
  tail call void %58(ptr noundef %adev, i32 noundef 32, i32 noundef %data.1.i) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end16.i_crit_edge
  %caps_td_ramping.i = getelementptr inbounds %struct.kv_power_info, ptr %46, i32 0, i32 57
  %59 = ptrtoint ptr %caps_td_ramping.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %caps_td_ramping.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool17.not.i = icmp eq i8 %60, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.end28.i6_crit_edge, label %if.then18.i

if.end16.i.if.end28.i6_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i6

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %didt_rreg19.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 49
  %61 = ptrtoint ptr %didt_rreg19.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %didt_rreg19.i, align 8
  %call20.i = tail call i32 %62(ptr noundef %adev, i32 noundef 64) #13
  %and25.i = and i32 %call20.i, -2
  %masksel75.i = zext i1 %enable to i32
  %data.2.i = or i32 %and25.i, %masksel75.i
  %didt_wreg27.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 50
  %63 = ptrtoint ptr %didt_wreg27.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %didt_wreg27.i, align 4
  tail call void %64(ptr noundef %adev, i32 noundef 64, i32 noundef %data.2.i) #13
  br label %if.end28.i6

if.end28.i6:                                      ; preds = %if.then18.i, %if.end16.i.if.end28.i6_crit_edge
  %caps_tcp_ramping.i = getelementptr inbounds %struct.kv_power_info, ptr %46, i32 0, i32 58
  %65 = ptrtoint ptr %caps_tcp_ramping.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %caps_tcp_ramping.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool29.not.i = icmp eq i8 %66, 0
  br i1 %tobool29.not.i, label %if.end28.i6.kv_do_enable_didt.exit_crit_edge, label %if.then30.i

if.end28.i6.kv_do_enable_didt.exit_crit_edge:     ; preds = %if.end28.i6
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_do_enable_didt.exit

if.then30.i:                                      ; preds = %if.end28.i6
  call void @__sanitizer_cov_trace_pc() #15
  %didt_rreg31.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 49
  %67 = ptrtoint ptr %didt_rreg31.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %didt_rreg31.i, align 8
  %call32.i = tail call i32 %68(ptr noundef %adev, i32 noundef 96) #13
  %and37.i = and i32 %call32.i, -2
  %masksel76.i = zext i1 %enable to i32
  %data.3.i = or i32 %and37.i, %masksel76.i
  %didt_wreg39.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 50
  %69 = ptrtoint ptr %didt_wreg39.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %didt_wreg39.i, align 4
  tail call void %70(ptr noundef %adev, i32 noundef 96, i32 noundef %data.3.i) #13
  br label %kv_do_enable_didt.exit

kv_do_enable_didt.exit:                           ; preds = %if.then30.i, %if.end28.i6.kv_do_enable_didt.exit_crit_edge
  tail call void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef %adev) #13
  br label %cleanup

cleanup:                                          ; preds = %kv_do_enable_didt.exit, %lor.lhs.false4.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kv_read_smc_sram_dword(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_kv_smc_dpm_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_enter_safe_mode(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_rlc_exit_safe_mode(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_dpm_disable(ptr noundef %adev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 16
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 35, i32 11
  %call1 = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %irq, i32 noundef 0) #13
  %call6 = tail call i32 @amdgpu_irq_put(ptr noundef %adev, ptr noundef %irq, i32 noundef 1) #13
  %call7 = tail call i32 @amdgpu_kv_smc_bapm_enable(ptr noundef %adev, i1 noundef zeroext false) #13
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp = icmp eq i32 %3, 9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %enable_nb_dpm.i = getelementptr inbounds %struct.kv_power_info, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %enable_nb_dpm.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_nb_dpm.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true10.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true10.i:                                ; preds = %if.then
  %nb_dpm_enabled11.i = getelementptr inbounds %struct.kv_power_info, ptr %5, i32 0, i32 48
  %8 = ptrtoint ptr %nb_dpm_enabled11.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nb_dpm_enabled11.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not.i = icmp eq i8 %9, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.end_crit_edge, label %if.then13.i

land.lhs.true10.i.if.end_crit_edge:               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then13.i:                                      ; preds = %land.lhs.true10.i
  %call14.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 321) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.then13.i.if.end_crit_edge

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %nb_dpm_enabled11.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %nb_dpm_enabled11.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16.i, %if.then13.i.if.end_crit_edge, %land.lhs.true10.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @kv_dpm_powergate_acp(ptr noundef %adev, i1 noundef zeroext false)
  tail call fastcc void @kv_dpm_powergate_samu(ptr noundef %adev, i1 noundef zeroext false)
  %caps_vce_pg = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 63
  %11 = ptrtoint ptr %caps_vce_pg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %caps_vce_pg, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 271) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %caps_uvd_pg = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 62
  %13 = ptrtoint ptr %caps_uvd_pg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %caps_uvd_pg, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 97) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 4
  %caps_cac.i = getelementptr inbounds %struct.kv_power_info, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %caps_cac.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %caps_cac.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end15.kv_enable_smc_cac.exit_crit_edge, label %if.then.i

if.end15.kv_enable_smc_cac.exit_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_enable_smc_cac.exit

if.then.i:                                        ; preds = %if.end15
  %cac_enabled8.i = getelementptr inbounds %struct.kv_power_info, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %cac_enabled8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cac_enabled8.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not.i = icmp eq i8 %20, 0
  br i1 %tobool9.not.i, label %if.then.i.kv_enable_smc_cac.exit_crit_edge, label %if.then10.i

if.then.i.kv_enable_smc_cac.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kv_enable_smc_cac.exit

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %call11.i = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 84) #13
  %21 = ptrtoint ptr %cac_enabled8.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %cac_enabled8.i, align 2
  br label %kv_enable_smc_cac.exit

kv_enable_smc_cac.exit:                           ; preds = %if.then10.i, %if.then.i.kv_enable_smc_cac.exit_crit_edge, %if.end15.kv_enable_smc_cac.exit_crit_edge
  tail call fastcc void @kv_enable_didt(ptr noundef %adev, i1 noundef zeroext false)
  %smc_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 37
  %22 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smc_wreg.i, align 8
  tail call void %23(ptr noundef %adev, i32 noundef -1071644248, i32 noundef 0) #13
  %call.i = tail call i32 @amdgpu_kv_smc_dpm_enable(ptr noundef %adev, i1 noundef zeroext false) #13
  %call.i42 = tail call i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef 99) #13
  %smc_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %24 = ptrtoint ptr %smc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smc_rreg.i, align 4
  %call.i43 = tail call i32 %25(ptr noundef %adev, i32 noundef -1071644664) #13
  %or.i = or i32 %call.i43, 48
  %26 = ptrtoint ptr %smc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %smc_wreg.i, align 8
  tail call void %27(ptr noundef %adev, i32 noundef -1071644664, i32 noundef %or.i) #13
  %boot_ps = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 4
  %28 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %boot_ps, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.amdgpu_ps, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ps_priv.i.i, align 4
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 4
  %current_rps.i = getelementptr inbounds %struct.kv_power_info, ptr %33, i32 0, i32 69
  %34 = call ptr @memcpy(ptr %current_rps.i, ptr %29, i32 40)
  %current_ps.i = getelementptr inbounds %struct.kv_power_info, ptr %33, i32 0, i32 70
  %35 = call ptr @memcpy(ptr %current_ps.i, ptr %31, i32 72)
  %ps_priv.i = getelementptr inbounds %struct.kv_power_info, ptr %33, i32 0, i32 69, i32 9
  %36 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  %current_ps5.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 2
  %37 = ptrtoint ptr %current_ps5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %current_rps.i, ptr %current_ps5.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @kv_smu_ip_block, !1, !"kv_smu_ip_block", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3345, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3329, i32 10}
!4 = !{ptr @kv_dpm_ip_funcs, !5, !"kv_dpm_ip_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3328, i32 34}
!6 = !{ptr @kv_dpm_funcs, !7, !"kv_dpm_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3354, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1929, i32 4}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1940, i32 5}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1956, i32 5}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2899, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @kv_dpm_print_power_state._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @kv_dpm_print_power_state._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2902, i32 3}
!22 = !{ptr @kv_dpm_print_power_state._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @kv_dpm_print_power_state._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2875, i32 17}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2882, i32 17}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2882, i32 59}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2882, i32 67}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2883, i32 17}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2884, i32 17}
!36 = !{ptr @kv_dpm_irq_funcs, !37, !"kv_dpm_irq_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3371, i32 42}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3195, i32 3}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3200, i32 3}
!42 = !{ptr @kv_dpm_sw_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3018, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3027, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @kv_dpm_sw_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @kv_dpm_sw_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 3034, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2572, i32 4}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2588, i32 4}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1266, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1273, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1279, i32 3}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1284, i32 3}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1289, i32 3}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1294, i32 3}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1299, i32 3}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1310, i32 4}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1316, i32 3}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1321, i32 3}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1326, i32 3}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1331, i32 3}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1337, i32 3}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1342, i32 3}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 1358, i32 4}
!86 = !{ptr @didt_config_kv, !87, !"didt_config_kv", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 293, i32 38}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_dpm.c", i32 2530, i32 3}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
!100 = !{!"auto-init"}
