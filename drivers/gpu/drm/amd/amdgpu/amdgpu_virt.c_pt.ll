; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.amdgpu_virt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_virt_ras_err_handler_data = type { ptr, ptr, i32, i32 }
%struct.amd_sriov_msg_pf2vf_info_header = type { i32, i32, [2 x i32] }
%struct.amd_sriov_msg_pf2vf_info = type <{ %struct.amd_sriov_msg_pf2vf_info_header, i32, %union.amd_sriov_msg_feature_flags, i32, i32, i32, i32, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i64, i32, %union.amd_sriov_reg_access_flags, [4 x %struct.anon.117], %struct.amd_sriov_msg_uuid_info, i32, [208 x i32] }>
%union.amd_sriov_msg_feature_flags = type { %struct.anon.115 }
%struct.anon.115 = type { i32 }
%union.amd_sriov_reg_access_flags = type { %struct.anon.116 }
%struct.anon.116 = type { i32 }
%struct.anon.117 = type { i32, i32, i32, i32 }
%struct.amd_sriov_msg_uuid_info = type { %union.anon.118, %struct.anon.120, %struct.anon.121, i32 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i32 }
%struct.anon.120 = type { i32 }
%struct.anon.121 = type { %struct.anon.122, %union.anon.123, i16 }
%struct.anon.122 = type { i8 }
%union.anon.123 = type { i8 }
%struct.eeprom_table_record = type <{ %union.anon.107, i64, i64, i32, %union.anon.108, i8, i8 }>
%union.anon.107 = type { i64 }
%union.anon.108 = type { i8 }
%struct.amdgim_pf2vf_info_v1 = type { %struct.amd_sriov_msg_pf2vf_info_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_sriov_msg_vf2pf_info_header = type { i32, i32, [2 x i32] }
%struct.amd_sriov_msg_vf2pf_info = type { %struct.amd_sriov_msg_vf2pf_info_header, i32, [64 x i8], i32, %union.amd_sriov_msg_os_info, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x %struct.anon.125], i64, [186 x i32] }
%union.amd_sriov_msg_os_info = type { %struct.anon.124 }
%struct.anon.124 = type { i32 }
%struct.anon.125 = type <{ i8, i32 }>
%struct.amdgpu_video_codec_info = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_virt_kiq_reg_write_reg_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"amdgpu: failed to write reg %x wait reg %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu_virt_kiq_reg_write_reg_wait\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_virt_kiq_reg_write_reg_wait._entry_ptr = internal global ptr @amdgpu_virt_kiq_reg_write_reg_wait._entry, section ".printk_index", align 4
@amdgpu_virt_request_init_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016[drm] host supports REQ_INIT_DATA handshake\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu_virt_request_init_data\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_virt_request_init_data._entry_ptr = internal global ptr @amdgpu_virt_request_init_data._entry, section ".printk_index", align 4
@amdgpu_virt_request_init_data._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014[drm] host doesn't support REQ_INIT_DATA handshake\0A\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_virt_request_init_data._entry_ptr.9 = internal global ptr @amdgpu_virt_request_init_data._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to alloc mm table and error = %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_virt_alloc_mm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016[drm] MM table gpu addr = 0x%llx, cpu addr = %p.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu_virt_alloc_mm_table\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_virt_alloc_mm_table._entry_ptr = internal global ptr @amdgpu_virt_alloc_mm_table._entry, section ".printk_index", align 4
@amdgpu_virt_fini_data_exchange._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] clean up the vf2pf work item\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu_virt_fini_data_exchange\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_virt_fini_data_exchange._entry_ptr = internal global ptr @amdgpu_virt_fini_data_exchange._entry, section ".printk_index", align 4
@amdgpu_virt_init_data_exchange.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&adev->virt.vf2pf_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@amdgpu_virt_init_data_exchange.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&adev->virt.vf2pf_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown asic type: %d!\0A\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid pf2vf message size\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid pf2vf message\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid pf2vf version\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RAS WARN: reserve vram for retired page %llx fail\0A\00", [45 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_detect_virtualization = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 5379, i32 5379, i32 5379, i32 5379, i32 5379, i32 5379, i32 5379, i32 5379, i32 3557, i32 5379, i32 3557, i32 5379, i32 3557, i32 5379, i32 3557, i32 3557, i32 5379, i32 5379, i32 3557, i32 3557], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 23, i64 25]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [11 x i64] [i64 9, i64 32, i64 11, i64 12, i64 19, i64 21, i64 23, i64 25, i64 26, i64 29, i64 30]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 91, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 107, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 185, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 187, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 225, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 230, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 616, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 632, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 740, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 447, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 458, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 508, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 385, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [42 x i8] c"switch.table.amdgpu_detect_virtualization\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @amdgpu_virt_alloc_mm_table._entry, ptr @amdgpu_virt_alloc_mm_table._entry_ptr, ptr @amdgpu_virt_fini_data_exchange._entry, ptr @amdgpu_virt_fini_data_exchange._entry_ptr, ptr @amdgpu_virt_kiq_reg_write_reg_wait._entry, ptr @amdgpu_virt_kiq_reg_write_reg_wait._entry_ptr, ptr @amdgpu_virt_request_init_data._entry, ptr @amdgpu_virt_request_init_data._entry.7, ptr @amdgpu_virt_request_init_data._entry_ptr, ptr @amdgpu_virt_request_init_data._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @amdgpu_virt_init_data_exchange.__key, ptr @.str.15, ptr @amdgpu_virt_init_data_exchange.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @switch.table.amdgpu_detect_virtualization], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_virt_kiq_reg_write_reg_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_virt_request_init_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_virt_request_init_data._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_virt_alloc_mm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_virt_fini_data_exchange._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_virt_init_data_exchange.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_virt_init_data_exchange.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_detect_virtualization to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_virt_mmio_blocked(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 49216, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_virt_init_setting(ptr nocapture noundef %adev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then [
    i32 25, label %entry.if.end7_crit_edge
    i32 23, label %entry.if.end7_crit_edge15
  ]

entry.if.end7_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %3 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %num_crtc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_crtc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %enable_virtual_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 77
  %6 = ptrtoint ptr %enable_virtual_display to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enable_virtual_display, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge, %entry.if.end7_crit_edge15
  %driver_features = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 10
  %7 = ptrtoint ptr %driver_features to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_features, align 4
  %and = and i32 %8, -17
  store i32 %and, ptr %driver_features, align 4
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %9 = ptrtoint ptr %cg_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cg_flags, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 100
  %10 = ptrtoint ptr %pg_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pg_flags, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_virt_kiq_reg_write_reg_wait(ptr noundef %adev, i32 noundef %reg0, i32 noundef %reg1, i32 noundef %ref, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #11
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %seq, align 4, !annotation !57
  %ring_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring_lock) #11
  %call7 = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring2, i32 noundef 32) #11
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 7, i32 3, i32 1
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %funcs, align 4
  %emit_reg_write_reg_wait = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %2, i32 0, i32 35
  %3 = ptrtoint ptr %emit_reg_write_reg_wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %emit_reg_write_reg_wait, align 4
  tail call void %4(ptr noundef %ring2, i32 noundef %reg0, i32 noundef %reg1, i32 noundef %ref, i32 noundef %mask) #11
  %call8 = call i32 @amdgpu_fence_emit_polling(ptr noundef %ring2, ptr noundef nonnull %seq, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %failed_undo

if.end:                                           ; preds = %entry
  call void @amdgpu_ring_commit(ptr noundef %ring2) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call4) #11
  %5 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %seq, align 4
  %call10 = call i32 @amdgpu_fence_wait_polling(ptr noundef %ring2, i32 noundef %6, i32 noundef 5000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %land.lhs.true, label %do.body22

land.lhs.true:                                    ; preds = %if.end
  %7 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %10, 15728640
  %11 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i63 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i63 to ptr
  %preempt_count.i64 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i64, align 4
  %and15 = and i32 %14, 983040
  %or = or i32 %and15, %and
  %15 = call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i65 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i65 to ptr
  %preempt_count.i66 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i66, align 4
  %and17 = and i32 %18, 65280
  %or18 = or i32 %or, %and17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18)
  %tobool19.not = icmp eq i32 %or18, 0
  br i1 %tobool19.not, label %land.rhs.preheader, label %land.lhs.true.do.end40_crit_edge

land.lhs.true.do.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 91) #11
  br label %cleanup

