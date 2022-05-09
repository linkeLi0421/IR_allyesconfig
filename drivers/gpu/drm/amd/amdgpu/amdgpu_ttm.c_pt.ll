; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.amdgpu_res_cursor = type { i64, i64, i64, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.100, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
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
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.99], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.99 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.96] }
%struct.anon.96 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.100 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.113, i32, i32, i32, i32 }
%union.anon.113 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_copy_mem = type { ptr, ptr, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_range_mgr_node = type { %struct.ttm_resource, [0 x %struct.drm_mm_node] }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.amdgpu_buffer_funcs = type { i32, i32, ptr, i32, i32, ptr }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.95, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.95 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.amdgpu_ttm_tt = type { %struct.ttm_tt, ptr, i64, i64, ptr, i32, i8, ptr }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.hmm_range = type { ptr, i32, i32, i32, ptr, i32, i32, ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.86 = type { %struct.callback_head }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.88 = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }

@__UNIQUE_ID_import_ns390 = internal constant [25 x i8] c"amdgpu.import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Trying to move memory with ring turned off.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BO is not registered?\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_ttm_tt_get_user_pages.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu_ttm_tt_get_user_pages\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed %d to get user pages 0x%lx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: failed %d to get user pages 0x%lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"user_pages_done 0x%llx pages 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@amdgpu_ttm_tt_get_user_pages_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No user pages to check\0A\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_ttm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&adev->mman.gtt_window_lock\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_bo_driver = internal global { %struct.ttm_device_funcs, [36 x i8] } { %struct.ttm_device_funcs { ptr @amdgpu_ttm_tt_create, ptr @amdgpu_ttm_tt_populate, ptr @amdgpu_ttm_tt_unpopulate, ptr @amdgpu_ttm_backend_destroy, ptr @amdgpu_ttm_bo_eviction_valuable, ptr @amdgpu_evict_flags, ptr @amdgpu_bo_move, ptr @amdgpu_bo_delete_mem_notify, ptr null, ptr @amdgpu_ttm_io_mem_reserve, ptr null, ptr @amdgpu_ttm_io_mem_pfn, ptr @amdgpu_ttm_access_memory, ptr @amdgpu_vm_del_from_lru_notify, ptr @amdgpu_bo_release_notify }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed initializing buffer object driver(%d).\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed initializing VRAM heap.\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_vis_vram_limit = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_ttm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016[drm] amdgpu: %uM of VRAM memory ready\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_ttm_init\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_ttm_init._entry_ptr = internal global ptr @amdgpu_ttm_init._entry, section ".printk_index", align 4
@amdgpu_gtt_size = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed initializing GTT heap.\0A\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_ttm_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 1772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016[drm] amdgpu: %uM of GTT memory ready.\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_ttm_init._entry_ptr.17 = internal global ptr @amdgpu_ttm_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed initializing PREEMPT heap.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed initializing GDS heap.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed initializing gws heap.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed initializing oa heap.\0A\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_ttm_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016[drm] amdgpu: ttm finalized\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amdgpu_ttm_fini\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_ttm_fini._entry_ptr = internal global ptr @amdgpu_ttm_fini._entry, section ".printk_index", align 4
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed setting up TTM BO move entity (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sync failed (%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error scheduling IBs (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trying to clear memory with ring turned off.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Trying to clear preemptible memory.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Trying to evict invalid memory type\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amdgpu_vram\00", [20 x i8] zeroinitializer }, align 32
@amdgpu_ttm_vram_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_ttm_vram_read, ptr @amdgpu_ttm_vram_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amdgpu_iomem\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_ttm_iomem_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @amdgpu_iomem_read, ptr @amdgpu_iomem_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_vram_mm\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_mm_vram_table_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_mm_vram_table_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amdgpu_gtt_mm\00", [18 x i8] zeroinitializer }, align 32
@amdgpu_mm_tt_table_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_mm_tt_table_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amdgpu_gds_mm\00", [18 x i8] zeroinitializer }, align 32
@amdgpu_mm_gds_table_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_mm_gds_table_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amdgpu_gws_mm\00", [18 x i8] zeroinitializer }, align 32
@amdgpu_mm_gws_table_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_mm_gws_table_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amdgpu_oa_mm\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_mm_oa_table_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_mm_oa_table_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttm_page_pool\00", [18 x i8] zeroinitializer }, align 32
@amdgpu_ttm_page_pool_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @amdgpu_ttm_page_pool_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to bind %u pages at 0x%08llX\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/drm/ttm/ttm_bo_driver.h\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to unbind %u pages at 0x%08llX\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Missing get_user_page_done\0A\00", [36 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_evict_flags.placements = internal constant { %struct.ttm_place, [16 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_bo_move.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@amdgpu_bo_move._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013amdgpu: Move buffer fallback to memcpy unavailable\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amdgpu_bo_move\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_bo_move._entry_ptr = internal global ptr @amdgpu_bo_move._entry, section ".printk_index", align 4
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to pin userptr\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nothing to bind %u pages for mreg %p back %p!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"memory training does not support!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"alloc c2p_bo failed(%d)!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc tmr failed(%d)!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"train_data_size:%llx,p2c_train_data_offset:%llx,c2p_train_data_offset:%llx.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 6]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 309, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 665, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 670, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 695, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 716, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 719, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1663, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"amdgpu_bo_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1488, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1672, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1680, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1749, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1768, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1771, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1777, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1784, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1790, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1796, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1840, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1872, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1930, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1960, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1981, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1986, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2074, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2355, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"amdgpu_ttm_vram_fops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2226, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2357, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [22 x i8] c"amdgpu_ttm_iomem_fops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2340, i32 37 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2359, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"amdgpu_mm_vram_table_fops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2145, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2361, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"amdgpu_mm_tt_table_fops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2146, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2363, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant [25 x i8] c"amdgpu_mm_gds_table_fops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2147, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2365, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant [25 x i8] c"amdgpu_mm_gws_table_fops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2148, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2367, i32 22 }
@___asan_gen_.215 = private unnamed_addr constant [24 x i8] c"amdgpu_mm_oa_table_fops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2149, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2369, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant [26 x i8] c"amdgpu_ttm_page_pool_fops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 2150, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 62, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 862, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [35 x i8] c"../include/drm/ttm/ttm_bo_driver.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 192, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1052, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 819, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [11 x i8] c"placements\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 95, i32 32 }
@___asan_gen_.243 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 286, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 543, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 892, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 913, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1601, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1626, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1640, i32 3 }
@___asan_gen_.270 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1581, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 230, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 214, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 174, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 44, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_import_ns390, ptr @amdgpu_bo_move._entry, ptr @amdgpu_bo_move._entry_ptr, ptr @amdgpu_ttm_fini._entry, ptr @amdgpu_ttm_fini._entry_ptr, ptr @amdgpu_ttm_init._entry, ptr @amdgpu_ttm_init._entry.15, ptr @amdgpu_ttm_init._entry_ptr, ptr @amdgpu_ttm_init._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @amdgpu_ttm_init.__key, ptr @.str.9, ptr @amdgpu_bo_driver, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @amdgpu_ttm_vram_fops, ptr @.str.31, ptr @amdgpu_ttm_iomem_fops, ptr @.str.32, ptr @amdgpu_mm_vram_table_fops, ptr @.str.33, ptr @amdgpu_mm_tt_table_fops, ptr @.str.34, ptr @amdgpu_mm_gds_table_fops, ptr @.str.35, ptr @amdgpu_mm_gws_table_fops, ptr @.str.36, ptr @amdgpu_mm_oa_table_fops, ptr @.str.37, ptr @amdgpu_ttm_page_pool_fops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @amdgpu_evict_flags.placements, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ttm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_driver to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ttm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ttm_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ttm_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ttm_vram_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ttm_iomem_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mm_vram_table_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mm_tt_table_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mm_gds_table_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mm_gws_table_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_mm_oa_table_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_ttm_page_pool_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_evict_flags.placements to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_move._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ttm_copy_mem_to_mem(ptr noundef %adev, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst, i64 noundef %size, i1 noundef zeroext %tmz, ptr noundef %resv, ptr noundef writeonly %f) local_unnamed_addr #0 align 64 {
entry:
  %src_mm = alloca %struct.amdgpu_res_cursor, align 8
  %dst_mm = alloca %struct.amdgpu_res_cursor, align 8
  %next = alloca ptr, align 4
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_funcs_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %0 = ptrtoint ptr %buffer_funcs_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_funcs_ring, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %src_mm) #13
  %2 = call ptr @memset(ptr %src_mm, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dst_mm) #13
  %3 = call ptr @memset(ptr %dst_mm, i32 255, i32 32)
  %buffer_funcs_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 5
  %4 = ptrtoint ptr %buffer_funcs_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer_funcs_enabled, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #13
  br label %cleanup73

if.end:                                           ; preds = %entry
  %mem = getelementptr inbounds %struct.amdgpu_copy_mem, ptr %src, i32 0, i32 1
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %offset = getelementptr inbounds %struct.amdgpu_copy_mem, ptr %src, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %conv = zext i32 %9 to i64
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.end.critedge.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %land.rhs.critedge.i, label %do.body28.i

land.rhs.critedge.i:                              ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %src_mm to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %src_mm, align 8
  %size2.c.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 1
  %13 = ptrtoint ptr %size2.c.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %size, ptr %size2.c.i, align 8
  %remaining.c.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 2
  %14 = ptrtoint ptr %remaining.c.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %size, ptr %remaining.c.i, align 8
  %node3.c.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 3
  %15 = ptrtoint ptr %node3.c.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %node3.c.i, align 8
  %add.i = add i64 %conv, %size
  %num_pages.i = getelementptr inbounds %struct.ttm_resource, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pages.i, align 4
  %shl.i = shl i32 %17, 12
  %conv.i = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp5.i = icmp ugt i64 %add.i, %conv.i
  br i1 %cmp5.i, label %do.end.i, label %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge, !prof !149

land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge: ; preds = %land.rhs.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

land.end.critedge.i:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %src_mm to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %src_mm, align 8
  %size2.c100.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 1
  %19 = ptrtoint ptr %size2.c100.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %size, ptr %size2.c100.i, align 8
  %remaining.c101.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 2
  %20 = ptrtoint ptr %remaining.c101.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %size, ptr %remaining.c101.i, align 8
  %node3.c102.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 3
  %21 = ptrtoint ptr %node3.c102.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %node3.c102.i, align 8
  br label %amdgpu_res_first.exit

do.end.i:                                         ; preds = %land.rhs.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 62, i32 noundef 9, ptr noundef null) #13
  br label %amdgpu_res_first.exit

do.body28.i:                                      ; preds = %lor.lhs.false.i
  %add29.i = add i64 %conv, %size
  %num_pages30.i = getelementptr inbounds %struct.ttm_resource, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %num_pages30.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pages30.i, align 4
  %shl31.i = shl i32 %23, 12
  %conv32.i = zext i32 %shl31.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add29.i, i64 %conv32.i)
  %cmp33.i = icmp ugt i64 %add29.i, %conv32.i
  br i1 %cmp33.i, label %do.body42.i, label %do.end50.i, !prof !149

do.body42.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end50.i:                                       ; preds = %do.body28.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %7, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %7, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size51103.i, align 8
  %shl52104.i = shl i64 %25, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl52104.i, i64 %conv)
  %cmp53.not105.i = icmp ugt i64 %shl52104.i, %conv
  br i1 %cmp53.not105.i, label %do.end50.i.while.end.i_crit_edge, label %do.end50.i.while.body.i_crit_edge

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ %shl52104.i, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %26 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %27, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end50.i.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ %conv, %do.end50.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %size51.lcssa.i = phi ptr [ %size51103.i, %do.end50.i.while.end.i_crit_edge ], [ %size51.i, %while.body.i.while.end.i_crit_edge ]
  %start57.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i, i32 0, i32 1
  %28 = ptrtoint ptr %start57.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start57.i, align 8
  %shl58.i = shl i64 %29, 12
  %add59.i = add i64 %shl58.i, %start.addr.0.lcssa.i
  %30 = ptrtoint ptr %src_mm to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add59.i, ptr %src_mm, align 8
  %31 = ptrtoint ptr %size51.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %size51.lcssa.i, align 8
  %shl62.i = shl i64 %32, 12
  %sub63.i = sub i64 %shl62.i, %start.addr.0.lcssa.i
  %33 = tail call i64 @llvm.umin.i64(i64 %sub63.i, i64 %size) #13
  %size67.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 1
  %34 = ptrtoint ptr %size67.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %size67.i, align 8
  %remaining68.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 2
  %35 = ptrtoint ptr %remaining68.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %size, ptr %remaining68.i, align 8
  %node69.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 3
  %36 = ptrtoint ptr %node69.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %node.0.lcssa.i, ptr %node69.i, align 8
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.end.i, %do.end.i, %land.end.critedge.i, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge
  %mem2 = getelementptr inbounds %struct.amdgpu_copy_mem, ptr %dst, i32 0, i32 1
  %37 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem2, align 4
  %offset3 = getelementptr inbounds %struct.amdgpu_copy_mem, ptr %dst, i32 0, i32 2
  %39 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset3, align 4
  %conv4 = zext i32 %40 to i64
  %tobool.not.i118 = icmp eq ptr %38, null
  br i1 %tobool.not.i118, label %land.end.critedge.i134, label %lor.lhs.false.i121

lor.lhs.false.i121:                               ; preds = %amdgpu_res_first.exit
  %mem_type.i119 = getelementptr inbounds %struct.ttm_resource, ptr %38, i32 0, i32 2
  %41 = ptrtoint ptr %mem_type.i119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mem_type.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i120 = icmp eq i32 %42, 0
  br i1 %cmp.i120, label %land.rhs.critedge.i130, label %do.body28.i141

land.rhs.critedge.i130:                           ; preds = %lor.lhs.false.i121
  %43 = ptrtoint ptr %dst_mm to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv4, ptr %dst_mm, align 8
  %size2.c.i122 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 1
  %44 = ptrtoint ptr %size2.c.i122 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %size, ptr %size2.c.i122, align 8
  %remaining.c.i123 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 2
  %45 = ptrtoint ptr %remaining.c.i123 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %size, ptr %remaining.c.i123, align 8
  %node3.c.i124 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 3
  %46 = ptrtoint ptr %node3.c.i124 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %node3.c.i124, align 8
  %add.i125 = add i64 %conv4, %size
  %num_pages.i126 = getelementptr inbounds %struct.ttm_resource, ptr %38, i32 0, i32 1
  %47 = ptrtoint ptr %num_pages.i126 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_pages.i126, align 4
  %shl.i127 = shl i32 %48, 12
  %conv.i128 = zext i32 %shl.i127 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i125, i64 %conv.i128)
  %cmp5.i129 = icmp ugt i64 %add.i125, %conv.i128
  br i1 %cmp5.i129, label %do.end.i135, label %land.rhs.critedge.i130.amdgpu_res_first.exit169_crit_edge, !prof !149

land.rhs.critedge.i130.amdgpu_res_first.exit169_crit_edge: ; preds = %land.rhs.critedge.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit169

land.end.critedge.i134:                           ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %dst_mm to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv4, ptr %dst_mm, align 8
  %size2.c100.i131 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 1
  %50 = ptrtoint ptr %size2.c100.i131 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %size, ptr %size2.c100.i131, align 8
  %remaining.c101.i132 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 2
  %51 = ptrtoint ptr %remaining.c101.i132 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %size, ptr %remaining.c101.i132, align 8
  %node3.c102.i133 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 3
  %52 = ptrtoint ptr %node3.c102.i133 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %node3.c102.i133, align 8
  br label %amdgpu_res_first.exit169

do.end.i135:                                      ; preds = %land.rhs.critedge.i130
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 62, i32 noundef 9, ptr noundef null) #13
  br label %amdgpu_res_first.exit169

do.body28.i141:                                   ; preds = %lor.lhs.false.i121
  %add29.i136 = add i64 %conv4, %size
  %num_pages30.i137 = getelementptr inbounds %struct.ttm_resource, ptr %38, i32 0, i32 1
  %53 = ptrtoint ptr %num_pages30.i137 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pages30.i137, align 4
  %shl31.i138 = shl i32 %54, 12
  %conv32.i139 = zext i32 %shl31.i138 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add29.i136, i64 %conv32.i139)
  %cmp33.i140 = icmp ugt i64 %add29.i136, %conv32.i139
  br i1 %cmp33.i140, label %do.body42.i142, label %do.end50.i147, !prof !149

do.body42.i142:                                   ; preds = %do.body28.i141
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end50.i147:                                    ; preds = %do.body28.i141
  %mm_nodes.i143 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %38, i32 0, i32 1
  %size51103.i144 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %38, i32 1, i32 0, i32 4
  %55 = ptrtoint ptr %size51103.i144 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %size51103.i144, align 8
  %shl52104.i145 = shl i64 %56, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl52104.i145, i64 %conv4)
  %cmp53.not105.i146 = icmp ugt i64 %shl52104.i145, %conv4
  br i1 %cmp53.not105.i146, label %do.end50.i147.while.end.i168_crit_edge, label %do.end50.i147.while.body.i156_crit_edge

do.end50.i147.while.body.i156_crit_edge:          ; preds = %do.end50.i147
  br label %while.body.i156

do.end50.i147.while.end.i168_crit_edge:           ; preds = %do.end50.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i168

while.body.i156:                                  ; preds = %while.body.i156.while.body.i156_crit_edge, %do.end50.i147.while.body.i156_crit_edge
  %shl52108.i148 = phi i64 [ %shl52.i154, %while.body.i156.while.body.i156_crit_edge ], [ %shl52104.i145, %do.end50.i147.while.body.i156_crit_edge ]
  %start.addr.0107.i149 = phi i64 [ %sub.i152, %while.body.i156.while.body.i156_crit_edge ], [ %conv4, %do.end50.i147.while.body.i156_crit_edge ]
  %node.0106.i150 = phi ptr [ %incdec.ptr.i151, %while.body.i156.while.body.i156_crit_edge ], [ %mm_nodes.i143, %do.end50.i147.while.body.i156_crit_edge ]
  %incdec.ptr.i151 = getelementptr %struct.drm_mm_node, ptr %node.0106.i150, i32 1
  %sub.i152 = sub i64 %start.addr.0107.i149, %shl52108.i148
  %size51.i153 = getelementptr %struct.drm_mm_node, ptr %node.0106.i150, i32 1, i32 2
  %57 = ptrtoint ptr %size51.i153 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %size51.i153, align 8
  %shl52.i154 = shl i64 %58, 12
  %cmp53.not.i155 = icmp ult i64 %sub.i152, %shl52.i154
  br i1 %cmp53.not.i155, label %while.body.i156.while.end.i168_crit_edge, label %while.body.i156.while.body.i156_crit_edge

while.body.i156.while.body.i156_crit_edge:        ; preds = %while.body.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i156

while.body.i156.while.end.i168_crit_edge:         ; preds = %while.body.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i168

while.end.i168:                                   ; preds = %while.body.i156.while.end.i168_crit_edge, %do.end50.i147.while.end.i168_crit_edge
  %node.0.lcssa.i157 = phi ptr [ %mm_nodes.i143, %do.end50.i147.while.end.i168_crit_edge ], [ %incdec.ptr.i151, %while.body.i156.while.end.i168_crit_edge ]
  %start.addr.0.lcssa.i158 = phi i64 [ %conv4, %do.end50.i147.while.end.i168_crit_edge ], [ %sub.i152, %while.body.i156.while.end.i168_crit_edge ]
  %size51.lcssa.i159 = phi ptr [ %size51103.i144, %do.end50.i147.while.end.i168_crit_edge ], [ %size51.i153, %while.body.i156.while.end.i168_crit_edge ]
  %start57.i160 = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i157, i32 0, i32 1
  %59 = ptrtoint ptr %start57.i160 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %start57.i160, align 8
  %shl58.i161 = shl i64 %60, 12
  %add59.i162 = add i64 %shl58.i161, %start.addr.0.lcssa.i158
  %61 = ptrtoint ptr %dst_mm to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %add59.i162, ptr %dst_mm, align 8
  %62 = ptrtoint ptr %size51.lcssa.i159 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %size51.lcssa.i159, align 8
  %shl62.i163 = shl i64 %63, 12
  %sub63.i164 = sub i64 %shl62.i163, %start.addr.0.lcssa.i158
  %64 = tail call i64 @llvm.umin.i64(i64 %sub63.i164, i64 %size) #13
  %size67.i165 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 1
  %65 = ptrtoint ptr %size67.i165 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %size67.i165, align 8
  %remaining68.i166 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 2
  %66 = ptrtoint ptr %remaining68.i166 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %size, ptr %remaining68.i166, align 8
  %node69.i167 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 3
  %67 = ptrtoint ptr %node69.i167 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %node.0.lcssa.i157, ptr %node69.i167, align 8
  br label %amdgpu_res_first.exit169

amdgpu_res_first.exit169:                         ; preds = %while.end.i168, %do.end.i135, %land.end.critedge.i134, %land.rhs.critedge.i130.amdgpu_res_first.exit169_crit_edge
  %gtt_window_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 6
  tail call void @mutex_lock_nested(ptr noundef %gtt_window_lock, i32 noundef 0) #13
  %remaining = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 2
  %68 = ptrtoint ptr %remaining to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %remaining, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %tobool6.not222 = icmp eq i64 %69, 0
  br i1 %tobool6.not222, label %error.thread, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %amdgpu_res_first.exit169
  %size12 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 1
  %size13 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 1
  %node1.i = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %src_mm, i32 0, i32 3
  %node1.i176 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 3
  %remaining.i177 = getelementptr inbounds %struct.amdgpu_res_cursor, ptr %dst_mm, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %fence.0223 = phi ptr [ null, %while.body.lr.ph ], [ %100, %cleanup.while.body_crit_edge ]
  %70 = ptrtoint ptr %src_mm to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %src_mm, align 8
  %72 = trunc i64 %71 to i32
  %conv7 = and i32 %72, 4095
  %73 = ptrtoint ptr %dst_mm to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %dst_mm, align 8
  %75 = trunc i64 %74 to i32
  %conv10 = and i32 %75, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #13
  %76 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 -1 to ptr), ptr %next, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %from) #13
  %77 = ptrtoint ptr %from to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 -1, ptr %from, align 8, !annotation !151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to) #13
  %78 = ptrtoint ptr %to to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 -1, ptr %to, align 8, !annotation !151
  %79 = call i32 @llvm.umax.i32(i32 %conv7, i32 %conv10)
  %80 = ptrtoint ptr %size12 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %size12, align 8
  %82 = ptrtoint ptr %size13 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %size13, align 8
  %84 = call i64 @llvm.umin.i64(i64 %81, i64 %83)
  %85 = call i64 @llvm.umin.i64(i64 %84, i64 %size)
  %sub = sub nuw nsw i32 2097152, %79
  %conv28 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %conv28)
  %cmp30 = icmp ult i64 %85, %conv28
  %extract.t = trunc i64 %85 to i32
  %cond35.off0 = select i1 %cmp30, i32 %extract.t, i32 %sub
  %86 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %src, align 4
  %88 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mem, align 4
  %add = add i32 %cond35.off0, 4095
  %sub39 = add i32 %add, %conv7
  %shr = lshr i32 %sub39, 12
  %call = call fastcc i32 @amdgpu_ttm_map_buffer(ptr noundef %87, ptr noundef %89, ptr noundef nonnull %src_mm, i32 noundef %shr, i32 noundef 0, ptr noundef %1, i1 noundef zeroext %tmz, ptr noundef nonnull %from)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool41.not = icmp eq i32 %call, 0
  br i1 %tobool41.not, label %if.end43, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end43:                                         ; preds = %while.body
  %90 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dst, align 4
  %92 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mem2, align 4
  %sub48 = add i32 %add, %conv10
  %shr49 = lshr i32 %sub48, 12
  %call51 = call fastcc i32 @amdgpu_ttm_map_buffer(ptr noundef %91, ptr noundef %93, ptr noundef nonnull %dst_mm, i32 noundef %shr49, i32 noundef 1, ptr noundef %1, i1 noundef zeroext %tmz, ptr noundef nonnull %to)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end43.cleanup.thread_crit_edge

if.end43.cleanup.thread_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end54:                                         ; preds = %if.end43
  %94 = ptrtoint ptr %from to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %from, align 8
  %96 = ptrtoint ptr %to to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %to, align 8
  %call56 = call i32 @amdgpu_copy_buffer(ptr noundef %1, i64 noundef %95, i64 noundef %97, i32 noundef %cond35.off0, ptr noundef %resv, ptr noundef nonnull %next, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext %tmz)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.cleanup.thread_crit_edge

if.end54.cleanup.thread_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end59:                                         ; preds = %if.end54
  %tobool.not.i170 = icmp eq ptr %fence.0223, null
  br i1 %tobool.not.i170, label %if.end59.dma_fence_put.exit_crit_edge, label %if.then.i

if.end59.dma_fence_put.exit_crit_edge:            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end59
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence.0223, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !154

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  call void @dma_fence_release(ptr noundef %refcount.i) #13
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end59.dma_fence_put.exit_crit_edge
  %99 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %next, align 4
  %conv60 = zext i32 %cond35.off0 to i64
  %101 = ptrtoint ptr %node1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %node1.i, align 8
  %103 = ptrtoint ptr %remaining to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %remaining, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %104, i64 %conv60)
  %cmp.i171 = icmp ult i64 %104, %conv60
  br i1 %cmp.i171, label %do.body3.i, label %do.end8.i, !prof !149

do.body3.i:                                       ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.end8.i:                                        ; preds = %dma_fence_put.exit
  %sub.i172 = sub i64 %104, %conv60
  %105 = ptrtoint ptr %remaining to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %sub.i172, ptr %remaining, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %104, i64 %conv60)
  %tobool11.not.i = icmp eq i64 %104, %conv60
  br i1 %tobool11.not.i, label %do.end8.i.amdgpu_res_next.exit_crit_edge, label %if.end13.i

do.end8.i.amdgpu_res_next.exit_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_next.exit

if.end13.i:                                       ; preds = %do.end8.i
  %106 = ptrtoint ptr %size12 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %size12, align 8
  %sub15.i = sub i64 %107, %conv60
  store i64 %sub15.i, ptr %size12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %conv60)
  %tobool17.not.i = icmp eq i64 %107, %conv60
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %src_mm to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %src_mm, align 8
  %add.i173 = add i64 %109, %conv60
  store i64 %add.i173, ptr %src_mm, align 8
  br label %amdgpu_res_next.exit

if.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i174 = getelementptr %struct.drm_mm_node, ptr %102, i32 1
  %110 = ptrtoint ptr %node1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %incdec.ptr.i174, ptr %node1.i, align 8
  %start21.i = getelementptr %struct.drm_mm_node, ptr %102, i32 1, i32 1
  %111 = ptrtoint ptr %start21.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %start21.i, align 8
  %shl.i175 = shl i64 %112, 12
  %113 = ptrtoint ptr %src_mm to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %shl.i175, ptr %src_mm, align 8
  %size23.i = getelementptr %struct.drm_mm_node, ptr %102, i32 1, i32 2
  %114 = ptrtoint ptr %size23.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %size23.i, align 8
  %shl24.i = shl i64 %115, 12
  %116 = call i64 @llvm.umin.i64(i64 %shl24.i, i64 %sub.i172) #13
  %117 = ptrtoint ptr %size12 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %size12, align 8
  br label %amdgpu_res_next.exit

amdgpu_res_next.exit:                             ; preds = %if.end19.i, %if.then18.i, %do.end8.i.amdgpu_res_next.exit_crit_edge
  %118 = ptrtoint ptr %node1.i176 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %node1.i176, align 8
  %120 = ptrtoint ptr %remaining.i177 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %remaining.i177, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %conv60)
  %cmp.i178 = icmp ult i64 %121, %conv60
  br i1 %cmp.i178, label %do.body3.i179, label %do.end8.i182, !prof !149

do.body3.i179:                                    ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.end8.i182:                                     ; preds = %amdgpu_res_next.exit
  %sub.i180 = sub i64 %121, %conv60
  %122 = ptrtoint ptr %remaining.i177 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %sub.i180, ptr %remaining.i177, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %conv60)
  %tobool11.not.i181 = icmp eq i64 %121, %conv60
  br i1 %tobool11.not.i181, label %do.end8.i182.cleanup_crit_edge, label %if.end13.i186

do.end8.i182.cleanup_crit_edge:                   ; preds = %do.end8.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.i186:                                    ; preds = %do.end8.i182
  %123 = ptrtoint ptr %size13 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %size13, align 8
  %sub15.i184 = sub i64 %124, %conv60
  store i64 %sub15.i184, ptr %size13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %124, i64 %conv60)
  %tobool17.not.i185 = icmp eq i64 %124, %conv60
  br i1 %tobool17.not.i185, label %if.end19.i194, label %if.then18.i188

if.then18.i188:                                   ; preds = %if.end13.i186
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %dst_mm to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %dst_mm, align 8
  %add.i187 = add i64 %126, %conv60
  store i64 %add.i187, ptr %dst_mm, align 8
  br label %cleanup

