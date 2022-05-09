; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_jpeg.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_jpeg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }

@amdgpu_jpeg_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&adev->jpeg.idle_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_jpeg_sw_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&adev->jpeg.idle_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_jpeg_sw_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&adev->jpeg.jpeg_pg_lock\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 39, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_jpeg.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 40, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 314, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @amdgpu_jpeg_sw_init.__key, ptr @.str, ptr @amdgpu_jpeg_sw_init.__key.1, ptr @.str.2, ptr @amdgpu_jpeg_sw_init.__key.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_jpeg_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_jpeg_sw_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_jpeg_sw_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_jpeg_sw_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 4
  tail call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #5
  %0 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %idle_work, align 8
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @amdgpu_jpeg_sw_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 4, i32 0, i32 1
  %1 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 4, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @amdgpu_jpeg_idle_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @amdgpu_jpeg_sw_init.__key.1) #5
  %jpeg_pg_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 6
  tail call void @__mutex_init(ptr noundef %jpeg_pg_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @amdgpu_jpeg_sw_init.__key.3) #5
  %total_submission_cnt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_submission_cnt, i32 noundef 4) #5
  %4 = ptrtoint ptr %total_submission_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %total_submission_cnt, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_jpeg_idle_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -78536
  %jpeg = getelementptr i8, ptr %work, i32 -1856
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp25.not = icmp eq i8 %1, 0
  br i1 %cmp25.not, label %entry.land.lhs.true_crit_edge, label %for.body.lr.ph

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr i8, ptr %work, i32 -4
  %inst = getelementptr i8, ptr %work, i32 -1848
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %fences.026 = phi i32 [ 0, %for.body.lr.ph ], [ %fences.1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.027
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [2 x %struct.amdgpu_jpeg_inst], ptr %inst, i32 0, i32 %i.027
  %call = tail call i32 @amdgpu_fence_count_emitted(ptr noundef %arrayidx) #5
  %add = add i32 %call, %fences.026
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %fences.1 = phi i32 [ %fences.026, %for.body.for.inc_crit_edge ], [ %add, %if.end ]
  %inc = add nuw nsw i32 %i.027, 1
  %4 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %jpeg, align 8
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fences.1)
  %tobool4.not = icmp eq i32 %fences.1, 0
  br i1 %tobool4.not, label %for.end.land.lhs.true_crit_edge, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %total_submission_cnt = getelementptr i8, ptr %work, i32 196
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_submission_cnt, i32 noundef 4) #5
  %6 = ptrtoint ptr %total_submission_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %total_submission_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %add.ptr, i32 noundef 13, i32 noundef 0) #5
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.end.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i23 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef 100) #5
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_jpeg_sw_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %jpeg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp12.not = icmp eq i8 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %harvest_config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %harvest_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %harvest_config, align 4
  %shl = shl nuw i32 1, %i.013
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 %i.013
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %4 = ptrtoint ptr %jpeg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %jpeg, align 8
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %jpeg_pg_lock = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 6
  tail call void @mutex_destroy(ptr noundef %jpeg_pg_lock) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_jpeg_suspend(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_jpeg_resume(ptr nocapture noundef readnone %adev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_jpeg_ring_begin_use(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %total_submission_cnt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_submission_cnt, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %total_submission_cnt, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_submission_cnt, ptr %total_submission_cnt, i32 1, ptr elementtype(i32) %total_submission_cnt) #5, !srcloc !19
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #5
  %jpeg_pg_lock = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 6
  tail call void @mutex_lock_nested(ptr noundef %jpeg_pg_lock, i32 noundef 0) #5
  %call4 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %1, i32 noundef 13, i32 noundef 1) #5
  tail call void @mutex_unlock(ptr noundef %jpeg_pg_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_jpeg_ring_end_use(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %total_submission_cnt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %total_submission_cnt, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %total_submission_cnt, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %total_submission_cnt, ptr %total_submission_cnt, i32 1, ptr elementtype(i32) %total_submission_cnt) #5, !srcloc !20
  %3 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ring, align 8
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %4, i32 0, i32 111, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %idle_work, i32 noundef 100) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_jpeg_dec_ring_test_ring(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %me, align 8
  %external = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 1, i32 %3, i32 2
  %4 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %external, align 4
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %5, i32 noundef -889266515, i32 noundef 0) #5
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 2
  %6 = ptrtoint ptr %internal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %internal, align 8
  %and = and i32 %7, 65535
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #5
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %10 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %12 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %14 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_mask.i, align 8
  %16 = trunc i64 %13 to i32
  %idxprom.i = and i32 %15, %16
  %arrayidx.i = getelementptr i32, ptr %11, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ptr_mask.i, align 8
  %20 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %20, %19
  store i64 %and3.i, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i39 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i39, label %if.then.i40, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit50_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit50_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #5
  br label %amdgpu_ring_write.exit50

amdgpu_ring_write.exit50:                         ; preds = %if.then.i40, %amdgpu_ring_write.exit.amdgpu_ring_write.exit50_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 4
  %25 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wptr.i, align 8
  %inc.i43 = add i64 %26, 1
  store i64 %inc.i43, ptr %wptr.i, align 8
  %27 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_mask.i, align 8
  %29 = trunc i64 %26 to i32
  %idxprom.i45 = and i32 %28, %29
  %arrayidx.i46 = getelementptr i32, ptr %24, i32 %idxprom.i45
  %30 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 -559038737, ptr %arrayidx.i46, align 4
  %31 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ptr_mask.i, align 8
  %33 = load i64, ptr %wptr.i, align 8
  %and3.i48 = and i64 %33, %32
  store i64 %and3.i48, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i, align 8
  %dec.i49 = add i32 %35, -1
  store i32 %dec.i49, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #5
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp51.not = icmp eq i32 %37, 0
  br i1 %cmp51.not, label %amdgpu_ring_write.exit50.for.end_crit_edge, label %amdgpu_ring_write.exit50.for.body_crit_edge

amdgpu_ring_write.exit50.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit50
  br label %for.body

amdgpu_ring_write.exit50.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %amdgpu_ring_write.exit50.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %if.end14.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit50.for.body_crit_edge ]
  %38 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %me, align 8
  %external9 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 1, i32 %39, i32 2
  %40 = ptrtoint ptr %external9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %external9, align 4
  %call11 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %41, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call11)
  %cmp12 = icmp eq i32 %call11, -559038737
  br i1 %cmp12, label %for.body.for.end_crit_edge, label %if.end14

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end14:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #5
  %inc = add nuw i32 %i.052, 1
  %43 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %44
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %for.body.for.end_crit_edge, %amdgpu_ring_write.exit50.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %amdgpu_ring_write.exit50.for.end_crit_edge ], [ %i.052, %for.body.for.end_crit_edge ], [ %inc, %if.end14.for.end_crit_edge ]
  %45 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %46)
  %cmp16.not = icmp ult i32 %i.0.lcssa, %46
  %spec.select = select i1 %cmp16.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_jpeg_dec_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %job.i = alloca ptr, align 4
  %f.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job.i) #5
  %2 = ptrtoint ptr %job.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %job.i, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i) #5
  %3 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %f.i, align 4
  %call.i = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %1, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %job.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.amdgpu_jpeg_dec_set_reg.exit_crit_edge

