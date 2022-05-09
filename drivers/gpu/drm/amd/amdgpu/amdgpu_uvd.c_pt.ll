; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.80, i64, i64, i32, %struct.kref, i32 }
%union.anon.80 = type { i64 }
%struct.amdgpu_uvd_cs_ctx = type { ptr, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.amdgpu_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ww_acquire_ctx, ptr, ptr, %struct.amdgpu_bo_list_entry, %struct.list_head, ptr, i64, i64, i64, i64, %struct.amdgpu_bo_list_entry, i32, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.amdgpu_bo_list_entry = type { %struct.ttm_validate_buffer, ptr, ptr, i32, ptr, i8 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_sa_bo = type { %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.amdgpu_bo_va_mapping = type { ptr, %struct.list_head, %struct.rb_node, i64, i64, i64, i64, i64 }

@__UNIQUE_ID_firmware343 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/tahiti_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/verde_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [40 x i8] c"amdgpu.firmware=amdgpu/pitcairn_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/oland_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/bonaire_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kabini_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kaveri_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/hawaii_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/mullins_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/tonga_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/carrizo_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/fiji_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/stoney_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris10_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris11_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris12_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/vegam_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega10_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega12_uvd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega20_uvd.bin\00", section ".modinfo", align 1
@amdgpu_uvd_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&adev->uvd.idle_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_uvd_sw_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&adev->uvd.idle_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/tahiti_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/verde_uvd.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu/pitcairn_uvd.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/oland_uvd.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/bonaire_uvd.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/kabini_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/kaveri_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/hawaii_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/mullins_uvd.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/tonga_uvd.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu/fiji_uvd.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/carrizo_uvd.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/stoney_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris10_uvd.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris11_uvd.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris12_uvd.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega10_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega12_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/vegam_uvd.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega20_uvd.bin\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_uvd_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 265, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: amdgpu_uvd: Can't load firmware \22%s\22\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu_uvd_sw_init\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_uvd_sw_init._entry_ptr = internal global ptr @amdgpu_uvd_sw_init._entry, section ".printk_index", align 4
@amdgpu_uvd_sw_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.25, i32 272, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: amdgpu_uvd: Can't validate firmware \22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_uvd_sw_init._entry_ptr.30 = internal global ptr @amdgpu_uvd_sw_init._entry.28, section ".printk_index", align 4
@amdgpu_uvd_sw_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.25, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016[drm] Found UVD firmware Version: %u.%u Family ID: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_uvd_sw_init._entry_ptr.33 = internal global ptr @amdgpu_uvd_sw_init._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"POLARIS10/11 UVD firmware version %u.%u is too old.\0A\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_uvd_sw_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.25, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016[drm] Found UVD firmware ENC: %u.%u DEC: .%u Family ID: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_uvd_sw_init._entry_ptr.37 = internal global ptr @amdgpu_uvd_sw_init._entry.35, section ".printk_index", align 4
@amdgpu_uvd_sw_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str.25, i32 336, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: (%d) failed to allocate UVD bo\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_uvd_sw_init._entry_ptr.40 = internal global ptr @amdgpu_uvd_sw_init._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed setting up UVD kernel entity.\0A\00", [58 x i8] zeroinitializer }, align 32
@amdgpu_uvd_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.25, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014[drm] UVD VCPU state may lost due to RAS ERREVENT_ATHUB_INTERRUPT\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu_uvd_suspend\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_uvd_suspend._entry_ptr = internal global ptr @amdgpu_uvd_suspend._entry, section ".printk_index", align 4
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error destroying UVD %d!\0A\00", [38 x i8] zeroinitializer }, align 32
@__const.amdgpu_uvd_ring_parse_cs.buf_sizes = private unnamed_addr constant [5 x i32] [i32 2048, i32 -1, i32 -1, i32 2048, i32 -1], align 4
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UVD IB length (%d) not 16 dwords aligned!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"UVD-IBs need a msg command!\0A\00", [35 x i8] zeroinitializer }, align 32
@__const.amdgpu_uvd_create_msg_bo_helper.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@amdgpu_ras_in_intr = external dso_local global %struct.atomic_t, align 4
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown packet type %d !\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Register command after end of CS!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid reg 0x%X!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't find BO for addr 0x%08Lx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"buffer (%d) to small (%d / %d)!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid UVD command %X!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reloc %LX-%LX crossing 256MB boundary!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"msg/fb buffer %LX-%LX out of 256MB segment!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Message needed before other commands are send!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"UVD messages must be 64 byte aligned!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed mapping the UVD) message (%ld)!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid UVD handle!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c")Handle 0x%x already in use!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No more free UVD handles!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UVD handle collision detected!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid UVD handle 0x%x!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Illegal UVD message type (%d)!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UVD codec not handled %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid UVD decoding target pitch!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid dpb_size in UVD message (%d / %d)!\0A\00", [52 x i8] zeroinitializer }, align 32
@__const.amdgpu_uvd_send_msg.offset = private unnamed_addr constant [3 x i32] [i32 14336, i32 0, i32 0], align 4
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.69, i32 179, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.amdgpu_uvd_sw_init = internal constant { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @.str.3, ptr @.str.5, ptr @.str.4, ptr @.str.6, ptr @.str.3, ptr @.str.7, ptr @.str.9, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.19, ptr @.str.20, ptr @.str.22], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 15299, i64 15300, i64 15301, i64 15302, i64 15359]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 6, i64 7]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 516, i64 518]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 4, i64 7, i64 8, i64 16]
@__sancov_gen_cov_switch_values.77 = internal global [9 x i64] [i64 7, i64 32, i64 30, i64 31, i64 32, i64 41, i64 42, i64 50, i64 51]
@__sancov_gen_cov_switch_values.78 = internal global [9 x i64] [i64 7, i64 32, i64 30, i64 31, i64 32, i64 41, i64 42, i64 50, i64 51]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 191, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 196, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 199, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 202, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 205, i32 13 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 210, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 213, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 216, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 219, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 222, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 226, i32 13 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 229, i32 13 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 232, i32 13 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 235, i32 13 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 238, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 241, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 244, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 247, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 250, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 253, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 256, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 264, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 271, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 289, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 308, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 316, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 336, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 418, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 469, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 533, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1090, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1113, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1058, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1001, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 1021, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 586, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 936, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 950, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 956, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 963, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 975, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 821, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 827, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 837, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 849, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 860, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 874, i32 6 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 881, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 892, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 778, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 783, i32 3 }
@___asan_gen_.276 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 788, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 179, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant [32 x i8] c"switch.table.amdgpu_uvd_sw_init\00", align 1
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_uvd_suspend._entry, ptr @amdgpu_uvd_suspend._entry_ptr, ptr @amdgpu_uvd_sw_init._entry, ptr @amdgpu_uvd_sw_init._entry.28, ptr @amdgpu_uvd_sw_init._entry.31, ptr @amdgpu_uvd_sw_init._entry.35, ptr @amdgpu_uvd_sw_init._entry.38, ptr @amdgpu_uvd_sw_init._entry_ptr, ptr @amdgpu_uvd_sw_init._entry_ptr.30, ptr @amdgpu_uvd_sw_init._entry_ptr.33, ptr @amdgpu_uvd_sw_init._entry_ptr.37, ptr @amdgpu_uvd_sw_init._entry_ptr.40, ptr @amdgpu_uvd_sw_init.__key, ptr @.str, ptr @amdgpu_uvd_sw_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @switch.table.amdgpu_uvd_sw_init], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_uvd_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_uvd_sw_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_uvd_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_uvd_sw_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_uvd_sw_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_uvd_sw_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_uvd_sw_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_uvd_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_uvd_sw_init to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_sw_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uvd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 11
  tail call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #7
  %0 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %idle_work, align 8
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @amdgpu_uvd_sw_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 11, i32 0, i32 1
  %1 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 11, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 11, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @amdgpu_uvd_idle_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @amdgpu_uvd_sw_init.__key.1) #7
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %4 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %5)
  %6 = icmp ult i32 %5, 22
  br i1 %6, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 4193263, %5
  %7 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.lobit.not = icmp eq i32 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [22 x ptr], ptr @switch.table.amdgpu_uvd_sw_init, i32 0, i32 %5
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  %call = tail call i32 @request_firmware(ptr noundef %uvd, ptr noundef nonnull %switch.load, ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end44

do.end44:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23, ptr noundef nonnull %switch.load) #10
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %13 = ptrtoint ptr %uvd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %uvd, align 8
  %call48 = tail call i32 @amdgpu_ucode_validate(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end59, label %do.end53

do.end53:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.29, ptr noundef nonnull %switch.load) #10
  %17 = ptrtoint ptr %uvd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uvd, align 8
  tail call void @release_firmware(ptr noundef %18) #7
  %19 = ptrtoint ptr %uvd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %uvd, align 8
  br label %cleanup

if.end59:                                         ; preds = %if.end
  %max_handles = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 2
  %20 = ptrtoint ptr %max_handles to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %max_handles, align 8
  %21 = ptrtoint ptr %uvd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %uvd, align 8
  %data63 = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data63, align 4
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ucode_version, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %and = and i32 %27, 255
  %28 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %29)
  %cmp = icmp ult i32 %29, 21
  br i1 %cmp, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.end59
  %shr = lshr i32 %27, 24
  %shr69 = lshr i32 %27, 8
  %and70 = and i32 %shr69, 255
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %shr, i32 noundef %and70, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %27)
  %cmp75 = icmp ugt i32 %27, 33554431
  br i1 %cmp75, label %if.then65.if.then78_crit_edge, label %lor.lhs.false

if.then65.if.then78_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78

lor.lhs.false:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp76 = icmp eq i32 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %and70)
  %cmp77 = icmp ugt i32 %and70, 79
  %or.cond = and i1 %cmp76, %cmp77
  br i1 %or.cond, label %lor.lhs.false.if.then78_crit_edge, label %lor.lhs.false.if.end81_crit_edge

lor.lhs.false.if.end81_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

lor.lhs.false.if.then78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then78

if.then78:                                        ; preds = %lor.lhs.false.if.then78_crit_edge, %if.then65.if.then78_crit_edge
  %30 = ptrtoint ptr %max_handles to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 40, ptr %max_handles, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %lor.lhs.false.if.end81_crit_edge
  %shl = and i32 %27, -16777216
  %shl82 = shl nuw nsw i32 %and70, 16
  %or = or i32 %shl82, %shl
  %shl83 = shl nuw nsw i32 %and, 8
  %or84 = or i32 %or, %shl83
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %31 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or84, ptr %fw_version, align 4
  %32 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %asic_type, align 8
  %.off = add i32 %33, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 21106688, i32 %or84)
  %cmp94 = icmp ult i32 %or84, 21106688
  %or.cond303 = select i1 %switch, i1 %cmp94, i1 false
  br i1 %or.cond303, label %if.then95, label %if.end81.if.end116_crit_edge

if.end81.if.end116_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then95:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %shr, i32 noundef %and70) #7
  br label %if.end116

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %shr98 = lshr i32 %27, 8
  %and99 = and i32 %shr98, 255
  %shr101 = lshr i32 %27, 24
  %and102 = and i32 %shr101, 63
  %shr104 = lshr i32 %27, 30
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %shr104, i32 noundef %and102, i32 noundef %and99, i32 noundef %and) #10
  %34 = ptrtoint ptr %max_handles to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 40, ptr %max_handles, align 8
  %35 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ucode_version, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %fw_version115 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %38 = ptrtoint ptr %fw_version115 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %fw_version115, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.else, %if.then95, %if.end81.if.end116_crit_edge
  %39 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_handles, align 8
  %mul = mul i32 %40, 51200
  %add = add i32 %mul, 466944
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  %41 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp119.not = icmp eq i32 %42, 2
  br i1 %cmp119.not, label %if.end116.if.end125_crit_edge, label %if.then120

if.end116.if.end125_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %24, i32 0, i32 7
  %43 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ucode_size_bytes, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %add122 = add i32 %45, 4103
  %and123 = and i32 %add122, -4096
  %add124 = add i32 %and123, %add
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %if.end116.if.end125_crit_edge
  %bo_size.0 = phi i32 [ %add124, %if.then120 ], [ %add, %if.end116.if.end125_crit_edge ]
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 4
  %46 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp127305.not = icmp eq i8 %47, 0
  br i1 %cmp127305.not, label %if.end125.for.cond150.preheader_crit_edge, label %for.body.lr.ph

if.end125.for.cond150.preheader_crit_edge:        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond150.preheader

for.body.lr.ph:                                   ; preds = %if.end125
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 12
  br label %for.body

for.cond150.preheader:                            ; preds = %for.inc.for.cond150.preheader_crit_edge, %if.end125.for.cond150.preheader_crit_edge
  %48 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_handles, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp153308.not = icmp eq i32 %49, 0
  br i1 %cmp153308.not, label %for.cond150.preheader.for.end162_crit_edge, label %for.cond150.preheader.for.body155_crit_edge