if.end19.i194:                                    ; preds = %if.end13.i186
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i189 = getelementptr %struct.drm_mm_node, ptr %119, i32 1
  %127 = ptrtoint ptr %node1.i176 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %incdec.ptr.i189, ptr %node1.i176, align 8
  %start21.i190 = getelementptr %struct.drm_mm_node, ptr %119, i32 1, i32 1
  %128 = ptrtoint ptr %start21.i190 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %start21.i190, align 8
  %shl.i191 = shl i64 %129, 12
  %130 = ptrtoint ptr %dst_mm to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %shl.i191, ptr %dst_mm, align 8
  %size23.i192 = getelementptr %struct.drm_mm_node, ptr %119, i32 1, i32 2
  %131 = ptrtoint ptr %size23.i192 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %size23.i192, align 8
  %shl24.i193 = shl i64 %132, 12
  %133 = call i64 @llvm.umin.i64(i64 %shl24.i193, i64 %sub.i180) #13
  %134 = ptrtoint ptr %size13 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %size13, align 8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end54.cleanup.thread_crit_edge, %if.end43.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %r.1.ph = phi i32 [ %call56, %if.end54.cleanup.thread_crit_edge ], [ %call51, %if.end43.cleanup.thread_crit_edge ], [ %call, %while.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %from) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #13
  br label %error

cleanup:                                          ; preds = %if.end19.i194, %if.then18.i188, %do.end8.i182.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %from) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #13
  %135 = ptrtoint ptr %remaining to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %remaining, align 8
  %tobool6.not = icmp eq i64 %136, 0
  br i1 %tobool6.not, label %cleanup.error_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.error_crit_edge:                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

error:                                            ; preds = %cleanup.error_crit_edge, %cleanup.thread
  %fence.0219 = phi ptr [ %fence.0223, %cleanup.thread ], [ %100, %cleanup.error_crit_edge ]
  %r.2 = phi i32 [ %r.1.ph, %cleanup.thread ], [ 0, %cleanup.error_crit_edge ]
  call void @mutex_unlock(ptr noundef %gtt_window_lock) #13
  %tobool69.not = icmp eq ptr %f, null
  br i1 %tobool69.not, label %error.if.end72_crit_edge, label %if.then70

error.if.end72_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

error.thread:                                     ; preds = %amdgpu_res_first.exit169
  call void @mutex_unlock(ptr noundef %gtt_window_lock) #13
  %tobool69.not231 = icmp eq ptr %f, null
  br i1 %tobool69.not231, label %error.thread.cleanup73_crit_edge, label %error.thread.dma_fence_get.exit_crit_edge

error.thread.dma_fence_get.exit_crit_edge:        ; preds = %error.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_get.exit

error.thread.cleanup73_crit_edge:                 ; preds = %error.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.then70:                                        ; preds = %error
  %tobool.not.i196 = icmp eq ptr %fence.0219, null
  br i1 %tobool.not.i196, label %if.then70.dma_fence_get.exit_crit_edge, label %if.then.i199

if.then70.dma_fence_get.exit_crit_edge:           ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_get.exit

if.then.i199:                                     ; preds = %if.then70
  %refcount.i197 = getelementptr inbounds %struct.dma_fence, ptr %fence.0219, i32 0, i32 6
  %call.i.i.i.i.i.i.i198 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i197, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcount.i197, i32 1, i32 3, i32 1) #13
  %137 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i197, ptr %refcount.i197, i32 1, ptr elementtype(i32) %refcount.i197) #13, !srcloc !157
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i199.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !149

if.then.i199.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i199
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %138 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %138)
  %.not.i.i.i.i.i200 = icmp sgt i32 %138, -1
  br i1 %.not.i.i.i.i.i200, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !154

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i199.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i199.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i197, i32 noundef %.sink.i.i.i.i.i) #13
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.then70.dma_fence_get.exit_crit_edge, %error.thread.dma_fence_get.exit_crit_edge
  %r.2235240 = phi i32 [ %r.2, %if.then70.dma_fence_get.exit_crit_edge ], [ %r.2, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge ], [ %r.2, %if.end15.sink.split.i.i.i.i.i ], [ 0, %error.thread.dma_fence_get.exit_crit_edge ]
  %fence.0219233 = phi ptr [ null, %if.then70.dma_fence_get.exit_crit_edge ], [ %fence.0219, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge ], [ %fence.0219, %if.end15.sink.split.i.i.i.i.i ], [ null, %error.thread.dma_fence_get.exit_crit_edge ]
  %139 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %fence.0219233, ptr %f, align 4
  br label %if.end72

if.end72:                                         ; preds = %dma_fence_get.exit, %error.if.end72_crit_edge
  %r.2236 = phi i32 [ %r.2235240, %dma_fence_get.exit ], [ %r.2, %error.if.end72_crit_edge ]
  %fence.0219234 = phi ptr [ %fence.0219233, %dma_fence_get.exit ], [ %fence.0219, %error.if.end72_crit_edge ]
  %tobool.not.i201 = icmp eq ptr %fence.0219234, null
  br i1 %tobool.not.i201, label %if.end72.cleanup73_crit_edge, label %if.then.i206

if.end72.cleanup73_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.then.i206:                                     ; preds = %if.end72
  %refcount.i202 = getelementptr inbounds %struct.dma_fence, ptr %fence.0219234, i32 0, i32 6
  %call.i.i.i.i.i.i.i203 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i202, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  call void @llvm.prefetch.p0(ptr %refcount.i202, i32 1, i32 3, i32 1) #13
  %140 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i202, ptr %refcount.i202, i32 1, ptr elementtype(i32) %refcount.i202) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i204 = extractvalue { i32, i32, i32 } %140, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i204)
  %cmp.i.i.i.i.i205 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i204, 1
  br i1 %cmp.i.i.i.i.i205, label %if.then.i.i210, label %if.end5.i.i.i.i.i208

if.end5.i.i.i.i.i208:                             ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i204)
  %.not.i.i.i.i.i207 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i204, 0
  br i1 %.not.i.i.i.i.i207, label %if.end5.i.i.i.i.i208.cleanup73_crit_edge, label %if.then10.i.i.i.i.i209, !prof !154

if.end5.i.i.i.i.i208.cleanup73_crit_edge:         ; preds = %if.end5.i.i.i.i.i208
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.then10.i.i.i.i.i209:                           ; preds = %if.end5.i.i.i.i.i208
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i202, i32 noundef 3) #13
  br label %cleanup73

if.then.i.i210:                                   ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  call void @dma_fence_release(ptr noundef %refcount.i202) #13
  br label %cleanup73

cleanup73:                                        ; preds = %if.then.i.i210, %if.then10.i.i.i.i.i209, %if.end5.i.i.i.i.i208.cleanup73_crit_edge, %if.end72.cleanup73_crit_edge, %error.thread.cleanup73_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %r.2236, %if.end72.cleanup73_crit_edge ], [ %r.2236, %if.end5.i.i.i.i.i208.cleanup73_crit_edge ], [ %r.2236, %if.then10.i.i.i.i.i209 ], [ %r.2236, %if.then.i.i210 ], [ 0, %error.thread.cleanup73_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dst_mm) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %src_mm) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_ttm_map_buffer(ptr nocapture noundef readonly %bo, ptr noundef readonly %mem, ptr nocapture noundef readonly %mm_cur, i32 noundef %num_pages, i32 noundef %window, ptr noundef %ring, i1 noundef zeroext %tmz, ptr nocapture noundef writeonly %addr) unnamed_addr #0 align 64 {
entry:
  %job = alloca ptr, align 4
  %fence = alloca ptr, align 4
  %dma_address114 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #13
  %2 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #13
  %3 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !151
  %buffer_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 3
  %4 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_funcs, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %7)
  %cmp = icmp ult i32 %7, 4096
  br i1 %cmp, label %do.body3, label %do.body9, !prof !149

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #13, !srcloc !158
  unreachable

do.body9:                                         ; preds = %entry
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 2
  %8 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp10 = icmp eq i32 %9, 6
  br i1 %cmp10, label %do.body18, label %do.end26, !prof !149

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #13, !srcloc !159
  unreachable

do.end26:                                         ; preds = %do.body9
  br i1 %tmz, label %do.end26.if.end32_crit_edge, label %land.lhs.true

do.end26.if.end32_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true:                                    ; preds = %do.end26
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %11)
  %cmp28.not = icmp eq i32 %11, 2147483647
  br i1 %cmp28.not, label %land.lhs.true.if.end32_crit_edge, label %if.then29

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true
  %12 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then29.amdgpu_ttm_domain_start.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

if.then29.amdgpu_ttm_domain_start.exit_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_domain_start.exit

sw.bb.i:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 8
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %vram_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 10
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb1.i ], [ %gart_start.i, %sw.bb.i ]
  %13 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vram_start.sink.i, align 8
  br label %amdgpu_ttm_domain_start.exit

amdgpu_ttm_domain_start.exit:                     ; preds = %return.sink.split.i, %if.then29.amdgpu_ttm_domain_start.exit_crit_edge
  %retval.0.i = phi i64 [ 0, %if.then29.amdgpu_ttm_domain_start.exit_crit_edge ], [ %14, %return.sink.split.i ]
  %15 = ptrtoint ptr %mm_cur to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mm_cur, align 8
  %add = add i64 %16, %retval.0.i
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %addr, align 8
  br label %cleanup137

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %do.end26.if.end32_crit_edge
  %gart_start = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 8
  %18 = ptrtoint ptr %gart_start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gart_start, align 8
  %conv = zext i32 %window to i64
  %mul33 = shl nuw nsw i64 %conv, 21
  %add34 = add i64 %19, %mul33
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add34, ptr %addr, align 8
  %21 = ptrtoint ptr %mm_cur to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mm_cur, align 8
  %and = and i64 %22, 4095
  %add36 = add i64 %and, %add34
  store i64 %add36, ptr %addr, align 8
  %23 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer_funcs, align 8
  %copy_num_dw = getelementptr inbounds %struct.amdgpu_buffer_funcs, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %copy_num_dw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %copy_num_dw, align 4
  %add39 = add i32 %26, 7
  %and40 = and i32 %add39, -8
  %mul41 = shl i32 %num_pages, 3
  %mul43 = shl i32 %and40, 2
  %add44 = add i32 %mul43, %mul41
  %call45 = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %1, i32 noundef %add44, i32 noundef 0, ptr noundef nonnull %job) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end32.cleanup137_crit_edge

if.end32.cleanup137_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup137

if.end48:                                         ; preds = %if.end32
  %conv50 = zext i32 %mul43 to i64
  %27 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ibs, align 4
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %gpu_addr, align 8
  %add51 = add i64 %32, %conv50
  %gart = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 63
  %33 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gart, align 8
  %call53 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %34) #13
  %mul55 = shl i32 %window, 12
  %conv56 = zext i32 %mul55 to i64
  %add57 = add i64 %call53, %conv56
  %35 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer_funcs, align 8
  %emit_copy_buffer = getelementptr inbounds %struct.amdgpu_buffer_funcs, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %emit_copy_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %emit_copy_buffer, align 4
  %39 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %job, align 4
  %ibs60 = getelementptr inbounds %struct.amdgpu_job, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ibs60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ibs60, align 4
  call void %38(ptr noundef %42, i64 noundef %add51, i64 noundef %add57, i32 noundef %mul41, i1 noundef zeroext false) #13
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %43 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %funcs, align 4
  %pad_ib = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %44, i32 0, i32 25
  %45 = ptrtoint ptr %pad_ib to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pad_ib, align 4
  %47 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %job, align 4
  %ibs62 = getelementptr inbounds %struct.amdgpu_job, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ibs62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ibs62, align 4
  call void %46(ptr noundef %ring, ptr noundef %50) #13
  %51 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %job, align 4
  %ibs64 = getelementptr inbounds %struct.amdgpu_job, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %ibs64 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ibs64, align 4
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %and40)
  %cmp66 = icmp ugt i32 %56, %and40
  br i1 %cmp66, label %do.end83, label %if.end48.if.end89_crit_edge, !prof !149

if.end48.if.end89_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

do.end83:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 232, i32 noundef 9, ptr noundef null) #13
  br label %if.end89

if.end89:                                         ; preds = %do.end83, %if.end48.if.end89_crit_edge
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %57 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ttm, align 8
  %tobool.not.i.i = icmp eq ptr %mem, null
  br i1 %tobool.not.i.i, label %if.end89.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge, label %land.lhs.true2.i.i

if.end89.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge: ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pde_flags.exit.i

land.lhs.true2.i.i:                               ; preds = %if.end89
  %59 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.not.i.i = icmp ne i32 %60, 0
  %spec.select.i.i = zext i1 %cmp.not.i.i to i64
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %60, label %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge [
    i32 1, label %land.lhs.true2.i.i.if.then7.i.i_crit_edge
    i32 6, label %land.lhs.true2.i.i.if.then7.i.i_crit_edge204
  ]

land.lhs.true2.i.i.if.then7.i.i_crit_edge204:     ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

land.lhs.true2.i.i.if.then7.i.i_crit_edge:        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true2.i.i.if.then7.i.i_crit_edge, %land.lhs.true2.i.i.if.then7.i.i_crit_edge204
  %caching.i.i = getelementptr inbounds %struct.ttm_tt, ptr %58, i32 0, i32 6
  %62 = ptrtoint ptr %caching.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %caching.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp9.i.i = icmp eq i32 %63, 2
  %spec.select35.v.i.i = select i1 %cmp9.i.i, i64 6, i64 2
  %spec.select35.i.i = or i64 %spec.select35.v.i.i, %spec.select.i.i
  br label %land.lhs.true15.i.i

land.lhs.true15.i.i:                              ; preds = %if.then7.i.i, %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge
  %flags.1.ph.i.i = phi i64 [ %spec.select35.i.i, %if.then7.i.i ], [ %spec.select.i.i, %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp17.i.i = icmp eq i32 %60, 2
  br i1 %cmp17.i.i, label %land.lhs.true18.i.i, label %land.lhs.true15.i.i.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge

land.lhs.true15.i.i.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge: ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pde_flags.exit.i

land.lhs.true18.i.i:                              ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %caching19.i.i = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %caching19.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %caching19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp20.i.i = icmp eq i32 %65, 2
  %or22.i.i = or i64 %flags.1.ph.i.i, 4
  %spec.select36.i.i = select i1 %cmp20.i.i, i64 %or22.i.i, i64 %flags.1.ph.i.i
  br label %amdgpu_ttm_tt_pde_flags.exit.i

amdgpu_ttm_tt_pde_flags.exit.i:                   ; preds = %land.lhs.true18.i.i, %land.lhs.true15.i.i.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge, %if.end89.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge
  %flags.2.i.i = phi i64 [ %flags.1.ph.i.i, %land.lhs.true15.i.i.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge ], [ %spec.select36.i.i, %land.lhs.true18.i.i ], [ 0, %if.end89.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge ]
  %gart_pte_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 63, i32 6
  %66 = ptrtoint ptr %gart_pte_flags.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %gart_pte_flags.i, align 8
  %or.i = or i64 %67, %flags.2.i.i
  %cmp.i.i = icmp eq ptr %58, null
  br i1 %cmp.i.i, label %amdgpu_ttm_tt_is_readonly.exit.thread.i, label %amdgpu_ttm_tt_is_readonly.exit.i

amdgpu_ttm_tt_is_readonly.exit.thread.i:          ; preds = %amdgpu_ttm_tt_pde_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %or39.i = or i64 %or.i, 96
  br label %amdgpu_ttm_tt_pte_flags.exit

amdgpu_ttm_tt_is_readonly.exit.i:                 ; preds = %amdgpu_ttm_tt_pde_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %userflags.i.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %58, i32 0, i32 5
  %68 = ptrtoint ptr %userflags.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %userflags.i.i, align 4
  %and.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i64 96, i64 32
  %spec.select.i = or i64 %spec.select.v.i, %or.i
  br label %amdgpu_ttm_tt_pte_flags.exit

amdgpu_ttm_tt_pte_flags.exit:                     ; preds = %amdgpu_ttm_tt_is_readonly.exit.i, %amdgpu_ttm_tt_is_readonly.exit.thread.i
  %70 = phi i64 [ %or39.i, %amdgpu_ttm_tt_is_readonly.exit.thread.i ], [ %spec.select.i, %amdgpu_ttm_tt_is_readonly.exit.i ]
  %or = or i64 %70, 8
  %spec.select = select i1 %tmz, i64 %or, i64 %70
  %71 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %job, align 4
  %ibs100 = getelementptr inbounds %struct.amdgpu_job, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %ibs100 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ibs100, align 4
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ptr, align 8
  %arrayidx102 = getelementptr i32, ptr %76, i32 %and40
  %77 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp104 = icmp eq i32 %78, 1
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %amdgpu_ttm_tt_pte_flags.exit
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %58, i32 0, i32 4
  %79 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dma_address, align 4
  %81 = ptrtoint ptr %mm_cur to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %mm_cur, align 8
  %shr = lshr i64 %82, 12
  %idxprom = trunc i64 %shr to i32
  %arrayidx109 = getelementptr i32, ptr %80, i32 %idxprom
  %call110 = call i32 @amdgpu_gart_map(ptr noundef %1, i64 noundef 0, i32 noundef %num_pages, ptr noundef %arrayidx109, i64 noundef %spec.select, ptr noundef %arrayidx102) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then106.if.end131_crit_edge, label %if.then106.error_free_crit_edge

if.then106.error_free_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.then106.if.end131_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

if.else:                                          ; preds = %amdgpu_ttm_tt_pte_flags.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_address114) #13
  %83 = ptrtoint ptr %mm_cur to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %mm_cur, align 8
  %vram_base_offset = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 65, i32 10
  %85 = ptrtoint ptr %vram_base_offset to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %vram_base_offset, align 8
  %add118 = add i64 %86, %84
  %conv119 = trunc i64 %add118 to i32
  %87 = ptrtoint ptr %dma_address114 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv119, ptr %dma_address114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp120197.not = icmp eq i32 %num_pages, 0
  br i1 %cmp120197.not, label %if.else.cleanup128.thread_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.cleanup128.thread_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup128.thread

cleanup128.thread:                                ; preds = %if.end126.cleanup128.thread_crit_edge, %if.else.cleanup128.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_address114) #13
  br label %if.end131

for.body:                                         ; preds = %if.end126.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.0198 = phi i32 [ %inc, %if.end126.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %shl = shl i32 %i.0198, 12
  %conv122 = zext i32 %shl to i64
  %call123 = call i32 @amdgpu_gart_map(ptr noundef %1, i64 noundef %conv122, i32 noundef 1, ptr noundef nonnull %dma_address114, i64 noundef %spec.select, ptr noundef %arrayidx102) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %cleanup128

if.end126:                                        ; preds = %for.body
  %88 = ptrtoint ptr %dma_address114 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_address114, align 4
  %add127 = add i32 %89, 4096
  store i32 %add127, ptr %dma_address114, align 4
  %inc = add nuw i32 %i.0198, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %if.end126.cleanup128.thread_crit_edge, label %if.end126.for.body_crit_edge

if.end126.for.body_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end126.cleanup128.thread_crit_edge:            ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup128.thread

cleanup128:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_address114) #13
  br label %error_free

if.end131:                                        ; preds = %cleanup128.thread, %if.then106.if.end131_crit_edge
  %90 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %job, align 4
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 7
  %call133 = call i32 @amdgpu_job_submit(ptr noundef %91, ptr noundef %entity, ptr noundef null, ptr noundef nonnull %fence) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end131.error_free_crit_edge

if.end131.error_free_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.end136:                                        ; preds = %if.end131
  %92 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %if.end136.cleanup137_crit_edge, label %if.then.i

if.end136.cleanup137_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup137

if.then.i:                                        ; preds = %if.end136
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %93, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %94 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup137_crit_edge, label %if.then10.i.i.i.i.i, !prof !154

if.end5.i.i.i.i.i.cleanup137_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup137

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %cleanup137

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  call void @dma_fence_release(ptr noundef %refcount.i) #13
  br label %cleanup137

error_free:                                       ; preds = %if.end131.error_free_crit_edge, %cleanup128, %if.then106.error_free_crit_edge
  %r.2 = phi i32 [ %call110, %if.then106.error_free_crit_edge ], [ %call133, %if.end131.error_free_crit_edge ], [ %call123, %cleanup128 ]
  %95 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %96) #13
  br label %cleanup137

cleanup137:                                       ; preds = %error_free, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup137_crit_edge, %if.end136.cleanup137_crit_edge, %if.end32.cleanup137_crit_edge, %amdgpu_ttm_domain_start.exit
  %retval.0 = phi i32 [ %r.2, %error_free ], [ 0, %amdgpu_ttm_domain_start.exit ], [ %call45, %if.end32.cleanup137_crit_edge ], [ 0, %if.end136.cleanup137_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup137_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_copy_buffer(ptr noundef %ring, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %byte_count, ptr noundef %resv, ptr noundef %fence, i1 noundef zeroext %direct_submit, i1 noundef zeroext %vm_needs_flush, i1 noundef zeroext %tmz) local_unnamed_addr #0 align 64 {
entry:
  %job = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %direct_submit, i32 2, i32 0
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #13
  %2 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !151
  br i1 %direct_submit, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ready = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 3, i32 17
  %3 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ready, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %buffer_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 3
  %5 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer_funcs, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add = add i32 %byte_count, -1
  %sub = add i32 %add, %8
  %div = udiv i32 %sub, %8
  %copy_num_dw = getelementptr inbounds %struct.amdgpu_buffer_funcs, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %copy_num_dw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %copy_num_dw, align 4
  %mul = mul i32 %10, %div
  %add8 = add i32 %mul, 7
  %and = and i32 %add8, -8
  %mul9 = shl i32 %and, 2
  %call = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %1, i32 noundef %mul9, i32 noundef %cond, ptr noundef nonnull %job) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  br i1 %vm_needs_flush, label %if.then14, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then14:                                        ; preds = %if.end12
  %pdb0_bo = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 44
  %11 = ptrtoint ptr %pdb0_bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdb0_bo, align 8
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %cond.false, label %if.then14.cond.end_crit_edge

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %gart = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 63
  %13 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gart, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then14.cond.end_crit_edge
  %cond18 = phi ptr [ %14, %cond.false ], [ %12, %if.then14.cond.end_crit_edge ]
  %call19 = call i64 @amdgpu_gmc_pd_addr(ptr noundef %cond18) #13
  %15 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %job, align 4
  %vm_pd_addr = getelementptr inbounds %struct.amdgpu_job, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %vm_pd_addr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call19, ptr %vm_pd_addr, align 8
  %vm_needs_flush20 = getelementptr inbounds %struct.amdgpu_job, ptr %16, i32 0, i32 10
  %18 = ptrtoint ptr %vm_needs_flush20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %vm_needs_flush20, align 8
  br label %if.end21

if.end21:                                         ; preds = %cond.end, %if.end12.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %resv, null
  br i1 %tobool22.not, label %if.end21.if.end28_crit_edge, label %if.then23

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  %19 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %job, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %20, i32 0, i32 2
  %call24 = call i32 @amdgpu_sync_resv(ptr noundef %1, ptr noundef %sync, ptr noundef nonnull %resv, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then26

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %call24) #13
  br label %error_free

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub)
  %cmp124.not = icmp ugt i32 %8, %sub
  br i1 %cmp124.not, label %if.end28.for.end_crit_edge, label %for.body.preheader

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %if.end28
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %src_offset.addr.0128 = phi i64 [ %add37, %for.body.for.body_crit_edge ], [ %src_offset, %for.body.preheader ]
  %i.0127 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dst_offset.addr.0126 = phi i64 [ %add39, %for.body.for.body_crit_edge ], [ %dst_offset, %for.body.preheader ]
  %byte_count.addr.0125 = phi i32 [ %sub40, %for.body.for.body_crit_edge ], [ %byte_count, %for.body.preheader ]
  %21 = call i32 @llvm.umin.i32(i32 %byte_count.addr.0125, i32 %8)
  %22 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_funcs, align 8
  %emit_copy_buffer = getelementptr inbounds %struct.amdgpu_buffer_funcs, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %emit_copy_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %emit_copy_buffer, align 4
  %26 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ibs, align 4
  call void %25(ptr noundef %29, i64 noundef %src_offset.addr.0128, i64 noundef %dst_offset.addr.0126, i32 noundef %21, i1 noundef zeroext %tmz) #13
  %conv = zext i32 %21 to i64
  %add37 = add i64 %src_offset.addr.0128, %conv
  %add39 = add i64 %dst_offset.addr.0126, %conv
  %sub40 = sub i32 %byte_count.addr.0125, %21
  %inc = add nuw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end28.for.end_crit_edge
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %30 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs, align 4
  %pad_ib = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %31, i32 0, i32 25
  %32 = ptrtoint ptr %pad_ib to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pad_ib, align 4
  %34 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %job, align 4
  %ibs41 = getelementptr inbounds %struct.amdgpu_job, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ibs41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ibs41, align 4
  call void %33(ptr noundef %ring, ptr noundef %37) #13
  %38 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %job, align 4
  %ibs43 = getelementptr inbounds %struct.amdgpu_job, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ibs43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ibs43, align 4
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %and)
  %cmp45 = icmp ugt i32 %43, %and
  br i1 %cmp45, label %do.end, label %for.end.if.end61_crit_edge, !prof !149

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1947, i32 noundef 9, ptr noundef null) #13
  br label %if.end61

if.end61:                                         ; preds = %do.end, %for.end.if.end61_crit_edge
  %44 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %job, align 4
  br i1 %direct_submit, label %if.then70, label %if.else

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %call71 = call i32 @amdgpu_job_submit_direct(ptr noundef %45, ptr noundef %ring, ptr noundef %fence) #13
  br label %if.end74

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 7
  %call73 = call i32 @amdgpu_job_submit(ptr noundef %45, ptr noundef %entity, ptr noundef null, ptr noundef %fence) #13
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then70
  %r.0 = phi i32 [ %call71, %if.then70 ], [ %call73, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool75.not = icmp eq i32 %r.0, 0
  br i1 %tobool75.not, label %if.end74.cleanup_crit_edge, label %if.end74.error_free_crit_edge

if.end74.error_free_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

error_free:                                       ; preds = %if.end74.error_free_crit_edge, %if.then26
  %r.1 = phi i32 [ %call24, %if.then26 ], [ %r.0, %if.end74.error_free_crit_edge ]
  %46 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %47) #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %r.1) #13
  br label %cleanup

cleanup:                                          ; preds = %error_free, %if.end74.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %r.1, %error_free ], [ -22, %if.then ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @amdgpu_ttm_domain_start(ptr nocapture noundef readonly %adev, i32 noundef %type) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %gart_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vram_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %sw.bb
  %vram_start.sink = phi ptr [ %vram_start, %sw.bb1 ], [ %gart_start, %sw.bb ]
  %1 = ptrtoint ptr %vram_start.sink to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %vram_start.sink, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i64 [ 0, %entry.return_crit_edge ], [ %2, %return.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ttm_tt_get_user_pages(ptr noundef %bo, ptr noundef %pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ttm1 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %ttm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttm1, align 8
  %userptr = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %userptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %userptr, align 8
  %conv = trunc i64 %3 to i32
  %notifier = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 9
  %mm2 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %mm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %range = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %range, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end34, label %do.end, !prof !154

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 670, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %mm_users.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #13, !srcloc !161
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end34.cleanup_crit_edge, label %if.end36

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36:                                         ; preds = %if.end34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@amdgpu_ttm_tt_get_user_pages, %if.then.i.i)) #13
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !163

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %5, i1 noundef zeroext false) #13
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end36
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@amdgpu_ttm_tt_get_user_pages, %if.then.i3.i)) #13
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !163

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %5, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call.i = tail call ptr @find_vma(ptr noundef nonnull %5, i32 noundef %conv) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %mmap_read_lock.exit.out_unlock_crit_edge, label %land.lhs.true.i

mmap_read_lock.exit.out_unlock_crit_edge:         ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

land.lhs.true.i:                                  ; preds = %mmap_read_lock.exit
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp.i = icmp ugt i32 %10, %conv
  br i1 %cmp.i, label %land.lhs.true.i.out_unlock_crit_edge, label %if.end48

land.lhs.true.i.out_unlock_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end48:                                         ; preds = %land.lhs.true.i
  %userflags = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %userflags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %userflags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.end48.if.end58_crit_edge, label %land.rhs

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

land.rhs:                                         ; preds = %if.end48
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 14
  %13 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_file, align 4
  %tobool50.not = icmp eq ptr %14, null
  br i1 %tobool50.not, label %land.rhs.if.end58_crit_edge, label %land.rhs.out_unlock_crit_edge, !prof !154

land.rhs.out_unlock_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

land.rhs.if.end58_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.end58:                                         ; preds = %land.rhs.if.end58_crit_edge, %if.end48.if.end58_crit_edge
  %cmp.i109 = icmp ne ptr %1, null
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %retval.0.i110 = select i1 %cmp.i109, i1 %tobool.i, i1 false
  %conv61 = and i64 %3, 4294967295
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pages, align 4
  %conv62 = zext i32 %16 to i64
  %call65 = tail call i32 @amdgpu_hmm_range_get_pages(ptr noundef %notifier, ptr noundef nonnull %5, ptr noundef %pages, i64 noundef %conv61, i64 noundef %conv62, ptr noundef %range, i1 noundef zeroext %retval.0.i110, i1 noundef zeroext true, ptr noundef null) #13
  br label %out_unlock