entry.amdgpu_jpeg_dec_set_reg.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %amdgpu_jpeg_dec_set_reg.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ibs.i, align 4
  %internal.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 2
  %8 = ptrtoint ptr %internal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %internal.i, align 8
  %and.i = and i32 %9, 262143
  %ptr.i = getelementptr inbounds %struct.amdgpu_ib, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptr.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %11, align 4
  %13 = load ptr, ptr %ptr.i, align 8
  %arrayidx7.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -559038737, ptr %arrayidx7.i, align 4
  %15 = load ptr, ptr %ptr.i, align 8
  %arrayidx9.i = getelementptr i32, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1610612736, ptr %arrayidx9.i, align 4
  %17 = load ptr, ptr %ptr.i, align 8
  %arrayidx11.i = getelementptr i32, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx11.i, align 4
  %19 = load ptr, ptr %ptr.i, align 8
  %arrayidx9.1.i = getelementptr i32, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1610612736, ptr %arrayidx9.1.i, align 4
  %21 = load ptr, ptr %ptr.i, align 8
  %arrayidx11.1.i = getelementptr i32, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx11.1.i, align 4
  %23 = load ptr, ptr %ptr.i, align 8
  %arrayidx9.2.i = getelementptr i32, ptr %23, i32 6
  %24 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1610612736, ptr %arrayidx9.2.i, align 4
  %25 = load ptr, ptr %ptr.i, align 8
  %arrayidx11.2.i = getelementptr i32, ptr %25, i32 7
  %26 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx11.2.i, align 4
  %27 = load ptr, ptr %ptr.i, align 8
  %arrayidx9.3.i = getelementptr i32, ptr %27, i32 8
  %28 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1610612736, ptr %arrayidx9.3.i, align 4
  %29 = load ptr, ptr %ptr.i, align 8
  %arrayidx11.3.i = getelementptr i32, ptr %29, i32 9
  %30 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx11.3.i, align 4
  %31 = load ptr, ptr %ptr.i, align 8
  %arrayidx9.4.i = getelementptr i32, ptr %31, i32 10
  %32 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1610612736, ptr %arrayidx9.4.i, align 4
  %33 = load ptr, ptr %ptr.i, align 8
  %arrayidx11.4.i = getelementptr i32, ptr %33, i32 11
  %34 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx11.4.i, align 4
  %35 = load ptr, ptr %ptr.i, align 8
  %arrayidx9.5.i = getelementptr i32, ptr %35, i32 12
  %36 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1610612736, ptr %arrayidx9.5.i, align 4
  %37 = load ptr, ptr %ptr.i, align 8
  %arrayidx11.5.i = getelementptr i32, ptr %37, i32 13
  %38 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx11.5.i, align 4
  %39 = load ptr, ptr %ptr.i, align 8
  %arrayidx9.6.i = getelementptr i32, ptr %39, i32 14
  %40 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1610612736, ptr %arrayidx9.6.i, align 4
  %41 = load ptr, ptr %ptr.i, align 8
  %arrayidx11.6.i = getelementptr i32, ptr %41, i32 15
  %42 = ptrtoint ptr %arrayidx11.6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx11.6.i, align 4
  %length_dw.i = getelementptr inbounds %struct.amdgpu_ib, ptr %7, i32 0, i32 1
  %43 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16, ptr %length_dw.i, align 4
  %44 = load ptr, ptr %job.i, align 4
  %call13.i = call i32 @amdgpu_job_submit_direct(ptr noundef %44, ptr noundef %ring, ptr noundef nonnull %f.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %err.i

if.end16.i:                                       ; preds = %if.end.i
  %45 = ptrtoint ptr %f.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %f.i, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end16.i.if.end_crit_edge, label %if.then.i.i

if.end16.i.if.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i.i:                                      ; preds = %if.end16.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %46, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #5
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #5, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !23

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !24

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_fence_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %dma_fence_get.exit.i

dma_fence_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dma_fence_get.exit.i_crit_edge
  %49 = ptrtoint ptr %f.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load ptr, ptr %f.i, align 4
  %tobool.not.i1.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i1.i, label %dma_fence_get.exit.i.if.end_crit_edge, label %if.then.i4.i

dma_fence_get.exit.i.if.end_crit_edge:            ; preds = %dma_fence_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i4.i:                                     ; preds = %dma_fence_get.exit.i
  %refcount.i2.i = getelementptr inbounds %struct.dma_fence, ptr %.pr, i32 0, i32 6
  %call.i.i.i.i.i.i.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i2.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @llvm.prefetch.p0(ptr %refcount.i2.i, i32 1, i32 3, i32 1) #5
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i2.i, ptr %refcount.i2.i, i32 1, ptr elementtype(i32) %refcount.i2.i) #5, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i5.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i5.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !24

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %refcount.i2.i, i32 noundef 3) #5
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.then.i4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !27
  call void @dma_fence_release(ptr noundef %refcount.i2.i) #5
  br label %if.end