for.cond150.preheader.for.body155_crit_edge:      ; preds = %for.cond150.preheader
  br label %for.body155

for.cond150.preheader.for.end162_crit_edge:       ; preds = %for.cond150.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0306 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %50 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %harvest_config, align 4
  %shl130 = shl nuw i32 1, %j.0306
  %and131 = and i32 %51, %shl130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end134, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end134:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.0306
  %gpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.0306, i32 2
  %cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.0306, i32 1
  %call142 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %bo_size.0, i32 noundef 4096, i32 noundef 4, ptr noundef %arrayidx, ptr noundef %gpu_addr, ptr noundef %cpu_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end134.for.inc_crit_edge, label %do.end147

if.end134.for.inc_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end147:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.39, i32 noundef %call142) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end134.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0306, 1
  %54 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %55 to i32
  %cmp127 = icmp ult i32 %inc, %conv
  br i1 %cmp127, label %for.inc.for.body_crit_edge, label %for.inc.for.cond150.preheader_crit_edge

for.inc.for.cond150.preheader_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond150.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body155:                                      ; preds = %for.body155.for.body155_crit_edge, %for.cond150.preheader.for.body155_crit_edge
  %i.0309 = phi i32 [ %inc161, %for.body155.for.body155_crit_edge ], [ 0, %for.cond150.preheader.for.body155_crit_edge ]
  %arrayidx157 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 9, i32 %i.0309
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx157, i32 noundef 4) #7
  %56 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 0, ptr %arrayidx157, align 4
  %arrayidx159 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 8, i32 %i.0309
  %57 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx159, align 4
  %inc161 = add nuw i32 %i.0309, 1
  %58 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_handles, align 8
  %cmp153 = icmp ult i32 %inc161, %59
  br i1 %cmp153, label %for.body155.for.body155_crit_edge, label %for.body155.for.end162_crit_edge

for.body155.for.end162_crit_edge:                 ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162

for.body155.for.body155_crit_edge:                ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body155

for.end162:                                       ; preds = %for.body155.for.end162_crit_edge, %for.cond150.preheader.for.end162_crit_edge
  %call163 = tail call i32 @amdgpu_device_ip_block_version_cmp(ptr noundef %adev, i32 noundef 8, i32 noundef 5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then165, label %for.end162.if.end167_crit_edge

for.end162.if.end167_crit_edge:                   ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then165:                                       ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #9
  %address_64_bit = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 5
  %60 = ptrtoint ptr %address_64_bit to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %address_64_bit, align 1
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %for.end162.if.end167_crit_edge
  %ib_bo = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 15
  %call169 = tail call fastcc i32 @amdgpu_uvd_create_msg_bo_helper(ptr noundef %adev, i32 noundef 131072, ptr noundef %ib_bo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end172:                                        ; preds = %if.end167
  %61 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %asic_type, align 8
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %62, label %sw.default204 [
    i32 11, label %sw.bb174
    i32 13, label %sw.bb180
    i32 12, label %sw.bb188
    i32 14, label %sw.bb196
  ]

sw.bb174:                                         ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %fw_version176 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %64 = ptrtoint ptr %fw_version176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fw_version176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21039615, i32 %65)
  %cmp177 = icmp ugt i32 %65, 21039615
  %use_ctx_buf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 6
  %frombool = zext i1 %cmp177 to i8
  %66 = ptrtoint ptr %use_ctx_buf to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool, ptr %use_ctx_buf, align 2
  br label %cleanup

sw.bb180:                                         ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %fw_version182 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %67 = ptrtoint ptr %fw_version182 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fw_version182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22481663, i32 %68)
  %cmp183 = icmp ugt i32 %68, 22481663
  %use_ctx_buf186 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 6
  %frombool187 = zext i1 %cmp183 to i8
  %69 = ptrtoint ptr %use_ctx_buf186 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %frombool187, ptr %use_ctx_buf186, align 2
  br label %cleanup

sw.bb188:                                         ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %fw_version190 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %70 = ptrtoint ptr %fw_version190 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fw_version190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22481919, i32 %71)
  %cmp191 = icmp ugt i32 %71, 22481919
  %use_ctx_buf194 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 6
  %frombool195 = zext i1 %cmp191 to i8
  %72 = ptrtoint ptr %use_ctx_buf194 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %frombool195, ptr %use_ctx_buf194, align 2
  br label %cleanup

sw.bb196:                                         ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %fw_version198 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %73 = ptrtoint ptr %fw_version198 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fw_version198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19205887, i32 %74)
  %cmp199 = icmp ugt i32 %74, 19205887
  %use_ctx_buf202 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 6
  %frombool203 = zext i1 %cmp199 to i8
  %75 = ptrtoint ptr %use_ctx_buf202 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %frombool203, ptr %use_ctx_buf202, align 2
  br label %cleanup

sw.default204:                                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %62)
  %cmp206 = icmp ugt i32 %62, 14
  %use_ctx_buf209 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 6
  %frombool210 = zext i1 %cmp206 to i8
  %76 = ptrtoint ptr %use_ctx_buf209 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %frombool210, ptr %use_ctx_buf209, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.default204, %sw.bb196, %sw.bb188, %sw.bb180, %sw.bb174, %if.end167.cleanup_crit_edge, %do.end147, %do.end53, %do.end44, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end44 ], [ %call48, %do.end53 ], [ %call142, %do.end147 ], [ -22, %entry.cleanup_crit_edge ], [ %call169, %if.end167.cleanup_crit_edge ], [ 0, %sw.default204 ], [ 0, %sw.bb196 ], [ 0, %sw.bb188 ], [ 0, %sw.bb180 ], [ 0, %sw.bb174 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_uvd_idle_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -65344
  %num_uvd_inst = getelementptr i8, ptr %work, i32 -6016
  %0 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp55.not = icmp eq i8 %1, 0
  br i1 %cmp55.not, label %entry.if.then20_crit_edge, label %for.body.lr.ph

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr i8, ptr %work, i32 100
  %inst = getelementptr i8, ptr %work, i32 -6008
  %num_enc_rings = getelementptr i8, ptr %work, i32 -6020
  br label %for.body

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.inc15.for.body_crit_edge ]
  %fences.056 = phi i32 [ 0, %for.body.lr.ph ], [ %fences.2, %for.inc15.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.057
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc15_crit_edge

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [2 x %struct.amdgpu_uvd_inst], ptr %inst, i32 0, i32 %i.057
  %ring = getelementptr inbounds %struct.amdgpu_uvd_inst, ptr %arrayidx, i32 0, i32 4
  %call = tail call i32 @amdgpu_fence_count_emitted(ptr noundef %ring) #7
  %add = add i32 %call, %fences.056
  %4 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp651.not = icmp eq i32 %5, 0
  br i1 %cmp651.not, label %if.end.for.inc15_crit_edge, label %if.end.for.body8_crit_edge

if.end.for.body8_crit_edge:                       ; preds = %if.end
  br label %for.body8

if.end.for.inc15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %if.end.for.body8_crit_edge
  %j.053 = phi i32 [ %inc, %for.body8.for.body8_crit_edge ], [ 0, %if.end.for.body8_crit_edge ]
  %fences.152 = phi i32 [ %add14, %for.body8.for.body8_crit_edge ], [ %add, %if.end.for.body8_crit_edge ]
  %arrayidx12 = getelementptr %struct.amdgpu_uvd_inst, ptr %arrayidx, i32 0, i32 5, i32 %j.053
  %call13 = tail call i32 @amdgpu_fence_count_emitted(ptr noundef %arrayidx12) #7
  %add14 = add i32 %call13, %fences.152
  %inc = add nuw i32 %j.053, 1
  %6 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_enc_rings, align 4
  %cmp6 = icmp ult i32 %inc, %7
  br i1 %cmp6, label %for.body8.for.body8_crit_edge, label %for.body8.for.inc15_crit_edge

for.body8.for.inc15_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.inc15:                                        ; preds = %for.body8.for.inc15_crit_edge, %if.end.for.inc15_crit_edge, %for.body.for.inc15_crit_edge
  %fences.2 = phi i32 [ %fences.056, %for.body.for.inc15_crit_edge ], [ %add, %if.end.for.inc15_crit_edge ], [ %add14, %for.body8.for.inc15_crit_edge ]
  %inc16 = add nuw nsw i32 %i.057, 1
  %8 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %9 to i32
  %cmp = icmp ult i32 %inc16, %conv
  br i1 %cmp, label %for.inc15.for.body_crit_edge, label %for.end17

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end17:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fences.2)
  %cmp18 = icmp eq i32 %fences.2, 0
  br i1 %cmp18, label %for.end17.if.then20_crit_edge, label %if.else27

for.end17.if.then20_crit_edge:                    ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %for.end17.if.then20_crit_edge, %entry.if.then20_crit_edge
  %dpm_enabled = getelementptr i8, ptr %work, i32 -36152
  %10 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dpm_enabled, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_dpm_enable_uvd(ptr noundef %add.ptr, i1 noundef zeroext false) #7
  br label %if.end31

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %asic_funcs = getelementptr i8, ptr %work, i32 -62948
  %12 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs, align 4
  %set_uvd_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_uvd_clocks, align 4
  %call23 = tail call i32 %15(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0) #7
  %call24 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %add.ptr, i32 noundef 8, i32 noundef 0) #7
  %call25 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %add.ptr, i32 noundef 8, i32 noundef 0) #7
  br label %if.end31

if.else27:                                        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 100) #7
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.else, %if.then22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_block_version_cmp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_uvd_create_msg_bo_helper(ptr noundef %adev, i32 noundef %size, ptr nocapture noundef writeonly %bo_ptr) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %bo = alloca ptr, align 4
  %addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #7
  %0 = call ptr @memcpy(ptr %ctx, ptr @__const.amdgpu_uvd_create_msg_bo_helper.ctx, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #7
  %1 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #7
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %addr, align 4, !annotation !182
  %call = call i32 @amdgpu_bo_create_reserved(ptr noundef %adev, i32 noundef %size, i32 noundef 4096, i32 noundef 2, ptr noundef nonnull %bo, ptr noundef null, ptr noundef nonnull %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %address_64_bit = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 5
  %3 = ptrtoint ptr %address_64_bit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %address_64_bit, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.succ_crit_edge

if.end.succ_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %succ

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bo, align 4
  call void @amdgpu_bo_kunmap(ptr noundef %6) #7
  %7 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo, align 4
  call void @amdgpu_bo_unpin(ptr noundef %8) #7
  %9 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo, align 4
  call void @amdgpu_bo_placement_from_domain(ptr noundef %10, i32 noundef 4) #7
  %11 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo, align 4
  %placement.i = getelementptr inbounds %struct.amdgpu_bo, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %placement.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %placement.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.not.i = icmp eq i32 %14, 0
  br i1 %cmp8.not.i, label %if.end3.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge, label %if.end3.for.body.i_crit_edge

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

if.end3.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_uvd_force_into_uvd_segment.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_bo, ptr %12, i32 0, i32 2, i32 %i.09.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.i, align 8
  %lpfn.i = getelementptr %struct.amdgpu_bo, ptr %12, i32 0, i32 2, i32 %i.09.i, i32 1
  %16 = ptrtoint ptr %lpfn.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65536, ptr %lpfn.i, align 4
  %inc.i = add nuw i32 %i.09.i, 1
  %17 = ptrtoint ptr %placement.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %placement.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge

for.body.i.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_uvd_force_into_uvd_segment.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

amdgpu_uvd_force_into_uvd_segment.exit:           ; preds = %for.body.i.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge, %if.end3.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge
  %19 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bo, align 4
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 4
  %placement = getelementptr inbounds %struct.amdgpu_bo, ptr %20, i32 0, i32 3
  %call4 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement, ptr noundef nonnull %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %amdgpu_uvd_force_into_uvd_segment.exit.err_crit_edge

amdgpu_uvd_force_into_uvd_segment.exit.err_crit_edge: ; preds = %amdgpu_uvd_force_into_uvd_segment.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end7:                                          ; preds = %amdgpu_uvd_force_into_uvd_segment.exit
  %21 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bo, align 4
  %call8 = call i32 @amdgpu_bo_pin(ptr noundef %22, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_crit_edge

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end11:                                         ; preds = %if.end7
  %23 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo, align 4
  %call12 = call i32 @amdgpu_bo_kmap(ptr noundef %24, ptr noundef nonnull %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.succ_crit_edge, label %err_kmap

if.end11.succ_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %succ

succ:                                             ; preds = %if.end11.succ_crit_edge, %if.end.succ_crit_edge
  %25 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %28, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 4, i32 6
  %29 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %30, ptr noundef null) #7
  %31 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %32, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %26, i32 0, i32 4, i32 0, i32 9
  %33 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %34) #7
  call void @ww_mutex_unlock(ptr noundef %34) #7
  %35 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bo, align 4
  %37 = ptrtoint ptr %bo_ptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %bo_ptr, align 4
  br label %cleanup

err_kmap:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bo, align 4
  call void @amdgpu_bo_unpin(ptr noundef %39) #7
  br label %err

err:                                              ; preds = %err_kmap, %if.end7.err_crit_edge, %amdgpu_uvd_force_into_uvd_segment.exit.err_crit_edge
  %r.0 = phi i32 [ %call4, %amdgpu_uvd_force_into_uvd_segment.exit.err_crit_edge ], [ %call8, %if.end7.err_crit_edge ], [ %call12, %err_kmap ]
  %40 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bo, align 4
  %tbo.i25 = getelementptr inbounds %struct.amdgpu_bo, ptr %41, i32 0, i32 4
  %bdev.i.i.i26 = getelementptr inbounds %struct.amdgpu_bo, ptr %41, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %bdev.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bdev.i.i.i26, align 8
  %lru_lock.i.i.i27 = getelementptr inbounds %struct.ttm_device, ptr %43, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i27) #7
  %resource.i.i.i28 = getelementptr inbounds %struct.amdgpu_bo, ptr %41, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %resource.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resource.i.i.i28, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i25, ptr noundef %45, ptr noundef null) #7
  %46 = ptrtoint ptr %bdev.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bdev.i.i.i26, align 8
  %lru_lock2.i.i.i29 = getelementptr inbounds %struct.ttm_device, ptr %47, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i29) #7
  %resv.i.i30 = getelementptr inbounds %struct.amdgpu_bo, ptr %41, i32 0, i32 4, i32 0, i32 9
  %48 = ptrtoint ptr %resv.i.i30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %resv.i.i30, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %49) #7
  call void @ww_mutex_unlock(ptr noundef %49) #7
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %succ, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %succ ], [ %r.0, %err ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_sw_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #7
  %ib_bo = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 15
  %0 = ptrtoint ptr %ib_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_bo, align 8
  %call = tail call ptr @amdgpu_bo_kptr(ptr noundef %1) #7
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %addr, align 4
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 10
  tail call void @drm_sched_entity_destroy(ptr noundef %entity) #7
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 4
  %3 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp55.not = icmp eq i8 %4, 0
  br i1 %cmp55.not, label %entry.for.end28_crit_edge, label %for.body.lr.ph

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc26.for.body_crit_edge, %for.body.lr.ph
  %j.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %for.inc26.for.body_crit_edge ]
  %5 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %j.056
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc26_crit_edge