out_unlock:                                       ; preds = %if.end58, %land.rhs.out_unlock_crit_edge, %land.lhs.true.i.out_unlock_crit_edge, %mmap_read_lock.exit.out_unlock_crit_edge
  %r.0 = phi i32 [ %call65, %if.end58 ], [ -1, %land.rhs.out_unlock_crit_edge ], [ -14, %mmap_read_lock.exit.out_unlock_crit_edge ], [ -14, %land.lhs.true.i.out_unlock_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@amdgpu_ttm_tt_get_user_pages, %if.then.i.i111)) #13
          to label %mmap_read_unlock.exit [label %if.then.i.i111], !srcloc !163

if.then.i.i111:                                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %5, i1 noundef zeroext false) #13
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i111, %out_unlock
  tail call void @up_read(ptr noundef %mmap_lock.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool66.not = icmp eq i32 %r.0, 0
  br i1 %tobool66.not, label %mmap_read_unlock.exit.if.end83_crit_edge, label %do.body68

mmap_read_unlock.exit.if.end83_crit_edge:         ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

do.body68:                                        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_ttm_tt_get_user_pages.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_ttm_tt_get_user_pages, %if.then79)) #13
          to label %if.end83 [label %if.then79], !srcloc !163

if.then79:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amdgpu_ttm_tt_get_user_pages.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.6, i32 noundef %r.0, i32 noundef %conv) #13
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %do.body68, %mmap_read_unlock.exit.if.end83_crit_edge
  tail call void @mmput(ptr noundef nonnull %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end34.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ -14, %do.end ], [ %r.0, %if.end83 ], [ -3, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_ttm_tt_is_readonly(ptr noundef readonly %ttm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ttm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %userflags = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 5
  %0 = ptrtoint ptr %userflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %userflags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_hmm_range_get_pages(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_ttm_tt_get_user_pages_done(ptr noundef %ttm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ttm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %userptr = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 3
  %0 = ptrtoint ptr %userptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %userptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool1.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i64 noundef %1, i32 noundef %3) #13
  %range = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 7
  %4 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %range, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.land.rhs_crit_edge, label %lor.rhs

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

lor.rhs:                                          ; preds = %if.end
  %hmm_pfns = getelementptr inbounds %struct.hmm_range, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %hmm_pfns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hmm_pfns, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.rhs.land.rhs_crit_edge, label %lor.rhs.if.end36_crit_edge

lor.rhs.if.end36_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %.b68 = load i1, ptr @amdgpu_ttm_tt_get_user_pages_done.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.end36_crit_edge, label %if.then14, !prof !154

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @amdgpu_ttm_tt_get_user_pages_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 720, i32 noundef 9, ptr noundef nonnull @.str.8) #13
  br label %if.end36

if.end36:                                         ; preds = %if.then14, %land.rhs.if.end36_crit_edge, %lor.rhs.if.end36_crit_edge
  %8 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %range, align 4
  %tobool45.not = icmp eq ptr %9, null
  br i1 %tobool45.not, label %if.end36.cleanup_crit_edge, label %if.then46

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then46:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @amdgpu_hmm_range_get_pages_done(ptr noundef nonnull %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool48 = icmp eq i32 %call, 0
  %10 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %range, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end36.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ %tobool48, %if.then46 ], [ true, %if.end36.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_hmm_range_get_pages_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ttm_tt_set_user_pages(ptr nocapture noundef readonly %ttm, ptr noundef readonly %pages) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pages, null
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cond.end.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %for.body.cond.end_crit_edge ]
  %4 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttm, align 4
  %arrayidx2 = getelementptr ptr, ptr %5, i32 %i.09
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cond, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.09, 1
  %7 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pages, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %placement = alloca %struct.ttm_placement, align 4
  %placements = alloca %struct.ttm_place, align 4
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #13
  %2 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %3 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ttm, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %placement) #13
  %5 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %placements) #13
  %8 = getelementptr inbounds %struct.ttm_place, ptr %placements, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ttm_place, ptr %placements, i32 0, i32 2
  %10 = getelementptr inbounds %struct.ttm_place, ptr %placements, i32 0, i32 3
  %11 = getelementptr inbounds i8, ptr %placements, i32 12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #13
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !151
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %17)
  %cmp.not = icmp eq i32 %17, 2147483647
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @amdgpu_gmc_agp_addr(ptr noundef %bo) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %call1)
  %cmp2.not = icmp eq i64 %call1, 2147483647
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i64 %call1, 12
  %conv = trunc i64 %shr to i32
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %19, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %21 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %placement, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %placements, ptr %5, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %6, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %placements, ptr %7, align 4
  %25 = ptrtoint ptr %placements to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %placements, align 4
  %gart_size = getelementptr i8, ptr %1, i32 -13928
  %26 = ptrtoint ptr %gart_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %gart_size, align 8
  %shr8 = lshr i64 %27, 12
  %conv9 = trunc i64 %shr8 to i32
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv9, ptr %8, align 4
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %9, align 4
  %30 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resource, align 4
  %placement11 = getelementptr inbounds %struct.ttm_resource, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %placement11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %placement11, align 4
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %10, align 4
  %call13 = call i32 @ttm_bo_mem_space(ptr noundef %bo, ptr noundef nonnull %placement, ptr noundef nonnull %tmp, ptr noundef nonnull %ctx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end17, label %if.end6.cleanup_crit_edge, !prof !154

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %35 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ttm, align 8
  %37 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tmp, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end17.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge, label %land.lhs.true2.i.i

if.end17.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pde_flags.exit.i

land.lhs.true2.i.i:                               ; preds = %if.end17
  %mem_type.i.i = getelementptr inbounds %struct.ttm_resource, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mem_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i.i = icmp ne i32 %40, 0
  %spec.select.i.i = zext i1 %cmp.not.i.i to i64
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %40, label %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge [
    i32 1, label %land.lhs.true2.i.i.if.then7.i.i_crit_edge
    i32 6, label %land.lhs.true2.i.i.if.then7.i.i_crit_edge60
  ]

land.lhs.true2.i.i.if.then7.i.i_crit_edge60:      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

land.lhs.true2.i.i.if.then7.i.i_crit_edge:        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true2.i.i.if.then7.i.i_crit_edge, %land.lhs.true2.i.i.if.then7.i.i_crit_edge60
  %caching.i.i = getelementptr inbounds %struct.ttm_tt, ptr %36, i32 0, i32 6
  %42 = ptrtoint ptr %caching.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caching.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp9.i.i = icmp eq i32 %43, 2
  %spec.select35.v.i.i = select i1 %cmp9.i.i, i64 6, i64 2
  %spec.select35.i.i = or i64 %spec.select35.v.i.i, %spec.select.i.i
  br label %land.lhs.true15.i.i

land.lhs.true15.i.i:                              ; preds = %if.then7.i.i, %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge
  %flags.1.ph.i.i = phi i64 [ %spec.select35.i.i, %if.then7.i.i ], [ %spec.select.i.i, %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp17.i.i = icmp eq i32 %40, 2
  br i1 %cmp17.i.i, label %land.lhs.true18.i.i, label %land.lhs.true15.i.i.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge

land.lhs.true15.i.i.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge: ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pde_flags.exit.i

land.lhs.true18.i.i:                              ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %caching19.i.i = getelementptr inbounds %struct.ttm_resource, ptr %38, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %caching19.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %caching19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp20.i.i = icmp eq i32 %45, 2
  %or22.i.i = or i64 %flags.1.ph.i.i, 4
  %spec.select36.i.i = select i1 %cmp20.i.i, i64 %or22.i.i, i64 %flags.1.ph.i.i
  br label %amdgpu_ttm_tt_pde_flags.exit.i

amdgpu_ttm_tt_pde_flags.exit.i:                   ; preds = %land.lhs.true18.i.i, %land.lhs.true15.i.i.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge, %if.end17.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge
  %flags.2.i.i = phi i64 [ %flags.1.ph.i.i, %land.lhs.true15.i.i.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge ], [ %spec.select36.i.i, %land.lhs.true18.i.i ], [ 0, %if.end17.amdgpu_ttm_tt_pde_flags.exit.i_crit_edge ]
  %gart_pte_flags.i = getelementptr i8, ptr %1, i32 -7448
  %46 = ptrtoint ptr %gart_pte_flags.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %gart_pte_flags.i, align 8
  %or.i = or i64 %47, %flags.2.i.i
  %cmp.i.i = icmp eq ptr %36, null
  br i1 %cmp.i.i, label %amdgpu_ttm_tt_is_readonly.exit.thread.i, label %amdgpu_ttm_tt_is_readonly.exit.i

amdgpu_ttm_tt_is_readonly.exit.thread.i:          ; preds = %amdgpu_ttm_tt_pde_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %or39.i = or i64 %or.i, 96
  br label %amdgpu_ttm_tt_pte_flags.exit

amdgpu_ttm_tt_is_readonly.exit.i:                 ; preds = %amdgpu_ttm_tt_pde_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %userflags.i.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %36, i32 0, i32 5
  %48 = ptrtoint ptr %userflags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %userflags.i.i, align 4
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i64 96, i64 32
  %spec.select.i = or i64 %spec.select.v.i, %or.i
  br label %amdgpu_ttm_tt_pte_flags.exit

amdgpu_ttm_tt_pte_flags.exit:                     ; preds = %amdgpu_ttm_tt_is_readonly.exit.i, %amdgpu_ttm_tt_is_readonly.exit.thread.i
  %50 = phi i64 [ %or39.i, %amdgpu_ttm_tt_is_readonly.exit.thread.i ], [ %spec.select.i, %amdgpu_ttm_tt_is_readonly.exit.i ]
  %51 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %38, align 4
  %conv21 = zext i32 %52 to i64
  %shl = shl nuw nsw i64 %conv21, 12
  %offset = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %4, i32 0, i32 2
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %shl, ptr %offset, align 8
  %call22 = call fastcc i32 @amdgpu_ttm_gart_bind(ptr noundef %add.ptr.i, ptr noundef %bo, i64 noundef %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end31, label %if.then30, !prof !154

if.then30:                                        ; preds = %amdgpu_ttm_tt_pte_flags.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @ttm_resource_free(ptr noundef %bo, ptr noundef nonnull %tmp) #13
  br label %cleanup

if.end31:                                         ; preds = %amdgpu_ttm_tt_pte_flags.exit
  call void @amdgpu_gart_invalidate_tlb(ptr noundef %add.ptr.i) #13
  call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #13
  %54 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tmp, align 4
  %56 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resource, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end31.ttm_bo_assign_mem.exit_crit_edge, label %do.end.i, !prof !154

if.end31.ttm_bo_assign_mem.exit_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %ttm_bo_assign_mem.exit

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 192, i32 noundef 9, ptr noundef null) #13
  br label %ttm_bo_assign_mem.exit

ttm_bo_assign_mem.exit:                           ; preds = %do.end.i, %if.end31.ttm_bo_assign_mem.exit_crit_edge
  %58 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %resource, align 4
  br label %cleanup

cleanup:                                          ; preds = %ttm_bo_assign_mem.exit, %if.then30, %if.end6.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %call22, %if.then30 ], [ 0, %ttm_bo_assign_mem.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call13, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %placements) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %placement) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_agp_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_mem_space(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @amdgpu_ttm_tt_pte_flags(ptr nocapture noundef readonly %adev, ptr noundef readonly %ttm, ptr noundef readonly %mem) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %mem, null
  br i1 %tobool.not.i, label %entry.amdgpu_ttm_tt_pde_flags.exit_crit_edge, label %land.lhs.true2.i

entry.amdgpu_ttm_tt_pde_flags.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pde_flags.exit

land.lhs.true2.i:                                 ; preds = %entry
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 2
  %0 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp ne i32 %1, 0
  %spec.select.i = zext i1 %cmp.not.i to i64
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %land.lhs.true2.i.land.lhs.true15.i_crit_edge [
    i32 1, label %land.lhs.true2.i.if.then7.i_crit_edge
    i32 6, label %land.lhs.true2.i.if.then7.i_crit_edge10
  ]

land.lhs.true2.i.if.then7.i_crit_edge10:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

land.lhs.true2.i.if.then7.i_crit_edge:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

land.lhs.true2.i.land.lhs.true15.i_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15.i

if.then7.i:                                       ; preds = %land.lhs.true2.i.if.then7.i_crit_edge, %land.lhs.true2.i.if.then7.i_crit_edge10
  %caching.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 6
  %3 = ptrtoint ptr %caching.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caching.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp9.i = icmp eq i32 %4, 2
  %spec.select35.v.i = select i1 %cmp9.i, i64 6, i64 2
  %spec.select35.i = or i64 %spec.select35.v.i, %spec.select.i
  br label %land.lhs.true15.i

land.lhs.true15.i:                                ; preds = %if.then7.i, %land.lhs.true2.i.land.lhs.true15.i_crit_edge
  %flags.1.ph.i = phi i64 [ %spec.select35.i, %if.then7.i ], [ %spec.select.i, %land.lhs.true2.i.land.lhs.true15.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp17.i = icmp eq i32 %1, 2
  br i1 %cmp17.i, label %land.lhs.true18.i, label %land.lhs.true15.i.amdgpu_ttm_tt_pde_flags.exit_crit_edge

land.lhs.true15.i.amdgpu_ttm_tt_pde_flags.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pde_flags.exit

land.lhs.true18.i:                                ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  %caching19.i = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %caching19.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caching19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp20.i = icmp eq i32 %6, 2
  %or22.i = or i64 %flags.1.ph.i, 4
  %spec.select36.i = select i1 %cmp20.i, i64 %or22.i, i64 %flags.1.ph.i
  br label %amdgpu_ttm_tt_pde_flags.exit

amdgpu_ttm_tt_pde_flags.exit:                     ; preds = %land.lhs.true18.i, %land.lhs.true15.i.amdgpu_ttm_tt_pde_flags.exit_crit_edge, %entry.amdgpu_ttm_tt_pde_flags.exit_crit_edge
  %flags.2.i = phi i64 [ %flags.1.ph.i, %land.lhs.true15.i.amdgpu_ttm_tt_pde_flags.exit_crit_edge ], [ %spec.select36.i, %land.lhs.true18.i ], [ 0, %entry.amdgpu_ttm_tt_pde_flags.exit_crit_edge ]
  %gart_pte_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63, i32 6
  %7 = ptrtoint ptr %gart_pte_flags to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %gart_pte_flags, align 8
  %or = or i64 %8, %flags.2.i
  %cmp.i = icmp eq ptr %ttm, null
  br i1 %cmp.i, label %amdgpu_ttm_tt_is_readonly.exit.thread, label %amdgpu_ttm_tt_is_readonly.exit

amdgpu_ttm_tt_is_readonly.exit.thread:            ; preds = %amdgpu_ttm_tt_pde_flags.exit
  call void @__sanitizer_cov_trace_pc() #15
  %or39 = or i64 %or, 96
  br label %11

amdgpu_ttm_tt_is_readonly.exit:                   ; preds = %amdgpu_ttm_tt_pde_flags.exit
  call void @__sanitizer_cov_trace_pc() #15
  %userflags.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 5
  %9 = ptrtoint ptr %userflags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %userflags.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select.v = select i1 %tobool.i.not, i64 96, i64 32
  %spec.select = or i64 %spec.select.v, %or
  br label %11

11:                                               ; preds = %amdgpu_ttm_tt_is_readonly.exit, %amdgpu_ttm_tt_is_readonly.exit.thread
  %12 = phi i64 [ %or39, %amdgpu_ttm_tt_is_readonly.exit.thread ], [ %spec.select, %amdgpu_ttm_tt_is_readonly.exit ]
  ret i64 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_ttm_gart_bind(ptr noundef %adev, ptr nocapture noundef readonly %tbo, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ttm1 = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 7
  %0 = ptrtoint ptr %ttm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttm1, align 8
  %flags.i = getelementptr i8, ptr %tbo, i32 432
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags.i, align 8
  %and.i = lshr i64 %3, 7
  %4 = and i64 %and.i, 8
  %5 = or i64 %4, %flags
  %and = and i64 %3, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %offset18 = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %offset18 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset18, align 8
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %entry
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_address, align 8
  %call6 = tail call i32 @amdgpu_gart_bind(ptr noundef %adev, i64 noundef %7, i32 noundef 1, ptr noundef %9, i64 noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then4.if.then25_crit_edge

if.then4.if.then25_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %and10 = and i64 %5, -432345564227567617
  %10 = ptrtoint ptr %offset18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset18, align 8
  %add = add i64 %11, 4096
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_pages, align 4
  %sub = add i32 %13, -1
  %14 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_address, align 8
  %arrayidx = getelementptr i32, ptr %15, i32 1
  %call17 = tail call i32 @amdgpu_gart_bind(ptr noundef %adev, i64 noundef %add, i32 noundef %sub, ptr noundef %arrayidx, i64 noundef %and10) #13
  br label %gart_bind_fail

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %num_pages19 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %num_pages19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pages19, align 4
  %dma_address21 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %dma_address21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_address21, align 8
  %call22 = tail call i32 @amdgpu_gart_bind(ptr noundef %adev, i64 noundef %7, i32 noundef %17, ptr noundef %19, i64 noundef %5) #13
  br label %gart_bind_fail

gart_bind_fail:                                   ; preds = %if.else, %if.end9
  %r.1 = phi i32 [ %call22, %if.else ], [ %call17, %if.end9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.1)
  %tobool24.not = icmp eq i32 %r.1, 0
  br i1 %tobool24.not, label %gart_bind_fail.cleanup29_crit_edge, label %gart_bind_fail.if.then25_crit_edge

gart_bind_fail.if.then25_crit_edge:               ; preds = %gart_bind_fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

gart_bind_fail.cleanup29_crit_edge:               ; preds = %gart_bind_fail
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup29

if.then25:                                        ; preds = %gart_bind_fail.if.then25_crit_edge, %if.then4.if.then25_crit_edge
  %r.158 = phi i32 [ %r.1, %gart_bind_fail.if.then25_crit_edge ], [ %call6, %if.then4.if.then25_crit_edge ]
  %num_pages26 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %num_pages26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pages26, align 4
  %offset27 = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %offset27 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offset27, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %21, i64 noundef %23) #13
  br label %cleanup29

cleanup29:                                        ; preds = %if.then25, %gart_bind_fail.cleanup29_crit_edge
  %r.159 = phi i32 [ 0, %gart_bind_fail.cleanup29_crit_edge ], [ %r.158, %if.then25 ]
  ret i32 %r.159
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gart_invalidate_tlb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ttm_recover_gart(ptr nocapture noundef readonly %tbo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 7
  %2 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttm, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %tbo, i32 0, i32 6
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.amdgpu_ttm_tt_pte_flags.exit_crit_edge, label %land.lhs.true2.i.i

if.end.amdgpu_ttm_tt_pte_flags.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pte_flags.exit

land.lhs.true2.i.i:                               ; preds = %if.end
  %mem_type.i.i = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i.i = icmp ne i32 %7, 0
  %spec.select.i.i = zext i1 %cmp.not.i.i to i64
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %7, label %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge [
    i32 1, label %land.lhs.true2.i.i.if.then7.i.i_crit_edge
    i32 6, label %land.lhs.true2.i.i.if.then7.i.i_crit_edge11
  ]

land.lhs.true2.i.i.if.then7.i.i_crit_edge11:      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

land.lhs.true2.i.i.if.then7.i.i_crit_edge:        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true2.i.i.if.then7.i.i_crit_edge, %land.lhs.true2.i.i.if.then7.i.i_crit_edge11
  %caching.i.i = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %caching.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caching.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp9.i.i = icmp eq i32 %10, 2
  %spec.select35.v.i.i = select i1 %cmp9.i.i, i64 6, i64 2
  %spec.select35.i.i = or i64 %spec.select35.v.i.i, %spec.select.i.i
  br label %land.lhs.true15.i.i

land.lhs.true15.i.i:                              ; preds = %if.then7.i.i, %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge
  %flags.1.ph.i.i = phi i64 [ %spec.select35.i.i, %if.then7.i.i ], [ %spec.select.i.i, %land.lhs.true2.i.i.land.lhs.true15.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp17.i.i = icmp eq i32 %7, 2
  br i1 %cmp17.i.i, label %land.lhs.true18.i.i, label %land.lhs.true15.i.i.amdgpu_ttm_tt_pte_flags.exit_crit_edge

land.lhs.true15.i.i.amdgpu_ttm_tt_pte_flags.exit_crit_edge: ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pte_flags.exit

land.lhs.true18.i.i:                              ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %caching19.i.i = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %caching19.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caching19.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp20.i.i = icmp eq i32 %12, 2
  %or22.i.i = or i64 %flags.1.ph.i.i, 4
  %spec.select36.i.i = select i1 %cmp20.i.i, i64 %or22.i.i, i64 %flags.1.ph.i.i
  br label %amdgpu_ttm_tt_pte_flags.exit

amdgpu_ttm_tt_pte_flags.exit:                     ; preds = %land.lhs.true18.i.i, %land.lhs.true15.i.i.amdgpu_ttm_tt_pte_flags.exit_crit_edge, %if.end.amdgpu_ttm_tt_pte_flags.exit_crit_edge
  %flags.2.i.i = phi i64 [ %flags.1.ph.i.i, %land.lhs.true15.i.i.amdgpu_ttm_tt_pte_flags.exit_crit_edge ], [ %spec.select36.i.i, %land.lhs.true18.i.i ], [ 0, %if.end.amdgpu_ttm_tt_pte_flags.exit_crit_edge ]
  %gart_pte_flags.i = getelementptr i8, ptr %1, i32 -7448
  %13 = ptrtoint ptr %gart_pte_flags.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %gart_pte_flags.i, align 8
  %or.i = or i64 %14, %flags.2.i.i
  %userflags.i.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %userflags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %userflags.i.i, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %spec.select.v.i = select i1 %tobool.i.not.i, i64 96, i64 32
  %spec.select.i = or i64 %or.i, %spec.select.v.i
  %call3 = tail call fastcc i32 @amdgpu_ttm_gart_bind(ptr noundef %add.ptr.i, ptr noundef %tbo, i64 noundef %spec.select.i)
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_ttm_tt_pte_flags.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %amdgpu_ttm_tt_pte_flags.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ttm_tt_set_userptr(ptr noundef %bo, i64 noundef %addr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %0 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttm, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #16
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then.amdgpu_ttm_tt_create.exit.thread_crit_edge, label %if.end.i

if.then.amdgpu_ttm_tt_create.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_create.exit.thread

if.end.i:                                         ; preds = %if.then
  %gobj.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %gobj.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bo, ptr %gobj.i, align 4
  %flags.i = getelementptr i8, ptr %bo, i32 432
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %5, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 1
  %call4.i = tail call i32 @ttm_sg_tt_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %bo, i32 noundef 0, i32 noundef %..i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %amdgpu_ttm_tt_create.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %amdgpu_ttm_tt_create.exit.thread

amdgpu_ttm_tt_create.exit.thread:                 ; preds = %if.then6.i, %if.then.amdgpu_ttm_tt_create.exit.thread_crit_edge
  %6 = ptrtoint ptr %ttm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ttm, align 8
  br label %cleanup

amdgpu_ttm_tt_create.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %ttm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %ttm, align 8
  br label %if.end4

if.end4:                                          ; preds = %amdgpu_ttm_tt_create.exit, %entry.if.end4_crit_edge
  %8 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ttm, align 8
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_flags, align 4
  %or = or i32 %11, 4
  store i32 %or, ptr %page_flags, align 4
  %12 = load ptr, ptr %ttm, align 8
  %userptr = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %userptr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %addr, ptr %userptr, align 8
  %userflags = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %12, i32 0, i32 5
  %14 = ptrtoint ptr %userflags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %userflags, align 4
  %usertask = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %usertask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usertask, align 8
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %if.then8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end10_crit_edge, label %if.then10.i.i.i.i, !prof !154

if.end5.i.i.i.i.if.end10_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %if.end10

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @__put_task_struct(ptr noundef nonnull %16) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !138) #13
  %and.i26 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i26 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 75
  %22 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group_leader, align 4
  %24 = ptrtoint ptr %usertask to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %usertask, align 8
  %usage.i27 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 2
  %call.i.i.i.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i27, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage.i27, i32 1, i32 3, i32 1) #13
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i27, ptr %usage.i27, i32 1, ptr elementtype(i32) %usage.i27) #13, !srcloc !157
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !149

if.end10.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i29 = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i29, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !154

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i27, i32 noundef %.sink.i.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %amdgpu_ttm_tt_create.exit.thread
  %retval.0 = phi i32 [ -12, %amdgpu_ttm_tt_create.exit.thread ], [ 0, %if.else.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @amdgpu_ttm_tt_create(ptr noundef %bo, i32 noundef %page_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %gobj = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %gobj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bo, ptr %gobj, align 4
  %flags = getelementptr i8, ptr %bo, i32 432
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags, align 8
  %and = and i64 %3, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  %call4 = tail call i32 @ttm_sg_tt_init(ptr noundef nonnull %call7.i.i, ptr noundef %bo, i32 noundef %page_flags, i32 noundef %.) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @amdgpu_ttm_tt_get_usermm(ptr noundef readonly %ttm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ttm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %usertask = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 4
  %0 = ptrtoint ptr %usertask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usertask, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mm = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_ttm_tt_affect_userptr(ptr noundef readonly %ttm, i32 noundef %start, i32 noundef %end, ptr noundef writeonly %userptr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ttm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %userptr1 = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 3
  %0 = ptrtoint ptr %userptr1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %userptr1, align 8
  %conv = zext i32 %end to i64
  %2 = add i64 %1, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %conv)
  %.not = icmp ult i64 %2, %conv
  br i1 %.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %3 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pages, align 8
  %mul = shl i32 %4, 12
  %conv8 = zext i32 %mul to i64
  %add = add i64 %1, %conv8
  %conv9 = zext i32 %start to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv9)
  %cmp10.not = icmp ugt i64 %add, %conv9
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false6
  %tobool14.not = icmp eq ptr %userptr, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %conv17 = trunc i64 %1 to i32
  %5 = ptrtoint ptr %userptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv17, ptr %userptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end13.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false6.cleanup_crit_edge ], [ true, %if.then15 ], [ true, %if.end13.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_ttm_tt_is_userptr(ptr noundef readonly %ttm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ttm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %userptr = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 3
  %0 = ptrtoint ptr %userptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %userptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp ne i64 %1, 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool.not, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @amdgpu_ttm_tt_pde_flags(ptr nocapture noundef readonly %ttm, ptr noundef readonly %mem) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mem, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %land.lhs.true2

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true2:                                   ; preds = %entry
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 2
  %0 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp ne i32 %1, 0
  %spec.select = zext i1 %cmp.not to i64
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %land.lhs.true2.land.lhs.true15_crit_edge [
    i32 1, label %land.lhs.true2.if.then7_crit_edge
    i32 6, label %land.lhs.true2.if.then7_crit_edge40
  ]

land.lhs.true2.if.then7_crit_edge40:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

land.lhs.true2.if.then7_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7

land.lhs.true2.land.lhs.true15_crit_edge:         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15

if.then7:                                         ; preds = %land.lhs.true2.if.then7_crit_edge, %land.lhs.true2.if.then7_crit_edge40
  %caching = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 6
  %3 = ptrtoint ptr %caching to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp9 = icmp eq i32 %4, 2
  %spec.select35.v = select i1 %cmp9, i64 6, i64 2
  %spec.select35 = or i64 %spec.select35.v, %spec.select
  %5 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %mem_type, align 4
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.then7, %land.lhs.true2.land.lhs.true15_crit_edge
  %6 = phi i32 [ %.pr, %if.then7 ], [ %1, %land.lhs.true2.land.lhs.true15_crit_edge ]
  %flags.1.ph = phi i64 [ %spec.select35, %if.then7 ], [ %spec.select, %land.lhs.true2.land.lhs.true15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp17 = icmp eq i32 %6, 2
  br i1 %cmp17, label %land.lhs.true18, label %land.lhs.true15.if.end23_crit_edge

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  %caching19 = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %caching19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %caching19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp20 = icmp eq i32 %8, 2
  %or22 = or i64 %flags.1.ph, 4
  %spec.select36 = select i1 %cmp20, i64 %or22, i64 %flags.1.ph
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true18, %land.lhs.true15.if.end23_crit_edge, %entry.if.end23_crit_edge
  %flags.2 = phi i64 [ %flags.1.ph, %land.lhs.true15.if.end23_crit_edge ], [ %spec.select36, %land.lhs.true18 ], [ 0, %entry.if.end23_crit_edge ]
  ret i64 %flags.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ttm_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mman = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68
  %gtt_window_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 6
  tail call void @__mutex_init(ptr noundef %gtt_window_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @amdgpu_ttm_init.__key) #13
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %anon_inode = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 12
  %2 = ptrtoint ptr %anon_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %anon_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %vma_offset_manager = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 33
  %6 = ptrtoint ptr %vma_offset_manager to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vma_offset_manager, align 4
  %need_swiotlb = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 14
  %8 = ptrtoint ptr %need_swiotlb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %need_swiotlb, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %dma_mask.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_mask.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool2.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.dma_addressing_limited.exit_crit_edge

land.lhs.true.i.i.dma_addressing_limited.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_addressing_limited.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  br label %dma_addressing_limited.exit

dma_addressing_limited.exit:                      ; preds = %if.end.i.i, %land.lhs.true.i.i.dma_addressing_limited.exit_crit_edge
  %retval.0.i.i = phi i64 [ 4294967295, %if.end.i.i ], [ %13, %land.lhs.true.i.i.dma_addressing_limited.exit_crit_edge ]
  %bus_dma_limit.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %bus_dma_limit.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bus_dma_limit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp1.i = icmp eq i64 %15, 0
  %16 = tail call i64 @llvm.umin.i64(i64 %retval.0.i.i, i64 %15) #13
  %cond11.i = select i1 %cmp1.i, i64 %retval.0.i.i, i64 %16
  %call12.i = tail call i64 @dma_get_required_mask(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %cond11.i, i64 %call12.i)
  %cmp13.i = icmp ult i64 %cond11.i, %call12.i
  %call5 = tail call i32 @ttm_device_init(ptr noundef %mman, ptr noundef nonnull @amdgpu_bo_driver, ptr noundef %1, ptr noundef %5, ptr noundef %7, i1 noundef zeroext %tobool, i1 noundef zeroext %cmp13.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %if.then

if.then:                                          ; preds = %dma_addressing_limited.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %call5) #13
  br label %cleanup

if.end:                                           ; preds = %dma_addressing_limited.exit
  %initialized = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 1
  %17 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %initialized, align 8
  %call8 = tail call i32 @amdgpu_vram_mgr_init(ptr noundef %adev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_vis_vram_limit to i32))
  %18 = load i32, ptr @amdgpu_vis_vram_limit, align 4
  %conv = sext i32 %18 to i64
  %mul12 = shl nsw i64 %conv, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %visible_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  %19 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul12, i64 %20)
  %cmp14.not = icmp ugt i64 %mul12, %20
  br i1 %cmp14.not, label %land.lhs.true.if.end19_crit_edge, label %if.then16

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %mul12, ptr %visible_vram_size, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext false)
  %visible_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  %22 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %visible_vram_size.i, align 8
  %fw_vram_usage_va.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 25
  %24 = ptrtoint ptr %fw_vram_usage_va.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %fw_vram_usage_va.i, align 4
  %fw_vram_usage_reserved_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 24
  %25 = ptrtoint ptr %fw_vram_usage_reserved_bo.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %fw_vram_usage_reserved_bo.i, align 8
  %fw_vram_usage_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 23
  %26 = ptrtoint ptr %fw_vram_usage_size.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %fw_vram_usage_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp.i = icmp eq i64 %27, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %23)
  %cmp5.i = icmp ugt i64 %27, %23
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %if.end19.if.end23_crit_edge, label %amdgpu_ttm_fw_reserve_vram_init.exit

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

amdgpu_ttm_fw_reserve_vram_init.exit:             ; preds = %if.end19
  %fw_vram_usage_start_offset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 22
  %28 = ptrtoint ptr %fw_vram_usage_start_offset.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fw_vram_usage_start_offset.i, align 8
  %call.i = tail call i32 @amdgpu_bo_create_kernel_at(ptr noundef %adev, i64 noundef %29, i64 noundef %27, i32 noundef 4, ptr noundef %fw_vram_usage_reserved_bo.i, ptr noundef %fw_vram_usage_va.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %amdgpu_ttm_fw_reserve_vram_init.exit.if.end23_crit_edge, label %amdgpu_ttm_fw_reserve_vram_init.exit.cleanup_crit_edge

amdgpu_ttm_fw_reserve_vram_init.exit.cleanup_crit_edge: ; preds = %amdgpu_ttm_fw_reserve_vram_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

amdgpu_ttm_fw_reserve_vram_init.exit.if.end23_crit_edge: ; preds = %amdgpu_ttm_fw_reserve_vram_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %amdgpu_ttm_fw_reserve_vram_init.exit.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  %discovery_bin = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 19
  %30 = ptrtoint ptr %discovery_bin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %discovery_bin, align 8
  %tobool25.not = icmp eq ptr %31, null
  br i1 %tobool25.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  %mem_train_ctx.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %32 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then26.if.end2.i_crit_edge

if.then26.if.end2.i_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2.i

if.then.i:                                        ; preds = %if.then26
  %call.i184 = tail call zeroext i1 @amdgpu_atomfirmware_mem_training_supported(ptr noundef %adev) #13
  br i1 %call.i184, label %if.then.i.if.end2.i_crit_edge, label %if.else.i

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.48) #13
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.else.i, %if.then.i.if.end2.i_crit_edge, %if.then26.if.end2.i_crit_edge
  %mem_train_support.0.off0.i = phi i1 [ false, %if.then26.if.end2.i_crit_edge ], [ false, %if.else.i ], [ true, %if.then.i.if.end2.i_crit_edge ]
  %call3.i = tail call i32 @amdgpu_atomfirmware_get_fw_reserved_fb_size(ptr noundef %adev) #13
  %discovery_tmr_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not.i = icmp eq i32 %call3.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 65536, i32 %call3.i
  %34 = ptrtoint ptr %discovery_tmr_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select.i, ptr %discovery_tmr_size.i, align 4
  br i1 %mem_train_support.0.off0.i, label %if.then12.i, label %if.end2.i.if.end18.i_crit_edge

if.end2.i.if.end18.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.end2.i
  %35 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40, i32 1
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %mc_vram_size.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 2
  %37 = ptrtoint ptr %mc_vram_size.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mc_vram_size.i.i, align 8
  %conv.i.i = zext i32 %spec.select.i to i64
  %39 = xor i64 %conv.i.i, -1
  %add.i.i = add i64 %38, %39
  %and.i.i = and i64 %add.i.i, -1048576
  %c2p_train_data_offset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40, i32 3
  %40 = ptrtoint ptr %c2p_train_data_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %and.i.i, ptr %c2p_train_data_offset.i.i, align 8
  %sub4.i.i = add i64 %38, -32768
  %p2c_train_data_offset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40, i32 2
  %41 = ptrtoint ptr %p2c_train_data_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub4.i.i, ptr %p2c_train_data_offset.i.i, align 8
  %42 = ptrtoint ptr %mem_train_ctx.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 4096, ptr %mem_train_ctx.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.51, i64 noundef 4096, i64 noundef %sub4.i.i, i64 noundef %and.i.i) #13
  %43 = ptrtoint ptr %c2p_train_data_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %c2p_train_data_offset.i.i, align 8
  %45 = ptrtoint ptr %mem_train_ctx.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %mem_train_ctx.i, align 8
  %c2p_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40, i32 4
  %call13.i = tail call i32 @amdgpu_bo_create_kernel_at(ptr noundef %adev, i64 noundef %44, i64 noundef %46, i32 noundef 4, ptr noundef %c2p_bo.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49, i32 noundef %call13.i) #13
  %init.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40, i32 5
  %47 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %init.i.i, align 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %c2p_bo.i, ptr noundef null, ptr noundef null) #13
  %48 = ptrtoint ptr %c2p_bo.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %c2p_bo.i, align 8
  br label %cleanup

if.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  %init.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40, i32 5
  %49 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %init.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end17.i, %if.end2.i.if.end18.i_crit_edge
  %real_vram_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %50 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %real_vram_size.i, align 8
  %52 = ptrtoint ptr %discovery_tmr_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %discovery_tmr_size.i, align 4
  %conv.i = zext i32 %53 to i64
  %sub.i = sub i64 %51, %conv.i
  %discovery_memory.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 21
  %call25.i = tail call i32 @amdgpu_bo_create_kernel_at(ptr noundef %adev, i64 noundef %sub.i, i64 noundef %conv.i, i32 noundef 4, ptr noundef %discovery_memory.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end18.i.if.end31_crit_edge, label %if.then27.i

if.end18.i.if.end31_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then27.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50, i32 noundef %call25.i) #13
  tail call void @amdgpu_bo_free_kernel(ptr noundef %discovery_memory.i, ptr noundef null, ptr noundef null) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end18.i.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %stolen_vga_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 11
  %54 = ptrtoint ptr %stolen_vga_size to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %stolen_vga_size, align 8
  %stolen_vga_memory = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 12
  %call34 = tail call i32 @amdgpu_bo_create_kernel_at(ptr noundef %adev, i64 noundef 0, i64 noundef %55, i32 noundef 4, ptr noundef %stolen_vga_memory, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %56 = ptrtoint ptr %stolen_vga_size to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %stolen_vga_size, align 8
  %stolen_extended_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 13
  %58 = ptrtoint ptr %stolen_extended_size to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %stolen_extended_size, align 8
  %stolen_extended_memory = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 14
  %call42 = tail call i32 @amdgpu_bo_create_kernel_at(ptr noundef %adev, i64 noundef %57, i64 noundef %59, i32 noundef 4, ptr noundef %stolen_extended_memory, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %stolen_reserved_offset = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 17
  %60 = ptrtoint ptr %stolen_reserved_offset to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %stolen_reserved_offset, align 8
  %stolen_reserved_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 18
  %62 = ptrtoint ptr %stolen_reserved_size to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %stolen_reserved_size, align 8
  %stolen_reserved_memory = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 16
  %call49 = tail call i32 @amdgpu_bo_create_kernel_at(ptr noundef %adev, i64 noundef %61, i64 noundef %63, i32 noundef 4, ptr noundef %stolen_reserved_memory, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.end55, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end55:                                         ; preds = %if.end45
  %real_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %64 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %real_vram_size, align 8
  %div180 = lshr i64 %65, 20
  %conv57 = trunc i64 %div180 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv57) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_gtt_size to i32))
  %66 = load i32, ptr @amdgpu_gtt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp59 = icmp eq i32 %66, -1
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #13
  %67 = call ptr @memset(ptr %si, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %si) #13
  %mc_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 2
  %68 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %mc_vram_size, align 8
  %70 = call i64 @llvm.umax.i64(i64 %69, i64 3221225472)
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2
  %71 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %totalram, align 4
  %conv66 = zext i32 %72 to i64
  %mem_unit = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 12
  %73 = ptrtoint ptr %mem_unit to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mem_unit, align 4
  %conv67 = zext i32 %74 to i64
  %mul68 = mul nuw nsw i64 %conv66, 3
  %mul69 = mul i64 %mul68, %conv67
  %div70182 = lshr i64 %mul69, 2
  %75 = call i64 @llvm.umin.i64(i64 %70, i64 %div70182)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #13
  br label %if.end79

if.else:                                          ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  %conv78 = sext i32 %66 to i64
  %shl = shl nsw i64 %conv78, 20
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then61
  %gtt_size.0 = phi i64 [ %75, %if.then61 ], [ %shl, %if.else ]
  %call80 = call i32 @amdgpu_gtt_mgr_init(ptr noundef %adev, i64 noundef %gtt_size.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.end86, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #13
  br label %cleanup

do.end86:                                         ; preds = %if.end79
  %div88181 = lshr i64 %gtt_size.0, 20
  %conv89 = trunc i64 %div88181 to i32
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv89) #17
  %call91 = call i32 @amdgpu_preempt_mgr_init(ptr noundef %adev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.then93

if.then93:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end94:                                         ; preds = %do.end86
  %gds = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 114
  %76 = ptrtoint ptr %gds to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %gds, align 8
  %call.i.i = call i32 @ttm_range_man_init_nocheck(ptr noundef %mman, i32 noundef 3, i1 noundef zeroext false, i32 noundef %77) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool97.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool97.not, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end99:                                         ; preds = %if.end94
  %gws_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 114, i32 1
  %78 = ptrtoint ptr %gws_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %gws_size, align 4
  %call.i.i187 = call i32 @ttm_range_man_init_nocheck(ptr noundef %mman, i32 noundef 4, i1 noundef zeroext false, i32 noundef %79) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187)
  %tobool103.not = icmp eq i32 %call.i.i187, 0
  br i1 %tobool103.not, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end105:                                        ; preds = %if.end99
  %oa_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 114, i32 2
  %80 = ptrtoint ptr %oa_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %oa_size, align 8
  %call.i.i189 = call i32 @ttm_range_man_init_nocheck(ptr noundef %mman, i32 noundef 5, i1 noundef zeroext false, i32 noundef %81) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i189)
  %tobool109.not = icmp eq i32 %call.i.i189, 0
  br i1 %tobool109.not, label %if.end105.cleanup_crit_edge, label %if.then110

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then110:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %if.end105.cleanup_crit_edge, %if.then104, %if.then98, %if.then93, %if.then82, %if.end45.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then27.i, %if.then15.i, %amdgpu_ttm_fw_reserve_vram_init.exit.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %call8, %if.then10 ], [ %call80, %if.then82 ], [ %call91, %if.then93 ], [ %call.i.i, %if.then98 ], [ %call.i.i187, %if.then104 ], [ %call.i.i189, %if.then110 ], [ %call.i, %amdgpu_ttm_fw_reserve_vram_init.exit.cleanup_crit_edge ], [ %call34, %if.end31.cleanup_crit_edge ], [ %call42, %if.end37.cleanup_crit_edge ], [ %call49, %if.end45.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ], [ %call25.i, %if.then27.i ], [ %call13.i, %if.then15.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_vram_mgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %adev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %sched = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %initialized = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 1
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup34_crit_edge, label %lor.lhs.false

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup34

lor.lhs.false:                                    ; preds = %entry
  %in_gpu_reset.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %in_gpu_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %in_gpu_reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup34_crit_edge

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup34

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %buffer_funcs_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 5
  %6 = ptrtoint ptr %buffer_funcs_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer_funcs_enabled, align 8, !range !148
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %frombool)
  %cmp = icmp eq i8 %7, %frombool
  br i1 %cmp, label %lor.lhs.false4.cleanup34_crit_edge, label %if.end