land.rhs.preheader:                               ; preds = %land.lhs.true
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 91) #11
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %cnt.070 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %cnt.070)
  %exitcond.not = icmp eq i32 %cnt.070, 1000
  br i1 %exitcond.not, label %land.rhs.do.end40_crit_edge, label %while.body

land.rhs.do.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %cnt.070, 1
  call void @msleep(i32 noundef 5) #11
  %19 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq, align 4
  %call32 = call i32 @amdgpu_fence_wait_polling(ptr noundef %ring2, i32 noundef %20, i32 noundef 5000) #11
  %cmp28 = icmp slt i32 %call32, 1
  br i1 %cmp28, label %while.body.land.rhs_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

failed_undo:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @amdgpu_ring_undo(ptr noundef %ring2) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ring_lock, i32 noundef %call4) #11
  br label %do.end40

do.end40:                                         ; preds = %failed_undo, %land.rhs.do.end40_crit_edge, %land.lhs.true.do.end40_crit_edge
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef %reg0, i32 noundef %reg1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %while.body.cleanup_crit_edge, %do.body22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_emit_polling(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_polling(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_undo(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_virt_request_full_gpu(ptr noundef %adev, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %ops = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %adev, i1 noundef zeroext %init) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %virt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt1, align 8
  %and = and i32 %5, -17
  store i32 %and, ptr %virt1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_virt_release_full_gpu(ptr noundef %adev, i1 noundef zeroext %init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %ops = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %rel_full_gpu = getelementptr inbounds %struct.amdgpu_virt_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rel_full_gpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rel_full_gpu, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %adev, i1 noundef zeroext %init) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %virt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt1, align 8
  %or = or i32 %5, 16
  store i32 %or, ptr %virt1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_virt_reset_gpu(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %ops = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %reset_gpu = getelementptr inbounds %struct.amdgpu_virt_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reset_gpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpu, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %adev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %virt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt1, align 8
  %and = and i32 %5, -17
  store i32 %and, ptr %virt1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_virt_request_init_data(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %req_init_data = getelementptr inbounds %struct.amdgpu_virt_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %req_init_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_init_data, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %adev) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %req_init_data_ver = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 14
  %4 = ptrtoint ptr %req_init_data_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_init_data_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  %.str.5..str.8 = select i1 %cmp, ptr @.str.5, ptr @.str.8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5..str.8) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_virt_wait_reset(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %wait_reset = getelementptr inbounds %struct.amdgpu_virt_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %wait_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait_reset, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %adev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_virt_alloc_mm_table(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 8, i32 2
  %2 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gpu_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mm_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 8
  %cpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 8, i32 1
  %call = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef 4096, i32 noundef 4096, i32 noundef 4, ptr noundef %mm_table, ptr noundef %gpu_addr, ptr noundef %cpu_addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %call) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_addr, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 4096)
  %7 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %gpu_addr, align 8
  %9 = load ptr, ptr %cpu_addr, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %8, ptr noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then11 ], [ 0, %if.end12 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_virt_free_mm_table(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 8, i32 2
  %2 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gpu_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool2.not = icmp eq i64 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %mm_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 8
  %cpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 8, i32 1
  tail call void @amdgpu_bo_free_kernel(ptr noundef %mm_table, ptr noundef %gpu_addr, ptr noundef %cpu_addr) #11
  %4 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %gpu_addr, align 8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amd_sriov_msg_checksum(ptr nocapture noundef readonly %obj, i32 noundef %obj_size, i32 noundef %key, i32 noundef %checksum) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %obj_size)
  %cmp18.not = icmp eq i32 %obj_size, 0
  br i1 %cmp18.not, label %entry.for.cond1.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %ret.0.lcssa = phi i32 [ %key, %entry.for.cond1.preheader_crit_edge ], [ %add, %for.body.for.cond1.preheader_crit_edge ]
  %checksum.addr.sroa.3.0.extract.shift = lshr i32 %checksum, 8
  %checksum.addr.sroa.2.0.extract.shift = lshr i32 %checksum, 16
  %checksum.addr.sroa.0.0.extract.shift = lshr i32 %checksum, 24
  %conv6.1 = and i32 %checksum.addr.sroa.2.0.extract.shift, 255
  %0 = add nuw nsw i32 %checksum.addr.sroa.0.0.extract.shift, %conv6.1
  %conv6.2 = and i32 %checksum.addr.sroa.3.0.extract.shift, 255
  %1 = add nuw nsw i32 %0, %conv6.2
  %conv6.3 = and i32 %checksum, 255
  %2 = add nuw nsw i32 %1, %conv6.3
  %sub.3 = sub i32 %ret.0.lcssa, %2
  ret i32 %sub.3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ret.019 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %key, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %obj, i32 %i.020
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %4 to i32
  %add = add i32 %ret.019, %conv
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %obj_size
  br i1 %exitcond.not, label %for.body.for.cond1.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_virt_release_ras_err_handler_data(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %bo.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_eh_data = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 16
  %0 = ptrtoint ptr %virt_eh_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_eh_data, align 4
  %ras_init_done = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 17
  %2 = ptrtoint ptr %ras_init_done to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ras_init_done, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo.i) #11
  %3 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo.i, align 4, !annotation !57
  %last_reserved.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_reserved.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_reserved.i, align 4
  %i.016.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.016.i)
  %cmp17.i = icmp sgt i32 %i.016.i, -1
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %if.end.i.amdgpu_virt_ras_release_bp.exit_crit_edge

if.end.i.amdgpu_virt_ras_release_bp.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_ras_release_bp.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %bps_bo.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ %i.016.i, %for.body.lr.ph.i ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %bps_bo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bps_bo.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.018.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %bo.i, align 4
  call void @amdgpu_bo_free_kernel(ptr noundef nonnull %bo.i, ptr noundef null, ptr noundef null) #11
  %11 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo.i, align 4
  %13 = ptrtoint ptr %bps_bo.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bps_bo.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %14, i32 %i.018.i
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %arrayidx3.i, align 4
  %16 = ptrtoint ptr %last_reserved.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.018.i, ptr %last_reserved.i, align 4
  %i.0.i = add nsw i32 %i.018.i, -1
  %cmp.i.not = icmp eq i32 %i.018.i, 0
  br i1 %cmp.i.not, label %for.body.i.amdgpu_virt_ras_release_bp.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.amdgpu_virt_ras_release_bp.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_ras_release_bp.exit

amdgpu_virt_ras_release_bp.exit:                  ; preds = %for.body.i.amdgpu_virt_ras_release_bp.exit_crit_edge, %if.end.i.amdgpu_virt_ras_release_bp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo.i) #11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  call void @kfree(ptr noundef %18) #11
  %bps_bo = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %bps_bo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bps_bo, align 4
  call void @kfree(ptr noundef %20) #11
  call void @kfree(ptr noundef nonnull %1) #11
  %21 = ptrtoint ptr %virt_eh_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %virt_eh_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_virt_ras_release_bp.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_virt_fini_data_exchange(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf2pf_update_interval_ms = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 20
  %0 = ptrtoint ptr %vf2pf_update_interval_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf2pf_update_interval_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  %vf2pf_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 19
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %vf2pf_work) #11
  %2 = ptrtoint ptr %vf2pf_update_interval_ms to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vf2pf_update_interval_ms, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_virt_init_data_exchange(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_reserve = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 11
  %0 = ptrtoint ptr %fw_reserve to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw_reserve, align 8
  %p_vf2pf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 11, i32 1
  %1 = ptrtoint ptr %p_vf2pf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %p_vf2pf, align 4
  %vf2pf_update_interval_ms = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 20
  %2 = ptrtoint ptr %vf2pf_update_interval_ms to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vf2pf_update_interval_ms, align 4
  %fw_vram_usage_va = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 25
  %3 = ptrtoint ptr %fw_vram_usage_va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_vram_usage_va, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amdgpu_virt_exchange_data(ptr noundef %adev)
  %vf2pf_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 19
  tail call void @__init_work(ptr noundef %vf2pf_work, i32 noundef 0) #11
  %5 = ptrtoint ptr %vf2pf_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %vf2pf_work, align 8
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 19, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @amdgpu_virt_init_data_exchange.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry15 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 19, i32 0, i32 1
  %6 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 19, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 19, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @amdgpu_virt_update_vf2pf_work_item, ptr %func, align 4
  %timer = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 19, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.17, ptr noundef nonnull @amdgpu_virt_init_data_exchange.__key.16) #11
  %9 = ptrtoint ptr %vf2pf_update_interval_ms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vf2pf_update_interval_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %10) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %vf2pf_work, i32 noundef %call2.i) #11
  br label %if.end36