err.i:                                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %job.i, align 4
  call void @amdgpu_job_free(ptr noundef %52) #5
  br label %amdgpu_jpeg_dec_set_reg.exit

amdgpu_jpeg_dec_set_reg.exit:                     ; preds = %err.i, %entry.amdgpu_jpeg_dec_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %err.i ], [ %call.i, %entry.amdgpu_jpeg_dec_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #5
  br label %error

if.end:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %dma_fence_get.exit.i.if.end_crit_edge, %if.end16.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #5
  %call2 = call i32 @dma_fence_wait_timeout(ptr noundef %46, i1 noundef zeroext false, i32 noundef %timeout) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end.error_crit_edge, label %if.else

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  br i1 %cmp4, label %if.else.error_crit_edge, label %for.cond.preheader

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.cond.preheader:                               ; preds = %if.else
  %me = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 16
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp938.not = icmp eq i32 %54, 0
  br i1 %cmp938.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %if.end13.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %55 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %me, align 8
  %external = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 111, i32 1, i32 %56, i32 2
  %57 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %external, align 4
  %call10 = call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %58, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %call10)
  %cmp11 = icmp eq i32 %call10, -559038737
  br i1 %cmp11, label %for.body.for.end_crit_edge, label %if.end13

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end13:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748) #5
  %inc = add nuw i32 %i.039, 1
  %60 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %usec_timeout, align 8
  %cmp9 = icmp ult i32 %inc, %61
  br i1 %cmp9, label %if.end13.for.body_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.039, %for.body.for.end_crit_edge ], [ %inc, %if.end13.for.end_crit_edge ]
  %62 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %63)
  %cmp15.not = icmp ult i32 %i.0.lcssa, %63
  %spec.select = select i1 %cmp15.not, i32 0, i32 -110
  br i1 %tobool.not.i.i, label %for.end.error_crit_edge, label %if.then.i

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.then.i:                                        ; preds = %for.end
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %46, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i29 = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i29)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i29, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i30, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i29)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i29, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.error_crit_edge, label %if.then10.i.i.i.i.i, !prof !24