lor.lhs.false4.cleanup34_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup34

if.end:                                           ; preds = %lor.lhs.false4
  br i1 %enable, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #13
  %buffer_funcs_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %8 = ptrtoint ptr %buffer_funcs_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer_funcs_ring, align 4
  %sched13 = getelementptr inbounds %struct.amdgpu_ring, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sched13, ptr %sched, align 4
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 7
  %call15 = call i32 @drm_sched_entity_init(ptr noundef %entity, i32 noundef 3, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23.critedge, label %if.then17

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %call15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #13
  br label %cleanup34

if.else:                                          ; preds = %if.end
  %entity21 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 7
  tail call void @drm_sched_entity_destroy(ptr noundef %entity21) #13
  %move = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %move to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %move, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.dma_fence_put.exit_crit_edge, label %if.then.i

if.else.dma_fence_put.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.else
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %12, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !154

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @dma_fence_release(ptr noundef %refcount.i) #13
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.else.dma_fence_put.exit_crit_edge
  %14 = ptrtoint ptr %move to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %move, align 8
  %visible_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  br label %if.end28

if.end23.critedge:                                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #13
  %real_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  br label %if.end28

if.end28:                                         ; preds = %if.end23.critedge, %dma_fence_put.exit
  %size.0.in = phi ptr [ %real_vram_size, %if.end23.critedge ], [ %visible_vram_size, %dma_fence_put.exit ]
  %15 = ptrtoint ptr %size.0.in to i32
  call void @__asan_load8_noabort(i32 %15)
  %size.0 = load i64, ptr %size.0.in, align 8
  %shr = lshr i64 %size.0, 12
  %size29 = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %size29 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shr, ptr %size29, align 8
  %17 = ptrtoint ptr %buffer_funcs_enabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %buffer_funcs_enabled, align 8
  br label %cleanup34

cleanup34:                                        ; preds = %if.end28, %if.then17, %lor.lhs.false4.cleanup34_crit_edge, %lor.lhs.false.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel_at(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gtt_mgr_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_preempt_mgr_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ttm_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #13
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !151
  %mman = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68
  %initialized = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 1
  %1 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %initialized, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %init.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40, i32 5
  %3 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %init.i, align 4
  %c2p_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 40, i32 4
  tail call void @amdgpu_bo_free_kernel(ptr noundef %c2p_bo.i, ptr noundef null, ptr noundef null) #13
  %4 = ptrtoint ptr %c2p_bo.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %c2p_bo.i, align 8
  %stolen_vga_memory = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 12
  tail call void @amdgpu_bo_free_kernel(ptr noundef %stolen_vga_memory, ptr noundef null, ptr noundef null) #13
  %stolen_extended_memory = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 14
  tail call void @amdgpu_bo_free_kernel(ptr noundef %stolen_extended_memory, ptr noundef null, ptr noundef null) #13
  %discovery_memory = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 21
  tail call void @amdgpu_bo_free_kernel(ptr noundef %discovery_memory, ptr noundef null, ptr noundef null) #13
  %stolen_reserved_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 18
  %5 = ptrtoint ptr %stolen_reserved_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %stolen_reserved_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool5.not = icmp eq i64 %6, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %stolen_reserved_memory = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 16
  tail call void @amdgpu_bo_free_kernel(ptr noundef %stolen_reserved_memory, ptr noundef null, ptr noundef null) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %fw_vram_usage_reserved_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 24
  %fw_vram_usage_va.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 25
  tail call void @amdgpu_bo_free_kernel(ptr noundef %fw_vram_usage_reserved_bo.i, ptr noundef null, ptr noundef %fw_vram_usage_va.i) #13
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call10 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #13
  br i1 %call10, label %if.then11, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then11:                                        ; preds = %if.end8
  %aper_base_kaddr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 2
  %7 = ptrtoint ptr %aper_base_kaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aper_base_kaddr, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.then11.if.end17_crit_edge, label %if.then14

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  call void @iounmap(ptr noundef nonnull %8) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11.if.end17_crit_edge
  %9 = ptrtoint ptr %aper_base_kaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %aper_base_kaddr, align 4
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %11) #13
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.end8.if.end20_crit_edge
  call void @amdgpu_vram_mgr_fini(ptr noundef %adev) #13
  call void @amdgpu_gtt_mgr_fini(ptr noundef %adev) #13
  call void @amdgpu_preempt_mgr_fini(ptr noundef %adev) #13
  %call.i = call i32 @ttm_range_man_fini_nocheck(ptr noundef %mman, i32 noundef 3) #13
  %call.i53 = call i32 @ttm_range_man_fini_nocheck(ptr noundef %mman, i32 noundef 4) #13
  %call.i54 = call i32 @ttm_range_man_fini_nocheck(ptr noundef %mman, i32 noundef 5) #13
  call void @ttm_device_fini(ptr noundef %mman) #13
  %12 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %initialized, align 8
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vram_mgr_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gtt_mgr_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_preempt_mgr_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_device_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_resv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_fill_buffer(ptr noundef %bo, i32 noundef %src_data, ptr noundef %resv, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  %job = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %buffer_funcs = getelementptr i8, ptr %1, i32 2928
  %2 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_funcs, align 8
  %fill_max_bytes = getelementptr inbounds %struct.amdgpu_buffer_funcs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fill_max_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fill_max_bytes, align 4
  %buffer_funcs_ring = getelementptr i8, ptr %1, i32 2932
  %6 = ptrtoint ptr %buffer_funcs_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_funcs_ring, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #13
  %8 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !151
  %buffer_funcs_enabled = getelementptr i8, ptr %1, i32 2936
  %9 = ptrtoint ptr %buffer_funcs_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buffer_funcs_enabled, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mem_type, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %14, label %if.end.if.end16_crit_edge [
    i32 6, label %if.then4
    i32 1, label %if.then10
  ]

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %call12 = tail call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16thread-pre-split, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16thread-pre-split:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %resource, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16thread-pre-split, %if.end.if.end16_crit_edge
  %17 = phi ptr [ %.pr, %if.end16thread-pre-split ], [ %12, %if.end.if.end16_crit_edge ]
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_pages, align 4
  %shl = shl i32 %19, 12
  %conv = zext i32 %shl to i64
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end16.amdgpu_res_first.exit_crit_edge, label %lor.lhs.false.i

if.end16.amdgpu_res_first.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

lor.lhs.false.i:                                  ; preds = %if.end16
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %lor.lhs.false.i.amdgpu_res_first.exit_crit_edge, label %do.end50.i

lor.lhs.false.i.amdgpu_res_first.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

do.end50.i:                                       ; preds = %lor.lhs.false.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %17, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %17, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size51103.i, align 8
  %shl52104.i.mask = and i64 %23, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl52104.i.mask)
  %cmp53.not105.i.not = icmp eq i64 %shl52104.i.mask, 0
  br i1 %cmp53.not105.i.not, label %do.end50.i.while.body.i_crit_edge, label %do.end50.i.while.end.i_crit_edge

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %24 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %25, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end50.i.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ 0, %do.end50.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %size51.lcssa.i = phi ptr [ %size51103.i, %do.end50.i.while.end.i_crit_edge ], [ %size51.i, %while.body.i.while.end.i_crit_edge ]
  %26 = ptrtoint ptr %size51.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size51.lcssa.i, align 8
  %shl62.i = shl i64 %27, 12
  %sub63.i = sub i64 %shl62.i, %start.addr.0.lcssa.i
  %28 = tail call i64 @llvm.umin.i64(i64 %sub63.i, i64 %conv) #13
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.end.i, %lor.lhs.false.i.amdgpu_res_first.exit_crit_edge, %if.end16.amdgpu_res_first.exit_crit_edge
  %cursor.sroa.43.0 = phi ptr [ %node.0.lcssa.i, %while.end.i ], [ null, %lor.lhs.false.i.amdgpu_res_first.exit_crit_edge ], [ null, %if.end16.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.16.0 = phi i64 [ %28, %while.end.i ], [ %conv, %lor.lhs.false.i.amdgpu_res_first.exit_crit_edge ], [ %conv, %if.end16.amdgpu_res_first.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool21.not534 = icmp eq i32 %shl, 0
  br i1 %tobool21.not534, label %amdgpu_res_first.exit.while.end_crit_edge, label %while.body.lr.ph

amdgpu_res_first.exit.while.end_crit_edge:        ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %amdgpu_res_first.exit
  %conv22 = zext i32 %5 to i64
  %add = add nsw i64 %conv22, -1
  br label %while.body

while.body:                                       ; preds = %amdgpu_res_next.exit.while.body_crit_edge, %while.body.lr.ph
  %num_loops.0538 = phi i32 [ 0, %while.body.lr.ph ], [ %conv215, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.16.1537 = phi i64 [ %cursor.sroa.16.0, %while.body.lr.ph ], [ %cursor.sroa.16.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.31.1536 = phi i64 [ %conv, %while.body.lr.ph ], [ %sub.i424, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.43.1535 = phi ptr [ %cursor.sroa.43.0, %while.body.lr.ph ], [ %cursor.sroa.43.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %sub = add i64 %add, %cursor.sroa.16.1537
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp196 = icmp ult i64 %sub, 4294967296
  br i1 %cmp196, label %if.then200, label %if.else206, !prof !154

if.then200:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv201 = trunc i64 %sub to i32
  %div204 = udiv i32 %conv201, %5
  br label %if.end210

if.else206:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %sub) #18, !srcloc !164
  %asmresult1.i = extractvalue { i64, i64 } %29, 1
  %extract.t531 = trunc i64 %asmresult1.i to i32
  br label %if.end210

if.end210:                                        ; preds = %if.else206, %if.then200
  %_tmp.0.off0 = phi i32 [ %div204, %if.then200 ], [ %extract.t531, %if.else206 ]
  %conv215 = add i32 %_tmp.0.off0, %num_loops.0538
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.31.1536, i64 %cursor.sroa.16.1537)
  %cmp.i423 = icmp ult i64 %cursor.sroa.31.1536, %cursor.sroa.16.1537
  br i1 %cmp.i423, label %do.body3.i, label %do.end8.i, !prof !149

do.body3.i:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.end8.i:                                        ; preds = %if.end210
  %sub.i424 = sub i64 %cursor.sroa.31.1536, %cursor.sroa.16.1537
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.31.1536, i64 %cursor.sroa.16.1537)
  %tobool11.not.i = icmp eq i64 %cursor.sroa.31.1536, %cursor.sroa.16.1537
  br i1 %tobool11.not.i, label %do.end8.i.amdgpu_res_next.exit_crit_edge, label %if.end19.i

do.end8.i.amdgpu_res_next.exit_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_next.exit

if.end19.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i425 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.43.1535, i32 1
  %size23.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.43.1535, i32 1, i32 2
  %30 = ptrtoint ptr %size23.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size23.i, align 8
  %shl24.i = shl i64 %31, 12
  %32 = tail call i64 @llvm.umin.i64(i64 %shl24.i, i64 %sub.i424) #13
  br label %amdgpu_res_next.exit

amdgpu_res_next.exit:                             ; preds = %if.end19.i, %do.end8.i.amdgpu_res_next.exit_crit_edge
  %cursor.sroa.43.2 = phi ptr [ %cursor.sroa.43.1535, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %incdec.ptr.i425, %if.end19.i ]
  %cursor.sroa.16.2 = phi i64 [ %cursor.sroa.16.1537, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %32, %if.end19.i ]
  %tobool21.not = icmp eq i64 %sub.i424, 0
  br i1 %tobool21.not, label %amdgpu_res_next.exit.while.end_crit_edge, label %amdgpu_res_next.exit.while.body_crit_edge

amdgpu_res_next.exit.while.body_crit_edge:        ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

amdgpu_res_next.exit.while.end_crit_edge:         ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %amdgpu_res_next.exit.while.end_crit_edge, %amdgpu_res_first.exit.while.end_crit_edge
  %num_loops.0.lcssa = phi i32 [ 0, %amdgpu_res_first.exit.while.end_crit_edge ], [ %conv215, %amdgpu_res_next.exit.while.end_crit_edge ]
  %33 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer_funcs, align 8
  %fill_num_dw = getelementptr inbounds %struct.amdgpu_buffer_funcs, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %fill_num_dw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fill_num_dw, align 4
  %mul219 = mul i32 %36, %num_loops.0.lcssa
  %add220 = add i32 %mul219, 64
  %mul221 = shl i32 %add220, 2
  %call222 = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %add.ptr.i, i32 noundef %mul221, i32 noundef 0, ptr noundef nonnull %job) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.end225, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end225:                                        ; preds = %while.end
  %tobool226.not = icmp eq ptr %resv, null
  br i1 %tobool226.not, label %if.end225.if.end232_crit_edge, label %if.then227

if.end225.if.end232_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end232

if.then227:                                       ; preds = %if.end225
  %37 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %job, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %38, i32 0, i32 2
  %call228 = call i32 @amdgpu_sync_resv(ptr noundef %add.ptr.i, ptr noundef %sync, ptr noundef nonnull %resv, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.then227.if.end232_crit_edge, label %if.then230

if.then227.if.end232_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end232

if.then230:                                       ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %call228) #13
  br label %error_free

if.end232:                                        ; preds = %if.then227.if.end232_crit_edge, %if.end225.if.end232_crit_edge
  %39 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resource, align 4
  %tobool.not.i427 = icmp eq ptr %40, null
  br i1 %tobool.not.i427, label %if.end232.amdgpu_res_first.exit476_crit_edge, label %lor.lhs.false.i430

if.end232.amdgpu_res_first.exit476_crit_edge:     ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit476

lor.lhs.false.i430:                               ; preds = %if.end232
  %mem_type.i428 = getelementptr inbounds %struct.ttm_resource, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %mem_type.i428 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mem_type.i428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i429 = icmp eq i32 %42, 0
  %num_pages.i434 = getelementptr inbounds %struct.ttm_resource, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %num_pages.i434 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_pages.i434, align 4
  %shl.i435 = shl i32 %44, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %shl.i435)
  %cmp5.i437 = icmp ugt i32 %shl, %shl.i435
  br i1 %cmp.i429, label %land.rhs.critedge.i438, label %do.body28.i448

land.rhs.critedge.i438:                           ; preds = %lor.lhs.false.i430
  br i1 %cmp5.i437, label %do.end.i443, label %land.rhs.critedge.i438.amdgpu_res_first.exit476_crit_edge, !prof !149

land.rhs.critedge.i438.amdgpu_res_first.exit476_crit_edge: ; preds = %land.rhs.critedge.i438
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit476

do.end.i443:                                      ; preds = %land.rhs.critedge.i438
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 62, i32 noundef 9, ptr noundef null) #13
  br label %amdgpu_res_first.exit476

do.body28.i448:                                   ; preds = %lor.lhs.false.i430
  br i1 %cmp5.i437, label %do.body42.i449, label %do.end50.i454, !prof !149

do.body42.i449:                                   ; preds = %do.body28.i448
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end50.i454:                                    ; preds = %do.body28.i448
  %mm_nodes.i450 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %40, i32 0, i32 1
  %size51103.i451 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %40, i32 1, i32 0, i32 4
  %45 = ptrtoint ptr %size51103.i451 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %size51103.i451, align 8
  %shl52104.i452.mask = and i64 %46, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl52104.i452.mask)
  %cmp53.not105.i453.not = icmp eq i64 %shl52104.i452.mask, 0
  br i1 %cmp53.not105.i453.not, label %do.end50.i454.while.body.i463_crit_edge, label %do.end50.i454.while.end.i475_crit_edge

do.end50.i454.while.end.i475_crit_edge:           ; preds = %do.end50.i454
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i475