if.else:                                          ; preds = %entry
  %bios = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 26
  %12 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios, align 4
  %cmp29.not = icmp eq ptr %13, null
  br i1 %cmp29.not, label %if.else.if.end36_crit_edge, label %if.then30

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %13, i32 65536
  %14 = ptrtoint ptr %fw_reserve to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %fw_reserve, align 8
  %call35 = tail call fastcc i32 @amdgpu_virt_read_pf2vf_data(ptr noundef %adev)
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.else.if.end36_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_virt_exchange_data(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %bo.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_vram_usage_va = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 25
  %0 = ptrtoint ptr %fw_vram_usage_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_vram_usage_va, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 65536
  %fw_reserve = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 11
  %2 = ptrtoint ptr %fw_reserve to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %fw_reserve, align 8
  %add.ptr5 = getelementptr i8, ptr %1, i32 66560
  %p_vf2pf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 11, i32 1
  %3 = ptrtoint ptr %p_vf2pf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr5, ptr %p_vf2pf, align 4
  %call = tail call fastcc i32 @amdgpu_virt_read_pf2vf_data(ptr noundef %adev)
  tail call fastcc void @amdgpu_virt_write_vf2pf_data(ptr noundef %adev)
  %4 = ptrtoint ptr %fw_reserve to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_reserve, align 8
  %version = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info_header, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp12 = icmp eq i32 %7, 2
  br i1 %cmp12, label %if.then13, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then13:                                        ; preds = %if.then
  %bp_block_offset_low = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %bp_block_offset_low to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %bp_block_offset_low, align 1
  %bp_block_size19 = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info, ptr %5, i32 0, i32 15
  %10 = ptrtoint ptr %bp_block_size19 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %bp_block_size19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then13.if.end30_crit_edge, label %land.lhs.true

if.then13.if.end30_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true:                                    ; preds = %if.then13
  %ras_init_done = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 17
  %12 = ptrtoint ptr %ras_init_done to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ras_init_done, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not = icmp eq i8 %13, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then22:                                        ; preds = %land.lhs.true
  %virt_eh_data.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 16) #15
  %15 = ptrtoint ptr %virt_eh_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %virt_eh_data.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then22.if.end_crit_edge, label %if.end.i

if.then22.if.end_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 2048) #15
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.bps_failure.i_crit_edge, label %if.end5.i

if.end.i.bps_failure.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bps_failure.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 2048) #15
  %tobool7.not.i = icmp eq ptr %call7.i.i1.i, null
  br i1 %tobool7.not.i, label %bps_bo_failure.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %virt_eh_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt_eh_data.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %19, align 4
  %21 = load ptr, ptr %virt_eh_data.i, align 4
  %bps_bo11.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bps_bo11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i1.i, ptr %bps_bo11.i, align 4
  %23 = load ptr, ptr %virt_eh_data.i, align 4
  %count.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %count.i, align 4
  %25 = load ptr, ptr %virt_eh_data.i, align 4
  %last_reserved.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %last_reserved.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %last_reserved.i, align 4
  %27 = ptrtoint ptr %ras_init_done to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %ras_init_done, align 8
  br label %if.end

bps_bo_failure.i:                                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %bps_failure.i

bps_failure.i:                                    ; preds = %bps_bo_failure.i, %if.end.i.bps_failure.i_crit_edge
  %28 = ptrtoint ptr %virt_eh_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt_eh_data.i, align 4
  tail call void @kfree(ptr noundef %29) #11
  br label %if.end

if.end:                                           ; preds = %bps_failure.i, %if.end9.i, %if.then22.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %30 = ptrtoint ptr %ras_init_done to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ras_init_done, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool26.not = icmp eq i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %switch.i = icmp ult i32 %11, 8
  %or.cond = select i1 %tobool26.not, i1 true, i1 %switch.i
  br i1 %or.cond, label %if.end.if.end30_crit_edge, label %for.body.lr.ph.i

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

for.body.lr.ph.i:                                 ; preds = %if.end
  %div12.i = lshr i32 %11, 3
  %virt_eh_data.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bp_idx.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %fw_vram_usage_va to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw_vram_usage_va, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 %9
  %mul.i = shl i32 %bp_idx.025.i, 3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr1.i, align 8
  %36 = ptrtoint ptr %virt_eh_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virt_eh_data.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %for.cond.preheader.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %count.i.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp12.i.i = icmp sgt i32 %39, 0
  br i1 %cmp12.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.amdgpu_virt_ras_add_bps.exit.i_crit_edge

for.cond.preheader.i.i.amdgpu_virt_ras_add_bps.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_ras_add_bps.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %39
  br i1 %exitcond.not.i.i, label %for.cond.i.i.amdgpu_virt_ras_add_bps.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond.i.i.amdgpu_virt_ras_add_bps.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_ras_add_bps.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %retired_page2.i.i = getelementptr %struct.eeprom_table_record, ptr %41, i32 %i.013.i.i, i32 1
  %42 = ptrtoint ptr %retired_page2.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %retired_page2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %35)
  %cmp3.i.i = icmp eq i64 %43, %35
  br i1 %cmp3.i.i, label %for.body.i.i.for.inc.i_crit_edge, label %for.cond.i.i

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

amdgpu_virt_ras_add_bps.exit.i:                   ; preds = %for.cond.i.i.amdgpu_virt_ras_add_bps.exit.i_crit_edge, %for.cond.preheader.i.i.amdgpu_virt_ras_add_bps.exit.i_crit_edge
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %37, align 4
  %arrayidx.i.i = getelementptr %struct.eeprom_table_record, ptr %45, i32 %39
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 -1, ptr %arrayidx.i.i, align 1
  %bp.sroa.4.0.arrayidx.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %47 = ptrtoint ptr %bp.sroa.4.0.arrayidx.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %35, ptr %bp.sroa.4.0.arrayidx.i.sroa_idx.i, align 1
  %bp.sroa.6.0.arrayidx.i.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 16
  %48 = call ptr @memset(ptr %bp.sroa.6.0.arrayidx.i.sroa_idx.i, i32 255, i32 15)
  %49 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count.i.i, align 4
  %add.i.i = add i32 %50, 1
  store i32 %add.i.i, ptr %count.i.i, align 4
  %51 = ptrtoint ptr %virt_eh_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virt_eh_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo.i.i) #11
  %53 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %bo.i.i, align 4
  %tobool.not.i17.i = icmp eq ptr %52, null
  br i1 %tobool.not.i17.i, label %amdgpu_virt_ras_add_bps.exit.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge, label %if.end.i19.i

amdgpu_virt_ras_add_bps.exit.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge: ; preds = %amdgpu_virt_ras_add_bps.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_ras_reserve_bps.exit.i

if.end.i19.i:                                     ; preds = %amdgpu_virt_ras_add_bps.exit.i
  %last_reserved.i.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %52, i32 0, i32 3
  %54 = ptrtoint ptr %last_reserved.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %last_reserved.i.i, align 4
  %count.i18.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %52, i32 0, i32 2
  %56 = ptrtoint ptr %count.i18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count.i18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp22.i.i = icmp slt i32 %55, %57
  br i1 %cmp22.i.i, label %for.body.lr.ph.i20.i, label %if.end.i19.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge

if.end.i19.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge: ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_ras_reserve_bps.exit.i

for.body.lr.ph.i20.i:                             ; preds = %if.end.i19.i
  %bps_bo.i.i = getelementptr inbounds %struct.amdgpu_virt_ras_err_handler_data, ptr %52, i32 0, i32 1
  br label %for.body.i21.i