for.body.for.inc26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.056
  %saved_bo = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.056, i32 3
  %7 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %saved_bo, align 8
  tail call void @kvfree(ptr noundef %8) #7
  %gpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.056, i32 2
  %cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.056, i32 1
  tail call void @amdgpu_bo_free_kernel(ptr noundef %arrayidx, ptr noundef %gpu_addr, ptr noundef %cpu_addr) #7
  %ring = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.056, i32 4
  tail call void @amdgpu_ring_fini(ptr noundef %ring) #7
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.056, i32 5, i32 0
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx25) #7
  %arrayidx25.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.056, i32 5, i32 1
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx25.1) #7
  br label %for.inc26

for.inc26:                                        ; preds = %if.end, %for.body.for.inc26_crit_edge
  %inc27 = add nuw nsw i32 %j.056, 1
  %9 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %10 to i32
  %cmp = icmp ult i32 %inc27, %conv
  br i1 %cmp, label %for.inc26.for.body_crit_edge, label %for.inc26.for.end28_crit_edge

for.inc26.for.end28_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28

for.inc26.for.body_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end28:                                        ; preds = %for.inc26.for.end28_crit_edge, %entry.for.end28_crit_edge
  %uvd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108
  call void @amdgpu_bo_free_kernel(ptr noundef %ib_bo, ptr noundef null, ptr noundef nonnull %addr) #7
  %11 = ptrtoint ptr %uvd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uvd, align 8
  call void @release_firmware(ptr noundef %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_bo_kptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_entity_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %sched = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #7
  %sched2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sched2, ptr %sched, align 4
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 10
  %call = call i32 @drm_sched_entity_init(ptr noundef %entity, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_suspend(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !182
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @amdgpu_ras_in_intr, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_ras_in_intr to i32))
  %1 = load volatile i32, ptr @amdgpu_ras_in_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 11
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #7
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %2 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp = icmp ult i32 %3, 15
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.cond.preheader:                               ; preds = %entry
  %max_handles = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 2
  %4 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_handles, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3103.not = icmp eq i32 %5, 0
  br i1 %cmp3103.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0104 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 9, i32 %i.0104
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0104, 1
  %8 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_handles, align 8
  %cmp3 = icmp ult i32 %inc, %9
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0104, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %10 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_handles, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %11)
  %cmp9 = icmp eq i32 %i.0.lcssa, %11
  br i1 %cmp9, label %for.end.cleanup_crit_edge, label %for.end.if.end12_crit_edge

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %for.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 4
  %12 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp15109.not = icmp eq i8 %13, 0
  br i1 %cmp15109.not, label %if.end12.for.end64_crit_edge, label %for.body17.lr.ph

if.end12.for.end64_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end64

for.body17.lr.ph:                                 ; preds = %if.end12
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 12
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  br label %for.body17

for.body17:                                       ; preds = %for.inc62.for.body17_crit_edge, %for.body17.lr.ph
  %j.0110 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc63, %for.inc62.for.body17_crit_edge ]
  %14 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %j.0110
  %and = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %for.body17.for.inc62_crit_edge

for.body17.for.inc62_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62

if.end21:                                         ; preds = %for.body17
  %arrayidx23 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.0110
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx23, align 8
  %cmp24 = icmp eq ptr %17, null
  br i1 %cmp24, label %if.end21.for.inc62_crit_edge, label %if.end27

if.end21.for.inc62_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62

if.end27:                                         ; preds = %if.end21
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4, i32 0, i32 5
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 8
  %cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.0110, i32 1
  %20 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpu_addr, align 4
  %call.i = call noalias ptr @kvmalloc_node(i32 noundef %19, i32 noundef 3264, i32 noundef -1) #11
  %saved_bo = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %j.0110, i32 3
  %22 = ptrtoint ptr %saved_bo to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %saved_bo, align 8
  %tobool44.not = icmp eq ptr %call.i, null
  br i1 %tobool44.not, label %if.end27.cleanup_crit_edge, label %if.end46

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end27
  %call48 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #7
  br i1 %call48, label %if.then49, label %if.end46.for.inc62_crit_edge

if.end46.for.inc62_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc62

if.then49:                                        ; preds = %if.end46
  %23 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %saved_bo, align 8
  br i1 %tobool.i.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %25 = call ptr @memset(ptr %24, i32 0, i32 %19)
  br label %if.end60

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  call void @mmiocpy(ptr noundef %24, ptr noundef %21, i32 noundef %19) #7
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then51
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %27) #7
  br label %for.inc62

for.inc62:                                        ; preds = %if.end60, %if.end46.for.inc62_crit_edge, %if.end21.for.inc62_crit_edge, %for.body17.for.inc62_crit_edge
  %inc63 = add nuw nsw i32 %j.0110, 1
  %28 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %29 to i32
  %cmp15 = icmp ult i32 %inc63, %conv
  br i1 %cmp15, label %for.inc62.for.body17_crit_edge, label %for.inc62.for.end64_crit_edge

for.inc62.for.end64_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end64

for.inc62.for.body17_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

for.end64:                                        ; preds = %for.inc62.for.end64_crit_edge, %if.end12.for.end64_crit_edge
  br i1 %tobool.i.not, label %for.end64.cleanup_crit_edge, label %do.end

for.end64.cleanup_crit_edge:                      ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end64.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %for.end64.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_resume(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !182
  %uvd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108
  %num_uvd_inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 4
  %1 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_uvd_inst, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp98.not = icmp eq i8 %2, 0
  br i1 %cmp98.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 12
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 112, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.099
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %i.099
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %6, i32 0, i32 4, i32 0, i32 5
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 8
  %cpu_addr = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %i.099, i32 1
  %9 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr, align 4
  %saved_bo = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %i.099, i32 3
  %11 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %saved_bo, align 8
  %cmp18.not = icmp eq ptr %12, null
  br i1 %cmp18.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end7
  %call22 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #7
  br i1 %call22, label %if.then23, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %saved_bo, align 8
  call void @mmiocpy(ptr noundef %10, ptr noundef %14, i32 noundef %8) #7
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %16) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then20.if.end28_crit_edge
  %17 = ptrtoint ptr %saved_bo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %saved_bo, align 8
  call void @kvfree(ptr noundef %18) #7
  %19 = ptrtoint ptr %saved_bo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %saved_bo, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end7
  %20 = ptrtoint ptr %uvd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uvd, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp38.not = icmp eq i32 %25, 2
  br i1 %cmp38.not, label %if.else.if.end55_crit_edge, label %if.then40

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then40:                                        ; preds = %if.else
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ucode_array_offset_bytes, align 4
  %call42 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #7
  br i1 %call42, label %if.then43, label %if.then40.if.end51_crit_edge

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpu_addr, align 4
  %31 = ptrtoint ptr %uvd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %uvd, align 8
  %data50 = getelementptr inbounds %struct.firmware, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %data50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data50, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 %28
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %23, i32 0, i32 7
  %35 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ucode_size_bytes, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  call void @mmiocpy(ptr noundef %30, ptr noundef %add.ptr, i32 noundef %37) #7
  %38 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %39) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.then40.if.end51_crit_edge
  %ucode_size_bytes52 = getelementptr inbounds %struct.common_firmware_header, ptr %23, i32 0, i32 7
  %40 = ptrtoint ptr %ucode_size_bytes52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ucode_size_bytes52, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %sub = sub i32 %8, %42
  %add.ptr54 = getelementptr i8, ptr %10, i32 %42
  br label %if.end55

if.end55:                                         ; preds = %if.end51, %if.else.if.end55_crit_edge
  %size.0 = phi i32 [ %sub, %if.end51 ], [ %8, %if.else.if.end55_crit_edge ]
  %ptr.0 = phi ptr [ %add.ptr54, %if.end51 ], [ %10, %if.else.if.end55_crit_edge ]
  call void @mmioset(ptr noundef %ptr.0, i32 noundef 0, i32 noundef %size.0) #7
  %ring = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 %i.099, i32 4
  call void @amdgpu_fence_driver_force_completion(ptr noundef %ring) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end55, %if.end28, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.099, 1
  %43 = ptrtoint ptr %num_uvd_inst to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_uvd_inst, align 8
  %conv = zext i8 %44 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_fence_driver_force_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_uvd_free_handles(ptr noundef %adev, ptr noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 7, i32 0, i32 4
  %max_handles = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 2
  %0 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_handles, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp36.not = icmp eq i32 %1, 0
  br i1 %cmp36.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup20.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %cleanup20.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 9, i32 %i.037
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx4, i32 noundef 4) #7
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %for.body.cleanup20_crit_edge, label %land.lhs.true

for.body.cleanup20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

land.lhs.true:                                    ; preds = %for.body
  %arrayidx8 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 8, i32 %i.037
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  %cmp9 = icmp eq ptr %5, %filp
  br i1 %cmp9, label %if.then, label %land.lhs.true.cleanup20_crit_edge

land.lhs.true.cleanup20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup20

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #7
  %6 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !182
  %call10 = call i32 @amdgpu_uvd_get_destroy_msg(ptr noundef %ring1, i32 noundef %3, i1 noundef zeroext false, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %call10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #7
  br label %cleanup20

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fence, align 4
  %call.i = call i32 @dma_fence_wait_timeout(ptr noundef %8, i1 noundef zeroext false, i32 noundef 2147483647) #7
  %9 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %10, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !183
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !184
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !185

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !186
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx8, align 4
  %call.i.i35 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4, i32 noundef 4) #7
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %arrayidx4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #7
  br label %cleanup20

cleanup20:                                        ; preds = %dma_fence_put.exit, %if.then11, %land.lhs.true.cleanup20_crit_edge, %for.body.cleanup20_crit_edge
  %inc = add nuw i32 %i.037, 1
  %14 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_handles, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %cleanup20.for.body_crit_edge, label %cleanup20.for.end_crit_edge