do.end50.i454.while.body.i463_crit_edge:          ; preds = %do.end50.i454
  br label %while.body.i463

while.body.i463:                                  ; preds = %while.body.i463.while.body.i463_crit_edge, %do.end50.i454.while.body.i463_crit_edge
  %shl52108.i455 = phi i64 [ %shl52.i461, %while.body.i463.while.body.i463_crit_edge ], [ 0, %do.end50.i454.while.body.i463_crit_edge ]
  %start.addr.0107.i456 = phi i64 [ %sub.i459, %while.body.i463.while.body.i463_crit_edge ], [ 0, %do.end50.i454.while.body.i463_crit_edge ]
  %node.0106.i457 = phi ptr [ %incdec.ptr.i458, %while.body.i463.while.body.i463_crit_edge ], [ %mm_nodes.i450, %do.end50.i454.while.body.i463_crit_edge ]
  %incdec.ptr.i458 = getelementptr %struct.drm_mm_node, ptr %node.0106.i457, i32 1
  %sub.i459 = sub i64 %start.addr.0107.i456, %shl52108.i455
  %size51.i460 = getelementptr %struct.drm_mm_node, ptr %node.0106.i457, i32 1, i32 2
  %47 = ptrtoint ptr %size51.i460 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %size51.i460, align 8
  %shl52.i461 = shl i64 %48, 12
  %cmp53.not.i462 = icmp ult i64 %sub.i459, %shl52.i461
  br i1 %cmp53.not.i462, label %while.body.i463.while.end.i475_crit_edge, label %while.body.i463.while.body.i463_crit_edge

while.body.i463.while.body.i463_crit_edge:        ; preds = %while.body.i463
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i463

while.body.i463.while.end.i475_crit_edge:         ; preds = %while.body.i463
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i475

while.end.i475:                                   ; preds = %while.body.i463.while.end.i475_crit_edge, %do.end50.i454.while.end.i475_crit_edge
  %node.0.lcssa.i464 = phi ptr [ %mm_nodes.i450, %do.end50.i454.while.end.i475_crit_edge ], [ %incdec.ptr.i458, %while.body.i463.while.end.i475_crit_edge ]
  %start.addr.0.lcssa.i465 = phi i64 [ 0, %do.end50.i454.while.end.i475_crit_edge ], [ %sub.i459, %while.body.i463.while.end.i475_crit_edge ]
  %size51.lcssa.i466 = phi ptr [ %size51103.i451, %do.end50.i454.while.end.i475_crit_edge ], [ %size51.i460, %while.body.i463.while.end.i475_crit_edge ]
  %start57.i467 = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i464, i32 0, i32 1
  %49 = ptrtoint ptr %start57.i467 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %start57.i467, align 8
  %shl58.i468 = shl i64 %50, 12
  %add59.i469 = add i64 %shl58.i468, %start.addr.0.lcssa.i465
  %51 = ptrtoint ptr %size51.lcssa.i466 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %size51.lcssa.i466, align 8
  %shl62.i470 = shl i64 %52, 12
  %sub63.i471 = sub i64 %shl62.i470, %start.addr.0.lcssa.i465
  %53 = call i64 @llvm.umin.i64(i64 %sub63.i471, i64 %conv) #13
  br label %amdgpu_res_first.exit476

amdgpu_res_first.exit476:                         ; preds = %while.end.i475, %do.end.i443, %land.rhs.critedge.i438.amdgpu_res_first.exit476_crit_edge, %if.end232.amdgpu_res_first.exit476_crit_edge
  %cursor.sroa.43.3 = phi ptr [ null, %do.end.i443 ], [ null, %land.rhs.critedge.i438.amdgpu_res_first.exit476_crit_edge ], [ %node.0.lcssa.i464, %while.end.i475 ], [ null, %if.end232.amdgpu_res_first.exit476_crit_edge ]
  %cursor.sroa.16.3 = phi i64 [ %conv, %do.end.i443 ], [ %conv, %land.rhs.critedge.i438.amdgpu_res_first.exit476_crit_edge ], [ %53, %while.end.i475 ], [ %conv, %if.end232.amdgpu_res_first.exit476_crit_edge ]
  %cursor.sroa.0.3 = phi i64 [ 0, %do.end.i443 ], [ 0, %land.rhs.critedge.i438.amdgpu_res_first.exit476_crit_edge ], [ %add59.i469, %while.end.i475 ], [ 0, %if.end232.amdgpu_res_first.exit476_crit_edge ]
  br i1 %tobool21.not534, label %amdgpu_res_first.exit476.while.end257_crit_edge, label %while.body238.lr.ph

amdgpu_res_first.exit476.while.end257_crit_edge:  ; preds = %amdgpu_res_first.exit476
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end257

while.body238.lr.ph:                              ; preds = %amdgpu_res_first.exit476
  %conv240 = zext i32 %5 to i64
  %vram_start.i = getelementptr i8, ptr %1, i32 -13904
  %gart_start.i = getelementptr i8, ptr %1, i32 -13920
  br label %while.body238

while.body238:                                    ; preds = %amdgpu_res_next.exit496.while.body238_crit_edge, %while.body238.lr.ph
  %cursor.sroa.0.4543 = phi i64 [ %cursor.sroa.0.3, %while.body238.lr.ph ], [ %cursor.sroa.0.5, %amdgpu_res_next.exit496.while.body238_crit_edge ]
  %cursor.sroa.16.4542 = phi i64 [ %cursor.sroa.16.3, %while.body238.lr.ph ], [ %cursor.sroa.16.5, %amdgpu_res_next.exit496.while.body238_crit_edge ]
  %cursor.sroa.31.3541 = phi i64 [ %conv, %while.body238.lr.ph ], [ %sub.i481, %amdgpu_res_next.exit496.while.body238_crit_edge ]
  %cursor.sroa.43.4540 = phi ptr [ %cursor.sroa.43.3, %while.body238.lr.ph ], [ %cursor.sroa.43.5, %amdgpu_res_next.exit496.while.body238_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.16.4542, i64 %conv240)
  %cmp242 = icmp ult i64 %cursor.sroa.16.4542, %conv240
  %extract.t = trunc i64 %cursor.sroa.16.4542 to i32
  %cond247.off0 = select i1 %cmp242, i32 %extract.t, i32 %5
  %54 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resource, align 4
  %mem_type251 = getelementptr inbounds %struct.ttm_resource, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %mem_type251 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mem_type251, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %57, label %while.body238.amdgpu_ttm_domain_start.exit_crit_edge [
    i32 1, label %while.body238.return.sink.split.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

while.body238.return.sink.split.i_crit_edge:      ; preds = %while.body238
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split.i

while.body238.amdgpu_ttm_domain_start.exit_crit_edge: ; preds = %while.body238
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_domain_start.exit

sw.bb1.i:                                         ; preds = %while.body238
  call void @__sanitizer_cov_trace_pc() #15
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %while.body238.return.sink.split.i_crit_edge
  %vram_start.sink.i = phi ptr [ %vram_start.i, %sw.bb1.i ], [ %gart_start.i, %while.body238.return.sink.split.i_crit_edge ]
  %59 = ptrtoint ptr %vram_start.sink.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %vram_start.sink.i, align 8
  br label %amdgpu_ttm_domain_start.exit

amdgpu_ttm_domain_start.exit:                     ; preds = %return.sink.split.i, %while.body238.amdgpu_ttm_domain_start.exit_crit_edge
  %retval.0.i = phi i64 [ 0, %while.body238.amdgpu_ttm_domain_start.exit_crit_edge ], [ %60, %return.sink.split.i ]
  %add253 = add i64 %retval.0.i, %cursor.sroa.0.4543
  %61 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer_funcs, align 8
  %emit_fill_buffer = getelementptr inbounds %struct.amdgpu_buffer_funcs, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %emit_fill_buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %emit_fill_buffer, align 4
  %65 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ibs, align 4
  call void %64(ptr noundef %68, i32 noundef %src_data, i64 noundef %add253, i32 noundef %cond247.off0) #13
  %conv256 = zext i32 %cond247.off0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.31.3541, i64 %conv256)
  %cmp.i479 = icmp ult i64 %cursor.sroa.31.3541, %conv256
  br i1 %cmp.i479, label %do.body3.i480, label %do.end8.i483, !prof !149

do.body3.i480:                                    ; preds = %amdgpu_ttm_domain_start.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.end8.i483:                                     ; preds = %amdgpu_ttm_domain_start.exit
  %sub.i481 = sub i64 %cursor.sroa.31.3541, %conv256
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.31.3541, i64 %conv256)
  %tobool11.not.i482 = icmp eq i64 %cursor.sroa.31.3541, %conv256
  br i1 %tobool11.not.i482, label %do.end8.i483.amdgpu_res_next.exit496_crit_edge, label %if.end13.i487

do.end8.i483.amdgpu_res_next.exit496_crit_edge:   ; preds = %do.end8.i483
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_next.exit496

if.end13.i487:                                    ; preds = %do.end8.i483
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.16.4542, i64 %conv256)
  %tobool17.not.i486 = icmp eq i64 %cursor.sroa.16.4542, %conv256
  br i1 %tobool17.not.i486, label %if.end19.i495, label %if.then18.i489

if.then18.i489:                                   ; preds = %if.end13.i487
  call void @__sanitizer_cov_trace_pc() #15
  %sub15.i485 = sub i64 %cursor.sroa.16.4542, %conv256
  %add.i488 = add i64 %cursor.sroa.0.4543, %conv256
  br label %amdgpu_res_next.exit496

if.end19.i495:                                    ; preds = %if.end13.i487
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i490 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.43.4540, i32 1
  %start21.i491 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.43.4540, i32 1, i32 1
  %69 = ptrtoint ptr %start21.i491 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %start21.i491, align 8
  %shl.i492 = shl i64 %70, 12
  %size23.i493 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.43.4540, i32 1, i32 2
  %71 = ptrtoint ptr %size23.i493 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %size23.i493, align 8
  %shl24.i494 = shl i64 %72, 12
  %73 = call i64 @llvm.umin.i64(i64 %shl24.i494, i64 %sub.i481) #13
  br label %amdgpu_res_next.exit496

amdgpu_res_next.exit496:                          ; preds = %if.end19.i495, %if.then18.i489, %do.end8.i483.amdgpu_res_next.exit496_crit_edge
  %cursor.sroa.43.5 = phi ptr [ %cursor.sroa.43.4540, %do.end8.i483.amdgpu_res_next.exit496_crit_edge ], [ %incdec.ptr.i490, %if.end19.i495 ], [ %cursor.sroa.43.4540, %if.then18.i489 ]
  %cursor.sroa.16.5 = phi i64 [ %cursor.sroa.16.4542, %do.end8.i483.amdgpu_res_next.exit496_crit_edge ], [ %73, %if.end19.i495 ], [ %sub15.i485, %if.then18.i489 ]
  %cursor.sroa.0.5 = phi i64 [ %cursor.sroa.0.4543, %do.end8.i483.amdgpu_res_next.exit496_crit_edge ], [ %shl.i492, %if.end19.i495 ], [ %add.i488, %if.then18.i489 ]
  %tobool237.not = icmp eq i64 %sub.i481, 0
  br i1 %tobool237.not, label %amdgpu_res_next.exit496.while.end257_crit_edge, label %amdgpu_res_next.exit496.while.body238_crit_edge

amdgpu_res_next.exit496.while.body238_crit_edge:  ; preds = %amdgpu_res_next.exit496
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body238

amdgpu_res_next.exit496.while.end257_crit_edge:   ; preds = %amdgpu_res_next.exit496
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end257

while.end257:                                     ; preds = %amdgpu_res_next.exit496.while.end257_crit_edge, %amdgpu_res_first.exit476.while.end257_crit_edge
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %7, i32 0, i32 1
  %74 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %funcs, align 4
  %pad_ib = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %75, i32 0, i32 25
  %76 = ptrtoint ptr %pad_ib to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pad_ib, align 4
  %78 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %job, align 4
  %ibs258 = getelementptr inbounds %struct.amdgpu_job, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ibs258 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ibs258, align 4
  call void %77(ptr noundef %7, ptr noundef %81) #13
  %82 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %job, align 4
  %ibs260 = getelementptr inbounds %struct.amdgpu_job, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %ibs260 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ibs260, align 4
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %add220)
  %cmp262 = icmp ugt i32 %87, %add220
  br i1 %cmp262, label %do.end, label %while.end257.if.end282_crit_edge, !prof !149

while.end257.if.end282_crit_edge:                 ; preds = %while.end257
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end282

do.end:                                           ; preds = %while.end257
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2038, i32 noundef 9, ptr noundef null) #13
  br label %if.end282

if.end282:                                        ; preds = %do.end, %while.end257.if.end282_crit_edge
  %88 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %job, align 4
  %entity = getelementptr i8, ptr %1, i32 3032
  %call291 = call i32 @amdgpu_job_submit(ptr noundef %89, ptr noundef %entity, ptr noundef null, ptr noundef %fence) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %if.end282.cleanup_crit_edge, label %if.end282.error_free_crit_edge

if.end282.error_free_crit_edge:                   ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_free

if.end282.cleanup_crit_edge:                      ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

error_free:                                       ; preds = %if.end282.error_free_crit_edge, %if.then230
  %r.0 = phi i32 [ %call228, %if.then230 ], [ %call291, %if.end282.error_free_crit_edge ]
  %90 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %91) #13
  br label %cleanup