for.body.i21.i:                                   ; preds = %if.end4.i.i.for.body.i21.i_crit_edge, %for.body.lr.ph.i20.i
  %i.023.i.i = phi i32 [ %55, %for.body.lr.ph.i20.i ], [ %add.i22.i, %if.end4.i.i.for.body.i21.i_crit_edge ]
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %52, align 4
  %retired_page.i.i = getelementptr %struct.eeprom_table_record, ptr %59, i32 %i.023.i.i, i32 1
  %60 = ptrtoint ptr %retired_page.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %retired_page.i.i, align 1
  %shl.i.i = shl i64 %61, 12
  %call.i.i = call i32 @amdgpu_bo_create_kernel_at(ptr noundef %adev, i64 noundef %shl.i.i, i64 noundef 4096, i32 noundef 4, ptr noundef nonnull %bo.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %for.body.i21.i.if.end4.i.i_crit_edge, label %if.then3.i.i

for.body.i21.i.if.end4.i.i_crit_edge:             ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i64 noundef %61) #11
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %for.body.i21.i.if.end4.i.i_crit_edge
  %62 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bo.i.i, align 4
  %64 = ptrtoint ptr %bps_bo.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bps_bo.i.i, align 4
  %arrayidx5.i.i = getelementptr ptr, ptr %65, i32 %i.023.i.i
  %66 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %arrayidx5.i.i, align 4
  %add.i22.i = add nsw i32 %i.023.i.i, 1
  %67 = ptrtoint ptr %last_reserved.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.i22.i, ptr %last_reserved.i.i, align 4
  store ptr null, ptr %bo.i.i, align 4
  %68 = ptrtoint ptr %count.i18.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count.i18.i, align 4
  %cmp.i.i = icmp slt i32 %add.i22.i, %69
  br i1 %cmp.i.i, label %if.end4.i.i.for.body.i21.i_crit_edge, label %if.end4.i.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge

if.end4.i.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_ras_reserve_bps.exit.i

if.end4.i.i.for.body.i21.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i21.i

amdgpu_virt_ras_reserve_bps.exit.i:               ; preds = %if.end4.i.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge, %if.end.i19.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge, %amdgpu_virt_ras_add_bps.exit.i.amdgpu_virt_ras_reserve_bps.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo.i.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %amdgpu_virt_ras_reserve_bps.exit.i, %for.body.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %bp_idx.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div12.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end30_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.end30_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end30:                                         ; preds = %for.inc.i.if.end30_crit_edge, %if.end.if.end30_crit_edge, %if.then13.if.end30_crit_edge, %if.then.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_virt_update_vf2pf_work_item(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -90728
  %call = tail call fastcc i32 @amdgpu_virt_read_pf2vf_data(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @amdgpu_virt_write_vf2pf_data(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %vf2pf_update_interval_ms = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %vf2pf_update_interval_ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf2pf_update_interval_ms, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_virt_read_pf2vf_data(ptr nocapture noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_reserve = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 11
  %0 = ptrtoint ptr %fw_reserve to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_reserve, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp4 = icmp ugt i32 %3, 1024
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %version = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info_header, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %version, align 1
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end6
  %checksum7 = getelementptr inbounds %struct.amdgim_pf2vf_info_v1, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %checksum7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %checksum7, align 4
  %checksum_key = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 11, i32 2
  %9 = ptrtoint ptr %checksum_key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %checksum_key, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not.i = icmp eq i32 %3, 0
  br i1 %cmp18.not.i, label %sw.bb.amd_sriov_msg_checksum.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.amd_sriov_msg_checksum.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %amd_sriov_msg_checksum.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %ret.019.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ %10, %sw.bb.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 %i.020.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %12 to i32
  %add.i = add i32 %ret.019.i, %conv.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.body.i.amd_sriov_msg_checksum.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.amd_sriov_msg_checksum.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amd_sriov_msg_checksum.exit

amd_sriov_msg_checksum.exit:                      ; preds = %for.body.i.amd_sriov_msg_checksum.exit_crit_edge, %sw.bb.amd_sriov_msg_checksum.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ %10, %sw.bb.amd_sriov_msg_checksum.exit_crit_edge ], [ %add.i, %for.body.i.amd_sriov_msg_checksum.exit_crit_edge ]
  %checksum.addr.sroa.3.0.extract.shift.i = lshr i32 %8, 8
  %checksum.addr.sroa.2.0.extract.shift.i = lshr i32 %8, 16
  %checksum.addr.sroa.0.0.extract.shift.i = lshr i32 %8, 24
  %conv6.1.i = and i32 %checksum.addr.sroa.2.0.extract.shift.i, 255
  %conv6.2.i = and i32 %checksum.addr.sroa.3.0.extract.shift.i, 255
  %conv6.3.i = and i32 %8, 255
  %13 = add nuw nsw i32 %conv6.3.i, %checksum.addr.sroa.0.0.extract.shift.i
  %14 = add nuw nsw i32 %13, %conv6.1.i
  %15 = add nuw nsw i32 %14, %conv6.2.i
  %sub.3.i = sub i32 %ret.0.lcssa.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub.3.i)
  %cmp14.not = icmp eq i32 %8, %sub.3.i
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %amd_sriov_msg_checksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end16:                                         ; preds = %amd_sriov_msg_checksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %feature_flags = getelementptr inbounds %struct.amdgim_pf2vf_info_v1, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %feature_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %feature_flags, align 4
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 12
  %18 = ptrtoint ptr %gim_feature to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gim_feature, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end6
  %checksum19 = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %checksum19 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %checksum19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not.i183 = icmp eq i32 %3, 0
  br i1 %cmp18.not.i183, label %sw.bb18.amd_sriov_msg_checksum.exit200_crit_edge, label %sw.bb18.for.body.i199_crit_edge

sw.bb18.for.body.i199_crit_edge:                  ; preds = %sw.bb18
  br label %for.body.i199

sw.bb18.amd_sriov_msg_checksum.exit200_crit_edge: ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %amd_sriov_msg_checksum.exit200

for.body.i199:                                    ; preds = %for.body.i199.for.body.i199_crit_edge, %sw.bb18.for.body.i199_crit_edge
  %i.020.i192 = phi i32 [ %inc.i197, %for.body.i199.for.body.i199_crit_edge ], [ 0, %sw.bb18.for.body.i199_crit_edge ]
  %ret.019.i193 = phi i32 [ %add.i196, %for.body.i199.for.body.i199_crit_edge ], [ 0, %sw.bb18.for.body.i199_crit_edge ]
  %add.ptr.i194 = getelementptr i8, ptr %1, i32 %i.020.i192
  %21 = ptrtoint ptr %add.ptr.i194 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i194, align 1
  %conv.i195 = zext i8 %22 to i32
  %add.i196 = add i32 %ret.019.i193, %conv.i195
  %inc.i197 = add nuw nsw i32 %i.020.i192, 1
  %exitcond.not.i198 = icmp eq i32 %inc.i197, %3
  br i1 %exitcond.not.i198, label %for.body.i199.amd_sriov_msg_checksum.exit200_crit_edge, label %for.body.i199.for.body.i199_crit_edge

for.body.i199.for.body.i199_crit_edge:            ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i199

for.body.i199.amd_sriov_msg_checksum.exit200_crit_edge: ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #13
  br label %amd_sriov_msg_checksum.exit200

amd_sriov_msg_checksum.exit200:                   ; preds = %for.body.i199.amd_sriov_msg_checksum.exit200_crit_edge, %sw.bb18.amd_sriov_msg_checksum.exit200_crit_edge
  %ret.0.lcssa.i184 = phi i32 [ 0, %sw.bb18.amd_sriov_msg_checksum.exit200_crit_edge ], [ %add.i196, %for.body.i199.amd_sriov_msg_checksum.exit200_crit_edge ]
  %checksum.addr.sroa.3.0.extract.shift.i185 = lshr i32 %20, 8
  %checksum.addr.sroa.2.0.extract.shift.i186 = lshr i32 %20, 16
  %checksum.addr.sroa.0.0.extract.shift.i187 = lshr i32 %20, 24
  %conv6.1.i188 = and i32 %checksum.addr.sroa.2.0.extract.shift.i186, 255
  %conv6.2.i189 = and i32 %checksum.addr.sroa.3.0.extract.shift.i185, 255
  %conv6.3.i190 = and i32 %20, 255
  %23 = add nuw nsw i32 %conv6.3.i190, %checksum.addr.sroa.0.0.extract.shift.i187
  %24 = add nuw nsw i32 %23, %conv6.1.i188
  %25 = add nuw nsw i32 %24, %conv6.2.i189
  %sub.3.i191 = sub i32 %ret.0.lcssa.i184, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub.3.i191)
  %cmp25.not = icmp eq i32 %20, %sub.3.i191
  br i1 %cmp25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %amd_sriov_msg_checksum.exit200
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end27:                                         ; preds = %amd_sriov_msg_checksum.exit200
  %vf2pf_update_interval_ms = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %vf2pf_update_interval_ms to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %vf2pf_update_interval_ms, align 1
  %vf2pf_update_interval_ms29 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 20
  %28 = ptrtoint ptr %vf2pf_update_interval_ms29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %vf2pf_update_interval_ms29, align 4
  %feature_flags30 = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %feature_flags30 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %feature_flags30, align 1
  %gim_feature32 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 12
  %31 = ptrtoint ptr %gim_feature32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %gim_feature32, align 4
  %reg_access_flags = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 19
  %32 = ptrtoint ptr %reg_access_flags to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %reg_access_flags, align 1
  %reg_access = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 18
  %34 = ptrtoint ptr %reg_access to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %reg_access, align 4
  %decode_max_dimension_pixels = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 22
  %decode_max_frame_pixels = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 23
  %encode_max_dimension_pixels = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 24
  %encode_max_frame_pixels = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 25
  %is_mm_bw_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 21
  %35 = ptrtoint ptr %is_mm_bw_enabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %is_mm_bw_enabled, align 8
  %arrayidx = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 0
  %36 = call ptr @memset(ptr %decode_max_dimension_pixels, i32 0, i32 16)
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %arrayidx, align 1
  %39 = ptrtoint ptr %decode_max_dimension_pixels to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %decode_max_dimension_pixels, align 4
  %decode_max_frame_pixels49 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 0, i32 1
  %40 = ptrtoint ptr %decode_max_frame_pixels49 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %decode_max_frame_pixels49, align 1
  %42 = ptrtoint ptr %decode_max_frame_pixels to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %decode_max_frame_pixels, align 8
  %encode_max_dimension_pixels62 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 0, i32 2
  %43 = ptrtoint ptr %encode_max_dimension_pixels62 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %encode_max_dimension_pixels62, align 1
  %45 = ptrtoint ptr %encode_max_dimension_pixels to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %encode_max_dimension_pixels, align 4
  %encode_max_frame_pixels75 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 0, i32 3
  %46 = ptrtoint ptr %encode_max_frame_pixels75 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %encode_max_frame_pixels75, align 1
  %48 = ptrtoint ptr %encode_max_frame_pixels to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %encode_max_frame_pixels, align 8
  %arrayidx.1 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 1
  %49 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %arrayidx.1, align 1
  %51 = tail call i32 @llvm.umax.i32(i32 %50, i32 %38)
  %52 = ptrtoint ptr %decode_max_dimension_pixels to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %decode_max_dimension_pixels, align 4
  %decode_max_frame_pixels49.1 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 1, i32 1
  %53 = ptrtoint ptr %decode_max_frame_pixels49.1 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %decode_max_frame_pixels49.1, align 1
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 %41)
  %56 = ptrtoint ptr %decode_max_frame_pixels to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %decode_max_frame_pixels, align 8
  %encode_max_dimension_pixels62.1 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 1, i32 2
  %57 = ptrtoint ptr %encode_max_dimension_pixels62.1 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %encode_max_dimension_pixels62.1, align 1
  %59 = tail call i32 @llvm.umax.i32(i32 %58, i32 %44)
  %60 = ptrtoint ptr %encode_max_dimension_pixels to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %encode_max_dimension_pixels, align 4
  %encode_max_frame_pixels75.1 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 1, i32 3
  %61 = ptrtoint ptr %encode_max_frame_pixels75.1 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %encode_max_frame_pixels75.1, align 1
  %63 = tail call i32 @llvm.umax.i32(i32 %62, i32 %47)
  %64 = ptrtoint ptr %encode_max_frame_pixels to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %encode_max_frame_pixels, align 8
  %arrayidx.2 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 2
  %65 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %arrayidx.2, align 1
  %67 = tail call i32 @llvm.umax.i32(i32 %66, i32 %51)
  %68 = ptrtoint ptr %decode_max_dimension_pixels to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %decode_max_dimension_pixels, align 4
  %decode_max_frame_pixels49.2 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 2, i32 1
  %69 = ptrtoint ptr %decode_max_frame_pixels49.2 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %decode_max_frame_pixels49.2, align 1
  %71 = tail call i32 @llvm.umax.i32(i32 %70, i32 %55)
  %72 = ptrtoint ptr %decode_max_frame_pixels to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %decode_max_frame_pixels, align 8
  %encode_max_dimension_pixels62.2 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 2, i32 2
  %73 = ptrtoint ptr %encode_max_dimension_pixels62.2 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %encode_max_dimension_pixels62.2, align 1
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 %59)
  %76 = ptrtoint ptr %encode_max_dimension_pixels to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %encode_max_dimension_pixels, align 4
  %encode_max_frame_pixels75.2 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 2, i32 3
  %77 = ptrtoint ptr %encode_max_frame_pixels75.2 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %encode_max_frame_pixels75.2, align 1
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 %63)
  %80 = ptrtoint ptr %encode_max_frame_pixels to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %encode_max_frame_pixels, align 8
  %arrayidx.3 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 3
  %81 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %arrayidx.3, align 1
  %83 = tail call i32 @llvm.umax.i32(i32 %82, i32 %67)
  %84 = ptrtoint ptr %decode_max_dimension_pixels to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %decode_max_dimension_pixels, align 4
  %decode_max_frame_pixels49.3 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 3, i32 1
  %85 = ptrtoint ptr %decode_max_frame_pixels49.3 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %decode_max_frame_pixels49.3, align 1
  %87 = tail call i32 @llvm.umax.i32(i32 %86, i32 %71)
  %88 = ptrtoint ptr %decode_max_frame_pixels to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %decode_max_frame_pixels, align 8
  %encode_max_dimension_pixels62.3 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 3, i32 2
  %89 = ptrtoint ptr %encode_max_dimension_pixels62.3 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %encode_max_dimension_pixels62.3, align 1
  %91 = tail call i32 @llvm.umax.i32(i32 %90, i32 %75)
  %92 = ptrtoint ptr %encode_max_dimension_pixels to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %encode_max_dimension_pixels, align 4
  %encode_max_frame_pixels75.3 = getelementptr %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 20, i32 3, i32 3
  %93 = ptrtoint ptr %encode_max_frame_pixels75.3 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %encode_max_frame_pixels75.3, align 1
  %95 = tail call i32 @llvm.umax.i32(i32 %94, i32 %79)
  %96 = ptrtoint ptr %encode_max_frame_pixels to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %encode_max_frame_pixels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp88.not = icmp eq i32 %83, 0
  br i1 %cmp88.not, label %lor.lhs.false, label %if.end27.if.then92_crit_edge