cleanup20.for.end_crit_edge:                      ; preds = %cleanup20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup20.for.body_crit_edge:                     ; preds = %cleanup20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup20.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_get_destroy_msg(ptr noundef %ring, i32 noundef %handle, i1 noundef zeroext %direct, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  %msg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #7
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #7
  br i1 %direct, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ib_bo = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 15
  %3 = ptrtoint ptr %ib_bo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ib_bo, align 8
  %5 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %bo, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %call = call fastcc i32 @amdgpu_uvd_create_msg_bo_helper(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull %bo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.else.if.end4_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %if.then
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 4
  %call5 = tail call ptr @amdgpu_bo_kptr(ptr noundef %7) #7
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %msg, align 4
  %9 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -468910080, ptr %call5, align 4
  %10 = load ptr, ptr %msg, align 4
  %arrayidx6 = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 33554432, ptr %arrayidx6, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %handle)
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msg, align 4
  %arrayidx7 = getelementptr i32, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %arrayidx7, align 4
  %16 = load ptr, ptr %msg, align 4
  %arrayidx8 = getelementptr i32, ptr %16, i32 3
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx8, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4
  %i.027 = phi i32 [ 4, %if.end4 ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msg, align 4
  %arrayidx9 = getelementptr i32, ptr %19, i32 %i.027
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %21 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bo, align 4
  %call11 = tail call fastcc i32 @amdgpu_uvd_send_msg(ptr noundef %ring, ptr noundef %22, i1 noundef zeroext %direct, ptr noundef %fence)
  br i1 %direct, label %for.end.cleanup_crit_edge, label %if.then13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @amdgpu_bo_free_kernel(ptr noundef nonnull %bo, ptr noundef null, ptr noundef nonnull %msg) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %for.end.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.else.cleanup_crit_edge ], [ %call11, %if.then13 ], [ %call11, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_ring_parse_cs(ptr noundef %parser, i32 noundef %ib_idx) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.amdgpu_uvd_cs_ctx, align 4
  %buf_sizes = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ctx) #7
  %0 = getelementptr inbounds i8, ptr %ctx, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf_sizes) #7
  %2 = call ptr @memcpy(ptr %buf_sizes, ptr @__const.amdgpu_uvd_ring_parse_cs.buf_sizes, i32 20)
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %parser, i32 0, i32 5
  %3 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibs, align 4
  %arrayidx = getelementptr %struct.amdgpu_ib, ptr %6, i32 %ib_idx
  %vm = getelementptr inbounds %struct.amdgpu_job, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vm, align 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %manager.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %manager.i, align 4
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gpu_addr.i, align 8
  %soffset.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %soffset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %soffset.i, align 4
  %conv.i = zext i32 %15 to i64
  %add.i = add i64 %13, %conv.i
  %gpu_addr = getelementptr %struct.amdgpu_ib, ptr %6, i32 %ib_idx, i32 2
  %16 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add.i, ptr %gpu_addr, align 8
  %length_dw = getelementptr %struct.amdgpu_ib, ptr %6, i32 %ib_idx, i32 1
  %17 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length_dw, align 4
  %rem = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %18) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %parser, ptr %ctx, align 4
  %buf_sizes4 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 8
  %20 = ptrtoint ptr %buf_sizes4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf_sizes, ptr %buf_sizes4, align 4
  %ib_idx5 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %ib_idx5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %ib_idx, ptr %ib_idx5, align 4
  %22 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parser, align 8
  %address_64_bit = getelementptr inbounds %struct.amdgpu_device, ptr %23, i32 0, i32 108, i32 5
  %24 = ptrtoint ptr %address_64_bit to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %address_64_bit, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool6.not = icmp eq i8 %25, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %call8 = call fastcc i32 @amdgpu_uvd_cs_packets(ptr noundef nonnull %ctx, ptr noundef nonnull @amdgpu_uvd_cs_pass1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = call fastcc i32 @amdgpu_uvd_cs_packets(ptr noundef nonnull %ctx, ptr noundef nonnull @amdgpu_uvd_cs_pass2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %has_msg_cmd = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 7
  %26 = ptrtoint ptr %has_msg_cmd to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_msg_cmd, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool17.not = icmp eq i8 %27, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then18 ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf_sizes) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_uvd_cs_packets(ptr noundef %ctx, ptr nocapture noundef readonly %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ibs, align 4
  %ib_idx = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 6
  %6 = ptrtoint ptr %ib_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ib_idx, align 4
  %idx = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idx, align 4
  %length_dw = getelementptr %struct.amdgpu_ib, ptr %5, i32 %7, i32 1
  %9 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp40.not = icmp eq i32 %10, 0
  br i1 %cmp40.not, label %entry.cleanup12_crit_edge, label %for.body.lr.ph

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

for.body.lr.ph:                                   ; preds = %entry
  %reg = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 1
  %count = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 2
  %data1.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 4
  %data0.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %11 = phi i32 [ 0, %for.body.lr.ph ], [ %46, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %14 = ptrtoint ptr %ib_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ib_idx, align 4
  %job.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ibs.i, align 4
  %ptr.i = getelementptr %struct.amdgpu_ib, ptr %19, i32 %15, i32 3
  %20 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptr.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %21, i32 %11
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.i, align 4
  %shr = lshr i32 %23, 30
  %24 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %for.body
  %and5 = and i32 %23, 65535
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and5, ptr %reg, align 4
  %shr6 = lshr i32 %23, 16
  %and7 = and i32 %shr6, 16383
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and7, ptr %count, align 4
  %27 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %job.i, align 4
  %ibs.i29 = getelementptr inbounds %struct.amdgpu_job, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ibs.i29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ibs.i29, align 4
  %inc.i = add nuw i32 %11, 1
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc.i, ptr %idx, align 4
  %length_dw.i = getelementptr %struct.amdgpu_ib, ptr %30, i32 %15, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %i.035.i = phi i32 [ 0, %sw.bb ], [ %inc13.i, %for.inc.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %idx, align 4
  %34 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length_dw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.not.i = icmp ult i32 %33, %35
  br i1 %cmp3.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48) #7
  br label %cleanup12

if.end.i:                                         ; preds = %for.body.i
  %36 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg, align 4
  %add.i = add i32 %37, %i.035.i
  %38 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %add.i, label %sw.default.i [
    i32 15300, label %if.end.i.for.inc.sink.split.i_crit_edge
    i32 15301, label %sw.bb5.i
    i32 15299, label %sw.bb7.i
    i32 15302, label %if.end.i.for.inc.i_crit_edge
    i32 15359, label %if.end.i.for.inc.i_crit_edge75
  ]

if.end.i.for.inc.i_crit_edge75:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.for.inc.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split.i

sw.bb7.i:                                         ; preds = %if.end.i
  %call.i = tail call i32 %cb(ptr noundef %ctx) #7, !callees !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb7.i.for.inc.i_crit_edge, label %sw.bb7.i.cleanup12_crit_edge

sw.bb7.i.cleanup12_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

sw.bb7.i.for.inc.i_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.49, i32 noundef %add.i) #7
  br label %cleanup12

for.inc.sink.split.i:                             ; preds = %sw.bb5.i, %if.end.i.for.inc.sink.split.i_crit_edge
  %data1.sink.i = phi ptr [ %data1.i, %sw.bb5.i ], [ %data0.i, %if.end.i.for.inc.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %data1.sink.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %33, ptr %data1.sink.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %sw.bb7.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge75
  %40 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idx, align 4
  %inc12.i = add i32 %41, 1
  store i32 %inc12.i, ptr %idx, align 4
  %inc13.i = add i32 %i.035.i, 1
  %42 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count, align 4
  %cmp.not.i = icmp ugt i32 %inc13.i, %43
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw i32 %11, 1
  %44 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc, ptr %idx, align 4
  br label %cleanup

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47, i32 noundef %shr) #7
  br label %cleanup12

cleanup:                                          ; preds = %sw.bb9, %for.inc.i.cleanup_crit_edge
  %45 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idx, align 4
  %47 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length_dw, align 4
  %cmp = icmp ult i32 %46, %48
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup12_crit_edge

cleanup.cleanup12_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup12

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup12:                                        ; preds = %cleanup.cleanup12_crit_edge, %sw.default, %sw.default.i, %sw.bb7.i.cleanup12_crit_edge, %if.then.i, %entry.cleanup12_crit_edge
  %retval.2 = phi i32 [ -22, %sw.default ], [ -22, %if.then.i ], [ -22, %sw.default.i ], [ 0, %entry.cleanup12_crit_edge ], [ %call.i, %sw.bb7.i.cleanup12_crit_edge ], [ 0, %cleanup.cleanup12_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_uvd_cs_pass1(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %tctx = alloca %struct.ttm_operation_ctx, align 8
  %mapping = alloca ptr, align 4
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tctx) #7
  %0 = call ptr @memset(ptr %tctx, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #7
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #7
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !182
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %ib_idx.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 6
  %5 = ptrtoint ptr %ib_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ib_idx.i, align 4
  %data0.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %data0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data0.i, align 4
  %job.i.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %job.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %job.i.i, align 4
  %ibs.i.i = getelementptr inbounds %struct.amdgpu_job, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ibs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ibs.i.i, align 4
  %ptr.i.i = getelementptr %struct.amdgpu_ib, ptr %12, i32 %6, i32 3
  %13 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptr.i.i, align 8
  %arrayidx1.i.i = getelementptr i32, ptr %14, i32 %8
  %15 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i.i, align 4
  %data1.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 4
  %17 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data1.i, align 4
  %arrayidx1.i13.i = getelementptr i32, ptr %14, i32 %18
  %19 = ptrtoint ptr %arrayidx1.i13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx1.i13.i, align 4
  %conv.i = zext i32 %16 to i64
  %conv4.i = zext i32 %20 to i64
  %shl.i = shl nuw i64 %conv4.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %call1 = call i32 @amdgpu_cs_find_mapping(ptr noundef %4, i64 noundef %or.i, ptr noundef nonnull %bo, ptr noundef nonnull %mapping) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50, i64 noundef %or.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %address_64_bit = getelementptr inbounds %struct.amdgpu_device, ptr %24, i32 0, i32 108, i32 5
  %25 = ptrtoint ptr %address_64_bit to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %address_64_bit, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool3.not = icmp eq i8 %26, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %27 = ptrtoint ptr %ib_idx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ib_idx.i, align 4
  %idx = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 5
  %29 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx, align 4
  %job.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %22, i32 0, i32 5
  %31 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ibs.i, align 4
  %ptr.i = getelementptr %struct.amdgpu_ib, ptr %34, i32 %28, i32 3
  %35 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptr.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %36, i32 %30
  %37 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx1.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %38, label %if.then4.if.end9_crit_edge [
    i32 7, label %if.then4.if.then8_crit_edge
    i32 6, label %if.then4.if.then8_crit_edge26
    i32 1, label %if.then4.if.then8_crit_edge27
    i32 0, label %if.then4.if.then8_crit_edge28
  ]

if.then4.if.then8_crit_edge28:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then4.if.then8_crit_edge27:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then4.if.then8_crit_edge26:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then4.if.then8_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.then4.if.then8_crit_edge, %if.then4.if.then8_crit_edge26, %if.then4.if.then8_crit_edge27, %if.then4.if.then8_crit_edge28
  %40 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bo, align 4
  call void @amdgpu_bo_placement_from_domain(ptr noundef %41, i32 noundef 4) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then4.if.end9_crit_edge
  %42 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bo, align 4
  %placement.i = getelementptr inbounds %struct.amdgpu_bo, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %placement.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %placement.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp8.not.i = icmp eq i32 %45, 0
  br i1 %cmp8.not.i, label %if.end9.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_uvd_force_into_uvd_segment.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.amdgpu_bo, ptr %43, i32 0, i32 2, i32 %i.09.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx.i, align 8
  %lpfn.i = getelementptr %struct.amdgpu_bo, ptr %43, i32 0, i32 2, i32 %i.09.i, i32 1
  %47 = ptrtoint ptr %lpfn.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 65536, ptr %lpfn.i, align 4
  %inc.i = add nuw i32 %i.09.i, 1
  %48 = ptrtoint ptr %placement.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %placement.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %49
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge

for.body.i.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_uvd_force_into_uvd_segment.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

amdgpu_uvd_force_into_uvd_segment.exit:           ; preds = %for.body.i.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge, %if.end9.amdgpu_uvd_force_into_uvd_segment.exit_crit_edge
  %50 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bo, align 4
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %51, i32 0, i32 4
  %placement = getelementptr inbounds %struct.amdgpu_bo, ptr %51, i32 0, i32 3
  %call10 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement, ptr noundef nonnull %tctx) #7
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_uvd_force_into_uvd_segment.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %call10, %amdgpu_uvd_force_into_uvd_segment.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tctx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_uvd_cs_pass2(ptr noundef %ctx) #0 align 64 {
entry:
  %ptr.i162 = alloca ptr, align 4
  %mapping = alloca ptr, align 4
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #7
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #7
  %1 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !182
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %ib_idx.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 6
  %4 = ptrtoint ptr %ib_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ib_idx.i, align 4
  %data0.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %data0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data0.i, align 4
  %job.i.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %job.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %job.i.i, align 4
  %ibs.i.i = getelementptr inbounds %struct.amdgpu_job, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ibs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ibs.i.i, align 4
  %ptr.i.i = getelementptr %struct.amdgpu_ib, ptr %11, i32 %5, i32 3
  %12 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr.i.i, align 8
  %arrayidx1.i.i = getelementptr i32, ptr %13, i32 %7
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i.i, align 4
  %data1.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 4
  %16 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data1.i, align 4
  %arrayidx1.i13.i = getelementptr i32, ptr %13, i32 %17
  %18 = ptrtoint ptr %arrayidx1.i13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.i13.i, align 4
  %conv.i = zext i32 %15 to i64
  %conv4.i = zext i32 %19 to i64
  %shl.i = shl nuw i64 %conv4.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %call1 = call i32 @amdgpu_cs_find_mapping(ptr noundef %3, i64 noundef %or.i, ptr noundef nonnull %bo, ptr noundef nonnull %mapping) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50, i64 noundef %or.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bo, align 4
  %call2 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %21) #7
  %22 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapping, align 4
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %last, align 8
  %add = add i64 %25, 1
  %start3 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %start3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %start3, align 8
  %sub = sub i64 %add, %27
  %mul = shl i64 %sub, 12
  %add4 = add i64 %mul, %call2
  %mul6.neg = mul i64 %27, -4096
  %sub7 = add i64 %mul6.neg, %or.i
  %add8 = add i64 %sub7, %call2
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %30 = ptrtoint ptr %ib_idx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ib_idx.i, align 4
  %32 = ptrtoint ptr %data0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data0.i, align 4
  %conv = trunc i64 %add8 to i32
  %job.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %29, i32 0, i32 5
  %34 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ibs.i, align 4
  %ptr.i = getelementptr %struct.amdgpu_ib, ptr %37, i32 %31, i32 3
  %38 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ptr.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %39, i32 %33
  %40 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv, ptr %arrayidx1.i, align 4
  %41 = load ptr, ptr %ctx, align 4
  %42 = load i32, ptr %ib_idx.i, align 4
  %43 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data1.i, align 4
  %shr = lshr i64 %add8, 32
  %conv13 = trunc i64 %shr to i32
  %job.i154 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %41, i32 0, i32 5
  %45 = ptrtoint ptr %job.i154 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %job.i154, align 4
  %ibs.i155 = getelementptr inbounds %struct.amdgpu_job, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %ibs.i155 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ibs.i155, align 4
  %ptr.i156 = getelementptr %struct.amdgpu_ib, ptr %48, i32 %42, i32 3
  %49 = ptrtoint ptr %ptr.i156 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptr.i156, align 8
  %arrayidx1.i157 = getelementptr i32, ptr %50, i32 %44
  %51 = ptrtoint ptr %arrayidx1.i157 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv13, ptr %arrayidx1.i157, align 4
  %52 = load ptr, ptr %ctx, align 4
  %53 = load i32, ptr %ib_idx.i, align 4
  %idx = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 5
  %54 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %idx, align 4
  %job.i158 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %52, i32 0, i32 5
  %56 = ptrtoint ptr %job.i158 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %job.i158, align 4
  %ibs.i159 = getelementptr inbounds %struct.amdgpu_job, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ibs.i159 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ibs.i159, align 4
  %ptr.i160 = getelementptr %struct.amdgpu_ib, ptr %59, i32 %53, i32 3
  %60 = ptrtoint ptr %ptr.i160 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptr.i160, align 8
  %arrayidx1.i161 = getelementptr i32, ptr %61, i32 %55
  %62 = ptrtoint ptr %arrayidx1.i161 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx1.i161, align 4
  %shr17 = lshr i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %63)
  %cmp = icmp ult i32 %63, 8
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  %sub20 = sub i64 %add4, %add8
  %buf_sizes = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 8
  %64 = ptrtoint ptr %buf_sizes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf_sizes, align 4
  %arrayidx = getelementptr i32, ptr %65, i32 %shr17
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx, align 4
  %conv21 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub20, i64 %conv21)
  %cmp22 = icmp ult i64 %sub20, %conv21
  br i1 %cmp22, label %if.then24, label %if.then19.if.end53_crit_edge