cleanup:                                          ; preds = %error_free, %if.end282.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %r.0, %error_free ], [ -22, %if.then ], [ %call12, %if.then10.cleanup_crit_edge ], [ %call222, %while.end.cleanup_crit_edge ], [ 0, %if.end282.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_ttm_evict_resources(ptr noundef %adev, i32 noundef %mem_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_type.off = add i32 %mem_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mem_type.off)
  %switch = icmp ult i32 %mem_type.off, 5
  br i1 %switch, label %ttm_manager_type.exit, label %sw.default

ttm_manager_type.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mman = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68
  %arrayidx.i = getelementptr %struct.ttm_device, ptr %mman, i32 0, i32 3, i32 %mem_type
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %call3 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %mman, ptr noundef %1) #13
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %ttm_manager_type.exit
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call3, %ttm_manager_type.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_ttm_debugfs_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  %mc_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 2
  %4 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mc_vram_size, align 8
  tail call void @debugfs_create_file_size(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_ttm_vram_fops, i64 noundef %5) #13
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_ttm_iomem_fops) #13
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_mm_vram_table_fops) #13
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_mm_tt_table_fops) #13
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_mm_gds_table_fops) #13
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_mm_gws_table_fops) #13
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_mm_oa_table_fops) #13
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %adev, ptr noundef nonnull @amdgpu_ttm_page_pool_fops) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_file_size(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_map(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_bind(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_sg_tt_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ttm_tt_populate(ptr noundef %bdev, ptr noundef %ttm, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %userptr = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 3
  %0 = ptrtoint ptr %userptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %userptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #16
  %sg = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %3 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %sg, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  %. = select i1 %tobool3.not, i32 -12, i32 0
  br label %cleanup

if.end5:                                          ; preds = %entry
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %4 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %pool = getelementptr i8, ptr %bdev, i32 156
  %call10 = tail call i32 @ttm_pool_alloc(ptr noundef %pool, ptr noundef %ttm, ptr noundef %ctx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond.preheader, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp27.not = icmp eq i32 %7, 0
  br i1 %cmp27.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_mapping = getelementptr inbounds %struct.ttm_device, ptr %bdev, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %dev_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_mapping, align 8
  %10 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ttm, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.028
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %mapping, align 4
  %inc = add nuw i32 %i.028, 1
  %15 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pages, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 0, %if.end5.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_ttm_tt_unpopulate(ptr noundef %bdev, ptr noundef %ttm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amdgpu_ttm_backend_unbind(ptr noundef %bdev, ptr noundef %ttm)
  %userptr = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 3
  %0 = ptrtoint ptr %userptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %userptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %num_pages.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %2 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not.i = icmp eq i32 %3, 0
  br i1 %cmp8.not.i, label %if.then.amdgpu_ttm_tt_set_user_pages.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.amdgpu_ttm_tt_set_user_pages.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_set_user_pages.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttm, align 4
  %arrayidx2.i = getelementptr ptr, ptr %5, i32 %i.09.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx2.i, align 4
  %inc.i = add nuw i32 %i.09.i, 1
  %7 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pages.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.amdgpu_ttm_tt_set_user_pages.exit_crit_edge

for.body.i.amdgpu_ttm_tt_set_user_pages.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_set_user_pages.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

amdgpu_ttm_tt_set_user_pages.exit:                ; preds = %for.body.i.amdgpu_ttm_tt_set_user_pages.exit_crit_edge, %if.then.amdgpu_ttm_tt_set_user_pages.exit_crit_edge
  %sg = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %9 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sg, align 4
  tail call void @kfree(ptr noundef %10) #13
  %11 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sg, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %12 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_flags, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %14 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp19.not = icmp eq i32 %15, 0
  br i1 %cmp19.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ttm, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.020
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mapping, align 4
  %inc = add nuw i32 %i.020, 1
  %21 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_pages, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pool = getelementptr i8, ptr %bdev, i32 156
  tail call void @ttm_pool_free(ptr noundef %pool, ptr noundef %ttm) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %amdgpu_ttm_tt_set_user_pages.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_ttm_backend_destroy(ptr nocapture noundef readnone %bdev, ptr noundef %ttm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %usertask = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 4
  %0 = ptrtoint ptr %usertask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usertask, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !154

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  tail call void @__put_task_struct(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @ttm_tt_fini(ptr noundef %ttm) #13
  tail call void @kfree(ptr noundef %ttm) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @amdgpu_ttm_bo_eviction_valuable(ptr noundef %bo, ptr noundef %place) #0 align 64 {
entry:
  %resv_cursor = alloca %struct.dma_resv_iter, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %num_pages1 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_pages1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resv_cursor) #13
  %4 = getelementptr inbounds i8, ptr %resv_cursor, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp eq i32 %9, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %bo, i32 -72
  %call4 = tail call zeroext i1 @amdgpu_vm_evictable(ptr noundef %add.ptr.i) #13
  br i1 %call4, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %10 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resv, align 8
  %12 = ptrtoint ptr %resv_cursor to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %resv_cursor, align 4
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %resv_cursor, i32 0, i32 1
  %13 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %all_fences2.i, align 4
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %resv_cursor, i32 0, i32 2
  %14 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fence.i, align 4
  %call7 = call ptr @dma_resv_iter_first(ptr noundef nonnull %resv_cursor) #13
  %tobool.not66 = icmp eq ptr %call7, null
  br i1 %tobool.not66, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %call12 = call ptr @dma_resv_iter_next(ptr noundef nonnull %resv_cursor) #13
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %mem_type14 = getelementptr inbounds %struct.ttm_resource, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mem_type14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mem_type14, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %18, label %sw.epilog [
    i32 6, label %for.end.cleanup_crit_edge
    i32 1, label %sw.bb15
    i32 2, label %sw.bb22
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb15:                                          ; preds = %for.end
  %call16 = call zeroext i1 @amdgpu_bo_is_amdgpu_bo(ptr noundef %bo) #13
  br i1 %call16, label %land.lhs.true17, label %sw.bb15.if.end21_crit_edge

sw.bb15.if.end21_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true17:                                  ; preds = %sw.bb15
  %flags.i = getelementptr i8, ptr %bo, i32 432
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true17.if.end21_crit_edge, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true17.if.end21_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true17.if.end21_crit_edge, %sw.bb15.if.end21_crit_edge
  br label %cleanup

sw.bb22:                                          ; preds = %for.end
  %conv = zext i32 %3 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %sw.bb22.amdgpu_res_first.exit_crit_edge, label %do.body28.i

sw.bb22.amdgpu_res_first.exit_crit_edge:          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

do.body28.i:                                      ; preds = %sw.bb22
  %num_pages30.i = getelementptr inbounds %struct.ttm_resource, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %num_pages30.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pages30.i, align 4
  %shl31.i = shl i32 %23, 12
  %conv32.i = zext i32 %shl31.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv32.i)
  %cmp33.i = icmp ugt i64 %shl, %conv32.i
  br i1 %cmp33.i, label %do.body42.i, label %do.end50.i, !prof !149

do.body42.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end50.i:                                       ; preds = %do.body28.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %16, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %16, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size51103.i, align 8
  %shl52104.i.mask = and i64 %25, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl52104.i.mask)
  %cmp53.not105.i.not = icmp eq i64 %shl52104.i.mask, 0
  br i1 %cmp53.not105.i.not, label %do.end50.i.while.body.i_crit_edge, label %do.end50.i.while.end.i_crit_edge

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %26 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %27, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end50.i.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ 0, %do.end50.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %size51.lcssa.i = phi ptr [ %size51103.i, %do.end50.i.while.end.i_crit_edge ], [ %size51.i, %while.body.i.while.end.i_crit_edge ]
  %start57.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i, i32 0, i32 1
  %28 = ptrtoint ptr %start57.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start57.i, align 8
  %shl58.i = shl i64 %29, 12
  %add59.i = add i64 %shl58.i, %start.addr.0.lcssa.i
  %30 = ptrtoint ptr %size51.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size51.lcssa.i, align 8
  %shl62.i = shl i64 %31, 12
  %sub63.i = sub i64 %shl62.i, %start.addr.0.lcssa.i
  %32 = call i64 @llvm.umin.i64(i64 %sub63.i, i64 %shl) #13
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.end.i, %sw.bb22.amdgpu_res_first.exit_crit_edge
  %cursor.sroa.24.0 = phi ptr [ %node.0.lcssa.i, %while.end.i ], [ null, %sw.bb22.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.10.0 = phi i64 [ %32, %while.end.i ], [ %shl, %sw.bb22.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.0.0 = phi i64 [ %add59.i, %while.end.i ], [ 0, %sw.bb22.amdgpu_res_first.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool24.not67 = icmp eq i32 %3, 0
  br i1 %tobool24.not67, label %amdgpu_res_first.exit.cleanup_crit_edge, label %while.body.lr.ph

amdgpu_res_first.exit.cleanup_crit_edge:          ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %amdgpu_res_first.exit
  %33 = ptrtoint ptr %place to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %place, align 4
  %conv25 = zext i32 %34 to i64
  %lpfn = getelementptr inbounds %struct.ttm_place, ptr %place, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %amdgpu_res_next.exit.while.body_crit_edge, %while.body.lr.ph
  %cursor.sroa.0.171 = phi i64 [ %cursor.sroa.0.0, %while.body.lr.ph ], [ %cursor.sroa.0.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.10.170 = phi i64 [ %cursor.sroa.10.0, %while.body.lr.ph ], [ %cursor.sroa.10.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.18.169 = phi i64 [ %shl, %while.body.lr.ph ], [ %sub.i59, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.24.168 = phi ptr [ %cursor.sroa.24.0, %while.body.lr.ph ], [ %cursor.sroa.24.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %add = add i64 %cursor.sroa.0.171, %cursor.sroa.10.170
  %shr = lshr i64 %add, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv25)
  %cmp26 = icmp ugt i64 %shr, %conv25
  br i1 %cmp26, label %land.lhs.true28, label %while.body.if.end38_crit_edge

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true28:                                  ; preds = %while.body
  %35 = ptrtoint ptr %lpfn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lpfn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool29.not = icmp eq i32 %36, 0
  %conv32 = zext i32 %36 to i64
  %shr34 = lshr i64 %cursor.sroa.0.171, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr34, i64 %conv32)
  %cmp35.not = icmp ult i64 %shr34, %conv32
  %or.cond = select i1 %tobool29.not, i1 true, i1 %cmp35.not
  br i1 %or.cond, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end38_crit_edge

land.lhs.true28.if.end38_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true28.if.end38_crit_edge, %while.body.if.end38_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.18.169, i64 %cursor.sroa.10.170)
  %cmp.i58 = icmp ult i64 %cursor.sroa.18.169, %cursor.sroa.10.170
  br i1 %cmp.i58, label %do.body3.i, label %do.end8.i, !prof !149

do.body3.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.end8.i:                                        ; preds = %if.end38
  %sub.i59 = sub i64 %cursor.sroa.18.169, %cursor.sroa.10.170
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.18.169, i64 %cursor.sroa.10.170)
  %tobool11.not.i = icmp eq i64 %cursor.sroa.18.169, %cursor.sroa.10.170
  br i1 %tobool11.not.i, label %do.end8.i.amdgpu_res_next.exit_crit_edge, label %if.end19.i

do.end8.i.amdgpu_res_next.exit_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_next.exit

if.end19.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i60 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.24.168, i32 1
  %start21.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.24.168, i32 1, i32 1
  %37 = ptrtoint ptr %start21.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start21.i, align 8
  %shl.i61 = shl i64 %38, 12
  %size23.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.24.168, i32 1, i32 2
  %39 = ptrtoint ptr %size23.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %size23.i, align 8
  %shl24.i = shl i64 %40, 12
  %41 = call i64 @llvm.umin.i64(i64 %shl24.i, i64 %sub.i59) #13
  br label %amdgpu_res_next.exit

amdgpu_res_next.exit:                             ; preds = %if.end19.i, %do.end8.i.amdgpu_res_next.exit_crit_edge
  %cursor.sroa.24.2 = phi ptr [ %cursor.sroa.24.168, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %incdec.ptr.i60, %if.end19.i ]
  %cursor.sroa.10.2 = phi i64 [ %cursor.sroa.10.170, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %41, %if.end19.i ]
  %cursor.sroa.0.2 = phi i64 [ %cursor.sroa.0.171, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %shl.i61, %if.end19.i ]
  %tobool24.not = icmp eq i64 %sub.i59, 0
  br i1 %tobool24.not, label %amdgpu_res_next.exit.cleanup_crit_edge, label %amdgpu_res_next.exit.while.body_crit_edge

amdgpu_res_next.exit.while.body_crit_edge:        ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

amdgpu_res_next.exit.cleanup_crit_edge:           ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = call zeroext i1 @ttm_bo_eviction_valuable(ptr noundef %bo, ptr noundef %place) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %amdgpu_res_next.exit.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %amdgpu_res_first.exit.cleanup_crit_edge, %if.end21, %land.lhs.true17.cleanup_crit_edge, %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call40, %sw.epilog ], [ true, %if.end21 ], [ true, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %for.end.cleanup_crit_edge ], [ false, %land.lhs.true17.cleanup_crit_edge ], [ false, %amdgpu_res_first.exit.cleanup_crit_edge ], [ true, %land.lhs.true28.cleanup_crit_edge ], [ false, %amdgpu_res_next.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resv_cursor) #13
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_evict_flags(ptr noundef %bo, ptr nocapture noundef writeonly %placement) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %type = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %placement, align 4
  %num_busy_placement = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 2
  %5 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %num_busy_placement, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @amdgpu_bo_is_amdgpu_bo(ptr noundef %bo) #13
  br i1 %call1, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %placement3 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 1
  %6 = ptrtoint ptr %placement3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @amdgpu_evict_flags.placements, ptr %placement3, align 4
  %busy_placement = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 3
  %7 = ptrtoint ptr %busy_placement to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @amdgpu_evict_flags.placements, ptr %busy_placement, align 4
  %8 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %placement, align 4
  %num_busy_placement5 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 2
  %9 = ptrtoint ptr %num_busy_placement5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %num_busy_placement5, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr.i67 = getelementptr i8, ptr %bo, i32 -72
  %flags = getelementptr i8, ptr %bo, i32 432
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %flags, align 8
  %and = and i64 %11, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %placement, align 4
  %num_busy_placement10 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 2
  %13 = ptrtoint ptr %num_busy_placement10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %num_busy_placement10, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %17, label %sw.default [
    i32 3, label %if.end11.sw.bb_crit_edge
    i32 4, label %if.end11.sw.bb_crit_edge68
    i32 5, label %if.end11.sw.bb_crit_edge69
    i32 2, label %sw.bb14
  ]

if.end11.sw.bb_crit_edge69:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end11.sw.bb_crit_edge68:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end11.sw.bb_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

sw.bb:                                            ; preds = %if.end11.sw.bb_crit_edge, %if.end11.sw.bb_crit_edge68, %if.end11.sw.bb_crit_edge69
  %19 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %placement, align 4
  %num_busy_placement13 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 2
  %20 = ptrtoint ptr %num_busy_placement13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %num_busy_placement13, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end11
  %buffer_funcs_enabled = getelementptr i8, ptr %1, i32 2936
  %21 = ptrtoint ptr %buffer_funcs_enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buffer_funcs_enabled, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not = icmp eq i8 %22, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @amdgpu_bo_placement_from_domain(ptr noundef %add.ptr.i67, i32 noundef 1) #13
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb14
  %gmc = getelementptr i8, ptr %1, i32 -13976
  %call17 = tail call fastcc zeroext i1 @amdgpu_gmc_vram_full_visible(ptr noundef %gmc)
  br i1 %call17, label %if.else.if.else33_crit_edge, label %land.lhs.true

if.else.if.else33_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else33

land.lhs.true:                                    ; preds = %if.else
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags, align 8
  %and19 = and i64 %24, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %tobool20.not = icmp eq i64 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %land.lhs.true.if.else33_crit_edge

land.lhs.true.if.else33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else33

land.lhs.true21:                                  ; preds = %land.lhs.true
  %call22 = tail call fastcc zeroext i1 @amdgpu_bo_in_cpu_visible_vram(ptr noundef %add.ptr.i67)
  br i1 %call22, label %if.then23, label %land.lhs.true21.if.else33_crit_edge

land.lhs.true21.if.else33_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else33

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @amdgpu_bo_placement_from_domain(ptr noundef %add.ptr.i67, i32 noundef 7) #13
  %visible_vram_size = getelementptr i8, ptr %1, i32 -13960
  %25 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %visible_vram_size, align 8
  %shr = lshr i64 %26, 12
  %conv = trunc i64 %shr to i32
  %placements = getelementptr i8, ptr %bo, i32 -64
  %27 = ptrtoint ptr %placements to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %placements, align 8
  %lpfn = getelementptr i8, ptr %bo, i32 -60
  %28 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %lpfn, align 4
  %arrayidx28 = getelementptr i8, ptr %bo, i32 -48
  %busy_placement30 = getelementptr i8, ptr %bo, i32 -4
  %29 = ptrtoint ptr %busy_placement30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx28, ptr %busy_placement30, align 4
  %num_busy_placement32 = getelementptr i8, ptr %bo, i32 -8
  %30 = ptrtoint ptr %num_busy_placement32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %num_busy_placement32, align 8
  br label %sw.epilog

if.else33:                                        ; preds = %land.lhs.true21.if.else33_crit_edge, %land.lhs.true.if.else33_crit_edge, %if.else.if.else33_crit_edge
  tail call void @amdgpu_bo_placement_from_domain(ptr noundef %add.ptr.i67, i32 noundef 3) #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @amdgpu_bo_placement_from_domain(ptr noundef %add.ptr.i67, i32 noundef 1) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else33, %if.then23, %if.then16
  %placement37 = getelementptr i8, ptr %bo, i32 -16
  %31 = call ptr @memcpy(ptr %placement, ptr %placement37, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.then8, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_bo_move(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %ctx, ptr noundef %new_mem, ptr nocapture noundef writeonly %hop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %new_mem, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %3, label %entry.if.end4_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 6, label %entry.if.then_crit_edge253
  ]

entry.if.then_crit_edge253:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge253
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %5 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev, align 8
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %7 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ttm, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -17736
  %tobool.not.i = icmp eq ptr %new_mem, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %bound.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %bound.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bound.i, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end3.i:                                        ; preds = %if.end.i
  %userptr.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %userptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %userptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool4.not.i = icmp eq i64 %12, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end3.i
  %userflags.i.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %userflags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %userflags.i.i, align 4
  %sg.i.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg.i.i, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %num_pages.i.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_pages.i.i, align 4
  %shl.i.i = shl i32 %20, 12
  %call.i.i.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 0, i32 noundef %shl.i.i, i32 noundef -1, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i, label %if.then5.i.if.then8.i_crit_edge

if.then5.i.if.then8.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

if.end.i.i:                                       ; preds = %if.then5.i
  %and.i.i = and i32 %14, 1
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i, align 8
  %23 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg.i.i, align 4
  %call7.i.i = tail call i32 @dma_map_sgtable(ptr noundef %22, ptr noundef %24, i32 noundef %and.i.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %amdgpu_ttm_tt_pin_userptr.exit.thread.i, label %if.end.i.i.if.then8.i_crit_edge

if.end.i.i.if.then8.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

amdgpu_ttm_tt_pin_userptr.exit.thread.i:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sg.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 4
  %27 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_address.i.i, align 8
  %29 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_pages.i.i, align 4
  %call14.i.i = tail call i32 @drm_prime_sg_to_dma_addr_array(ptr noundef %26, ptr noundef %28, i32 noundef %30) #13
  br label %if.end26.i

if.then8.i:                                       ; preds = %if.end.i.i.if.then8.i_crit_edge, %if.then5.i.if.then8.i_crit_edge
  %r.0.i.i = phi i32 [ %call.i.i.i, %if.then5.i.if.then8.i_crit_edge ], [ %call7.i.i, %if.end.i.i.if.then8.i_crit_edge ]
  %31 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg.i.i, align 4
  tail call void @kfree(ptr noundef %32) #13
  %33 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sg.i.i, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.end3.i
  %page_flags.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 1
  %34 = ptrtoint ptr %page_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %page_flags.i, align 4
  %and.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.else.i.if.end26.i_crit_edge, label %if.then11.i

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i

if.then11.i:                                      ; preds = %if.else.i
  %sg.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 3
  %36 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg.i, align 4
  %tobool12.not.i = icmp eq ptr %37, null
  br i1 %tobool12.not.i, label %if.then13.i, label %if.then11.i.if.end21.i_crit_edge

if.then11.i.if.end21.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.then11.i
  %gobj.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %8, i32 0, i32 1
  %38 = ptrtoint ptr %gobj.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gobj.i, align 4
  %import_attach.i = getelementptr inbounds %struct.drm_gem_object, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %import_attach.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %import_attach.i, align 4
  %call14.i = tail call ptr @dma_buf_map_attachment(ptr noundef %41, i32 noundef 0) #13
  %cmp.i.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %call14.i to i32
  br label %amdgpu_ttm_backend_bind.exit

cleanup.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call14.i, ptr %sg.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %cleanup.i, %if.then11.i.if.end21.i_crit_edge
  %44 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg.i, align 4
  %dma_address.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 4
  %46 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_address.i, align 8
  %num_pages.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 2
  %48 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_pages.i, align 4
  %call24.i = tail call i32 @drm_prime_sg_to_dma_addr_array(ptr noundef %45, ptr noundef %47, i32 noundef %49) #13
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end21.i, %if.else.i.if.end26.i_crit_edge, %amdgpu_ttm_tt_pin_userptr.exit.thread.i
  %num_pages27.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 2
  %50 = ptrtoint ptr %num_pages27.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_pages27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool28.not.i = icmp eq i32 %51, 0
  br i1 %tobool28.not.i, label %do.end.i, label %if.end26.i.if.end48.i_crit_edge

if.end26.i.if.end48.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

do.end.i:                                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 914, i32 noundef 9, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull %new_mem, ptr noundef %8) #13
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end.i, %if.end26.i.if.end48.i_crit_edge
  %52 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.not.i = icmp eq i32 %53, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end48.i.if.then50.i_crit_edge

if.end48.i.if.then50.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then50.i

lor.lhs.false.i:                                  ; preds = %if.end48.i
  %call49.i = tail call zeroext i1 @amdgpu_gtt_mgr_has_gart_addr(ptr noundef nonnull %new_mem) #13
  br i1 %call49.i, label %land.lhs.true2.i.i.i, label %lor.lhs.false.i.if.then50.i_crit_edge

lor.lhs.false.i.if.then50.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then50.i

if.then50.i:                                      ; preds = %lor.lhs.false.i.if.then50.i_crit_edge, %if.end48.i.if.then50.i_crit_edge
  %offset.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %8, i32 0, i32 2
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 2147483647, ptr %offset.i, align 8
  br label %if.end4

land.lhs.true2.i.i.i:                             ; preds = %lor.lhs.false.i
  %55 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.not.i.i.i = icmp ne i32 %56, 0
  %spec.select.i.i.i = zext i1 %cmp.not.i.i.i to i64
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %56, label %land.lhs.true2.i.i.i.land.lhs.true15.i.i.i_crit_edge [
    i32 1, label %land.lhs.true2.i.i.i.if.then7.i.i.i_crit_edge
    i32 6, label %land.lhs.true2.i.i.i.if.then7.i.i.i_crit_edge254
  ]

land.lhs.true2.i.i.i.if.then7.i.i.i_crit_edge254: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i.i

land.lhs.true2.i.i.i.if.then7.i.i.i_crit_edge:    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i.i

land.lhs.true2.i.i.i.land.lhs.true15.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true15.i.i.i

if.then7.i.i.i:                                   ; preds = %land.lhs.true2.i.i.i.if.then7.i.i.i_crit_edge, %land.lhs.true2.i.i.i.if.then7.i.i.i_crit_edge254
  %caching.i.i.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 6
  %58 = ptrtoint ptr %caching.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %caching.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp9.i.i.i = icmp eq i32 %59, 2
  %spec.select35.v.i.i.i = select i1 %cmp9.i.i.i, i64 6, i64 2
  %spec.select35.i.i.i = or i64 %spec.select35.v.i.i.i, %spec.select.i.i.i
  br label %land.lhs.true15.i.i.i

land.lhs.true15.i.i.i:                            ; preds = %if.then7.i.i.i, %land.lhs.true2.i.i.i.land.lhs.true15.i.i.i_crit_edge
  %flags.1.ph.i.i.i = phi i64 [ %spec.select35.i.i.i, %if.then7.i.i.i ], [ %spec.select.i.i.i, %land.lhs.true2.i.i.i.land.lhs.true15.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp17.i.i.i = icmp eq i32 %56, 2
  br i1 %cmp17.i.i.i, label %land.lhs.true18.i.i.i, label %land.lhs.true15.i.i.i.amdgpu_ttm_tt_pde_flags.exit.i.i_crit_edge

land.lhs.true15.i.i.i.amdgpu_ttm_tt_pde_flags.exit.i.i_crit_edge: ; preds = %land.lhs.true15.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_ttm_tt_pde_flags.exit.i.i

land.lhs.true18.i.i.i:                            ; preds = %land.lhs.true15.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %caching19.i.i.i = getelementptr inbounds %struct.ttm_resource, ptr %new_mem, i32 0, i32 4, i32 3
  %60 = ptrtoint ptr %caching19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %caching19.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp20.i.i.i = icmp eq i32 %61, 2
  %or22.i.i.i = or i64 %flags.1.ph.i.i.i, 4
  %spec.select36.i.i.i = select i1 %cmp20.i.i.i, i64 %or22.i.i.i, i64 %flags.1.ph.i.i.i
  br label %amdgpu_ttm_tt_pde_flags.exit.i.i

amdgpu_ttm_tt_pde_flags.exit.i.i:                 ; preds = %land.lhs.true18.i.i.i, %land.lhs.true15.i.i.i.amdgpu_ttm_tt_pde_flags.exit.i.i_crit_edge
  %flags.2.i.i.i = phi i64 [ %flags.1.ph.i.i.i, %land.lhs.true15.i.i.i.amdgpu_ttm_tt_pde_flags.exit.i.i_crit_edge ], [ %spec.select36.i.i.i, %land.lhs.true18.i.i.i ]
  %gart_pte_flags.i.i = getelementptr i8, ptr %6, i32 -7448
  %62 = ptrtoint ptr %gart_pte_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %gart_pte_flags.i.i, align 8
  %or.i.i = or i64 %63, %flags.2.i.i.i
  %cmp.i.i.i = icmp eq ptr %8, null
  br i1 %cmp.i.i.i, label %amdgpu_ttm_tt_is_readonly.exit.thread.i.i, label %amdgpu_ttm_tt_is_readonly.exit.i.i

amdgpu_ttm_tt_is_readonly.exit.thread.i.i:        ; preds = %amdgpu_ttm_tt_pde_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %or39.i.i = or i64 %or.i.i, 96
  br label %amdgpu_ttm_tt_pte_flags.exit.i

amdgpu_ttm_tt_is_readonly.exit.i.i:               ; preds = %amdgpu_ttm_tt_pde_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %userflags.i.i.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %8, i32 0, i32 5
  %64 = ptrtoint ptr %userflags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %userflags.i.i.i, align 4
  %and.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.v.i.i = select i1 %tobool.i.not.i.i, i64 96, i64 32
  %spec.select.i.i = or i64 %spec.select.v.i.i, %or.i.i
  br label %amdgpu_ttm_tt_pte_flags.exit.i

amdgpu_ttm_tt_pte_flags.exit.i:                   ; preds = %amdgpu_ttm_tt_is_readonly.exit.i.i, %amdgpu_ttm_tt_is_readonly.exit.thread.i.i
  %66 = phi i64 [ %or39.i.i, %amdgpu_ttm_tt_is_readonly.exit.thread.i.i ], [ %spec.select.i.i, %amdgpu_ttm_tt_is_readonly.exit.i.i ]
  %67 = ptrtoint ptr %new_mem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %new_mem, align 4
  %conv.i = zext i32 %68 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %offset53.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %8, i32 0, i32 2
  %69 = ptrtoint ptr %offset53.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %shl.i, ptr %offset53.i, align 8
  %70 = ptrtoint ptr %num_pages27.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_pages27.i, align 4
  %dma_address57.i = getelementptr inbounds %struct.ttm_tt, ptr %8, i32 0, i32 4
  %72 = ptrtoint ptr %dma_address57.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dma_address57.i, align 8
  %call58.i = tail call i32 @amdgpu_gart_bind(ptr noundef %add.ptr.i.i, i64 noundef %shl.i, i32 noundef %71, ptr noundef %73, i64 noundef %66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %amdgpu_ttm_tt_pte_flags.exit.i.if.end63.i_crit_edge, label %if.then60.i

amdgpu_ttm_tt_pte_flags.exit.i.if.end63.i_crit_edge: ; preds = %amdgpu_ttm_tt_pte_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i

if.then60.i:                                      ; preds = %amdgpu_ttm_tt_pte_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %num_pages27.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_pages27.i, align 4
  %76 = ptrtoint ptr %offset53.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %offset53.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %75, i64 noundef %77) #13
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then60.i, %amdgpu_ttm_tt_pte_flags.exit.i.if.end63.i_crit_edge
  %78 = ptrtoint ptr %bound.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %bound.i, align 8
  br label %amdgpu_ttm_backend_bind.exit

amdgpu_ttm_backend_bind.exit:                     ; preds = %if.end63.i, %cleanup.thread.i
  %retval.1.i = phi i32 [ %call58.i, %if.end63.i ], [ %42, %cleanup.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool.not, label %amdgpu_ttm_backend_bind.exit.if.end4_crit_edge, label %amdgpu_ttm_backend_bind.exit.cleanup_crit_edge

amdgpu_ttm_backend_bind.exit.cleanup_crit_edge:   ; preds = %amdgpu_ttm_backend_bind.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

amdgpu_ttm_backend_bind.exit.if.end4_crit_edge:   ; preds = %amdgpu_ttm_backend_bind.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end4:                                          ; preds = %amdgpu_ttm_backend_bind.exit.if.end4_crit_edge, %if.then50.i, %if.end.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pin_count = getelementptr i8, ptr %bo, i32 408
  %79 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp6.not = icmp eq i32 %80, 0
  br i1 %cmp6.not, label %if.end47, label %land.rhs

land.rhs:                                         ; preds = %if.end4
  %.b223 = load i1, ptr @amdgpu_bo_move.__already_done, align 1
  br i1 %.b223, label %land.rhs.cleanup_crit_edge, label %if.then15, !prof !154

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @amdgpu_bo_move.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 474, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end47:                                         ; preds = %if.end4
  %bdev48 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %81 = ptrtoint ptr %bdev48 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bdev48, align 8
  %add.ptr.i228 = getelementptr i8, ptr %82, i32 -17736
  %mem_type50 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %83 = ptrtoint ptr %mem_type50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mem_type50, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %84, label %if.end47.if.end82_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %if.end47.land.lhs.true71_crit_edge
    i32 6, label %if.end47.land.lhs.true71_crit_edge255
  ]

if.end47.land.lhs.true71_crit_edge255:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true71

if.end47.land.lhs.true71_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true71

if.end47.if.end82_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end47
  %ttm52 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %86 = ptrtoint ptr %ttm52 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ttm52, align 8
  %cmp53 = icmp eq ptr %87, null
  br i1 %cmp53, label %if.then54, label %land.lhs.true58

if.then54:                                        ; preds = %land.lhs.true
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #13
  %88 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %resource, align 4
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %if.then54.out.sink.split_crit_edge, label %if.then54.out.sink.split.sink.split_crit_edge, !prof !154

if.then54.out.sink.split.sink.split_crit_edge:    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split

if.then54.out.sink.split_crit_edge:               ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

land.lhs.true58:                                  ; preds = %land.lhs.true
  %90 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mem_type, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %91, label %land.lhs.true58.lor.lhs.false91_crit_edge [
    i32 1, label %land.lhs.true58.if.then64_crit_edge
    i32 6, label %land.lhs.true58.if.then64_crit_edge256
  ]

land.lhs.true58.if.then64_crit_edge256:           ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64

land.lhs.true58.if.then64_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64

land.lhs.true58.lor.lhs.false91_crit_edge:        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false91

if.then64:                                        ; preds = %land.lhs.true58.if.then64_crit_edge, %land.lhs.true58.if.then64_crit_edge256
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #13
  %93 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %resource, align 4
  %tobool.not.i.i230 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i230, label %if.then64.out.sink.split_crit_edge, label %if.then64.out.sink.split.sink.split_crit_edge, !prof !154

if.then64.out.sink.split.sink.split_crit_edge:    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split

if.then64.out.sink.split_crit_edge:               ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

land.lhs.true71:                                  ; preds = %if.end47.land.lhs.true71_crit_edge, %if.end47.land.lhs.true71_crit_edge255
  %95 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp73 = icmp eq i32 %96, 0
  br i1 %cmp73, label %if.then74, label %land.lhs.true71.if.end82_crit_edge

land.lhs.true71.if.end82_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then74:                                        ; preds = %land.lhs.true71
  %97 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ctx, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.i = icmp ne i8 %98, 0
  %no_wait_gpu.i = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 1
  %99 = ptrtoint ptr %no_wait_gpu.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %no_wait_gpu.i, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool1.i = icmp ne i8 %100, 0
  %call.i = tail call i32 @ttm_bo_wait(ptr noundef %bo, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool76.not = icmp eq i32 %call.i, 0
  br i1 %tobool76.not, label %if.end78, label %if.then74.cleanup_crit_edge

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end78:                                         ; preds = %if.then74
  %101 = ptrtoint ptr %bdev48 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bdev48, align 8
  %ttm80 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %103 = ptrtoint ptr %ttm80 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ttm80, align 8
  tail call fastcc void @amdgpu_ttm_backend_unbind(ptr noundef %102, ptr noundef %104)
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #13
  %105 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %resource, align 4
  %tobool.not.i234 = icmp eq ptr %106, null
  br i1 %tobool.not.i234, label %if.end78.out.sink.split_crit_edge, label %if.end78.out.sink.split.sink.split_crit_edge, !prof !154

if.end78.out.sink.split.sink.split_crit_edge:     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split

if.end78.out.sink.split_crit_edge:                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

if.end82:                                         ; preds = %land.lhs.true71.if.end82_crit_edge, %if.end47.if.end82_crit_edge
  %.off = add i32 %84, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end82.if.then100_crit_edge, label %if.end82.lor.lhs.false91_crit_edge

if.end82.lor.lhs.false91_crit_edge:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false91

if.end82.if.then100_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100

lor.lhs.false91:                                  ; preds = %if.end82.lor.lhs.false91_crit_edge, %land.lhs.true58.lor.lhs.false91_crit_edge
  %107 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mem_type, align 4
  %.off226 = add i32 %108, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off226)
  %switch227 = icmp ult i32 %.off226, 3
  br i1 %switch227, label %lor.lhs.false91.if.then100_crit_edge, label %if.end101

lor.lhs.false91.if.then100_crit_edge:             ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then100

if.then100:                                       ; preds = %lor.lhs.false91.if.then100_crit_edge, %if.end82.if.then100_crit_edge
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #13
  %109 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %resource, align 4
  %tobool.not.i.i238 = icmp eq ptr %110, null
  br i1 %tobool.not.i.i238, label %if.then100.out.sink.split_crit_edge, label %if.then100.out.sink.split.sink.split_crit_edge, !prof !154

if.then100.out.sink.split.sink.split_crit_edge:   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split.sink.split

if.then100.out.sink.split_crit_edge:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

if.end101:                                        ; preds = %lor.lhs.false91
  %type = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 2
  %111 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp102 = icmp ne i32 %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp105 = icmp ne i32 %108, 2
  %or.cond = select i1 %cmp102, i1 true, i1 %cmp105
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp108.not = icmp eq i32 %84, 2
  %or.cond225 = select i1 %or.cond, i1 true, i1 %cmp108.not
  br i1 %or.cond225, label %if.end101.if.end110_crit_edge, label %if.then109

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.then109:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr i8, ptr %bo, i32 432
  %113 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %flags, align 8
  %and = and i64 %114, -2
  store i64 %and, ptr %flags, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %if.end101.if.end110_crit_edge
  %buffer_funcs_enabled = getelementptr i8, ptr %82, i32 2936
  %115 = ptrtoint ptr %buffer_funcs_enabled to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %buffer_funcs_enabled, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool111.not = icmp eq i8 %116, 0
  br i1 %tobool111.not, label %if.end110.if.then132_crit_edge, label %if.then112

if.end110.if.then132_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then132

if.then112:                                       ; preds = %if.end110
  %117 = ptrtoint ptr %mem_type50 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mem_type50, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %118, label %if.then112.if.end130_crit_edge [
    i32 0, label %land.lhs.true115
    i32 2, label %land.lhs.true121
  ]

if.then112.if.end130_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

land.lhs.true115:                                 ; preds = %if.then112
  %120 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %121)
  %cmp117 = icmp eq i32 %121, 2
  br i1 %cmp117, label %land.lhs.true115.if.then124_crit_edge, label %land.lhs.true115.if.end130_crit_edge

land.lhs.true115.if.end130_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

land.lhs.true115.if.then124_crit_edge:            ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then124

land.lhs.true121:                                 ; preds = %if.then112
  %122 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp123 = icmp eq i32 %123, 0
  br i1 %cmp123, label %land.lhs.true121.if.then124_crit_edge, label %land.lhs.true121.if.end130_crit_edge

land.lhs.true121.if.end130_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

land.lhs.true121.if.then124_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then124

if.then124:                                       ; preds = %land.lhs.true121.if.then124_crit_edge, %land.lhs.true115.if.then124_crit_edge
  %124 = ptrtoint ptr %hop to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %hop, align 4
  %lpfn = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 1
  %125 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %lpfn, align 4
  %mem_type125 = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 2
  %126 = ptrtoint ptr %mem_type125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %mem_type125, align 4
  %flags126 = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 3
  %127 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %flags126, align 4
  br label %cleanup

if.end130:                                        ; preds = %land.lhs.true121.if.end130_crit_edge, %land.lhs.true115.if.end130_crit_edge, %if.then112.if.end130_crit_edge
  %call129 = tail call fastcc i32 @amdgpu_move_blit(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %new_mem, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool131.not = icmp eq i32 %call129, 0
  br i1 %tobool131.not, label %if.end130.out_crit_edge, label %if.end130.if.then132_crit_edge

if.end130.if.then132_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then132

if.end130.out_crit_edge:                          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then132:                                       ; preds = %if.end130.if.then132_crit_edge, %if.end110.if.then132_crit_edge
  %r.0252 = phi i32 [ %call129, %if.end130.if.then132_crit_edge ], [ -19, %if.end110.if.then132_crit_edge ]
  %call133 = tail call fastcc zeroext i1 @amdgpu_mem_visible(ptr noundef %add.ptr.i228, ptr noundef %1)
  br i1 %call133, label %lor.lhs.false134, label %if.then132.do.end139_crit_edge

if.then132.do.end139_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end139

lor.lhs.false134:                                 ; preds = %if.then132
  %call135 = tail call fastcc zeroext i1 @amdgpu_mem_visible(ptr noundef %add.ptr.i228, ptr noundef %new_mem)
  br i1 %call135, label %if.end142, label %lor.lhs.false134.do.end139_crit_edge

lor.lhs.false134.do.end139_crit_edge:             ; preds = %lor.lhs.false134
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end139

do.end139:                                        ; preds = %lor.lhs.false134.do.end139_crit_edge, %if.then132.do.end139_crit_edge
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #17
  br label %cleanup

if.end142:                                        ; preds = %lor.lhs.false134
  %call143 = tail call i32 @ttm_bo_move_memcpy(ptr noundef %bo, ptr noundef %ctx, ptr noundef %new_mem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end142.out_crit_edge, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end142.out_crit_edge:                          ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out.sink.split.sink.split:                        ; preds = %if.then100.out.sink.split.sink.split_crit_edge, %if.end78.out.sink.split.sink.split_crit_edge, %if.then64.out.sink.split.sink.split_crit_edge, %if.then54.out.sink.split.sink.split_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 192, i32 noundef 9, ptr noundef null) #13
  br label %out.sink.split

out.sink.split:                                   ; preds = %out.sink.split.sink.split, %if.then100.out.sink.split_crit_edge, %if.end78.out.sink.split_crit_edge, %if.then64.out.sink.split_crit_edge, %if.then54.out.sink.split_crit_edge
  %128 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %new_mem, ptr %resource, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end142.out_crit_edge, %if.end130.out_crit_edge
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %129 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size, align 8
  %conv = zext i32 %130 to i64
  %num_bytes_moved = getelementptr i8, ptr %82, i32 4144
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_bytes_moved, i32 noundef 8) #13
  tail call void @generic_atomic64_add(i64 noundef %conv, ptr noundef %num_bytes_moved) #13
  tail call void @amdgpu_bo_move_notify(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %new_mem) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end142.cleanup_crit_edge, %do.end139, %if.then124, %if.then74.cleanup_crit_edge, %if.then15, %land.rhs.cleanup_crit_edge, %amdgpu_ttm_backend_bind.exit.cleanup_crit_edge, %if.then8.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -72, %if.then124 ], [ %r.0252, %do.end139 ], [ %retval.1.i, %amdgpu_ttm_backend_bind.exit.cleanup_crit_edge ], [ -22, %if.then15 ], [ %call.i, %if.then74.cleanup_crit_edge ], [ %call143, %if.end142.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %r.0.i.i, %if.then8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_bo_delete_mem_notify(ptr noundef %bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_bo_move_notify(ptr noundef %bo, i1 noundef zeroext false, ptr noundef null) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amdgpu_ttm_io_mem_reserve(ptr nocapture noundef readonly %bdev, ptr nocapture noundef %mem) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 2
  %0 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge33
    i32 6, label %entry.cleanup_crit_edge34
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.cleanup_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 1
  %3 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pages, align 4
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem, align 4
  %shl3 = shl i32 %6, 12
  %bus = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4
  %offset = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl3, ptr %offset, align 4
  %8 = add i32 %6, %4
  %add = shl i32 %8, 12
  %conv = zext i32 %add to i64
  %visible_vram_size = getelementptr i8, ptr %bdev, i32 -13960
  %9 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv)
  %cmp = icmp ult i64 %10, %conv
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %aper_base_kaddr = getelementptr i8, ptr %bdev, i32 2924
  %11 = ptrtoint ptr %aper_base_kaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aper_base_kaddr, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %placement = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 3
  %13 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %placement, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end14_crit_edge, label %if.then8

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %12, i32 %shl3
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %bus, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %aper_base = getelementptr i8, ptr %bdev, i32 -13972
  %16 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aper_base, align 4
  %add18 = add i32 %17, %shl3
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add18, ptr %offset, align 4
  %is_iomem = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %is_iomem to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_iomem, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end14, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge33, %entry.cleanup_crit_edge34
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge33 ], [ 0, %entry.cleanup_crit_edge34 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ttm_io_mem_pfn(ptr nocapture noundef readonly %bo, i32 noundef %page_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %conv = zext i32 %page_offset to i64
  %shl = shl nuw nsw i64 %conv, 12
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.amdgpu_res_first.exit_crit_edge, label %lor.lhs.false.i

entry.amdgpu_res_first.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

lor.lhs.false.i:                                  ; preds = %entry
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %num_pages.i = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages.i, align 4
  %shl.i = shl i32 %7, 12
  %conv.i = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv.i)
  %cmp5.i = icmp ugt i64 %shl, %conv.i
  br i1 %cmp.i, label %land.rhs.critedge.i, label %do.body28.i

land.rhs.critedge.i:                              ; preds = %lor.lhs.false.i
  br i1 %cmp5.i, label %do.end.i, label %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge, !prof !149

land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge: ; preds = %land.rhs.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

do.end.i:                                         ; preds = %land.rhs.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 62, i32 noundef 9, ptr noundef null) #13
  br label %amdgpu_res_first.exit

do.body28.i:                                      ; preds = %lor.lhs.false.i
  br i1 %cmp5.i, label %do.body42.i, label %do.end50.i, !prof !149

do.body42.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end50.i:                                       ; preds = %do.body28.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %3, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %3, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size51103.i, align 8
  %shl52104.i = shl i64 %9, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl52104.i, i64 %shl)
  %cmp53.not105.i = icmp ugt i64 %shl52104.i, %shl
  br i1 %cmp53.not105.i, label %do.end50.i.while.end.i_crit_edge, label %do.end50.i.while.body.i_crit_edge

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ %shl52104.i, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %shl, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %10 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %11, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end50.i.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ %shl, %do.end50.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %start57.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i, i32 0, i32 1
  %12 = ptrtoint ptr %start57.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start57.i, align 8
  %shl58.i = shl i64 %13, 12
  %add59.i = add i64 %shl58.i, %start.addr.0.lcssa.i
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.end.i, %do.end.i, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge, %entry.amdgpu_res_first.exit_crit_edge
  %cursor.sroa.0.0 = phi i64 [ %shl, %do.end.i ], [ %shl, %land.rhs.critedge.i.amdgpu_res_first.exit_crit_edge ], [ %add59.i, %while.end.i ], [ %shl, %entry.amdgpu_res_first.exit_crit_edge ]
  %aper_base = getelementptr i8, ptr %1, i32 -13972
  %14 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %aper_base, align 4
  %conv1 = zext i32 %15 to i64
  %add = add i64 %cursor.sroa.0.0, %conv1
  %shr = lshr i64 %add, 12
  %conv2 = trunc i64 %shr to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ttm_access_memory(ptr nocapture noundef readonly %bo, i32 noundef %offset, ptr noundef %buf, i32 noundef %len, i32 noundef %write) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr i8, ptr %bo, i32 352
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i39 = getelementptr i8, ptr %1, i32 -17736
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %offset to i64
  %conv3 = sext i32 %len to i64
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.amdgpu_res_first.exit_crit_edge, label %do.body28.i

if.end.amdgpu_res_first.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

do.body28.i:                                      ; preds = %if.end
  %add29.i = add nsw i64 %conv3, %conv
  %num_pages30.i = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_pages30.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages30.i, align 4
  %shl31.i = shl i32 %7, 12
  %conv32.i = zext i32 %shl31.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add29.i, i64 %conv32.i)
  %cmp33.i = icmp ugt i64 %add29.i, %conv32.i
  br i1 %cmp33.i, label %do.body42.i, label %do.end50.i, !prof !149

do.body42.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end50.i:                                       ; preds = %do.body28.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %3, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %3, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size51103.i, align 8
  %shl52104.i = shl i64 %9, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl52104.i, i64 %conv)
  %cmp53.not105.i = icmp ugt i64 %shl52104.i, %conv
  br i1 %cmp53.not105.i, label %do.end50.i.while.end.i_crit_edge, label %do.end50.i.while.body.i_crit_edge

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ %shl52104.i, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %10 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %11, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end50.i.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ %conv, %do.end50.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %size51.lcssa.i = phi ptr [ %size51103.i, %do.end50.i.while.end.i_crit_edge ], [ %size51.i, %while.body.i.while.end.i_crit_edge ]
  %start57.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i, i32 0, i32 1
  %12 = ptrtoint ptr %start57.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start57.i, align 8
  %shl58.i = shl i64 %13, 12
  %add59.i = add i64 %shl58.i, %start.addr.0.lcssa.i
  %14 = ptrtoint ptr %size51.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size51.lcssa.i, align 8
  %shl62.i = shl i64 %15, 12
  %sub63.i = sub i64 %shl62.i, %start.addr.0.lcssa.i
  %16 = tail call i64 @llvm.umin.i64(i64 %sub63.i, i64 %conv3) #13
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.end.i, %if.end.amdgpu_res_first.exit_crit_edge
  %cursor.sroa.24.0 = phi ptr [ %node.0.lcssa.i, %while.end.i ], [ null, %if.end.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.10.0 = phi i64 [ %16, %while.end.i ], [ %conv3, %if.end.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.0.0 = phi i64 [ %add59.i, %while.end.i ], [ %conv, %if.end.amdgpu_res_first.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not57 = icmp eq i32 %len, 0
  br i1 %tobool.not57, label %amdgpu_res_first.exit.cleanup_crit_edge, label %while.body.lr.ph

amdgpu_res_first.exit.cleanup_crit_edge:          ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool6 = icmp ne i32 %write, 0
  br label %while.body

while.body:                                       ; preds = %amdgpu_res_next.exit.while.body_crit_edge, %while.body.lr.ph
  %ret.063 = phi i32 [ 0, %while.body.lr.ph ], [ %conv16, %amdgpu_res_next.exit.while.body_crit_edge ]
  %buf.addr.062 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr18, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.0.161 = phi i64 [ %cursor.sroa.0.0, %while.body.lr.ph ], [ %cursor.sroa.0.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.10.160 = phi i64 [ %cursor.sroa.10.0, %while.body.lr.ph ], [ %cursor.sroa.10.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.18.159 = phi i64 [ %conv3, %while.body.lr.ph ], [ %sub.i48, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.24.158 = phi ptr [ %cursor.sroa.24.0, %while.body.lr.ph ], [ %cursor.sroa.24.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %conv5 = trunc i64 %cursor.sroa.10.160 to i32
  %call7 = call i32 @amdgpu_device_aper_access(ptr noundef %add.ptr.i39, i64 noundef %cursor.sroa.0.161, ptr noundef %buf.addr.062, i32 noundef %conv5, i1 noundef zeroext %tobool6) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %conv5)
  %tobool8.not = icmp eq i32 %call7, %conv5
  br i1 %tobool8.not, label %while.body.if.end12_crit_edge, label %if.then9

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then9:                                         ; preds = %while.body
  %sub = sub i32 %conv5, %call7
  %add.ptr = getelementptr i8, ptr %buf.addr.062, i32 %call7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not56.i = icmp eq i32 %sub, 0
  br i1 %tobool.not56.i, label %if.then9.if.end12_crit_edge, label %while.body.i43.preheader

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

while.body.i43.preheader:                         ; preds = %if.then9
  %conv10 = zext i32 %call7 to i64
  %add = add i64 %cursor.sroa.0.161, %conv10
  br label %while.body.i43

while.body.i43:                                   ; preds = %if.end25.i.while.body.i43_crit_edge, %while.body.i43.preheader
  %pos.addr.060.i = phi i64 [ %add26.i, %if.end25.i.while.body.i43_crit_edge ], [ %add, %while.body.i43.preheader ]
  %size.addr.059.i = phi i32 [ %conv29.i, %if.end25.i.while.body.i43_crit_edge ], [ %sub, %while.body.i43.preheader ]
  %buf.addr.057.i = phi ptr [ %add.ptr.i44, %if.end25.i.while.body.i43_crit_edge ], [ %add.ptr, %while.body.i43.preheader ]
  %and.i = and i64 %pos.addr.060.i, -4
  %and1.i = and i64 %pos.addr.060.i, 3
  %sub2.i = sub nuw nsw i64 4, %and1.i
  %and1.tr.i = trunc i64 %and1.i to i32
  %conv.i40 = shl nuw nsw i32 %and1.tr.i, 3
  %shl.i41 = shl nsw i32 -1, %conv.i40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #13
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %value.i, align 4
  %conv4.i = zext i32 %size.addr.059.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i, i64 %conv4.i)
  %cmp.i42 = icmp ugt i64 %sub2.i, %conv4.i
  %18 = trunc i64 %sub2.i to i32
  %sub7.tr.i = sub i32 %18, %size.addr.059.i
  %sh_prom.i = shl i32 %sub7.tr.i, 3
  %shr.i = lshr i32 -1, %sh_prom.i
  %19 = call i64 @llvm.umin.i64(i64 %sub2.i, i64 %conv4.i) #13
  %and9.i = select i1 %cmp.i42, i32 %shr.i, i32 -1
  %mask.0.i = and i32 %and9.i, %shl.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask.0.i)
  %cmp11.not.i = icmp eq i32 %mask.0.i, -1
  br i1 %cmp11.not.i, label %if.else23.i, label %if.then13.i

if.then13.i:                                      ; preds = %while.body.i43
  call void @amdgpu_device_mm_access(ptr noundef %add.ptr.i39, i64 noundef %and.i, ptr noundef nonnull %value.i, i32 noundef 4, i1 noundef zeroext false) #13
  br i1 %tobool6, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  %neg.i = xor i32 %mask.0.i, -1
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value.i, align 4
  %and16.i = and i32 %21, %neg.i
  %22 = ptrtoint ptr %buf.addr.057.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf.addr.057.i, align 4
  %shl17.i = shl i32 %23, %conv.i40
  %and18.i = and i32 %shl17.i, %mask.0.i
  %or.i = or i32 %and18.i, %and16.i
  store i32 %or.i, ptr %value.i, align 4
  call void @amdgpu_device_mm_access(ptr noundef %add.ptr.i39, i64 noundef %and.i, ptr noundef nonnull %value.i, i32 noundef 4, i1 noundef zeroext true) #13
  br label %if.end25.i

if.else.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value.i, align 4
  %and19.i = and i32 %25, %mask.0.i
  %shr20.i = lshr i32 %and19.i, %conv.i40
  store i32 %shr20.i, ptr %value.i, align 4
  %conv21.i = trunc i64 %19 to i32
  %26 = call ptr @memcpy(ptr %buf.addr.057.i, ptr %value.i, i32 %conv21.i)
  br label %if.end25.i

if.else23.i:                                      ; preds = %while.body.i43
  call void @__sanitizer_cov_trace_pc() #15
  call void @amdgpu_device_mm_access(ptr noundef %add.ptr.i39, i64 noundef %and.i, ptr noundef %buf.addr.057.i, i32 noundef 4, i1 noundef zeroext %tobool6) #13
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else23.i, %if.else.i, %if.then15.i
  %add26.i = add i64 %19, %pos.addr.060.i
  %idx.ext.i = trunc i64 %19 to i32
  %add.ptr.i44 = getelementptr i8, ptr %buf.addr.057.i, i32 %idx.ext.i
  %conv29.i = sub i32 %size.addr.059.i, %idx.ext.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #13
  %tobool.not.i45 = icmp eq i32 %conv29.i, 0
  br i1 %tobool.not.i45, label %if.end25.i.if.end12_crit_edge, label %if.end25.i.while.body.i43_crit_edge

if.end25.i.while.body.i43_crit_edge:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i43

if.end25.i.if.end12_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.end12:                                         ; preds = %if.end25.i.if.end12_crit_edge, %if.then9.if.end12_crit_edge, %while.body.if.end12_crit_edge
  %buf.addr.1 = phi ptr [ %buf.addr.062, %while.body.if.end12_crit_edge ], [ %add.ptr, %if.then9.if.end12_crit_edge ], [ %add.ptr, %if.end25.i.if.end12_crit_edge ]
  %conv16 = add i32 %ret.063, %conv5
  %add.ptr18 = getelementptr i8, ptr %buf.addr.1, i32 %conv5
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.18.159, i64 %cursor.sroa.10.160)
  %cmp.i47 = icmp ult i64 %cursor.sroa.18.159, %cursor.sroa.10.160
  br i1 %cmp.i47, label %do.body3.i, label %do.end8.i, !prof !149

do.body3.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.end8.i:                                        ; preds = %if.end12
  %sub.i48 = sub i64 %cursor.sroa.18.159, %cursor.sroa.10.160
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.18.159, i64 %cursor.sroa.10.160)
  %tobool11.not.i = icmp eq i64 %cursor.sroa.18.159, %cursor.sroa.10.160
  br i1 %tobool11.not.i, label %do.end8.i.amdgpu_res_next.exit_crit_edge, label %if.end19.i

do.end8.i.amdgpu_res_next.exit_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_next.exit

if.end19.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i50 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.24.158, i32 1
  %start21.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.24.158, i32 1, i32 1
  %27 = ptrtoint ptr %start21.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start21.i, align 8
  %shl.i51 = shl i64 %28, 12
  %size23.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.24.158, i32 1, i32 2
  %29 = ptrtoint ptr %size23.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %size23.i, align 8
  %shl24.i = shl i64 %30, 12
  %31 = call i64 @llvm.umin.i64(i64 %shl24.i, i64 %sub.i48) #13
  br label %amdgpu_res_next.exit

amdgpu_res_next.exit:                             ; preds = %if.end19.i, %do.end8.i.amdgpu_res_next.exit_crit_edge
  %cursor.sroa.24.2 = phi ptr [ %cursor.sroa.24.158, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %incdec.ptr.i50, %if.end19.i ]
  %cursor.sroa.10.2 = phi i64 [ %cursor.sroa.10.160, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %31, %if.end19.i ]
  %cursor.sroa.0.2 = phi i64 [ %cursor.sroa.0.161, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %shl.i51, %if.end19.i ]
  %tobool.not = icmp eq i64 %sub.i48, 0
  br i1 %tobool.not, label %amdgpu_res_next.exit.cleanup_crit_edge, label %amdgpu_res_next.exit.while.body_crit_edge

amdgpu_res_next.exit.while.body_crit_edge:        ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

amdgpu_res_next.exit.cleanup_crit_edge:           ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_res_next.exit.cleanup_crit_edge, %amdgpu_res_first.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %amdgpu_res_first.exit.cleanup_crit_edge ], [ %conv16, %amdgpu_res_next.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_vm_del_from_lru_notify(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_release_notify(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_ttm_backend_unbind(ptr noundef %bdev, ptr nocapture noundef %ttm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bdev, i32 -17736
  %userptr = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 3
  %0 = ptrtoint ptr %userptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %userptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %userflags.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 5
  %2 = ptrtoint ptr %userflags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %userflags.i, align 4
  %and.i = and i32 %3, 1
  %sg.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %4 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.then.if.end8_crit_edge, label %lor.lhs.false.i

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.then
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %if.end.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end.i:                                         ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %11, i32 noundef %and.i, i32 noundef 0) #13
  %12 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg.i, align 4
  tail call void @sg_free_table(ptr noundef %13) #13
  %range.i = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 7
  %14 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %range.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %if.end.i.if.end8_crit_edge, label %for.cond.preheader.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

for.cond.preheader.i:                             ; preds = %if.end.i
  %num_pages.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %16 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp60.not.i = icmp eq i32 %17, 0
  br i1 %cmp60.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %18 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ttm, align 4
  %hmm_pfns.i = getelementptr inbounds %struct.hmm_range, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %hmm_pfns.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hmm_pfns.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.061.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %21, i32 %i.061.i
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx10.i, align 4
  %and.i.i = and i32 %27, 16777215
  %sub.i.i = sub i32 %and.i.i, %23
  %add.ptr.i59.i = getelementptr %struct.page, ptr %22, i32 %sub.i.i
  %cmp12.not.i = icmp eq ptr %25, %add.ptr.i59.i
  br i1 %cmp12.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.061.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %17)
  %cmp16.i = icmp eq i32 %i.0.lcssa.i, %17
  br i1 %cmp16.i, label %for.end.i.do.end.i_crit_edge, label %for.end.i.if.end8_crit_edge, !prof !149

for.end.i.if.end8_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.end.i.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 819, i32 noundef 9, ptr noundef nonnull @.str.42) #13
  br label %if.end8

if.else:                                          ; preds = %entry
  %sg = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %28 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sg, align 4
  %tobool1.not = icmp eq ptr %29, null
  br i1 %tobool1.not, label %if.else.if.end8_crit_edge, label %land.lhs.true

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true:                                    ; preds = %if.else
  %gobj = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 1
  %30 = ptrtoint ptr %gobj to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gobj, align 4
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %import_attach, align 4
  %tobool2.not = icmp eq ptr %33, null
  br i1 %tobool2.not, label %land.lhs.true.if.end8_crit_edge, label %if.then3

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dma_buf_unmap_attachment(ptr noundef nonnull %33, ptr noundef nonnull %29, i32 noundef 0) #13
  %34 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %sg, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %land.lhs.true.if.end8_crit_edge, %if.else.if.end8_crit_edge, %do.end.i, %for.end.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %lor.lhs.false.i.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %bound = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 6
  %35 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bound, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool9.not = icmp eq i8 %36, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %offset = getelementptr inbounds %struct.amdgpu_ttm_tt, ptr %ttm, i32 0, i32 2
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %38)
  %cmp = icmp eq i64 %38, 2147483647
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %39 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_pages, align 4
  %call15 = tail call i32 @amdgpu_gart_unbind(ptr noundef %add.ptr.i, i64 noundef %38, i32 noundef %40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_pages, align 8
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %offset, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41, i32 noundef %42, i64 noundef %44) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %45 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %bound, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_gart_unbind(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_vm_evictable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_bo_is_amdgpu_bo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ttm_bo_eviction_valuable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @amdgpu_gmc_vram_full_visible(ptr nocapture noundef readonly %gmc) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %real_vram_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %gmc, i32 0, i32 15
  %0 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %real_vram_size, align 8
  %visible_vram_size = getelementptr inbounds %struct.amdgpu_gmc, ptr %gmc, i32 0, i32 3
  %2 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 286, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %real_vram_size, align 8
  %6 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp21 = icmp eq i64 %5, %7
  ret i1 %cmp21
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @amdgpu_bo_in_cpu_visible_vram(ptr nocapture noundef readonly %bo) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %bdev = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %resource = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 5
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 8
  %conv = zext i32 %7 to i64
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.amdgpu_res_first.exit_crit_edge, label %do.body28.i

if.end.amdgpu_res_first.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

do.body28.i:                                      ; preds = %if.end
  %num_pages30.i = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %num_pages30.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pages30.i, align 4
  %shl31.i = shl i32 %9, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %shl31.i)
  %cmp33.i = icmp ugt i32 %7, %shl31.i
  br i1 %cmp33.i, label %do.body42.i, label %do.end50.i, !prof !149

do.body42.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end50.i:                                       ; preds = %do.body28.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %3, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %3, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size51103.i, align 8
  %shl52104.i.mask = and i64 %11, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl52104.i.mask)
  %cmp53.not105.i.not = icmp eq i64 %shl52104.i.mask, 0
  br i1 %cmp53.not105.i.not, label %do.end50.i.while.body.i_crit_edge, label %do.end50.i.while.end.i_crit_edge

do.end50.i.while.end.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %12 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %13, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end50.i.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ 0, %do.end50.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  %size51.lcssa.i = phi ptr [ %size51103.i, %do.end50.i.while.end.i_crit_edge ], [ %size51.i, %while.body.i.while.end.i_crit_edge ]
  %start57.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i, i32 0, i32 1
  %14 = ptrtoint ptr %start57.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start57.i, align 8
  %shl58.i = shl i64 %15, 12
  %add59.i = add i64 %shl58.i, %start.addr.0.lcssa.i
  %16 = ptrtoint ptr %size51.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size51.lcssa.i, align 8
  %shl62.i = shl i64 %17, 12
  %sub63.i = sub i64 %shl62.i, %start.addr.0.lcssa.i
  %18 = tail call i64 @llvm.umin.i64(i64 %sub63.i, i64 %conv) #13
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.end.i, %if.end.amdgpu_res_first.exit_crit_edge
  %cursor.sroa.23.0 = phi ptr [ %node.0.lcssa.i, %while.end.i ], [ null, %if.end.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.10.0 = phi i64 [ %18, %while.end.i ], [ %conv, %if.end.amdgpu_res_first.exit_crit_edge ]
  %cursor.sroa.0.0 = phi i64 [ %add59.i, %while.end.i ], [ 0, %if.end.amdgpu_res_first.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not20 = icmp eq i32 %7, 0
  br i1 %tobool.not20, label %amdgpu_res_first.exit.cleanup_crit_edge, label %while.body.lr.ph

amdgpu_res_first.exit.cleanup_crit_edge:          ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %amdgpu_res_first.exit
  %visible_vram_size = getelementptr i8, ptr %1, i32 -13960
  %19 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %visible_vram_size, align 8
  br label %while.body

while.body:                                       ; preds = %amdgpu_res_next.exit.while.body_crit_edge, %while.body.lr.ph
  %cursor.sroa.0.124 = phi i64 [ %cursor.sroa.0.0, %while.body.lr.ph ], [ %cursor.sroa.0.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.10.123 = phi i64 [ %cursor.sroa.10.0, %while.body.lr.ph ], [ %cursor.sroa.10.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.17.122 = phi i64 [ %conv, %while.body.lr.ph ], [ %sub.i14, %amdgpu_res_next.exit.while.body_crit_edge ]
  %cursor.sroa.23.121 = phi ptr [ %cursor.sroa.23.0, %while.body.lr.ph ], [ %cursor.sroa.23.2, %amdgpu_res_next.exit.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.0.124, i64 %20)
  %cmp5 = icmp ult i64 %cursor.sroa.0.124, %20
  br i1 %cmp5, label %while.body.cleanup_crit_edge, label %if.end8

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.17.122, i64 %cursor.sroa.10.123)
  %cmp.i13 = icmp ult i64 %cursor.sroa.17.122, %cursor.sroa.10.123
  br i1 %cmp.i13, label %do.body3.i, label %do.end8.i, !prof !149

do.body3.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.end8.i:                                        ; preds = %if.end8
  %sub.i14 = sub i64 %cursor.sroa.17.122, %cursor.sroa.10.123
  call void @__sanitizer_cov_trace_cmp8(i64 %cursor.sroa.17.122, i64 %cursor.sroa.10.123)
  %tobool11.not.i = icmp eq i64 %cursor.sroa.17.122, %cursor.sroa.10.123
  br i1 %tobool11.not.i, label %do.end8.i.amdgpu_res_next.exit_crit_edge, label %if.end19.i

do.end8.i.amdgpu_res_next.exit_crit_edge:         ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_next.exit

if.end19.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i15 = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.23.121, i32 1
  %start21.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.23.121, i32 1, i32 1
  %21 = ptrtoint ptr %start21.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start21.i, align 8
  %shl.i16 = shl i64 %22, 12
  %size23.i = getelementptr %struct.drm_mm_node, ptr %cursor.sroa.23.121, i32 1, i32 2
  %23 = ptrtoint ptr %size23.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %size23.i, align 8
  %shl24.i = shl i64 %24, 12
  %25 = tail call i64 @llvm.umin.i64(i64 %shl24.i, i64 %sub.i14) #13
  br label %amdgpu_res_next.exit

amdgpu_res_next.exit:                             ; preds = %if.end19.i, %do.end8.i.amdgpu_res_next.exit_crit_edge
  %cursor.sroa.23.2 = phi ptr [ %cursor.sroa.23.121, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %incdec.ptr.i15, %if.end19.i ]
  %cursor.sroa.10.2 = phi i64 [ %cursor.sroa.10.123, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %25, %if.end19.i ]
  %cursor.sroa.0.2 = phi i64 [ %cursor.sroa.0.124, %do.end8.i.amdgpu_res_next.exit_crit_edge ], [ %shl.i16, %if.end19.i ]
  %tobool.not = icmp eq i64 %sub.i14, 0
  br i1 %tobool.not, label %amdgpu_res_next.exit.cleanup_crit_edge, label %amdgpu_res_next.exit.while.body_crit_edge

amdgpu_res_next.exit.while.body_crit_edge:        ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

amdgpu_res_next.exit.cleanup_crit_edge:           ; preds = %amdgpu_res_next.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_res_next.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %amdgpu_res_first.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %amdgpu_res_first.exit.cleanup_crit_edge ], [ %cmp5, %amdgpu_res_next.exit.cleanup_crit_edge ], [ %cmp5, %while.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_move_blit(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %new_mem, ptr noundef %old_mem) unnamed_addr #0 align 64 {
entry:
  %src = alloca %struct.amdgpu_copy_mem, align 4
  %dst = alloca %struct.amdgpu_copy_mem, align 4
  %fence = alloca ptr, align 4
  %wipe_fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -17736
  %add.ptr.i55 = getelementptr i8, ptr %bo, i32 -72
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %src) #13
  %2 = getelementptr inbounds %struct.amdgpu_copy_mem, ptr %src, i32 0, i32 1
  %3 = getelementptr inbounds %struct.amdgpu_copy_mem, ptr %src, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dst) #13
  %4 = getelementptr inbounds %struct.amdgpu_copy_mem, ptr %dst, i32 0, i32 1
  %5 = getelementptr inbounds %struct.amdgpu_copy_mem, ptr %dst, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #13
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fence, align 4
  %7 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bo, ptr %src, align 4
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bo, ptr %dst, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %old_mem, ptr %2, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %new_mem, ptr %4, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %3, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %5, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %new_mem, i32 0, i32 1
  %13 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pages, align 4
  %shl = shl i32 %14, 12
  %conv = zext i32 %shl to i64
  %flags.i = getelementptr i8, ptr %bo, i32 432
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %flags.i, align 8
  %and.i = and i64 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %17 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resv, align 8
  %call7 = call i32 @amdgpu_ttm_copy_mem_to_mem(ptr noundef %add.ptr.i, ptr noundef nonnull %src, ptr noundef nonnull %dst, i64 noundef %conv, i1 noundef zeroext %tobool.i, ptr noundef %18, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end:                                           ; preds = %entry
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %old_mem, i32 0, i32 2
  %19 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flags.i, align 8
  %and = and i64 %22, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool9.not = icmp eq i64 %and, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end19_crit_edge, label %if.then10

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wipe_fence) #13
  %23 = ptrtoint ptr %wipe_fence to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %wipe_fence, align 4
  %call12 = call i32 @amdgpu_fill_buffer(ptr noundef %add.ptr.i55, i32 noundef -792801090, ptr noundef null, ptr noundef nonnull %wipe_fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else, label %cleanup

if.else:                                          ; preds = %if.then10
  %24 = ptrtoint ptr %wipe_fence to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wipe_fence, align 4
  %tobool15.not = icmp eq ptr %25, null
  br i1 %tobool15.not, label %if.else.cleanup.thread_crit_edge, label %if.then16

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then16:                                        ; preds = %if.else
  %26 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.then16.dma_fence_put.exit_crit_edge, label %if.then.i

if.then16.dma_fence_put.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.then16
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %27, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #13
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !154

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #13
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  call void @dma_fence_release(ptr noundef %refcount.i) #13
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.then16.dma_fence_put.exit_crit_edge
  %29 = ptrtoint ptr %wipe_fence to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wipe_fence, align 4
  %31 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %fence, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %dma_fence_put.exit, %if.else.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wipe_fence) #13
  br label %if.end19

cleanup:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wipe_fence) #13
  br label %error

if.end19:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %type = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 2
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp20 = icmp eq i32 %33, 1
  %34 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fence, align 4
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = call i32 @ttm_bo_move_accel_cleanup(ptr noundef %bo, ptr noundef %35, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %new_mem) #13
  br label %if.end27

if.else24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = call i32 @ttm_bo_move_accel_cleanup(ptr noundef %bo, ptr noundef %35, i1 noundef zeroext %evict, i1 noundef zeroext true, ptr noundef %new_mem) #13
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then22
  %r.0 = phi i32 [ %call23, %if.then22 ], [ %call26, %if.else24 ]
  %36 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fence, align 4
  %tobool.not.i57 = icmp eq ptr %37, null
  br i1 %tobool.not.i57, label %if.end27.cleanup32_crit_edge, label %if.then.i62

if.end27.cleanup32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.then.i62:                                      ; preds = %if.end27
  %refcount.i58 = getelementptr inbounds %struct.dma_fence, ptr %37, i32 0, i32 6
  %call.i.i.i.i.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i58, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  call void @llvm.prefetch.p0(ptr %refcount.i58, i32 1, i32 3, i32 1) #13
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i58, ptr %refcount.i58, i32 1, ptr elementtype(i32) %refcount.i58) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i60 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i60)
  %cmp.i.i.i.i.i61 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i60, 1
  br i1 %cmp.i.i.i.i.i61, label %if.then.i.i66, label %if.end5.i.i.i.i.i64

if.end5.i.i.i.i.i64:                              ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i60)
  %.not.i.i.i.i.i63 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i60, 0
  br i1 %.not.i.i.i.i.i63, label %if.end5.i.i.i.i.i64.cleanup32_crit_edge, label %if.then10.i.i.i.i.i65, !prof !154

if.end5.i.i.i.i.i64.cleanup32_crit_edge:          ; preds = %if.end5.i.i.i.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.then10.i.i.i.i.i65:                            ; preds = %if.end5.i.i.i.i.i64
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i58, i32 noundef 3) #13
  br label %cleanup32

if.then.i.i66:                                    ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  call void @dma_fence_release(ptr noundef %refcount.i58) #13
  br label %cleanup32

error:                                            ; preds = %cleanup, %entry.error_crit_edge
  %r.1 = phi i32 [ %call7, %entry.error_crit_edge ], [ %call12, %cleanup ]
  %39 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fence, align 4
  %tobool28.not = icmp eq ptr %40, null
  br i1 %tobool28.not, label %error.cleanup32_crit_edge, label %if.end31

error.cleanup32_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end31:                                         ; preds = %error
  %call.i = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %40, i1 noundef zeroext false, i32 noundef 2147483647) #13
  %41 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load ptr, ptr %fence, align 4
  %tobool.not.i68 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i68, label %if.end31.cleanup32_crit_edge, label %if.then.i73