if.end27.if.then92_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.end27
  %97 = ptrtoint ptr %encode_max_dimension_pixels to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %encode_max_dimension_pixels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp91.not = icmp eq i32 %98, 0
  br i1 %cmp91.not, label %lor.lhs.false.if.end95_crit_edge, label %lor.lhs.false.if.then92_crit_edge

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then92

lor.lhs.false.if.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %if.end27.if.then92_crit_edge
  %99 = ptrtoint ptr %is_mm_bw_enabled to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %is_mm_bw_enabled, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %lor.lhs.false.if.end95_crit_edge
  %uuid = getelementptr inbounds %struct.amd_sriov_msg_pf2vf_info, ptr %1, i32 0, i32 17
  %100 = ptrtoint ptr %uuid to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %uuid, align 1
  %unique_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 153
  %102 = ptrtoint ptr %unique_id to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %unique_id, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end95, %if.end16
  %vf2pf_update_interval_ms97 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 20
  %103 = ptrtoint ptr %vf2pf_update_interval_ms97 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vf2pf_update_interval_ms97, align 4
  %105 = add i32 %104, -10001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9801, i32 %105)
  %106 = icmp ult i32 %105, -9801
  br i1 %106, label %if.then103, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then103:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %vf2pf_update_interval_ms97 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 2000, ptr %vf2pf_update_interval_ms97, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %sw.epilog.cleanup_crit_edge, %sw.default, %if.then26, %if.then15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %sw.default ], [ -22, %if.then26 ], [ -22, %if.then15 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then103 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_virt_write_vf2pf_data(ptr noundef %adev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %p_vf2pf = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 11, i32 1
  %0 = ptrtoint ptr %p_vf2pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_vf2pf, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 1016)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1024, ptr %1, align 1
  %version = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 3, ptr %version, align 1
  %driver_version = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %driver_version to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1311719680, ptr %driver_version, align 1
  %driver_cert = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %driver_cert to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %driver_cert, align 1
  %vram_mgr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 8
  %call5 = tail call i64 @amdgpu_vram_mgr_usage(ptr noundef %vram_mgr) #11
  %shr = lshr i64 %call5, 20
  %conv = trunc i64 %shr to i32
  %fb_usage = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %fb_usage to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %conv, ptr %fb_usage, align 1
  %call8 = tail call i64 @amdgpu_vram_mgr_vis_usage(ptr noundef %vram_mgr) #11
  %shr9 = lshr i64 %call8, 20
  %conv10 = trunc i64 %shr9 to i32
  %fb_vis_usage = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %fb_vis_usage to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %conv10, ptr %fb_vis_usage, align 1
  %real_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %10 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %real_vram_size, align 8
  %shr11 = lshr i64 %11, 20
  %conv12 = trunc i64 %shr11 to i32
  %fb_size = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %fb_size to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %conv12, ptr %fb_size, align 1
  %visible_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  %13 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %visible_vram_size, align 8
  %shr14 = lshr i64 %14, 20
  %conv15 = trunc i64 %shr14 to i32
  %fb_vis_size = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %fb_vis_size to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %conv15, ptr %fb_vis_size, align 1
  %16 = ptrtoint ptr %p_vf2pf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p_vf2pf, align 4
  %cmp.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %if.end.amdgpu_virt_populate_vf2pf_ucode_info.exit_crit_edge, label %do.body.i

if.end.amdgpu_virt_populate_vf2pf_ucode_info.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_populate_vf2pf_ucode_info.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ucode_info.i = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %ucode_info.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ucode_info.i, align 1
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 4
  %19 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_version.i, align 8
  %version.i = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 0, i32 1
  %21 = ptrtoint ptr %version.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %version.i, align 1
  %arrayidx8.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx8.i, align 1
  %fw_version10.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 1
  %23 = ptrtoint ptr %fw_version10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_version10.i, align 4
  %version13.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 1, i32 1
  %25 = ptrtoint ptr %version13.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %version13.i, align 1
  %arrayidx18.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 2
  %26 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %arrayidx18.i, align 1
  %fw_version20.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 19
  %27 = ptrtoint ptr %fw_version20.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_version20.i, align 4
  %version23.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 2, i32 1
  %29 = ptrtoint ptr %version23.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %version23.i, align 1
  %arrayidx28.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 3
  %30 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %arrayidx28.i, align 1
  %me_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 10
  %31 = ptrtoint ptr %me_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %me_fw_version.i, align 8
  %version32.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 3, i32 1
  %33 = ptrtoint ptr %version32.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %version32.i, align 1
  %arrayidx37.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 4
  %34 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %arrayidx37.i, align 1
  %pfp_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 12
  %35 = ptrtoint ptr %pfp_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pfp_fw_version.i, align 8
  %version42.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 4, i32 1
  %37 = ptrtoint ptr %version42.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %version42.i, align 1
  %arrayidx47.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 5
  %38 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 5, ptr %arrayidx47.i, align 1
  %ce_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 14
  %39 = ptrtoint ptr %ce_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ce_fw_version.i, align 8
  %version52.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 5, i32 1
  %41 = ptrtoint ptr %version52.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %version52.i, align 1
  %arrayidx57.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 6
  %42 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 6, ptr %arrayidx57.i, align 1
  %rlc_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 16
  %43 = ptrtoint ptr %rlc_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rlc_fw_version.i, align 8
  %version62.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 6, i32 1
  %45 = ptrtoint ptr %version62.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %version62.i, align 1
  %arrayidx67.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 7
  %46 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 7, ptr %arrayidx67.i, align 1
  %rlc_srlc_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 25
  %47 = ptrtoint ptr %rlc_srlc_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rlc_srlc_fw_version.i, align 4
  %version72.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 7, i32 1
  %49 = ptrtoint ptr %version72.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %version72.i, align 1
  %arrayidx77.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 8
  %50 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 8, ptr %arrayidx77.i, align 1
  %rlc_srlg_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 27
  %51 = ptrtoint ptr %rlc_srlg_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rlc_srlg_fw_version.i, align 4
  %version82.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 8, i32 1
  %53 = ptrtoint ptr %version82.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %version82.i, align 1
  %arrayidx87.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 9
  %54 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 9, ptr %arrayidx87.i, align 1
  %rlc_srls_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 29
  %55 = ptrtoint ptr %rlc_srls_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rlc_srls_fw_version.i, align 4
  %version92.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 9, i32 1
  %57 = ptrtoint ptr %version92.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %version92.i, align 1
  %arrayidx97.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 10
  %58 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 10, ptr %arrayidx97.i, align 1
  %mec_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 18
  %59 = ptrtoint ptr %mec_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mec_fw_version.i, align 8
  %version102.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 10, i32 1
  %61 = ptrtoint ptr %version102.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %version102.i, align 1
  %arrayidx107.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 11
  %62 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 11, ptr %arrayidx107.i, align 1
  %mec2_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 20
  %63 = ptrtoint ptr %mec2_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mec2_fw_version.i, align 8
  %version112.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 11, i32 1
  %65 = ptrtoint ptr %version112.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %64, ptr %version112.i, align 1
  %arrayidx117.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 12
  %66 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 12, ptr %arrayidx117.i, align 1
  %sos.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 9
  %67 = ptrtoint ptr %sos.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sos.i, align 8
  %version122.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 12, i32 1
  %69 = ptrtoint ptr %version122.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %version122.i, align 1
  %arrayidx127.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 13
  %70 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 13, ptr %arrayidx127.i, align 1
  %bin_desc.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 32, i32 3
  %71 = ptrtoint ptr %bin_desc.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bin_desc.i, align 8
  %version133.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 13, i32 1
  %73 = ptrtoint ptr %version133.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %version133.i, align 1
  %arrayidx138.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 14
  %74 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 14, ptr %arrayidx138.i, align 1
  %bin_desc141.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 34, i32 0, i32 3
  %75 = ptrtoint ptr %bin_desc141.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bin_desc141.i, align 8
  %version145.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 14, i32 1
  %77 = ptrtoint ptr %version145.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %version145.i, align 1
  %arrayidx150.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 15
  %78 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 15, ptr %arrayidx150.i, align 1
  %bin_desc154.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 113, i32 33, i32 0, i32 3
  %79 = ptrtoint ptr %bin_desc154.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bin_desc154.i, align 8
  %version158.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 15, i32 1
  %81 = ptrtoint ptr %version158.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %version158.i, align 1
  %arrayidx163.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 16
  %82 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 16, ptr %arrayidx163.i, align 1
  %fw_version165.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 17
  %83 = ptrtoint ptr %fw_version165.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fw_version165.i, align 4
  %version168.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 16, i32 1
  %85 = ptrtoint ptr %version168.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %version168.i, align 1
  %arrayidx173.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 17
  %86 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 17, ptr %arrayidx173.i, align 1
  %fw_version176.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 1
  %87 = ptrtoint ptr %fw_version176.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fw_version176.i, align 4
  %version179.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 17, i32 1
  %89 = ptrtoint ptr %version179.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %version179.i, align 1
  %arrayidx184.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 18
  %90 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 18, ptr %arrayidx184.i, align 1
  %fw_version189.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %fw_version189.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fw_version189.i, align 4
  %version192.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 18, i32 1
  %93 = ptrtoint ptr %version192.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %version192.i, align 1
  %arrayidx197.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 19
  %94 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 19, ptr %arrayidx197.i, align 1
  %vcn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 110
  %95 = ptrtoint ptr %vcn.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vcn.i, align 8
  %version202.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 19, i32 1
  %97 = ptrtoint ptr %version202.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %96, ptr %version202.i, align 1
  %arrayidx207.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 20
  %98 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 20, ptr %arrayidx207.i, align 1
  %dmcu_fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 117, i32 39
  %99 = ptrtoint ptr %dmcu_fw_version.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dmcu_fw_version.i, align 4
  %version211.i = getelementptr %struct.amd_sriov_msg_vf2pf_info, ptr %17, i32 0, i32 20, i32 20, i32 1
  %101 = ptrtoint ptr %version211.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %version211.i, align 1
  br label %amdgpu_virt_populate_vf2pf_ucode_info.exit

amdgpu_virt_populate_vf2pf_ucode_info.exit:       ; preds = %do.body.i, %if.end.amdgpu_virt_populate_vf2pf_ucode_info.exit_crit_edge
  %gfx_usage = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 6
  %102 = ptrtoint ptr %gfx_usage to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 0, ptr %gfx_usage, align 1
  %compute_usage = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 8
  %103 = ptrtoint ptr %compute_usage to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 0, ptr %compute_usage, align 1
  %encode_usage = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 14
  %104 = ptrtoint ptr %encode_usage to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 0, ptr %encode_usage, align 1
  %decode_usage = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 15
  %105 = ptrtoint ptr %decode_usage to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 0, ptr %decode_usage, align 1
  %dummy_page_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %106 = ptrtoint ptr %dummy_page_addr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dummy_page_addr, align 8
  %conv16 = zext i32 %107 to i64
  %dummy_page_addr17 = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 21
  %108 = ptrtoint ptr %dummy_page_addr17 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 %conv16, ptr %dummy_page_addr17, align 1
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp18.not.i = icmp eq i32 %110, 0
  br i1 %cmp18.not.i, label %amdgpu_virt_populate_vf2pf_ucode_info.exit.amd_sriov_msg_checksum.exit_crit_edge, label %amdgpu_virt_populate_vf2pf_ucode_info.exit.for.body.i_crit_edge

amdgpu_virt_populate_vf2pf_ucode_info.exit.for.body.i_crit_edge: ; preds = %amdgpu_virt_populate_vf2pf_ucode_info.exit
  br label %for.body.i

amdgpu_virt_populate_vf2pf_ucode_info.exit.amd_sriov_msg_checksum.exit_crit_edge: ; preds = %amdgpu_virt_populate_vf2pf_ucode_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %amd_sriov_msg_checksum.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %amdgpu_virt_populate_vf2pf_ucode_info.exit.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %amdgpu_virt_populate_vf2pf_ucode_info.exit.for.body.i_crit_edge ]
  %ret.019.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %amdgpu_virt_populate_vf2pf_ucode_info.exit.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 %i.020.i
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %112 to i32
  %add.i = add i32 %ret.019.i, %conv.i
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %110
  br i1 %exitcond.not.i, label %for.body.i.amd_sriov_msg_checksum.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.amd_sriov_msg_checksum.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amd_sriov_msg_checksum.exit