if.then19.if.end53_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %conv26 = trunc i64 %sub20 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef %shr17, i32 noundef %conv26, i32 noundef %67) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %68 = zext i32 %shr17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %shr17, label %if.then50 [
    i32 518, label %if.then32
    i32 256, label %if.else.if.end53_crit_edge
    i32 516, label %if.else.if.end53_crit_edge185
  ]

if.else.if.end53_crit_edge185:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then32:                                        ; preds = %if.else
  %sub33 = sub i64 %add4, %add8
  %buf_sizes34 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 8
  %69 = ptrtoint ptr %buf_sizes34 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf_sizes34, align 4
  %arrayidx35 = getelementptr i32, ptr %70, i32 4
  %71 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx35, align 4
  %conv36 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub33, i64 %conv36)
  %cmp37 = icmp ult i64 %sub33, %conv36
  br i1 %cmp37, label %if.then39, label %if.then32.if.end53_crit_edge

if.then32.if.end53_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then39:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %conv41 = trunc i64 %sub33 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i32 noundef 518, i32 noundef %conv41, i32 noundef %72) #7
  br label %cleanup

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52, i32 noundef %shr17) #7
  br label %cleanup

if.end53:                                         ; preds = %if.then32.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.else.if.end53_crit_edge185, %if.then19.if.end53_crit_edge
  %73 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %52, align 8
  %address_64_bit = getelementptr inbounds %struct.amdgpu_device, ptr %74, i32 0, i32 108, i32 5
  %75 = ptrtoint ptr %address_64_bit to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %address_64_bit, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool55.not = icmp eq i8 %76, 0
  br i1 %tobool55.not, label %if.then56, label %if.end53.if.end78_crit_edge

if.end53.if.end78_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then56:                                        ; preds = %if.end53
  %shr57 = lshr i64 %add8, 28
  %sub58 = add i64 %add4, -1
  %shr59 = lshr i64 %sub58, 28
  call void @__sanitizer_cov_trace_cmp8(i64 %shr57, i64 %shr59)
  %cmp60.not = icmp eq i64 %shr57, %shr59
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53, i64 noundef %add8, i64 noundef %add4) #7
  br label %cleanup

if.end63:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp64 = icmp ult i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr17)
  %cmp66 = icmp eq i32 %shr17, 3
  %or.cond = or i1 %cmp64, %cmp66
  br i1 %or.cond, label %land.lhs.true68, label %if.end63.if.else87_crit_edge

if.end63.if.else87_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else87

land.lhs.true68:                                  ; preds = %if.end63
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %74, i32 0, i32 108, i32 7, i32 0, i32 2
  %77 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %gpu_addr, align 8
  %shr73 = lshr i64 %78, 28
  call void @__sanitizer_cov_trace_cmp8(i64 %shr57, i64 %shr73)
  %cmp74.not = icmp eq i64 %shr57, %shr73
  br i1 %cmp74.not, label %land.lhs.true68.if.end78_crit_edge, label %if.then76

land.lhs.true68.if.end78_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then76:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54, i64 noundef %add8, i64 noundef %add4) #7
  br label %cleanup

if.end78:                                         ; preds = %land.lhs.true68.if.end78_crit_edge, %if.end53.if.end78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp79 = icmp ult i32 %63, 2
  br i1 %cmp79, label %if.then81, label %if.end78.if.else87_crit_edge

if.end78.if.else87_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else87

if.then81:                                        ; preds = %if.end78
  %has_msg_cmd = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 7
  %79 = ptrtoint ptr %has_msg_cmd to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %has_msg_cmd, align 4
  %80 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bo, align 4
  %conv82 = trunc i64 %sub7 to i32
  %82 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %52, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i162) #7
  %84 = ptrtoint ptr %ptr.i162 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 -1 to ptr), ptr %ptr.i162, align 4, !annotation !182
  %and.i = and i32 %conv82, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.56) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

if.end.i:                                         ; preds = %if.then81
  %call.i = call i32 @amdgpu_bo_kmap(ptr noundef %81, ptr noundef nonnull %ptr.i162) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.57, i32 noundef %call.i) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %85 = ptrtoint ptr %ptr.i162 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ptr.i162, align 4
  %add.ptr.i = getelementptr i8, ptr %86, i32 %conv82
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %89 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i = icmp eq i32 %90, 0
  br i1 %cmp.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

if.end7.i:                                        ; preds = %if.end4.i
  %91 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %88, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb26.i
    i32 2, label %for.cond55.preheader.i
  ]

for.cond55.preheader.i:                           ; preds = %if.end7.i
  %max_handles57.i = getelementptr inbounds %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 2
  %92 = ptrtoint ptr %max_handles57.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_handles57.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp58126.not.i = icmp eq i32 %93, 0
  br i1 %cmp58126.not.i, label %for.cond55.preheader.i.for.end66.i_crit_edge, label %for.cond55.preheader.i.for.body59.i_crit_edge

for.cond55.preheader.i.for.body59.i_crit_edge:    ; preds = %for.cond55.preheader.i
  br label %for.body59.i

for.cond55.preheader.i.for.end66.i_crit_edge:     ; preds = %for.cond55.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66.i

sw.bb.i:                                          ; preds = %if.end7.i
  call void @amdgpu_bo_kunmap(ptr noundef %81) #7
  %max_handles.i = getelementptr inbounds %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 2
  %94 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_handles.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp8130.not.i = icmp eq i32 %95, 0
  br i1 %cmp8130.not.i, label %sw.bb.i.for.end.i_crit_edge, label %sw.bb.i.for.body.i_crit_edge

sw.bb.i.for.body.i_crit_edge:                     ; preds = %sw.bb.i
  br label %for.body.i

sw.bb.i.for.end.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.i.for.body.i_crit_edge
  %i.0131.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb.i.for.body.i_crit_edge ]
  %arrayidx10.i = getelementptr %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 9, i32 %i.0131.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx10.i, i32 noundef 4) #7
  %96 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %90)
  %cmp12.i = icmp eq i32 %97, %90
  br i1 %cmp12.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %90) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

if.end14.i:                                       ; preds = %for.body.i
  %call.i.i113.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx10.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !188
  call void @llvm.prefetch.p0(ptr %arrayidx10.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end14.i
  %98 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx10.i, ptr %arrayidx10.i, i32 0, i32 %90, ptr elementtype(i32) %arrayidx10.i) #7, !srcloc !189
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %98, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %98, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %tobool19.not.i = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %for.inc.i

if.then20.i:                                      ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ctx, align 4
  %filp.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %filp.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %filp.i, align 4
  %arrayidx24.i = getelementptr %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 8, i32 %i.0131.i
  %103 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %arrayidx24.i, align 4
  br label %amdgpu_uvd_cs_msg.exit

for.inc.i:                                        ; preds = %atomic_cmpxchg.exit.i
  %inc.i = add nuw i32 %i.0131.i, 1
  %104 = ptrtoint ptr %max_handles.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_handles.i, align 8
  %cmp8.i = icmp ult i32 %inc.i, %105
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.bb.i.for.end.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.60) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

sw.bb26.i:                                        ; preds = %if.end7.i
  %buf_sizes.i = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 8
  %106 = ptrtoint ptr %buf_sizes.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %buf_sizes.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %add.ptr.i, i32 4
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i163 = getelementptr i32, ptr %add.ptr.i, i32 6
  %110 = ptrtoint ptr %arrayidx1.i.i163 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx1.i.i163, align 4
  %arrayidx2.i.i = getelementptr i32, ptr %add.ptr.i, i32 7
  %112 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %add.ptr.i, i32 9
  %114 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx3.i.i, align 4
  %arrayidx4.i.i = getelementptr i32, ptr %add.ptr.i, i32 28
  %116 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx5.i.i = getelementptr i32, ptr %add.ptr.i, i32 57
  %118 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx5.i.i, align 4
  %div237.i.i = lshr i32 %111, 4
  %div6238.i.i = lshr i32 %113, 4
  %add.i.i = add nuw nsw i32 %div6238.i.i, 1
  %and.i.i = and i32 %add.i.i, 536870910
  %mul.i.i = mul i32 %and.i.i, %div237.i.i
  %mul7.i.i = mul i32 %113, %111
  %div8239.i.i = lshr i32 %mul7.i.i, 1
  %add9.i.i = add i32 %mul7.i.i, 1023
  %add10.i.i = add i32 %add9.i.i, %div8239.i.i
  %and11.i.i = and i32 %add10.i.i, -1024
  %120 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %109, label %sw.default121.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb35.i.i
    i32 3, label %sw.bb51.i.i
    i32 4, label %sw.bb53.i.i
    i32 7, label %sw.bb63.i.i
    i32 8, label %sw.bb26.i.sw.epilog122.i.i_crit_edge
    i32 16, label %sw.bb99.i.i
  ]

sw.bb26.i.sw.epilog122.i.i_crit_edge:             ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog122.i.i