if.end31.cleanup32_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.then.i73:                                      ; preds = %if.end31
  %refcount.i69 = getelementptr inbounds %struct.dma_fence, ptr %.pr, i32 0, i32 6
  %call.i.i.i.i.i.i.i70 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i69, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !152
  call void @llvm.prefetch.p0(ptr %refcount.i69, i32 1, i32 3, i32 1) #13
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i69, ptr %refcount.i69, i32 1, ptr elementtype(i32) %refcount.i69) #13, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i71 = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %cmp.i.i.i.i.i72 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i71, 1
  br i1 %cmp.i.i.i.i.i72, label %if.then.i.i77, label %if.end5.i.i.i.i.i75

if.end5.i.i.i.i.i75:                              ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i71)
  %.not.i.i.i.i.i74 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i71, 0
  br i1 %.not.i.i.i.i.i74, label %if.end5.i.i.i.i.i75.cleanup32_crit_edge, label %if.then10.i.i.i.i.i76, !prof !154

if.end5.i.i.i.i.i75.cleanup32_crit_edge:          ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.then10.i.i.i.i.i76:                            ; preds = %if.end5.i.i.i.i.i75
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcount.i69, i32 noundef 3) #13
  br label %cleanup32

if.then.i.i77:                                    ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !155
  call void @dma_fence_release(ptr noundef %refcount.i69) #13
  br label %cleanup32