amd_sriov_msg_checksum.exit:                      ; preds = %for.body.i.amd_sriov_msg_checksum.exit_crit_edge, %amdgpu_virt_populate_vf2pf_ucode_info.exit.amd_sriov_msg_checksum.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %amdgpu_virt_populate_vf2pf_ucode_info.exit.amd_sriov_msg_checksum.exit_crit_edge ], [ %add.i, %for.body.i.amd_sriov_msg_checksum.exit_crit_edge ]
  %checksum = getelementptr inbounds %struct.amd_sriov_msg_vf2pf_info, ptr %1, i32 0, i32 1
  %113 = ptrtoint ptr %checksum to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %ret.0.lcssa.i, ptr %checksum, align 1
  br label %cleanup

cleanup:                                          ; preds = %amd_sriov_msg_checksum.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_detect_virtualization(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %switch.tableidx = add i32 %1, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 20
  br i1 %2, label %switch.hole_check, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 840963, %switch.tableidx
  %3 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.lobit.not = icmp eq i32 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end18_crit_edge, label %switch.lookup

switch.hole_check.if.end18_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.amdgpu_detect_virtualization, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call2 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %switch.load, i32 noundef 0) #11
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %switch.lookup.if.end_crit_edge, label %if.then

switch.lookup.if.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt, align 8
  %or = or i32 %6, 4
  store i32 %or, ptr %virt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %switch.lookup.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %tobool4.not = icmp sgt i32 %call2, -1
  br i1 %tobool4.not, label %if.end.if.end18_crit_edge, label %if.end9.thread70

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end9.thread70:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %virt6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %7 = ptrtoint ptr %virt6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt6, align 8
  %or8 = or i32 %8, 2
  store i32 %or8, ptr %virt6, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end9.thread70, %if.end.if.end18_crit_edge, %switch.hole_check.if.end18_crit_edge, %entry.if.end18_crit_edge
  %virt19 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %9 = ptrtoint ptr %virt19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt19, align 8
  %and21 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.if.end32_crit_edge, label %if.then23