if.end5.i.i.i.i.i.error_crit_edge:                ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %error

if.then.i.i30:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !27
  call void @dma_fence_release(ptr noundef %refcount.i) #5
  br label %error

error:                                            ; preds = %if.then.i.i30, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.error_crit_edge, %for.end.error_crit_edge, %if.else.error_crit_edge, %if.end.error_crit_edge, %amdgpu_jpeg_dec_set_reg.exit
  %r.1 = phi i32 [ %retval.0.i, %amdgpu_jpeg_dec_set_reg.exit ], [ %call2, %if.else.error_crit_edge ], [ -110, %if.end.error_crit_edge ], [ %spec.select, %for.end.error_crit_edge ], [ %spec.select, %if.end5.i.i.i.i.i.error_crit_edge ], [ %spec.select, %if.then10.i.i.i.i.i ], [ %spec.select, %if.then.i.i30 ]
  ret i32 %r.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_count_emitted(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @amdgpu_jpeg_sw_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_jpeg.c", i32 39, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @amdgpu_jpeg_sw_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @amdgpu_jpeg_sw_init.__key.3, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_jpeg.c", i32 40, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2148355461, i64 2148355487, i64 2148355516, i64 2148355550, i64 2148355581, i64 2148355604}
!20 = !{i64 2148357926, i64 2148357952, i64 2148357981, i64 2148358015, i64 2148358046, i64 2148358069}
!21 = !{!"auto-init"}
!22 = !{i64 2148356991, i64 2148357023, i64 2148357052, i64 2148357086, i64 2148357117, i64 2148357140}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148444992}
!26 = !{i64 2148359456, i64 2148359488, i64 2148359517, i64 2148359551, i64 2148359582, i64 2148359605}
!27 = !{i64 2149528617}