sw.bb.i.i:                                        ; preds = %sw.bb26.i
  %121 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %119, label %sw.default.i.i [
    i32 30, label %sw.bb.i.i.sw.epilog.i.i_crit_edge
    i32 31, label %sw.bb14.i.i
    i32 32, label %sw.bb16.i.i
    i32 41, label %sw.bb18.i.i
    i32 42, label %sw.bb20.i.i
    i32 50, label %sw.bb22.i.i
    i32 51, label %sw.bb24.i.i
  ]

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb14.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb16.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb18.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb20.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb22.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb24.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb24.i.i, %sw.bb22.i.i, %sw.bb20.i.i, %sw.bb18.i.i, %sw.bb16.i.i, %sw.bb14.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %.pn243.i.i = phi i32 [ 184320, %sw.default.i.i ], [ 184320, %sw.bb24.i.i ], [ 110400, %sw.bb22.i.i ], [ 34816, %sw.bb20.i.i ], [ 32768, %sw.bb18.i.i ], [ 20480, %sw.bb16.i.i ], [ 18000, %sw.bb14.i.i ], [ 8100, %sw.bb.i.i.sw.epilog.i.i_crit_edge ]
  %num_dpb_buffer.0.i.i = udiv i32 %.pn243.i.i, %mul.i.i
  %122 = call i32 @llvm.umin.i32(i32 %num_dpb_buffer.0.i.i, i32 16) #7
  %123 = add nuw nsw i32 %122, 1
  %mul30.i.i = mul i32 %mul.i.i, 192
  %mul33.i.i = shl i32 %mul.i.i, 5
  %reass.add248.i.i = add i32 %mul30.i.i, %and11.i.i
  %reass.mul249.i.i = mul i32 %123, %reass.add248.i.i
  %add34.i.i = add i32 %reass.mul249.i.i, %mul33.i.i
  br label %sw.epilog122.i.i

sw.bb35.i.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul36.i.i = mul i32 %and11.i.i, 3
  %mul40.i.i = shl i32 %div237.i.i, 6
  %124 = call i32 @llvm.umax.i32(i32 %div237.i.i, i32 %and.i.i) #7
  %mul47.i.i = mul i32 %124, 112
  %add48.i.i = add i32 %mul47.i.i, 63
  %and49.i.i = and i32 %add48.i.i, -64
  %reass.add246.i.i = add i32 %mul.i.i, %div237.i.i
  %reass.mul247.i.i = shl i32 %reass.add246.i.i, 7
  %add41.i.i = add i32 %mul36.i.i, %mul40.i.i
  %add43.i.i = add i32 %add41.i.i, %reass.mul247.i.i
  %add50.i.i = add i32 %add43.i.i, %and49.i.i
  br label %sw.epilog122.i.i

sw.bb51.i.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul52.i.i = mul i32 %and11.i.i, 3
  br label %sw.epilog122.i.i

sw.bb53.i.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul54.i.i = mul i32 %and11.i.i, 3
  %reass.mul245.i.i = mul i32 %mul.i.i, 96
  %add62.i.i = add i32 %reass.mul245.i.i, %mul54.i.i
  br label %sw.epilog122.i.i

sw.bb63.i.i:                                      ; preds = %sw.bb26.i
  %125 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %119, label %sw.default78.i.i [
    i32 30, label %sw.bb63.i.i.sw.epilog80.i.i_crit_edge
    i32 31, label %sw.bb66.i.i
    i32 32, label %sw.bb68.i.i
    i32 41, label %sw.bb70.i.i
    i32 42, label %sw.bb72.i.i
    i32 50, label %sw.bb74.i.i
    i32 51, label %sw.bb76.i.i
  ]

sw.bb63.i.i.sw.epilog80.i.i_crit_edge:            ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80.i.i

sw.bb66.i.i:                                      ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80.i.i

sw.bb68.i.i:                                      ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80.i.i

sw.bb70.i.i:                                      ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80.i.i

sw.bb72.i.i:                                      ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80.i.i

sw.bb74.i.i:                                      ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80.i.i

sw.bb76.i.i:                                      ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80.i.i

sw.default78.i.i:                                 ; preds = %sw.bb63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog80.i.i

sw.epilog80.i.i:                                  ; preds = %sw.default78.i.i, %sw.bb76.i.i, %sw.bb74.i.i, %sw.bb72.i.i, %sw.bb70.i.i, %sw.bb68.i.i, %sw.bb66.i.i, %sw.bb63.i.i.sw.epilog80.i.i_crit_edge
  %.pn.i.i = phi i32 [ 184320, %sw.default78.i.i ], [ 184320, %sw.bb76.i.i ], [ 110400, %sw.bb74.i.i ], [ 34816, %sw.bb72.i.i ], [ 32768, %sw.bb70.i.i ], [ 20480, %sw.bb68.i.i ], [ 18000, %sw.bb66.i.i ], [ 8100, %sw.bb63.i.i.sw.epilog80.i.i_crit_edge ]
  %num_dpb_buffer.1.i.i = udiv i32 %.pn.i.i, %mul.i.i
  %126 = call i32 @llvm.umin.i32(i32 %num_dpb_buffer.1.i.i, i32 16) #7
  %127 = add nuw nsw i32 %126, 1
  %mul85.i.i = mul i32 %127, %and11.i.i
  %use_ctx_buf.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 6
  %128 = ptrtoint ptr %use_ctx_buf.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %use_ctx_buf.i.i, align 2, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i = icmp eq i8 %129, 0
  br i1 %tobool.not.i.i, label %if.then86.i.i, label %if.else.i.i

if.then86.i.i:                                    ; preds = %sw.epilog80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul89.i.i = mul nuw nsw i32 %127, 192
  %reass.add.i.i = or i32 %mul89.i.i, 32
  %reass.mul.i.i = mul i32 %reass.add.i.i, %mul.i.i
  %add93.i.i = add i32 %reass.mul.i.i, %mul85.i.i
  br label %sw.epilog122.i.i

if.else.i.i:                                      ; preds = %sw.epilog80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul95.i.i = mul i32 %mul.i.i, 192
  %mul96.i.i = mul i32 %mul95.i.i, %127
  br label %sw.epilog122.i.i

sw.bb99.i.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  %add100.i.i = add i32 %111, 15
  %and101.i.i = and i32 %add100.i.i, -16
  %add102.i.i = add i32 %113, 15
  %and103.i.i = and i32 %add102.i.i, -16
  %mul104.i.i = mul i32 %and101.i.i, 3
  %mul105.i.i = mul i32 %mul104.i.i, %and103.i.i
  %div106240.i.i = lshr exact i32 %mul105.i.i, 1
  %add107.i.i = add nuw i32 %div106240.i.i, 255
  %and108.i.i = and i32 %add107.i.i, -256
  %arrayidx109.i.i = getelementptr i32, ptr %add.ptr.i, i32 59
  %130 = ptrtoint ptr %arrayidx109.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx109.i.i, align 4
  %132 = lshr i32 %131, 24
  %add111.i.i = add nuw nsw i32 %132, 2
  %mul112.i.i = mul i32 %add111.i.i, %and108.i.i
  %add113.i.i = add i32 %111, 255
  %div114241.i.i = and i32 %add113.i.i, -16
  %add115.i.i = add i32 %113, 255
  %div116242.i.i = lshr i32 %add115.i.i, 4
  %mul118.i.i = mul i32 %div116242.i.i, %div114241.i.i
  %mul119.i.i = mul i32 %mul118.i.i, %add111.i.i
  %add120.i.i = add i32 %mul119.i.i, 53248
  br label %sw.epilog122.i.i

sw.default121.i.i:                                ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.64, i32 noundef %109) #7
  br label %amdgpu_uvd_cs_msg_decode.exit.thread.i

sw.epilog122.i.i:                                 ; preds = %sw.bb99.i.i, %if.else.i.i, %if.then86.i.i, %sw.bb53.i.i, %sw.bb51.i.i, %sw.bb35.i.i, %sw.epilog.i.i, %sw.bb26.i.sw.epilog122.i.i_crit_edge
  %image_size.0.i.i = phi i32 [ %and108.i.i, %sw.bb99.i.i ], [ %and11.i.i, %if.else.i.i ], [ %and11.i.i, %if.then86.i.i ], [ %and11.i.i, %sw.bb53.i.i ], [ %and11.i.i, %sw.bb51.i.i ], [ %and11.i.i, %sw.bb35.i.i ], [ %and11.i.i, %sw.epilog.i.i ], [ %and11.i.i, %sw.bb26.i.sw.epilog122.i.i_crit_edge ]
  %min_dpb_size.0.i.i = phi i32 [ %mul112.i.i, %sw.bb99.i.i ], [ %mul85.i.i, %if.else.i.i ], [ %add93.i.i, %if.then86.i.i ], [ %add62.i.i, %sw.bb53.i.i ], [ %mul52.i.i, %sw.bb51.i.i ], [ %add50.i.i, %sw.bb35.i.i ], [ %add34.i.i, %sw.epilog.i.i ], [ 0, %sw.bb26.i.sw.epilog122.i.i_crit_edge ]
  %min_ctx_size.0.i.i = phi i32 [ %add120.i.i, %sw.bb99.i.i ], [ %mul96.i.i, %if.else.i.i ], [ -1, %if.then86.i.i ], [ -1, %sw.bb53.i.i ], [ -1, %sw.bb51.i.i ], [ -1, %sw.bb35.i.i ], [ -1, %sw.epilog.i.i ], [ -1, %sw.bb26.i.sw.epilog122.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %117)
  %cmp123.i.i = icmp ugt i32 %111, %117
  br i1 %cmp123.i.i, label %if.then124.i.i, label %if.end125.i.i

if.then124.i.i:                                   ; preds = %sw.epilog122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.65) #7
  br label %amdgpu_uvd_cs_msg_decode.exit.thread.i

if.end125.i.i:                                    ; preds = %sw.epilog122.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %min_dpb_size.0.i.i)
  %cmp126.i.i = icmp ult i32 %115, %min_dpb_size.0.i.i
  br i1 %cmp126.i.i, label %if.then127.i.i, label %amdgpu_uvd_cs_msg_decode.exit.i

if.then127.i.i:                                   ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.66, i32 noundef %115, i32 noundef %min_dpb_size.0.i.i) #7
  br label %amdgpu_uvd_cs_msg_decode.exit.thread.i

amdgpu_uvd_cs_msg_decode.exit.thread.i:           ; preds = %if.then127.i.i, %if.then124.i.i, %sw.default121.i.i
  call void @amdgpu_bo_kunmap(ptr noundef %81) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

amdgpu_uvd_cs_msg_decode.exit.i:                  ; preds = %if.end125.i.i
  %arrayidx129.i.i = getelementptr i32, ptr %107, i32 1
  %133 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %115, ptr %arrayidx129.i.i, align 4
  %arrayidx130.i.i = getelementptr i32, ptr %107, i32 2
  %134 = ptrtoint ptr %arrayidx130.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %image_size.0.i.i, ptr %arrayidx130.i.i, align 4
  %arrayidx131.i.i = getelementptr i32, ptr %107, i32 4
  %135 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %min_ctx_size.0.i.i, ptr %arrayidx131.i.i, align 4
  %decode_image_width.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 13
  %136 = ptrtoint ptr %decode_image_width.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %111, ptr %decode_image_width.i.i, align 8
  call void @amdgpu_bo_kunmap(ptr noundef %81) #7
  %max_handles33.i = getelementptr inbounds %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 2
  %137 = ptrtoint ptr %max_handles33.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_handles33.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp34128.not.i = icmp eq i32 %138, 0
  br i1 %cmp34128.not.i, label %amdgpu_uvd_cs_msg_decode.exit.i.for.end53.i_crit_edge, label %amdgpu_uvd_cs_msg_decode.exit.i.for.body35.i_crit_edge

amdgpu_uvd_cs_msg_decode.exit.i.for.body35.i_crit_edge: ; preds = %amdgpu_uvd_cs_msg_decode.exit.i
  br label %for.body35.i

amdgpu_uvd_cs_msg_decode.exit.i.for.end53.i_crit_edge: ; preds = %amdgpu_uvd_cs_msg_decode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end53.i

for.body35.i:                                     ; preds = %for.inc51.i.for.body35.i_crit_edge, %amdgpu_uvd_cs_msg_decode.exit.i.for.body35.i_crit_edge
  %i.1129.i = phi i32 [ %inc52.i, %for.inc51.i.for.body35.i_crit_edge ], [ 0, %amdgpu_uvd_cs_msg_decode.exit.i.for.body35.i_crit_edge ]
  %arrayidx38.i = getelementptr %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 9, i32 %i.1129.i
  %call.i.i114.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx38.i, i32 noundef 4) #7
  %139 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %arrayidx38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %90)
  %cmp40.i = icmp eq i32 %140, %90
  br i1 %cmp40.i, label %if.then41.i, label %for.inc51.i

if.then41.i:                                      ; preds = %for.body35.i
  %arrayidx44.i = getelementptr %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 8, i32 %i.1129.i
  %141 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx44.i, align 4
  %143 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ctx, align 4
  %filp46.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %filp46.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %filp46.i, align 4
  %cmp47.not.i = icmp eq ptr %142, %146
  br i1 %cmp47.not.i, label %if.then41.i.amdgpu_uvd_cs_msg.exit_crit_edge, label %if.then48.i

if.then41.i.amdgpu_uvd_cs_msg.exit_crit_edge:     ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_uvd_cs_msg.exit