if.end18.if.end32_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then23:                                        ; preds = %if.end18
  %11 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %asic_type, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %12, label %sw.default29 [
    i32 11, label %if.then23.sw.bb25_crit_edge
    i32 12, label %if.then23.sw.bb25_crit_edge73
    i32 19, label %sw.bb26
    i32 21, label %if.then23.sw.bb27_crit_edge
    i32 23, label %if.then23.sw.bb27_crit_edge74
    i32 25, label %if.then23.sw.bb27_crit_edge75
    i32 26, label %if.then23.sw.bb28_crit_edge
    i32 29, label %if.then23.sw.bb28_crit_edge76
    i32 30, label %if.then23.sw.bb28_crit_edge77
  ]

if.then23.sw.bb28_crit_edge77:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

if.then23.sw.bb28_crit_edge76:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

if.then23.sw.bb28_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

if.then23.sw.bb27_crit_edge75:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

if.then23.sw.bb27_crit_edge74:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

if.then23.sw.bb27_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

if.then23.sw.bb25_crit_edge73:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25

if.then23.sw.bb25_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.then23.sw.bb25_crit_edge, %if.then23.sw.bb25_crit_edge73
  tail call void @vi_set_virt_ops(ptr noundef %adev) #11
  br label %if.end32

sw.bb26:                                          ; preds = %if.then23
  tail call void @soc15_set_virt_ops(ptr noundef %adev) #11
  %ops.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %sw.bb26.amdgpu_virt_request_init_data.exit_crit_edge, label %land.lhs.true.i

sw.bb26.amdgpu_virt_request_init_data.exit_crit_edge: ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_request_init_data.exit

land.lhs.true.i:                                  ; preds = %sw.bb26
  %req_init_data.i = getelementptr inbounds %struct.amdgpu_virt_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %req_init_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req_init_data.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.amdgpu_virt_request_init_data.exit_crit_edge, label %if.then.i

land.lhs.true.i.amdgpu_virt_request_init_data.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_request_init_data.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %17(ptr noundef %adev) #11
  br label %amdgpu_virt_request_init_data.exit

amdgpu_virt_request_init_data.exit:               ; preds = %if.then.i, %land.lhs.true.i.amdgpu_virt_request_init_data.exit_crit_edge, %sw.bb26.amdgpu_virt_request_init_data.exit_crit_edge
  %req_init_data_ver.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 14
  %18 = ptrtoint ptr %req_init_data_ver.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %req_init_data_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp sgt i32 %19, 0
  %.str.5..str.8.i = select i1 %cmp.i, ptr @.str.5, ptr @.str.8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5..str.8.i) #14
  br label %if.end32

sw.bb27:                                          ; preds = %if.then23.sw.bb27_crit_edge, %if.then23.sw.bb27_crit_edge74, %if.then23.sw.bb27_crit_edge75
  tail call void @soc15_set_virt_ops(ptr noundef %adev) #11
  br label %if.end32

sw.bb28:                                          ; preds = %if.then23.sw.bb28_crit_edge, %if.then23.sw.bb28_crit_edge76, %if.then23.sw.bb28_crit_edge77
  tail call void @nv_set_virt_ops(ptr noundef %adev) #11
  %ops.i49 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 9
  %20 = ptrtoint ptr %ops.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i49, align 8
  %tobool.not.i50 = icmp eq ptr %21, null
  br i1 %tobool.not.i50, label %sw.bb28.amdgpu_virt_request_init_data.exit60_crit_edge, label %land.lhs.true.i53

sw.bb28.amdgpu_virt_request_init_data.exit60_crit_edge: ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_request_init_data.exit60

land.lhs.true.i53:                                ; preds = %sw.bb28
  %req_init_data.i51 = getelementptr inbounds %struct.amdgpu_virt_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %req_init_data.i51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req_init_data.i51, align 4
  %tobool3.not.i52 = icmp eq ptr %23, null
  br i1 %tobool3.not.i52, label %land.lhs.true.i53.amdgpu_virt_request_init_data.exit60_crit_edge, label %if.then.i55

land.lhs.true.i53.amdgpu_virt_request_init_data.exit60_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %amdgpu_virt_request_init_data.exit60

if.then.i55:                                      ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #13
  %call.i54 = tail call i32 %23(ptr noundef %adev) #11
  br label %amdgpu_virt_request_init_data.exit60

amdgpu_virt_request_init_data.exit60:             ; preds = %if.then.i55, %land.lhs.true.i53.amdgpu_virt_request_init_data.exit60_crit_edge, %sw.bb28.amdgpu_virt_request_init_data.exit60_crit_edge
  %req_init_data_ver.i56 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 14
  %24 = ptrtoint ptr %req_init_data_ver.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_init_data_ver.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i57 = icmp sgt i32 %25, 0
  %.str.5..str.8.i58 = select i1 %cmp.i57, ptr @.str.5, ptr @.str.8
  %call13.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5..str.8.i58) #14
  br label %if.end32