cleanup32:                                        ; preds = %if.then.i.i77, %if.then10.i.i.i.i.i76, %if.end5.i.i.i.i.i75.cleanup32_crit_edge, %if.end31.cleanup32_crit_edge, %error.cleanup32_crit_edge, %if.then.i.i66, %if.then10.i.i.i.i.i65, %if.end5.i.i.i.i.i64.cleanup32_crit_edge, %if.end27.cleanup32_crit_edge
  %retval.0 = phi i32 [ %r.0, %if.end27.cleanup32_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i64.cleanup32_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i65 ], [ %r.0, %if.then.i.i66 ], [ %r.1, %if.end31.cleanup32_crit_edge ], [ %r.1, %if.end5.i.i.i.i.i75.cleanup32_crit_edge ], [ %r.1, %if.then10.i.i.i.i.i76 ], [ %r.1, %if.then.i.i77 ], [ %r.1, %error.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dst) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %src) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @amdgpu_mem_visible(ptr nocapture noundef readonly %adev, ptr noundef %mem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 1
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %if.then8 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge29
    i32 2, label %if.end9
  ]

entry.cleanup_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %mem, null
  br i1 %tobool.not.i, label %if.end9.if.end13_crit_edge, label %do.body28.i

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.body28.i:                                      ; preds = %if.end9
  %shl31.i = shl i32 %1, 12
  %conv32.i = zext i32 %shl31.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv32.i)
  %cmp33.i = icmp ugt i64 %shl, %conv32.i
  br i1 %cmp33.i, label %do.body42.i, label %do.end50.i, !prof !149

do.body42.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 66, 0\0A.popsection", ""() #13, !srcloc !150
  unreachable

do.end50.i:                                       ; preds = %do.body28.i
  %mm_nodes.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %mem, i32 0, i32 1
  %size51103.i = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %mem, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %size51103.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size51103.i, align 8
  %shl52104.i.mask = and i64 %6, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl52104.i.mask)
  %cmp53.not105.i.not = icmp eq i64 %shl52104.i.mask, 0
  br i1 %cmp53.not105.i.not, label %do.end50.i.while.body.i_crit_edge, label %do.end50.i.amdgpu_res_first.exit_crit_edge

do.end50.i.amdgpu_res_first.exit_crit_edge:       ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

do.end50.i.while.body.i_crit_edge:                ; preds = %do.end50.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end50.i.while.body.i_crit_edge
  %shl52108.i = phi i64 [ %shl52.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end50.i.while.body.i_crit_edge ]
  %start.addr.0107.i = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ 0, %do.end50.i.while.body.i_crit_edge ]
  %node.0106.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %mm_nodes.i, %do.end50.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1
  %sub.i = sub i64 %start.addr.0107.i, %shl52108.i
  %size51.i = getelementptr %struct.drm_mm_node, ptr %node.0106.i, i32 1, i32 2
  %7 = ptrtoint ptr %size51.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size51.i, align 8
  %shl52.i = shl i64 %8, 12
  %cmp53.not.i = icmp ult i64 %sub.i, %shl52.i
  br i1 %cmp53.not.i, label %while.body.i.amdgpu_res_first.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.amdgpu_res_first.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %amdgpu_res_first.exit

amdgpu_res_first.exit:                            ; preds = %while.body.i.amdgpu_res_first.exit_crit_edge, %do.end50.i.amdgpu_res_first.exit_crit_edge
  %node.0.lcssa.i = phi ptr [ %mm_nodes.i, %do.end50.i.amdgpu_res_first.exit_crit_edge ], [ %incdec.ptr.i, %while.body.i.amdgpu_res_first.exit_crit_edge ]
  %start.addr.0.lcssa.i = phi i64 [ 0, %do.end50.i.amdgpu_res_first.exit_crit_edge ], [ %sub.i, %while.body.i.amdgpu_res_first.exit_crit_edge ]
  %size51.lcssa.i = phi ptr [ %size51103.i, %do.end50.i.amdgpu_res_first.exit_crit_edge ], [ %size51.i, %while.body.i.amdgpu_res_first.exit_crit_edge ]
  %start57.i = getelementptr inbounds %struct.drm_mm_node, ptr %node.0.lcssa.i, i32 0, i32 1
  %9 = ptrtoint ptr %start57.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %start57.i, align 8
  %shl58.i = shl i64 %10, 12
  %add59.i = add i64 %shl58.i, %start.addr.0.lcssa.i
  %11 = ptrtoint ptr %size51.lcssa.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size51.lcssa.i, align 8
  %shl62.i = shl i64 %12, 12
  %sub63.i = sub i64 %shl62.i, %start.addr.0.lcssa.i
  %13 = tail call i64 @llvm.umin.i64(i64 %sub63.i, i64 %shl) #13
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %sub63.i)
  %cmp10.not.not = icmp ugt i64 %shl, %sub63.i
  br i1 %cmp10.not.not, label %amdgpu_res_first.exit.cleanup_crit_edge, label %amdgpu_res_first.exit.if.end13_crit_edge

amdgpu_res_first.exit.if.end13_crit_edge:         ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

amdgpu_res_first.exit.cleanup_crit_edge:          ; preds = %amdgpu_res_first.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %amdgpu_res_first.exit.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %cursor.sroa.0.028 = phi i64 [ %add59.i, %amdgpu_res_first.exit.if.end13_crit_edge ], [ 0, %if.end9.if.end13_crit_edge ]
  %cursor.sroa.7.027 = phi i64 [ %13, %amdgpu_res_first.exit.if.end13_crit_edge ], [ %shl, %if.end9.if.end13_crit_edge ]
  %add = add i64 %cursor.sroa.7.027, %cursor.sroa.0.028
  %visible_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  %14 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp15 = icmp ule i64 %add, %15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %amdgpu_res_first.exit.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge29
  %retval.0 = phi i1 [ false, %if.then8 ], [ %cmp15, %if.end13 ], [ true, %entry.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge29 ], [ false, %amdgpu_res_first.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_memcpy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_move_notify(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_dma_addr_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_gtt_mgr_has_gart_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_accel_cleanup(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_aper_access(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_mm_access(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atomfirmware_mem_training_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atomfirmware_get_fw_reserved_fb_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_init_nocheck(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_fini_nocheck(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ttm_vram_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %value = alloca [128 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup26_crit_edge

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup26_crit_edge

lor.lhs.false.cleanup26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

if.end:                                           ; preds = %lor.lhs.false
  %mc_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 62, i32 2
  %6 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mc_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %5)
  %cmp.not = icmp ugt i64 %7, %5
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup26_crit_edge

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

if.end4:                                          ; preds = %if.end
  %sub = sub i64 %7, %5
  %conv = trunc i64 %sub to i32
  %8 = tail call i32 @llvm.umin.i32(i32 %conv, i32 %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not60 = icmp eq i32 %8, 0
  br i1 %tobool9.not60, label %if.end4.cleanup26_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  br label %while.body

if.end4.cleanup26_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %if.end4.while.body_crit_edge
  %buf.addr.063 = phi ptr [ %add.ptr, %if.end21.while.body_crit_edge ], [ %buf, %if.end4.while.body_crit_edge ]
  %result.062 = phi i32 [ %add, %if.end21.while.body_crit_edge ], [ 0, %if.end4.while.body_crit_edge ]
  %size.addr.061 = phi i32 [ %sub24, %if.end21.while.body_crit_edge ], [ %8, %if.end4.while.body_crit_edge ]
  %9 = call i32 @llvm.umin.i32(i32 %size.addr.061, i32 512)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %value) #13
  %10 = call ptr @memset(ptr %value, i32 255, i32 512)
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  call void @amdgpu_device_vram_access(ptr noundef %3, i64 noundef %12, ptr noundef nonnull %value, i32 noundef %9, i1 noundef zeroext false) #13
  call void @__check_object_size(ptr noundef nonnull %value, i32 noundef %9, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %while.body.cleanup_crit_edge, label %if.end.i.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %while.body
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.063, i32 %9, i32 -1226833920) #18, !srcloc !165
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %value, i32 noundef %9) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.063, ptr noundef nonnull %value, i32 noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool19.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool19.not, label %if.end21, label %cleanup.thread

cleanup.thread:                                   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %value) #13
  br label %cleanup26

if.end21:                                         ; preds = %copy_to_user.exit
  %add = add i32 %result.062, %9
  %add.ptr = getelementptr i8, ptr %buf.addr.063, i32 %9
  %conv22 = zext i32 %9 to i64
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %add23 = add i64 %15, %conv22
  store i64 %add23, ptr %pos, align 8
  %sub24 = sub i32 %size.addr.061, %9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %value) #13
  %tobool9.not = icmp eq i32 %sub24, 0
  br i1 %tobool9.not, label %if.end21.cleanup26_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end21.cleanup26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup26

cleanup:                                          ; preds = %if.end.i.i.cleanup_crit_edge, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %value) #13
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup, %if.end21.cleanup26_crit_edge, %cleanup.thread, %if.end4.cleanup26_crit_edge, %if.end.cleanup26_crit_edge, %lor.lhs.false.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.2 = phi i32 [ -14, %cleanup ], [ -22, %lor.lhs.false.cleanup26_crit_edge ], [ -22, %entry.cleanup26_crit_edge ], [ -6, %if.end.cleanup26_crit_edge ], [ -14, %cleanup.thread ], [ 0, %if.end4.cleanup26_crit_edge ], [ %add, %if.end21.cleanup26_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ttm_vram_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
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
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %and1 = and i64 %5, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup18_crit_edge

lor.lhs.false.cleanup18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.end:                                           ; preds = %lor.lhs.false
  %mc_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 62, i32 2
  %6 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mc_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.not = icmp ult i64 %5, %7
  br i1 %cmp.not, label %while.cond.preheader, label %if.end.cleanup18_crit_edge

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool5.not41 = icmp eq i32 %size, 0
  br i1 %tobool5.not41, label %while.cond.preheader.cleanup18_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup18_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buf.addr.044 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %size.addr.043 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %size, %while.cond.preheader.while.body_crit_edge ]
  %result.042 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #13
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %value, align 4, !annotation !151
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  %11 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mc_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp8.not = icmp ult i64 %10, %12
  br i1 %cmp8.not, label %if.end10, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end10:                                         ; preds = %while.body
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 2211) #13
  %13 = call i32 @llvm.read_register.i32(metadata !138) #13
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !166
  %and.i = and i32 %15, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !168
  %16 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.044, i32 -1226833921) #13, !srcloc !169
  %asmresult = extractvalue { i32, i32 } %16, 0
  %asmresult12 = extractvalue { i32, i32 } %16, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #13, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !168
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %asmresult12, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %cleanup, label %cleanup.thread.split.loop.exit48

cleanup.thread.split.loop.exit48:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %asmresult.le = extractvalue { i32, i32 } %16, 0
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.split.loop.exit48, %while.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %asmresult.le, %cleanup.thread.split.loop.exit48 ], [ %result.042, %while.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #13
  br label %cleanup18

cleanup:                                          ; preds = %if.end10
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos, align 8
  call void @amdgpu_device_mm_access(ptr noundef %3, i64 noundef %19, ptr noundef nonnull %value, i32 noundef 4, i1 noundef zeroext true) #13
  %add = add i32 %result.042, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.044, i32 4
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos, align 8
  %add17 = add i64 %21, 4
  store i64 %add17, ptr %pos, align 8
  %sub = add i32 %size.addr.043, -4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #13
  %tobool5.not = icmp eq i32 %sub, 0
  br i1 %tobool5.not, label %cleanup.cleanup18_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.cleanup18_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup.cleanup18_crit_edge, %cleanup.thread, %while.cond.preheader.cleanup18_crit_edge, %if.end.cleanup18_crit_edge, %lor.lhs.false.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup18_crit_edge ], [ -22, %entry.cleanup18_crit_edge ], [ -6, %if.end.cleanup18_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ 0, %while.cond.preheader.cleanup18_crit_edge ], [ %add, %cleanup.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_vram_access(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_iomem_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call1 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not64 = icmp eq i32 %size, 0
  br i1 %tobool.not64, label %entry.cleanup32_crit_edge, label %while.body.lr.ph

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

while.body.lr.ph:                                 ; preds = %entry
  %tobool5.not = icmp eq ptr %call1, null
  %dev_mapping = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 68, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %result.066 = phi i32 [ 0, %while.body.lr.ph ], [ %add26, %cleanup.while.body_crit_edge ]
  %size.addr.065 = phi i32 [ %size, %while.body.lr.ph ], [ %sub24, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %8 = trunc i64 %7 to i32
  %conv = and i32 %8, -4096
  %9 = and i32 %8, 4095
  %conv3 = sub nuw nsw i32 4096, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %conv3, i32 %size.addr.065)
  br i1 %tobool5.not, label %while.body.cond.end9_crit_edge, label %cond.true6

while.body.cond.end9_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end9

cond.true6:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 @iommu_iova_to_phys(ptr noundef nonnull %call1, i32 noundef %conv) #13
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %while.body.cond.end9_crit_edge
  %cond10 = phi i32 [ %call7, %cond.true6 ], [ %conv, %while.body.cond.end9_crit_edge ]
  %shr = lshr i32 %cond10, 12
  %call11 = tail call i32 @pfn_valid(i32 noundef %shr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cond.end9.cleanup32_crit_edge, label %if.end

cond.end9.cleanup32_crit_edge:                    ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end:                                           ; preds = %cond.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub13 = sub i32 %shr, %12
  %mapping = getelementptr %struct.page, ptr %11, i32 %sub13, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapping, align 4
  %15 = ptrtoint ptr %dev_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_mapping, align 8
  %cmp14.not = icmp eq ptr %14, %16
  br i1 %cmp14.not, label %if.end17, label %if.end.cleanup32_crit_edge

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end17:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.page, ptr %11, i32 %sub13
  tail call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 44) #13
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  %shr.i.i = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %shr.i.i, label %if.end17.if.then.i56_crit_edge [
    i32 2, label %if.end17.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end17.if.else.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end17.if.then.i56_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i56

is_highmem_idx.exit.i:                            ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i56_crit_edge

is_highmem_idx.exit.i.if.then.i56_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i56

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i56:                                      ; preds = %is_highmem_idx.exit.i.if.then.i56_crit_edge, %if.end17.if.then.i56_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %add.ptr) #13
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end17.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %add.ptr) #13
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i56
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i56 ]
  %add.ptr19 = getelementptr i8, ptr %addr.0.i, i32 %9
  tail call void @__check_object_size(ptr noundef %add.ptr19, i32 noundef %10, i1 noundef zeroext true) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %kmap.exit.copy_to_user.exit_crit_edge, label %if.end.i.i

kmap.exit.copy_to_user.exit_crit_edge:            ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %kmap.exit
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %10, i32 -1226833920) #18, !srcloc !165
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr19, i32 noundef %10) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr19, i32 noundef %10) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %kmap.exit.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %10, %kmap.exit.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %10, %if.end.i.i.copy_to_user.exit_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 55) #13
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %shr.i.i57 = lshr i32 %23, 30
  %24 = zext i32 %shr.i.i57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %shr.i.i57, label %copy_to_user.exit.kunmap.exit_crit_edge [
    i32 2, label %copy_to_user.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i59
  ]

copy_to_user.exit.if.end.i_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

copy_to_user.exit.kunmap.exit_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit

is_highmem_idx.exit.i59:                          ; preds = %copy_to_user.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %25 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.not.i58 = icmp eq i32 %25, 2
  br i1 %cmp2.i.not.i58, label %is_highmem_idx.exit.i59.if.end.i_crit_edge, label %is_highmem_idx.exit.i59.kunmap.exit_crit_edge

is_highmem_idx.exit.i59.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit

is_highmem_idx.exit.i59.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i59.if.end.i_crit_edge, %copy_to_user.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %add.ptr) #13
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i59.kunmap.exit_crit_edge, %copy_to_user.exit.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool21.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool21.not, label %cleanup, label %kunmap.exit.cleanup32_crit_edge

kunmap.exit.cleanup32_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

cleanup:                                          ; preds = %kunmap.exit
  %sub24 = sub i32 %size.addr.065, %10
  %conv25 = zext i32 %10 to i64
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos, align 8
  %add = add i64 %27, %conv25
  store i64 %add, ptr %pos, align 8
  %add26 = add i32 %10, %result.066
  %tobool.not = icmp eq i32 %sub24, 0
  br i1 %tobool.not, label %cleanup.cleanup32_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.cleanup32_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup.cleanup32_crit_edge, %kunmap.exit.cleanup32_crit_edge, %if.end.cleanup32_crit_edge, %cond.end9.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup32_crit_edge ], [ -14, %kunmap.exit.cleanup32_crit_edge ], [ -1, %if.end.cleanup32_crit_edge ], [ -1, %cond.end9.cleanup32_crit_edge ], [ %add26, %cleanup.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_iomem_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call1 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not67 = icmp eq i32 %size, 0
  br i1 %tobool.not67, label %entry.cleanup32_crit_edge, label %while.body.lr.ph

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

while.body.lr.ph:                                 ; preds = %entry
  %tobool5.not = icmp eq ptr %call1, null
  %dev_mapping = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 68, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %result.069 = phi i32 [ 0, %while.body.lr.ph ], [ %add26, %cleanup.while.body_crit_edge ]
  %size.addr.068 = phi i32 [ %size, %while.body.lr.ph ], [ %sub24, %cleanup.while.body_crit_edge ]
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %8 = trunc i64 %7 to i32
  %conv = and i32 %8, -4096
  %9 = and i32 %8, 4095
  %conv3 = sub nuw nsw i32 4096, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %conv3, i32 %size.addr.068)
  br i1 %tobool5.not, label %while.body.cond.end9_crit_edge, label %cond.true6

while.body.cond.end9_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end9

cond.true6:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 @iommu_iova_to_phys(ptr noundef nonnull %call1, i32 noundef %conv) #13
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %while.body.cond.end9_crit_edge
  %cond10 = phi i32 [ %call7, %cond.true6 ], [ %conv, %while.body.cond.end9_crit_edge ]
  %shr = lshr i32 %cond10, 12
  %call11 = tail call i32 @pfn_valid(i32 noundef %shr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cond.end9.cleanup32_crit_edge, label %if.end

cond.end9.cleanup32_crit_edge:                    ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end:                                           ; preds = %cond.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub13 = sub i32 %shr, %12
  %mapping = getelementptr %struct.page, ptr %11, i32 %sub13, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapping, align 4
  %15 = ptrtoint ptr %dev_mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_mapping, align 8
  %cmp14.not = icmp eq ptr %14, %16
  br i1 %cmp14.not, label %if.end17, label %if.end.cleanup32_crit_edge

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

if.end17:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.page, ptr %11, i32 %sub13
  tail call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 44) #13
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  %shr.i.i = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %shr.i.i, label %if.end17.if.then.i56_crit_edge [
    i32 2, label %if.end17.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end17.if.else.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end17.if.then.i56_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i56

is_highmem_idx.exit.i:                            ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i56_crit_edge

is_highmem_idx.exit.i.if.then.i56_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i56

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i56:                                      ; preds = %is_highmem_idx.exit.i.if.then.i56_crit_edge, %if.end17.if.then.i56_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %add.ptr) #13
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end17.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %add.ptr) #13
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i56
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i56 ]
  %add.ptr19 = getelementptr i8, ptr %addr.0.i, i32 %9
  tail call void @__check_object_size(ptr noundef %add.ptr19, i32 noundef %10, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.54, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %kmap.exit.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

kmap.exit.if.then11.i.i_crit_edge:                ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %kmap.exit
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %10, i32 -1226833920) #18, !srcloc !170
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !154

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr19, i32 noundef %10) #13
  %22 = tail call i32 @llvm.read_register.i32(metadata !138) #13
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !166
  %and.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !168
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr19, ptr noundef %buf, i32 noundef %10) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #13, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !154

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %kmap.exit.if.then11.i.i_crit_edge
  %res.0.i.i62 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %10, %kmap.exit.if.then11.i.i_crit_edge ], [ %10, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %10, %res.0.i.i62
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr19, i32 %sub.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i62)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ %res.0.i.i62, %if.then11.i.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.55, i32 noundef 55) #13
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %shr.i.i57 = lshr i32 %27, 30
  %28 = zext i32 %shr.i.i57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %shr.i.i57, label %copy_from_user.exit.kunmap.exit_crit_edge [
    i32 2, label %copy_from_user.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i59
  ]

copy_from_user.exit.if.end.i_crit_edge:           ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

copy_from_user.exit.kunmap.exit_crit_edge:        ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit

is_highmem_idx.exit.i59:                          ; preds = %copy_from_user.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %29 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i.not.i58 = icmp eq i32 %29, 2
  br i1 %cmp2.i.not.i58, label %is_highmem_idx.exit.i59.if.end.i_crit_edge, label %is_highmem_idx.exit.i59.kunmap.exit_crit_edge

is_highmem_idx.exit.i59.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit

is_highmem_idx.exit.i59.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i59.if.end.i_crit_edge, %copy_from_user.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %add.ptr) #13
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i59.kunmap.exit_crit_edge, %copy_from_user.exit.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool21.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool21.not, label %cleanup, label %kunmap.exit.cleanup32_crit_edge

kunmap.exit.cleanup32_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

cleanup:                                          ; preds = %kunmap.exit
  %sub24 = sub i32 %size.addr.068, %10
  %conv25 = zext i32 %10 to i64
  %30 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pos, align 8
  %add = add i64 %31, %conv25
  store i64 %add, ptr %pos, align 8
  %add26 = add i32 %10, %result.069
  %tobool.not = icmp eq i32 %sub24, 0
  br i1 %tobool.not, label %cleanup.cleanup32_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.cleanup32_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup.cleanup32_crit_edge, %kunmap.exit.cleanup32_crit_edge, %if.end.cleanup32_crit_edge, %cond.end9.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup32_crit_edge ], [ -14, %kunmap.exit.cleanup32_crit_edge ], [ -1, %if.end.cleanup32_crit_edge ], [ -1, %cond.end9.cleanup32_crit_edge ], [ %add26, %cleanup.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_iova_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_vram_table_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_mm_vram_table_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_vram_table_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #13
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !171
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !171
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %5, align 4, !alias.scope !171
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4, !alias.scope !171
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  %debug = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug, align 4
  call void %14(ptr noundef %3, ptr noundef nonnull %p) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_tt_table_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_mm_tt_table_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_tt_table_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #13
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !174
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !174
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %5, align 4, !alias.scope !174
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4, !alias.scope !174
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  %debug = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug, align 4
  call void %14(ptr noundef %3, ptr noundef nonnull %p) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_gds_table_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_mm_gds_table_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_gds_table_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #13
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !177
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !177
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %5, align 4, !alias.scope !177
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4, !alias.scope !177
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  %debug = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug, align 4
  call void %14(ptr noundef %3, ptr noundef nonnull %p) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_gws_table_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_mm_gws_table_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_gws_table_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #13
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !180
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !180
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %5, align 4, !alias.scope !180
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4, !alias.scope !180
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  %debug = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug, align 4
  call void %14(ptr noundef %3, ptr noundef nonnull %p) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_oa_table_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_mm_oa_table_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_mm_oa_table_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #13
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !183
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !183
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %5, align 4, !alias.scope !183
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4, !alias.scope !183
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  %debug = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug, align 4
  call void %14(ptr noundef %3, ptr noundef nonnull %p) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ttm_page_pool_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @amdgpu_ttm_page_pool_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_ttm_page_pool_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pool = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 68, i32 0, i32 5
  %call = tail call i32 @ttm_pool_debugfs(ptr noundef %pool, ptr noundef %m) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_debugfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !21, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__UNIQUE_ID_import_ns390, !1, !"__UNIQUE_ID_import_ns390", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 64, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 309, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 665, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 670, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 695, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @amdgpu_ttm_tt_get_user_pages.__UNIQUE_ID_ddebug399, !9, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 716, i32 2}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 719, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @amdgpu_ttm_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1663, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1672, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1680, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1749, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @amdgpu_ttm_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @amdgpu_ttm_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1768, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1771, i32 2}
!35 = !{ptr @amdgpu_ttm_init._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @amdgpu_ttm_init._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1777, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1784, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1790, i32 3}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1796, i32 3}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1840, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @amdgpu_ttm_fini._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @amdgpu_ttm_fini._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1872, i32 4}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1930, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1960, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1981, i32 3}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1986, i32 3}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2074, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2355, i32 27}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2357, i32 22}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2359, i32 22}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2361, i32 22}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2363, i32 22}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2365, i32 22}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2367, i32 22}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2369, i32 22}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_res_cursor.h", i32 62, i32 3}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 862, i32 3}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 192, i32 2}
!84 = !{ptr @amdgpu_bo_driver, !85, !"amdgpu_bo_driver", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1488, i32 32}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1052, i32 3}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 819, i32 3}
!90 = !{ptr @amdgpu_evict_flags.placements, !91, !"placements", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 95, i32 32}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_gmc.h", i32 286, i32 2}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 474, i32 6}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 543, i32 4}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @amdgpu_bo_move._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @amdgpu_bo_move._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 892, i32 4}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 913, i32 3}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1601, i32 4}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1626, i32 4}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1640, i32 3}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 1581, i32 2}
!113 = !{ptr @amdgpu_ttm_vram_fops, !114, !"amdgpu_ttm_vram_fops", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2226, i32 37}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!117 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!122 = !{ptr @amdgpu_ttm_iomem_fops, !123, !"amdgpu_ttm_iomem_fops", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2340, i32 37}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!126 = !{ptr @amdgpu_mm_vram_table_fops, !127, !"amdgpu_mm_vram_table_fops", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2145, i32 1}
!128 = !{ptr @amdgpu_mm_tt_table_fops, !129, !"amdgpu_mm_tt_table_fops", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2146, i32 1}
!130 = !{ptr @amdgpu_mm_gds_table_fops, !131, !"amdgpu_mm_gds_table_fops", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2147, i32 1}
!132 = !{ptr @amdgpu_mm_gws_table_fops, !133, !"amdgpu_mm_gws_table_fops", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2148, i32 1}
!134 = !{ptr @amdgpu_mm_oa_table_fops, !135, !"amdgpu_mm_oa_table_fops", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2149, i32 1}
!136 = !{ptr @amdgpu_ttm_page_pool_fops, !137, !"amdgpu_ttm_page_pool_fops", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c", i32 2150, i32 1}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i8 0, i8 2}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i64 2158860189, i64 2158860709, i64 2158860226, i64 2158860282, i64 2158860316, i64 2158860340, i64 2158860381, i64 2158860402, i64 2158860430, i64 2158860464}
!151 = !{!"auto-init"}
!152 = !{i64 2148658588}
!153 = !{i64 2148573052, i64 2148573084, i64 2148573113, i64 2148573147, i64 2148573178, i64 2148573201}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2149680641}
!156 = !{i64 2158863655, i64 2158864175, i64 2158863692, i64 2158863748, i64 2158863782, i64 2158863806, i64 2158863847, i64 2158863868, i64 2158863896, i64 2158863930}
!157 = !{i64 2148570587, i64 2148570619, i64 2148570648, i64 2148570682, i64 2148570713, i64 2148570736}
!158 = !{i64 2159456684, i64 2159457188, i64 2159456721, i64 2159456777, i64 2159456811, i64 2159456835, i64 2159456876, i64 2159456897, i64 2159456925, i64 2159456959}
!159 = !{i64 2159458370, i64 2159458874, i64 2159458407, i64 2159458463, i64 2159458497, i64 2159458521, i64 2159458562, i64 2159458583, i64 2159458611, i64 2159458645}
!160 = !{i64 2148568476}
!161 = !{i64 1055076, i64 1055101, i64 1055123, i64 1055139, i64 1055151, i64 1055171, i64 1055195, i64 1055211, i64 1055223}
!162 = !{i64 2148568664}
!163 = !{i64 2148382450, i64 2148382455, i64 2148382468, i64 2148382512, i64 2148382546, i64 2148382567}
!164 = !{i64 2148407637, i64 2148407917, i64 2148408251, i64 2148408585}
!165 = !{i64 2153274072, i64 2153274097}
!166 = !{i64 5768946}
!167 = !{i64 5769143}
!168 = !{i64 2153254376}
!169 = !{i64 2159588167, i64 2159588447, i64 2159588781, i64 2159589115}
!170 = !{i64 2153273391, i64 2153273416}
!171 = !{!172}
!172 = distinct !{!172, !173, !"drm_seq_file_printer: %agg.result"}
!173 = distinct !{!173, !"drm_seq_file_printer"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"drm_seq_file_printer: %agg.result"}
!176 = distinct !{!176, !"drm_seq_file_printer"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"drm_seq_file_printer: %agg.result"}
!179 = distinct !{!179, !"drm_seq_file_printer"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"drm_seq_file_printer: %agg.result"}
!182 = distinct !{!182, !"drm_seq_file_printer"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"drm_seq_file_printer: %agg.result"}
!185 = distinct !{!185, !"drm_seq_file_printer"}