if.then48.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.61) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

for.inc51.i:                                      ; preds = %for.body35.i
  %inc52.i = add nuw i32 %i.1129.i, 1
  %147 = ptrtoint ptr %max_handles33.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %max_handles33.i, align 8
  %cmp34.i = icmp ult i32 %inc52.i, %148
  br i1 %cmp34.i, label %for.inc51.i.for.body35.i_crit_edge, label %for.inc51.i.for.end53.i_crit_edge

for.inc51.i.for.end53.i_crit_edge:                ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end53.i

for.inc51.i.for.body35.i_crit_edge:               ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35.i

for.end53.i:                                      ; preds = %for.inc51.i.for.end53.i_crit_edge, %amdgpu_uvd_cs_msg_decode.exit.i.for.end53.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %90) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

for.body59.i:                                     ; preds = %atomic_cmpxchg.exit120.i.for.body59.i_crit_edge, %for.cond55.preheader.i.for.body59.i_crit_edge
  %i.2127.i = phi i32 [ %inc65.i, %atomic_cmpxchg.exit120.i.for.body59.i_crit_edge ], [ 0, %for.cond55.preheader.i.for.body59.i_crit_edge ]
  %arrayidx62.i = getelementptr %struct.amdgpu_device, ptr %83, i32 0, i32 108, i32 9, i32 %i.2127.i
  %call.i.i115.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx62.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !188
  call void @llvm.prefetch.p0(ptr %arrayidx62.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i118.i

do.body.i.i.i118.i:                               ; preds = %do.body.i.i.i118.i.do.body.i.i.i118.i_crit_edge, %for.body59.i
  %149 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx62.i, ptr %arrayidx62.i, i32 %90, i32 0, ptr elementtype(i32) %arrayidx62.i) #7, !srcloc !189
  %asmresult.i.i.i116.i = extractvalue { i32, i32 } %149, 0
  %tobool.not.i.i.i117.i = icmp eq i32 %asmresult.i.i.i116.i, 0
  br i1 %tobool.not.i.i.i117.i, label %atomic_cmpxchg.exit120.i, label %do.body.i.i.i118.i.do.body.i.i.i118.i_crit_edge

do.body.i.i.i118.i.do.body.i.i.i118.i_crit_edge:  ; preds = %do.body.i.i.i118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i118.i

atomic_cmpxchg.exit120.i:                         ; preds = %do.body.i.i.i118.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !190
  %inc65.i = add nuw i32 %i.2127.i, 1
  %150 = ptrtoint ptr %max_handles57.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %max_handles57.i, align 8
  %cmp58.i = icmp ult i32 %inc65.i, %151
  br i1 %cmp58.i, label %atomic_cmpxchg.exit120.i.for.body59.i_crit_edge, label %atomic_cmpxchg.exit120.i.for.end66.i_crit_edge

atomic_cmpxchg.exit120.i.for.end66.i_crit_edge:   ; preds = %atomic_cmpxchg.exit120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end66.i

atomic_cmpxchg.exit120.i.for.body59.i_crit_edge:  ; preds = %atomic_cmpxchg.exit120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59.i

for.end66.i:                                      ; preds = %atomic_cmpxchg.exit120.i.for.end66.i_crit_edge, %for.cond55.preheader.i.for.end66.i_crit_edge
  call void @amdgpu_bo_kunmap(ptr noundef %81) #7
  br label %amdgpu_uvd_cs_msg.exit

sw.default.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63, i32 noundef %88) #7
  br label %amdgpu_uvd_cs_msg.exit.thread

amdgpu_uvd_cs_msg.exit.thread:                    ; preds = %sw.default.i, %for.end53.i, %if.then48.i, %amdgpu_uvd_cs_msg_decode.exit.thread.i, %for.end.i, %if.then13.i, %if.then6.i, %if.then3.i, %if.then.i
  %retval.0.i.ph = phi i32 [ -22, %amdgpu_uvd_cs_msg_decode.exit.thread.i ], [ -28, %for.end.i ], [ -22, %if.then13.i ], [ -2, %for.end53.i ], [ -22, %if.then48.i ], [ -22, %sw.default.i ], [ -22, %if.then6.i ], [ %call.i, %if.then3.i ], [ -22, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i162) #7
  br label %cleanup

amdgpu_uvd_cs_msg.exit:                           ; preds = %for.end66.i, %if.then41.i.amdgpu_uvd_cs_msg.exit_crit_edge, %if.then20.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i162) #7
  br label %cleanup

if.else87:                                        ; preds = %if.end78.if.else87_crit_edge, %if.end63.if.else87_crit_edge
  %has_msg_cmd88 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, ptr %ctx, i32 0, i32 7
  %152 = ptrtoint ptr %has_msg_cmd88 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %has_msg_cmd88, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool89.not = icmp eq i8 %153, 0
  br i1 %tobool89.not, label %if.then90, label %if.else87.cleanup_crit_edge

if.else87.cleanup_crit_edge:                      ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.else87.cleanup_crit_edge, %amdgpu_uvd_cs_msg.exit, %amdgpu_uvd_cs_msg.exit.thread, %if.then76, %if.then62, %if.then50, %if.then39, %if.then24, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -22, %if.then24 ], [ -22, %if.then90 ], [ -22, %if.then62 ], [ -22, %if.then76 ], [ -22, %if.then39 ], [ -22, %if.then50 ], [ %retval.0.i.ph, %amdgpu_uvd_cs_msg.exit.thread ], [ 0, %amdgpu_uvd_cs_msg.exit ], [ 0, %if.else87.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_get_create_msg(ptr noundef %ring, i32 noundef %handle, ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ib_bo = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 15
  %2 = ptrtoint ptr %ib_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_bo, align 8
  %call = tail call ptr @amdgpu_bo_kptr(ptr noundef %3) #7
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -468910080, ptr %call, align 4
  %arrayidx2 = getelementptr i32, ptr %call, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %handle)
  %arrayidx3 = getelementptr i32, ptr %call, i32 2
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %call, i32 3
  %arrayidx8 = getelementptr i32, ptr %call, i32 7
  %8 = call ptr @memset(ptr %arrayidx4, i32 0, i32 16)
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147024896, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr i32, ptr %call, i32 8
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1074003968, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %call, i32 9
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr i32, ptr %call, i32 10
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7385857, ptr %arrayidx11, align 4
  %uglygep = getelementptr i8, ptr %call, i32 44
  %13 = call ptr @memset(ptr %uglygep, i32 0, i32 4052)
  %call13 = tail call fastcc i32 @amdgpu_uvd_send_msg(ptr noundef %ring, ptr noundef %3, i1 noundef zeroext true, ptr noundef %fence)
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_uvd_send_msg(ptr noundef %ring, ptr noundef %bo, i1 noundef zeroext %direct, ptr noundef writeonly %fence) unnamed_addr #0 align 64 {
entry:
  %f = alloca ptr, align 4
  %job = alloca ptr, align 4
  %offset = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #7
  %2 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #7
  %3 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %offset) #7
  %4 = call ptr @memcpy(ptr %offset, ptr @__const.amdgpu_uvd_send_msg.offset, i32 12)
  %cond = select i1 %direct, i32 2, i32 0
  %call = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %1, i32 noundef 64, i32 noundef %cond, ptr noundef nonnull %job) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %6)
  %cmp = icmp ugt i32 %6, 18
  br i1 %cmp, label %if.then3, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %7 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %me, align 8
  %add = add i32 %8, 1
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %arrayidx5 = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [3 x i32], ptr %offset, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16, i32 1
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr %offset, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then3, %if.end.if.end12_crit_edge
  %offset_idx.0 = phi i32 [ %add, %if.then3 ], [ 0, %if.end.if.end12_crit_edge ]
  %arrayidx13 = getelementptr [3 x i32], ptr %offset, i32 0, i32 %offset_idx.0
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %20, 964
  %and = and i32 %add14, 65535
  %add18 = add i32 %20, 965
  %and19 = and i32 %add18, 65535
  %add24 = add i32 %20, 963
  %and25 = and i32 %add24, 65535
  %add30 = add i32 %20, 1023
  %and31 = and i32 %add30, 65535
  %21 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ibs, align 4
  %call36 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %bo) #7
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ptr, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and, ptr %26, align 4
  %conv = trunc i64 %call36 to i32
  %28 = load ptr, ptr %ptr, align 8
  %arrayidx40 = getelementptr i32, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %arrayidx40, align 4
  %30 = load ptr, ptr %ptr, align 8
  %arrayidx43 = getelementptr i32, ptr %30, i32 2
  %31 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and19, ptr %arrayidx43, align 4
  %shr = lshr i64 %call36, 32
  %conv44 = trunc i64 %shr to i32
  %32 = load ptr, ptr %ptr, align 8
  %arrayidx46 = getelementptr i32, ptr %32, i32 3
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv44, ptr %arrayidx46, align 4
  %34 = load ptr, ptr %ptr, align 8
  %arrayidx49 = getelementptr i32, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and25, ptr %arrayidx49, align 4
  %36 = load ptr, ptr %ptr, align 8
  %arrayidx51 = getelementptr i32, ptr %36, i32 5
  %37 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx51, align 4
  %38 = load ptr, ptr %ptr, align 8
  %arrayidx56 = getelementptr i32, ptr %38, i32 6
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and31, ptr %arrayidx56, align 4
  %40 = load ptr, ptr %ptr, align 8
  %arrayidx59 = getelementptr i32, ptr %40, i32 7
  %41 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx59, align 4
  %42 = load ptr, ptr %ptr, align 8
  %arrayidx56.1 = getelementptr i32, ptr %42, i32 8
  %43 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and31, ptr %arrayidx56.1, align 4
  %44 = load ptr, ptr %ptr, align 8
  %arrayidx59.1 = getelementptr i32, ptr %44, i32 9
  %45 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx59.1, align 4
  %46 = load ptr, ptr %ptr, align 8
  %arrayidx56.2 = getelementptr i32, ptr %46, i32 10
  %47 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and31, ptr %arrayidx56.2, align 4
  %48 = load ptr, ptr %ptr, align 8
  %arrayidx59.2 = getelementptr i32, ptr %48, i32 11
  %49 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx59.2, align 4
  %50 = load ptr, ptr %ptr, align 8
  %arrayidx56.3 = getelementptr i32, ptr %50, i32 12
  %51 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and31, ptr %arrayidx56.3, align 4
  %52 = load ptr, ptr %ptr, align 8
  %arrayidx59.3 = getelementptr i32, ptr %52, i32 13
  %53 = ptrtoint ptr %arrayidx59.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx59.3, align 4
  %54 = load ptr, ptr %ptr, align 8
  %arrayidx56.4 = getelementptr i32, ptr %54, i32 14
  %55 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and31, ptr %arrayidx56.4, align 4
  %56 = load ptr, ptr %ptr, align 8
  %arrayidx59.4 = getelementptr i32, ptr %56, i32 15
  %57 = ptrtoint ptr %arrayidx59.4 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx59.4, align 4
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %24, i32 0, i32 1
  %58 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16, ptr %length_dw, align 4
  br i1 %direct, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end12
  %resv = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %59 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %resv, align 8
  %call64 = call i32 @dma_resv_wait_timeout(ptr noundef %60, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp eq i32 %call64, 0
  %spec.store.select = select i1 %cmp65, i32 -110, i32 %call64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp69 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp69, label %if.then62.err_free_crit_edge, label %if.end72

if.then62.err_free_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end72:                                         ; preds = %if.then62
  %61 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %job, align 4
  %call73 = call i32 @amdgpu_job_submit_direct(ptr noundef %62, ptr noundef %ring, ptr noundef nonnull %f) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end72.if.end88_crit_edge, label %if.end72.err_free_crit_edge

if.end72.err_free_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end72.if.end88_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else:                                          ; preds = %if.end12
  %63 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %job, align 4
  %sync = getelementptr inbounds %struct.amdgpu_job, ptr %64, i32 0, i32 2
  %resv79 = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %65 = ptrtoint ptr %resv79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %resv79, align 8
  %call80 = call i32 @amdgpu_sync_resv(ptr noundef %1, ptr noundef %sync, ptr noundef %66, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.else.err_free_crit_edge

if.else.err_free_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end83:                                         ; preds = %if.else
  %67 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %job, align 4
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 10
  %call84 = call i32 @amdgpu_job_submit(ptr noundef %68, ptr noundef %entity, ptr noundef null, ptr noundef nonnull %f) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end83.if.end88_crit_edge, label %if.end83.err_free_crit_edge

if.end83.err_free_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end83.if.end88_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end88:                                         ; preds = %if.end83.if.end88_crit_edge, %if.end72.if.end88_crit_edge
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %71 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock(ptr noundef %72, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %73 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end88.amdgpu_bo_reserve.exit_crit_edge
    i32 -512, label %if.end88.amdgpu_bo_reserve.exit_crit_edge145
  ], !prof !191

if.end88.amdgpu_bo_reserve.exit_crit_edge145:     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_bo_reserve.exit

if.end88.amdgpu_bo_reserve.exit_crit_edge:        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_bo_reserve.exit

do.end.i:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 -17736
  %74 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.67, ptr noundef %bo) #10
  br label %amdgpu_bo_reserve.exit

amdgpu_bo_reserve.exit:                           ; preds = %do.end.i, %if.end88.amdgpu_bo_reserve.exit_crit_edge, %if.end88.amdgpu_bo_reserve.exit_crit_edge145
  %76 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %f, align 4
  call void @amdgpu_bo_fence(ptr noundef %bo, ptr noundef %77, i1 noundef zeroext false) #7
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4
  %78 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %79, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %bo, i32 0, i32 4, i32 6
  %80 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %81, ptr noundef null) #7
  %82 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %83, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %84 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %resv35.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %85) #7
  call void @ww_mutex_unlock(ptr noundef %85) #7
  %tobool90.not = icmp eq ptr %fence, null
  br i1 %tobool90.not, label %amdgpu_bo_reserve.exit.if.end93_crit_edge, label %if.then91