sw.default29:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %12) #11
  br label %if.end32

if.end32:                                         ; preds = %sw.default29, %amdgpu_virt_request_init_data.exit60, %sw.bb27, %amdgpu_virt_request_init_data.exit, %sw.bb25, %if.end18.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vi_set_virt_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @soc15_set_virt_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv_set_virt_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_virt_enable_access_debugfs(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %in_gpu_reset.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 141
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %in_gpu_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %in_gpu_reset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %amdgpu_virt_access_debugfs_is_kiq.exit, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

amdgpu_virt_access_debugfs_is_kiq.exit:           ; preds = %lor.lhs.false
  %tdr_debug.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 15
  %4 = ptrtoint ptr %tdr_debug.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tdr_debug.i, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %amdgpu_virt_access_debugfs_is_kiq.exit.return_crit_edge, label %amdgpu_virt_access_debugfs_is_kiq.exit.if.end_crit_edge

amdgpu_virt_access_debugfs_is_kiq.exit.if.end_crit_edge: ; preds = %amdgpu_virt_access_debugfs_is_kiq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

amdgpu_virt_access_debugfs_is_kiq.exit.return_crit_edge: ; preds = %amdgpu_virt_access_debugfs_is_kiq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %amdgpu_virt_access_debugfs_is_kiq.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call.i.i.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_gpu_reset.i.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %in_gpu_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %in_gpu_reset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i12 = icmp eq i32 %7, 0
  br i1 %tobool.not.i12, label %amdgpu_virt_access_debugfs_is_mmio.exit, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

amdgpu_virt_access_debugfs_is_mmio.exit:          ; preds = %if.end
  %tdr_debug.i13 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 15
  %8 = ptrtoint ptr %tdr_debug.i13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tdr_debug.i13, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.i.not = icmp eq i8 %9, 0
  br i1 %tobool1.i.not, label %amdgpu_virt_access_debugfs_is_mmio.exit.return_crit_edge, label %if.then2

amdgpu_virt_access_debugfs_is_mmio.exit.return_crit_edge: ; preds = %amdgpu_virt_access_debugfs_is_mmio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then2:                                         ; preds = %amdgpu_virt_access_debugfs_is_mmio.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt, align 8
  %and5 = and i32 %11, -17
  store i32 %and5, ptr %virt, align 8
  br label %return

return:                                           ; preds = %if.then2, %amdgpu_virt_access_debugfs_is_mmio.exit.return_crit_edge, %if.end.return_crit_edge, %amdgpu_virt_access_debugfs_is_kiq.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 0, %amdgpu_virt_access_debugfs_is_kiq.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ -1, %amdgpu_virt_access_debugfs_is_mmio.exit.return_crit_edge ], [ -1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_virt_disable_access_debugfs(ptr nocapture noundef %adev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %1, 16
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %virt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_virt_get_sriov_vf_mode(ptr nocapture noundef readonly %adev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gim_feature = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 12
  %2 = ptrtoint ptr %gim_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gim_feature, align 4
  %and2 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %. = select i1 %tobool3.not, i32 2, i32 1
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %mode.0 = phi i32 [ %., %if.then ], [ 0, %entry.if.end6_crit_edge ]
  ret i32 %mode.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_virt_update_sriov_video_codec(ptr nocapture noundef readonly %adev, ptr noundef writeonly %encode, i32 noundef %encode_array_size, ptr noundef writeonly %decode, i32 noundef %decode_array_size) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_mm_bw_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 21
  %0 = ptrtoint ptr %is_mm_bw_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_mm_bw_enabled, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp ne ptr %encode, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encode_array_size)
  %cmp85 = icmp ne i32 %encode_array_size, 0
  %or.cond = and i1 %tobool1.not, %cmp85
  br i1 %or.cond, label %for.body.lr.ph, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

for.body.lr.ph:                                   ; preds = %if.end
  %encode_max_dimension_pixels = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 24
  %encode_max_frame_pixels = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %encode_max_dimension_pixels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %encode_max_dimension_pixels, align 4
  %max_width = getelementptr %struct.amdgpu_video_codec_info, ptr %encode, i32 %i.086, i32 1
  %4 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %max_width, align 4
  %5 = ptrtoint ptr %encode_max_frame_pixels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encode_max_frame_pixels, align 8
  %max_pixels_per_frame = getelementptr %struct.amdgpu_video_codec_info, ptr %encode, i32 %i.086, i32 3
  %7 = ptrtoint ptr %max_pixels_per_frame to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max_pixels_per_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %div = udiv i32 %6, %3
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %div.sink = phi i32 [ %div, %if.then9 ], [ 0, %for.body.for.inc_crit_edge ]
  %8 = getelementptr %struct.amdgpu_video_codec_info, ptr %encode, i32 %i.086, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div.sink, ptr %8, align 4
  %inc = add nuw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, %encode_array_size
  br i1 %exitcond.not, label %for.inc.if.end18_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end18_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end18:                                         ; preds = %for.inc.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %tobool19.not = icmp ne ptr %decode, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %decode_array_size)
  %cmp2288 = icmp ne i32 %decode_array_size, 0
  %or.cond91 = and i1 %tobool19.not, %cmp2288
  br i1 %or.cond91, label %for.body23.lr.ph, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body23.lr.ph:                                 ; preds = %if.end18
  %decode_max_dimension_pixels = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 22
  %decode_max_frame_pixels = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132, i32 23
  br label %for.body23

for.body23:                                       ; preds = %for.inc45.for.body23_crit_edge, %for.body23.lr.ph
  %i.189 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc46, %for.inc45.for.body23_crit_edge ]
  %10 = ptrtoint ptr %decode_max_dimension_pixels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %decode_max_dimension_pixels, align 4
  %max_width26 = getelementptr %struct.amdgpu_video_codec_info, ptr %decode, i32 %i.189, i32 1
  %12 = ptrtoint ptr %max_width26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_width26, align 4
  %13 = ptrtoint ptr %decode_max_frame_pixels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %decode_max_frame_pixels, align 8
  %max_pixels_per_frame29 = getelementptr %struct.amdgpu_video_codec_info, ptr %decode, i32 %i.189, i32 3
  %15 = ptrtoint ptr %max_pixels_per_frame29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_pixels_per_frame29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp32.not = icmp eq i32 %11, 0
  br i1 %cmp32.not, label %for.body23.for.inc45_crit_edge, label %if.then33

for.body23.for.inc45_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45

if.then33:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  %div38 = udiv i32 %14, %11
  br label %for.inc45

for.inc45:                                        ; preds = %if.then33, %for.body23.for.inc45_crit_edge
  %div38.sink = phi i32 [ %div38, %if.then33 ], [ 0, %for.body23.for.inc45_crit_edge ]
  %16 = getelementptr %struct.amdgpu_video_codec_info, ptr %decode, i32 %i.189, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div38.sink, ptr %16, align 4
  %inc46 = add nuw i32 %i.189, 1
  %exitcond92.not = icmp eq i32 %inc46, %decode_array_size
  br i1 %exitcond92.not, label %for.inc45.cleanup_crit_edge, label %for.inc45.for.body23_crit_edge

for.inc45.for.body23_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.inc45.cleanup_crit_edge:                      ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc45.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vram_mgr_usage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_vram_mgr_vis_usage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel_at(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 91, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 107, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @amdgpu_virt_kiq_reg_write_reg_wait._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @amdgpu_virt_kiq_reg_write_reg_wait._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 185, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @amdgpu_virt_request_init_data._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @amdgpu_virt_request_init_data._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 187, i32 3}
!16 = !{ptr @amdgpu_virt_request_init_data._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @amdgpu_virt_request_init_data._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 225, i32 3}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 230, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @amdgpu_virt_alloc_mm_table._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @amdgpu_virt_alloc_mm_table._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 616, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @amdgpu_virt_fini_data_exchange._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @amdgpu_virt_fini_data_exchange._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @amdgpu_virt_init_data_exchange.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 632, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @amdgpu_virt_init_data_exchange.__key.16, !31, !"__key", i1 false, i1 false}
!34 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 740, i32 4}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 447, i32 3}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 458, i32 4}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 508, i32 3}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 572, i32 38}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_virt.c", i32 385, i32 4}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