amdgpu_bo_reserve.exit.if.end93_crit_edge:        ; preds = %amdgpu_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then91:                                        ; preds = %amdgpu_bo_reserve.exit
  %86 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %87, null
  br i1 %tobool.not.i, label %if.then91.dma_fence_get.exit_crit_edge, label %if.then.i

if.then91.dma_fence_get.exit_crit_edge:           ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.then91
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %87, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !192
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !193

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %89 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %.not.i.i.i.i.i = icmp sgt i32 %89, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !185

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.then91.dma_fence_get.exit_crit_edge
  %90 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %fence, align 4
  br label %if.end93

if.end93:                                         ; preds = %dma_fence_get.exit, %amdgpu_bo_reserve.exit.if.end93_crit_edge
  %91 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %f, align 4
  %tobool.not.i139 = icmp eq ptr %92, null
  br i1 %tobool.not.i139, label %if.end93.cleanup_crit_edge, label %if.then.i142

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i142:                                     ; preds = %if.end93
  %refcount.i140 = getelementptr inbounds %struct.dma_fence, ptr %92, i32 0, i32 6
  %call.i.i.i.i.i.i.i141 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i140, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !183
  call void @llvm.prefetch.p0(ptr %refcount.i140, i32 1, i32 3, i32 1) #7
  %93 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i140, ptr %refcount.i140, i32 1, ptr elementtype(i32) %refcount.i140) #7, !srcloc !184
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i143 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i143, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !185

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i140, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !186
  call void @dma_fence_release(ptr noundef %refcount.i140) #7
  br label %cleanup

err_free:                                         ; preds = %if.end83.err_free_crit_edge, %if.else.err_free_crit_edge, %if.end72.err_free_crit_edge, %if.then62.err_free_crit_edge
  %r.0 = phi i32 [ %spec.store.select, %if.then62.err_free_crit_edge ], [ %call73, %if.end72.err_free_crit_edge ], [ %call80, %if.else.err_free_crit_edge ], [ %call84, %if.end83.err_free_crit_edge ]
  %94 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %95) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err_free ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end93.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %offset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_uvd_ring_begin_use(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #7
  br i1 %call, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_dpm_enable_uvd(ptr noundef %1, i1 noundef zeroext true) #7
  br label %cleanup

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 4
  %set_uvd_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_uvd_clocks, align 4
  %call6 = tail call i32 %9(ptr noundef %1, i32 noundef 53300, i32 noundef 40000) #7
  %call7 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %1, i32 noundef 8, i32 noundef 1) #7
  %call8 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %1, i32 noundef 8, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_uvd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_uvd_ring_end_use(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 108, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %idle_work, i32 noundef 100) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #7
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !182
  %1 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ring, align 8
  %ib_bo.i = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 108, i32 15
  %3 = ptrtoint ptr %ib_bo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ib_bo.i, align 8
  %call.i = tail call ptr @amdgpu_bo_kptr(ptr noundef %4) #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -468910080, ptr %call.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %call.i, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %call.i, i32 2
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %call.i, i32 3
  %arrayidx8.i = getelementptr i32, ptr %call.i, i32 7
  %8 = call ptr @memset(ptr %arrayidx4.i, i32 0, i32 16)
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147024896, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %call.i, i32 8
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1074003968, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %call.i, i32 9
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %call.i, i32 10
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7385857, ptr %arrayidx11.i, align 4
  %uglygep.i = getelementptr i8, ptr %call.i, i32 44
  %13 = call ptr @memset(ptr %uglygep.i, i32 0, i32 4052)
  %call13.i = call fastcc i32 @amdgpu_uvd_send_msg(ptr noundef %ring, ptr noundef %4, i1 noundef zeroext true, ptr noundef nonnull %fence) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fence, align 4
  %call1 = call i32 @dma_fence_wait_timeout(ptr noundef %15, i1 noundef zeroext false, i32 noundef %timeout) #7
  %16 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fence, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.dma_fence_put.exit_crit_edge, label %if.then.i

if.end.dma_fence_put.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %17, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !183
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !184
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !185

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !186
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end.dma_fence_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  %spec.store.select = select i1 %cmp, i32 -110, i32 %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp4 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp4, label %dma_fence_put.exit.error_crit_edge, label %if.end6

dma_fence_put.exit.error_crit_edge:               ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %dma_fence_put.exit
  %19 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring, align 8
  %ib_bo.i27 = getelementptr inbounds %struct.amdgpu_device, ptr %20, i32 0, i32 108, i32 15
  %21 = ptrtoint ptr %ib_bo.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ib_bo.i27, align 8
  %call5.i = call ptr @amdgpu_bo_kptr(ptr noundef %22) #7
  %23 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -468910080, ptr %call5.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %call5.i, i32 1
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 33554432, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %call5.i, i32 2
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777216, ptr %arrayidx7.i, align 4
  %arrayidx8.i29 = getelementptr i32, ptr %call5.i, i32 3
  %26 = call ptr @memset(ptr %arrayidx8.i29, i32 0, i32 4084)
  %call11.i = call fastcc i32 @amdgpu_uvd_send_msg(ptr noundef %ring, ptr noundef %22, i1 noundef zeroext true, ptr noundef nonnull %fence) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool8.not = icmp eq i32 %call11.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end10:                                         ; preds = %if.end6
  %27 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fence, align 4
  %call11 = call i32 @dma_fence_wait_timeout(ptr noundef %28, i1 noundef zeroext false, i32 noundef %timeout) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  %29 = call i32 @llvm.smin.i32(i32 %call11, i32 0)
  %r.0 = select i1 %cmp12, i32 -110, i32 %29
  %30 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fence, align 4
  %tobool.not.i31 = icmp eq ptr %31, null
  br i1 %tobool.not.i31, label %if.end10.error_crit_edge, label %if.then.i36

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then.i36:                                      ; preds = %if.end10
  %refcount.i32 = getelementptr inbounds %struct.dma_fence, ptr %31, i32 0, i32 6
  %call.i.i.i.i.i.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i32, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !183
  call void @llvm.prefetch.p0(ptr %refcount.i32, i32 1, i32 3, i32 1) #7
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i32, ptr %refcount.i32, i32 1, ptr elementtype(i32) %refcount.i32) #7, !srcloc !184
  %asmresult.i.i.i.i.i.i.i.i34 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i34)
  %cmp.i.i.i.i.i35 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i34, 1
  br i1 %cmp.i.i.i.i.i35, label %if.then.i.i40, label %if.end5.i.i.i.i.i38

if.end5.i.i.i.i.i38:                              ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i34)
  %.not.i.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i34, 0
  br i1 %.not.i.i.i.i.i37, label %if.end5.i.i.i.i.i38.error_crit_edge, label %if.then10.i.i.i.i.i39, !prof !185

if.end5.i.i.i.i.i38.error_crit_edge:              ; preds = %if.end5.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then10.i.i.i.i.i39:                            ; preds = %if.end5.i.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i32, i32 noundef 3) #7
  br label %error

if.then.i.i40:                                    ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !186
  call void @dma_fence_release(ptr noundef %refcount.i32) #7
  br label %error

error:                                            ; preds = %if.then.i.i40, %if.then10.i.i.i.i.i39, %if.end5.i.i.i.i.i38.error_crit_edge, %if.end10.error_crit_edge, %if.end6.error_crit_edge, %dma_fence_put.exit.error_crit_edge, %entry.error_crit_edge
  %r.1 = phi i32 [ %call13.i, %entry.error_crit_edge ], [ %spec.store.select, %dma_fence_put.exit.error_crit_edge ], [ %call11.i, %if.end6.error_crit_edge ], [ %r.0, %if.end10.error_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i38.error_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i39 ], [ %r.0, %if.then.i.i40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #7
  ret i32 %r.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_uvd_used_handles(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_handles = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 2
  %0 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_handles, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %used_handles.09 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.08 = phi i32 [ %inc2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 9, i32 %i.08
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %used_handles.09, %inc
  %inc2 = add nuw i32 %i.08, 1
  %4 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_handles, align 8
  %cmp = icmp ult i32 %inc2, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %used_handles.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  ret i32 %used_handles.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_reserved(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_cs_find_mapping(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_sync_resv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_count_emitted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !168, !169, !170}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 111, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 112, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 113, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 114, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 117, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 118, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware349, !13, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 119, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware350, !15, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 120, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware351, !17, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 121, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware352, !19, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 123, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware353, !21, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 124, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware354, !23, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 125, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware355, !25, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 126, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware356, !27, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 127, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware357, !29, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 128, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware358, !31, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 129, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware359, !33, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 130, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware360, !35, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 132, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware361, !37, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 133, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware362, !39, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 134, i32 1}
!40 = !{ptr @amdgpu_uvd_sw_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 191, i32 2}
!42 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @amdgpu_uvd_sw_init.__key.1, !41, !"__key", i1 false, i1 false}
!44 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 196, i32 13}
!47 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 199, i32 13}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 202, i32 13}
!51 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 205, i32 13}
!53 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 210, i32 13}
!55 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 213, i32 13}
!57 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 216, i32 13}
!59 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 219, i32 13}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 222, i32 13}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 226, i32 13}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 229, i32 13}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 232, i32 13}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 235, i32 13}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 238, i32 13}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 241, i32 13}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 244, i32 13}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 247, i32 13}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 250, i32 13}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 253, i32 13}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 256, i32 13}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 264, i32 3}
!87 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @amdgpu_uvd_sw_init._entry, !86, !"_entry", i1 false, i1 false}
!92 = !{ptr @amdgpu_uvd_sw_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 271, i32 3}
!95 = !{ptr @amdgpu_uvd_sw_init._entry.28, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @amdgpu_uvd_sw_init._entry_ptr.30, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 289, i32 3}
!99 = !{ptr @amdgpu_uvd_sw_init._entry.31, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @amdgpu_uvd_sw_init._entry_ptr.33, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 308, i32 4}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 316, i32 3}
!105 = !{ptr @amdgpu_uvd_sw_init._entry.35, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @amdgpu_uvd_sw_init._entry_ptr.37, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 336, i32 4}
!109 = !{ptr @amdgpu_uvd_sw_init._entry.38, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @amdgpu_uvd_sw_init._entry_ptr.40, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 418, i32 3}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 469, i32 3}
!115 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @amdgpu_uvd_suspend._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @amdgpu_uvd_suspend._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 533, i32 5}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 1090, i32 3}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 1113, i32 3}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 1058, i32 4}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 1001, i32 4}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 1021, i32 4}
!130 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 586, i32 3}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 936, i32 4}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 950, i32 3}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 956, i32 4}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 963, i32 4}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 975, i32 3}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 821, i32 3}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 827, i32 3}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 837, i32 3}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 849, i32 5}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 860, i32 3}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 874, i32 6}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 881, i32 3}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 892, i32 3}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 778, i32 3}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 783, i32 3}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c", i32 788, i32 3}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!166 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @amdgpu_bo_reserve._entry, !165, !"_entry", i1 false, i1 false}
!169 = !{ptr @amdgpu_bo_reserve._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i8 0, i8 2}
!182 = !{!"auto-init"}
!183 = !{i64 2148682282}
!184 = !{i64 2148596722, i64 2148596754, i64 2148596783, i64 2148596817, i64 2148596848, i64 2148596871}
!185 = !{!"branch_weights", i32 2000, i32 1}
!186 = !{i64 2149880055}
!187 = !{ptr @amdgpu_uvd_cs_pass1, ptr @amdgpu_uvd_cs_pass2}
!188 = !{i64 2148694574}
!189 = !{i64 1078240, i64 1078264, i64 1078285, i64 1078302, i64 1078319}
!190 = !{i64 2148694800}
!191 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!192 = !{i64 2148594257, i64 2148594289, i64 2148594318, i64 2148594352, i64 2148594383, i64 2148594406}
!193 = !{!"branch_weights", i32 1, i32 2000}
