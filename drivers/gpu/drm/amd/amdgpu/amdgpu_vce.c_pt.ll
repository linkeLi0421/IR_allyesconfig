; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.80, i64, i64, i32, %struct.kref, i32 }
%union.anon.80 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ww_acquire_ctx, ptr, ptr, %struct.amdgpu_bo_list_entry, %struct.list_head, ptr, i64, i64, i64, i64, %struct.amdgpu_bo_list_entry, i32, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.amdgpu_bo_list_entry = type { %struct.ttm_validate_buffer, ptr, ptr, i32, ptr, i8 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.amdgpu_sa_bo = type { %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.amdgpu_bo_va_mapping = type { ptr, %struct.list_head, %struct.rb_node, i64, i64, i64, i64, i64 }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_firmware343 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/bonaire_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware344 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kabini_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware345 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/kaveri_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware346 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/hawaii_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware347 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/mullins_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware348 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/tonga_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [39 x i8] c"amdgpu.firmware=amdgpu/carrizo_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [36 x i8] c"amdgpu.firmware=amdgpu/fiji_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/stoney_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris10_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware353 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris11_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/polaris12_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [37 x i8] c"amdgpu.firmware=amdgpu/vegam_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega10_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega12_vce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [38 x i8] c"amdgpu.firmware=amdgpu/vega20_vce.bin\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/bonaire_vce.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/kaveri_vce.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/kabini_vce.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/hawaii_vce.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/mullins_vce.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/tonga_vce.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"amdgpu/carrizo_vce.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu/fiji_vce.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/stoney_vce.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris10_vce.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris11_vce.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"amdgpu/polaris12_vce.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu/vegam_vce.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega10_vce.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega12_vce.bin\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amdgpu/vega20_vce.bin\00", [42 x i8] zeroinitializer }, align 32
@amdgpu_vce_sw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 163, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: amdgpu_vce: Can't load firmware \22%s\22\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amdgpu_vce_sw_init\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_vce_sw_init._entry_ptr = internal global ptr @amdgpu_vce_sw_init._entry, section ".printk_index", align 4
@amdgpu_vce_sw_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.18, i32 170, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"amdgpu: amdgpu_vce: Can't validate firmware \22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_vce_sw_init._entry_ptr.23 = internal global ptr @amdgpu_vce_sw_init._entry.21, section ".printk_index", align 4
@amdgpu_vce_sw_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.18, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016[drm] Found VCE firmware Version: %d.%d Binary ID: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_vce_sw_init._entry_ptr.26 = internal global ptr @amdgpu_vce_sw_init._entry.24, section ".printk_index", align 4
@amdgpu_vce_sw_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.18, i32 191, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: (%d) failed to allocate VCE bo\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_vce_sw_init._entry_ptr.29 = internal global ptr @amdgpu_vce_sw_init._entry.27, section ".printk_index", align 4
@amdgpu_vce_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&adev->vce.idle_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_vce_sw_init.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&adev->vce.idle_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@amdgpu_vce_sw_init.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&adev->vce.idle_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed setting up VCE run queue.\0A\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_vce_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.18, i32 302, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"amdgpu: (%d) failed to reserve VCE bo\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_vce_resume\00", [46 x i8] zeroinitializer }, align 32
@amdgpu_vce_resume._entry_ptr = internal global ptr @amdgpu_vce_resume._entry, section ".printk_index", align 4
@amdgpu_vce_resume._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.18, i32 309, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amdgpu: (%d) VCE map failed\0A\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_vce_resume._entry_ptr.40 = internal global ptr @amdgpu_vce_resume._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error destroying VCE handle (%d)!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid VCE command length (%d)!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Handle already in use!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid VCE command (0x%x)!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no session command at start of IB\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"New session without create command!\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.49, i32 179, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can't find BO for addr 0x%010Lx %d %d %d %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VCE handle collision detected!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No more free VCE handles!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BO too small for addr 0x%010Lx %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.amdgpu_vce_sw_init = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, ptr @.str.7, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 50331649, i64 83886081, i64 83886084, i64 83886085, i64 83886093]
@__sancov_gen_cov_switch_values.57 = internal global [20 x i64] [i64 18, i64 32, i64 1, i64 2, i64 16777217, i64 33554433, i64 50331649, i64 67108865, i64 67108866, i64 67108869, i64 67108871, i64 67108872, i64 67108873, i64 83886081, i64 83886082, i64 83886084, i64 83886085, i64 83886089, i64 83886092, i64 83886093]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 13]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 16777217, i64 33554433]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 107, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 110, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 113, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 116, i32 13 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 119, i32 13 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 123, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 126, i32 13 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 129, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 132, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 135, i32 13 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 138, i32 13 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 141, i32 13 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 144, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 147, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 150, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 153, i32 13 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 162, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 169, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 182, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 191, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 200, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 201, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 251, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 302, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 309, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 425, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 755, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 844, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 929, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 935, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 944, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 179, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 623, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 707, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 724, i32 2 }
@___asan_gen_.220 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 673, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 314, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [32 x i8] c"switch.table.amdgpu_vce_sw_init\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @__UNIQUE_ID_firmware344, ptr @__UNIQUE_ID_firmware345, ptr @__UNIQUE_ID_firmware346, ptr @__UNIQUE_ID_firmware347, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_vce_resume._entry, ptr @amdgpu_vce_resume._entry.38, ptr @amdgpu_vce_resume._entry_ptr, ptr @amdgpu_vce_resume._entry_ptr.40, ptr @amdgpu_vce_sw_init._entry, ptr @amdgpu_vce_sw_init._entry.21, ptr @amdgpu_vce_sw_init._entry.24, ptr @amdgpu_vce_sw_init._entry.27, ptr @amdgpu_vce_sw_init._entry_ptr, ptr @amdgpu_vce_sw_init._entry_ptr.23, ptr @amdgpu_vce_sw_init._entry_ptr.26, ptr @amdgpu_vce_sw_init._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @amdgpu_vce_sw_init.__key, ptr @.str.30, ptr @amdgpu_vce_sw_init.__key.31, ptr @.str.32, ptr @amdgpu_vce_sw_init.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @switch.table.amdgpu_vce_sw_init], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_sw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_sw_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_sw_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_sw_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_sw_init.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_sw_init.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_vce_resume._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_vce_sw_init to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_sw_init(ptr noundef %adev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  %switch.tableidx = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 17
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 131039, %switch.tableidx
  %3 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.lobit.not = icmp eq i32 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [17 x ptr], ptr @switch.table.amdgpu_vce_sw_init, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %vce = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 11
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 8
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %switch.load, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef nonnull %switch.load) #10
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 8
  %call19 = tail call i32 @amdgpu_ucode_validate(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end30, label %do.end24

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.load) #10
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %14) #7
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %fw, align 8
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %ucode_version33 = getelementptr inbounds %struct.common_firmware_header, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %ucode_version33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucode_version33, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %shr = lshr i32 %22, 20
  %shr34 = lshr i32 %22, 8
  %and35 = and i32 %shr34, 4095
  %and36 = and i32 %22, 255
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %shr, i32 noundef %and35, i32 noundef %and36) #10
  %shl = shl i32 %shr, 24
  %shl41 = shl nuw nsw i32 %and35, 16
  %or = or i32 %shl, %shl41
  %shl42 = shl nuw nsw i32 %and36, 8
  %or43 = or i32 %or, %shl42
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 4
  %23 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or43, ptr %fw_version, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 1
  %cpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 2
  %call48 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %adev, i32 noundef %size, i32 noundef 4096, i32 noundef 4, ptr noundef %vce, ptr noundef %gpu_addr, ptr noundef %cpu_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.body.preheader, label %do.end53

for.body.preheader:                               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #7
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %arrayidx, align 4
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 0
  %25 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx58, align 4
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1, i32 noundef 4) #7
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %arrayidx.1, align 4
  %arrayidx58.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 1
  %27 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx58.1, align 4
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.2, i32 noundef 4) #7
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %arrayidx.2, align 4
  %arrayidx58.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 2
  %29 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx58.2, align 4
  %arrayidx.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.3, i32 noundef 4) #7
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %arrayidx.3, align 4
  %arrayidx58.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 3
  %31 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx58.3, align 4
  %arrayidx.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.4, i32 noundef 4) #7
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %arrayidx.4, align 4
  %arrayidx58.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 4
  %33 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx58.4, align 4
  %arrayidx.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 5
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.5, i32 noundef 4) #7
  %34 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %arrayidx.5, align 4
  %arrayidx58.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 5
  %35 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx58.5, align 4
  %arrayidx.6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 6
  %call.i.i.6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.6, i32 noundef 4) #7
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %arrayidx.6, align 4
  %arrayidx58.6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 6
  %37 = ptrtoint ptr %arrayidx58.6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx58.6, align 4
  %arrayidx.7 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 7
  %call.i.i.7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.7, i32 noundef 4) #7
  %38 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile i32 0, ptr %arrayidx.7, align 4
  %arrayidx58.7 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 7
  %39 = ptrtoint ptr %arrayidx58.7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx58.7, align 4
  %arrayidx.8 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 8
  %call.i.i.8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.8, i32 noundef 4) #7
  %40 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %arrayidx.8, align 4
  %arrayidx58.8 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 8
  %41 = ptrtoint ptr %arrayidx58.8 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx58.8, align 4
  %arrayidx.9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 9
  %call.i.i.9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.9, i32 noundef 4) #7
  %42 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %arrayidx.9, align 4
  %arrayidx58.9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 9
  %43 = ptrtoint ptr %arrayidx58.9 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx58.9, align 4
  %arrayidx.10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 10
  %call.i.i.10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.10, i32 noundef 4) #7
  %44 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %arrayidx.10, align 4
  %arrayidx58.10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 10
  %45 = ptrtoint ptr %arrayidx58.10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx58.10, align 4
  %arrayidx.11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 11
  %call.i.i.11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.11, i32 noundef 4) #7
  %46 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %arrayidx.11, align 4
  %arrayidx58.11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 11
  %47 = ptrtoint ptr %arrayidx58.11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx58.11, align 4
  %arrayidx.12 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 12
  %call.i.i.12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.12, i32 noundef 4) #7
  %48 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %arrayidx.12, align 4
  %arrayidx58.12 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 12
  %49 = ptrtoint ptr %arrayidx58.12 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx58.12, align 4
  %arrayidx.13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 13
  %call.i.i.13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.13, i32 noundef 4) #7
  %50 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 0, ptr %arrayidx.13, align 4
  %arrayidx58.13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 13
  %51 = ptrtoint ptr %arrayidx58.13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx58.13, align 4
  %arrayidx.14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 14
  %call.i.i.14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.14, i32 noundef 4) #7
  %52 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %arrayidx.14, align 4
  %arrayidx58.14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 14
  %53 = ptrtoint ptr %arrayidx58.14 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx58.14, align 4
  %arrayidx.15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 15
  %call.i.i.15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.15, i32 noundef 4) #7
  %54 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %arrayidx.15, align 4
  %arrayidx58.15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 15
  %55 = ptrtoint ptr %arrayidx58.15 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx58.15, align 4
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 9
  tail call void @__init_work(ptr noundef %idle_work, i32 noundef 0) #7
  %56 = ptrtoint ptr %idle_work to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -64, ptr %idle_work, align 8
  %lockdep_map = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.30, ptr noundef nonnull @amdgpu_vce_sw_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry72 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 9, i32 0, i32 1
  %57 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 9, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entry72, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 9, i32 0, i32 2
  %59 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @amdgpu_vce_idle_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.32, ptr noundef nonnull @amdgpu_vce_sw_init.__key.31) #7
  %idle_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 10
  tail call void @__mutex_init(ptr noundef %idle_mutex, ptr noundef nonnull @.str.34, ptr noundef nonnull @amdgpu_vce_sw_init.__key.33) #7
  br label %cleanup

do.end53:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.28, i32 noundef %call48) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %for.body.preheader, %do.end24, %do.end, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call19, %do.end24 ], [ %call48, %do.end53 ], [ 0, %for.body.preheader ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_vce_idle_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -65688
  %num_rings = getelementptr i8, ptr %work, i32 3116
  %0 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23.not = icmp eq i32 %1, 0
  br i1 %cmp23.not, label %entry.if.then_crit_edge, label %for.body.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.lr.ph:                                   ; preds = %entry
  %ring = getelementptr i8, ptr %work, i32 200
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %count.025 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.amdgpu_ring], ptr %ring, i32 0, i32 %i.024
  %call = tail call i32 @amdgpu_fence_count_emitted(ptr noundef %arrayidx) #7
  %add = add i32 %call, %count.025
  %inc = add nuw i32 %i.024, 1
  %2 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rings, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  br i1 %phi.cmp, label %for.end.if.then_crit_edge, label %if.else7

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.end.if.then_crit_edge, %entry.if.then_crit_edge
  %dpm_enabled = getelementptr i8, ptr %work, i32 -36496
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_dpm_enable_vce(ptr noundef %add.ptr, i1 noundef zeroext false) #7
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %asic_funcs = getelementptr i8, ptr %work, i32 -63292
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 4
  %set_vce_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %set_vce_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_vce_clocks, align 4
  %call4 = tail call i32 %9(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0) #7
  %call5 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %add.ptr, i32 noundef 9, i32 noundef 0) #7
  %call6 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %add.ptr, i32 noundef 9, i32 noundef 0) #7
  br label %if.end11

if.else7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 100) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.else, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_sw_fini(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vce = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109
  %0 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vce, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 15
  tail call void @drm_sched_entity_destroy(ptr noundef %entity) #7
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 1
  %cpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 2
  tail call void @amdgpu_bo_free_kernel(ptr noundef %vce, ptr noundef %gpu_addr, ptr noundef %cpu_addr) #7
  %num_rings = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 17
  %2 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp721.not = icmp eq i32 %3, 0
  br i1 %cmp721.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 %i.022
  tail call void @amdgpu_ring_fini(ptr noundef %arrayidx) #7
  %inc = add nuw i32 %i.022, 1
  %4 = ptrtoint ptr %num_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rings, align 4
  %cmp7 = icmp ult i32 %inc, %5
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 11
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %7) #7
  %idle_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 10
  tail call void @mutex_destroy(ptr noundef %idle_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_entity_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %sched = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #7
  %sched2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12, i32 0, i32 3
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sched2, ptr %sched, align 4
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 15
  %call = call i32 @drm_sched_entity_init(ptr noundef %entity, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_suspend(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vce = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #7
  %0 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vce, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.inc, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1, i32 noundef 4) #7
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1 = icmp eq i32 %5, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.2, i32 noundef 4) #7
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.2 = icmp eq i32 %7, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.3, i32 noundef 4) #7
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.3 = icmp eq i32 %9, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.4, i32 noundef 4) #7
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.4 = icmp eq i32 %11, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 5
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.5, i32 noundef 4) #7
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.5 = icmp eq i32 %13, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 6
  %call.i.i.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.6, i32 noundef 4) #7
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.6 = icmp eq i32 %15, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 7
  %call.i.i.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.7, i32 noundef 4) #7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.7 = icmp eq i32 %17, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 8
  %call.i.i.8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.8, i32 noundef 4) #7
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.8 = icmp eq i32 %19, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.cleanup_crit_edge

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 9
  %call.i.i.9 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.9, i32 noundef 4) #7
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.9 = icmp eq i32 %21, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.cleanup_crit_edge

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 10
  %call.i.i.10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.10, i32 noundef 4) #7
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.10 = icmp eq i32 %23, 0
  br i1 %tobool.not.10, label %for.inc.10, label %for.inc.9.cleanup_crit_edge

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 11
  %call.i.i.11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.11, i32 noundef 4) #7
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.11 = icmp eq i32 %25, 0
  br i1 %tobool.not.11, label %for.inc.11, label %for.inc.10.cleanup_crit_edge

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 12
  %call.i.i.12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.12, i32 noundef 4) #7
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.12 = icmp eq i32 %27, 0
  br i1 %tobool.not.12, label %for.inc.12, label %for.inc.11.cleanup_crit_edge

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 13
  %call.i.i.13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.13, i32 noundef 4) #7
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.13 = icmp eq i32 %29, 0
  br i1 %tobool.not.13, label %for.inc.13, label %for.inc.12.cleanup_crit_edge

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 14
  %call.i.i.14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.14, i32 noundef 4) #7
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.14 = icmp eq i32 %31, 0
  br i1 %tobool.not.14, label %for.inc.14, label %for.inc.13.cleanup_crit_edge

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 15
  %call.i.i.15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.15, i32 noundef 4) #7
  %32 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.15 = icmp eq i32 %33, 0
  %spec.select = select i1 %tobool.not.15, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %for.inc.14, %for.inc.13.cleanup_crit_edge, %for.inc.12.cleanup_crit_edge, %for.inc.11.cleanup_crit_edge, %for.inc.10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %for.inc.13.cleanup_crit_edge ], [ -22, %for.inc.12.cleanup_crit_edge ], [ -22, %for.inc.11.cleanup_crit_edge ], [ -22, %for.inc.10.cleanup_crit_edge ], [ -22, %for.inc.9.cleanup_crit_edge ], [ -22, %for.inc.8.cleanup_crit_edge ], [ -22, %for.inc.7.cleanup_crit_edge ], [ -22, %for.inc.6.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ], [ -22, %for.inc.3.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ], [ -22, %for.inc.1.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ %spec.select, %for.inc.14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_resume(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %cpu_addr = alloca ptr, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_addr) #7
  %0 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cpu_addr, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #7
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %idx, align 4, !annotation !143
  %vce = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109
  %2 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vce, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i, align 8
  %resv32.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %3, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %7, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %8 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end4
    i32 -512, label %if.end.do.end_crit_edge
  ], !prof !144

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -17736
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.47, ptr noundef nonnull %3) #10
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.end.do.end_crit_edge
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.36, i32 noundef %retval.1.i.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vce, align 8
  %call7 = call i32 @amdgpu_bo_kmap(ptr noundef %14, ptr noundef nonnull %cpu_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vce, align 8
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #7
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %20, ptr noundef null) #7
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #7
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %16, i32 0, i32 4, i32 0, i32 9
  %23 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %24) #7
  call void @ww_mutex_unlock(ptr noundef %24) #7
  %25 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.39, i32 noundef %call7) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 11
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ucode_array_offset_bytes, align 4
  %ddev.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2
  %call19 = call zeroext i1 @drm_dev_enter(ptr noundef %ddev.i, ptr noundef nonnull %idx) #7
  br i1 %call19, label %if.then20, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpu_addr, align 4
  %36 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw, align 8
  %data23 = getelementptr inbounds %struct.firmware, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %data23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data23, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %33
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  %sub = sub i32 %41, %33
  call void @mmiocpy(ptr noundef %35, ptr noundef %add.ptr, i32 noundef %sub) #7
  %42 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %43) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end16.if.end26_crit_edge
  %44 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vce, align 8
  call void @amdgpu_bo_kunmap(ptr noundef %45) #7
  %46 = ptrtoint ptr %vce to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vce, align 8
  %tbo.i52 = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4
  %bdev.i.i.i53 = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %bdev.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bdev.i.i.i53, align 8
  %lru_lock.i.i.i54 = getelementptr inbounds %struct.ttm_device, ptr %49, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i54) #7
  %resource.i.i.i55 = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %resource.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource.i.i.i55, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i52, ptr noundef %51, ptr noundef null) #7
  %52 = ptrtoint ptr %bdev.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bdev.i.i.i53, align 8
  %lru_lock2.i.i.i56 = getelementptr inbounds %struct.ttm_device, ptr %53, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i56) #7
  %resv.i.i57 = getelementptr inbounds %struct.amdgpu_bo, ptr %47, i32 0, i32 4, i32 0, i32 9
  %54 = ptrtoint ptr %resv.i.i57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resv.i.i57, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %55) #7
  call void @ww_mutex_unlock(ptr noundef %55) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i.i, %do.end ], [ %call7, %if.then9 ], [ 0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vce_ring_begin_use(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
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
  %idle_mutex = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 109, i32 10
  tail call void @mutex_lock_nested(ptr noundef %idle_mutex, i32 noundef 0) #7
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 109, i32 9
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #7
  br i1 %call, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @amdgpu_dpm_enable_vce(ptr noundef %1, i1 noundef zeroext true) #7
  br label %if.end11

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 4
  %set_vce_clocks = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %set_vce_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_vce_clocks, align 4
  %call7 = tail call i32 %9(ptr noundef %1, i32 noundef 53300, i32 noundef 40000) #7
  %call8 = tail call i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef %1, i32 noundef 9, i32 noundef 1) #7
  %call9 = tail call i32 @amdgpu_device_ip_set_powergating_state(ptr noundef %1, i32 noundef 9, i32 noundef 1) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6, %if.end.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %idle_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dpm_enable_vce(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_clockgating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_ip_set_powergating_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vce_ring_end_use(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
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
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 109, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %idle_work, i32 noundef 100) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vce_free_handles(ptr noundef %adev, ptr noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 6, i32 %i.030
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx3, i32 noundef 4) #7
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx6 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 109, i32 7, i32 %i.030
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6, align 4
  %cmp7.not = icmp eq ptr %3, %filp
  br i1 %cmp7.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call8 = tail call fastcc i32 @amdgpu_vce_get_destroy_msg(ptr noundef %ring1, i32 noundef %1, i1 noundef zeroext false, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41, i32 noundef %call8) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx6, align 4
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx3, i32 noundef 4) #7
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_vce_get_destroy_msg(ptr noundef %ring, i32 noundef %handle, i1 noundef zeroext %direct, ptr noundef writeonly %fence) unnamed_addr #0 align 64 {
entry:
  %job = alloca ptr, align 4
  %f = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #7
  %0 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #7
  %1 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %f, align 4
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 8
  %cond = select i1 %direct, i32 2, i32 0
  %call = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %3, i32 noundef 4096, i32 noundef %cond, ptr noundef nonnull %job) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ibs, align 4
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %7, i32 0, i32 1
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptr, align 8
  %10 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %length_dw, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %9, align 4
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc6 = add i32 %13, 1
  store i32 %inc6, ptr %length_dw, align 4
  %arrayidx7 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %arrayidx7, align 4
  %15 = load ptr, ptr %ptr, align 8
  %16 = load i32, ptr %length_dw, align 4
  %inc10 = add i32 %16, 1
  store i32 %inc10, ptr %length_dw, align 4
  %arrayidx11 = getelementptr i32, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %handle, ptr %arrayidx11, align 4
  %18 = load ptr, ptr %ptr, align 8
  %19 = load i32, ptr %length_dw, align 4
  %inc14 = add i32 %19, 1
  store i32 %inc14, ptr %length_dw, align 4
  %arrayidx15 = getelementptr i32, ptr %18, i32 %19
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %arrayidx15, align 4
  %21 = load ptr, ptr %ptr, align 8
  %22 = load i32, ptr %length_dw, align 4
  %inc18 = add i32 %22, 1
  store i32 %inc18, ptr %length_dw, align 4
  %arrayidx19 = getelementptr i32, ptr %21, i32 %22
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %arrayidx19, align 4
  %24 = load ptr, ptr %ptr, align 8
  %25 = load i32, ptr %length_dw, align 4
  %inc22 = add i32 %25, 1
  store i32 %inc22, ptr %length_dw, align 4
  %arrayidx23 = getelementptr i32, ptr %24, i32 %25
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %arrayidx23, align 4
  %27 = load ptr, ptr %ptr, align 8
  %28 = load i32, ptr %length_dw, align 4
  %inc26 = add i32 %28, 1
  store i32 %inc26, ptr %length_dw, align 4
  %arrayidx27 = getelementptr i32, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx27, align 4
  %30 = load ptr, ptr %ptr, align 8
  %31 = load i32, ptr %length_dw, align 4
  %inc30 = add i32 %31, 1
  store i32 %inc30, ptr %length_dw, align 4
  %arrayidx31 = getelementptr i32, ptr %30, i32 %31
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx31, align 4
  %33 = load ptr, ptr %ptr, align 8
  %34 = load i32, ptr %length_dw, align 4
  %inc34 = add i32 %34, 1
  store i32 %inc34, ptr %length_dw, align 4
  %arrayidx35 = getelementptr i32, ptr %33, i32 %34
  %35 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx35, align 4
  %36 = load ptr, ptr %ptr, align 8
  %37 = load i32, ptr %length_dw, align 4
  %inc38 = add i32 %37, 1
  store i32 %inc38, ptr %length_dw, align 4
  %arrayidx39 = getelementptr i32, ptr %36, i32 %37
  %38 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %arrayidx39, align 4
  %39 = load ptr, ptr %ptr, align 8
  %40 = load i32, ptr %length_dw, align 4
  %inc42 = add i32 %40, 1
  store i32 %inc42, ptr %length_dw, align 4
  %arrayidx43 = getelementptr i32, ptr %39, i32 %40
  %41 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx43, align 4
  %42 = load ptr, ptr %ptr, align 8
  %43 = load i32, ptr %length_dw, align 4
  %inc46 = add i32 %43, 1
  store i32 %inc46, ptr %length_dw, align 4
  %arrayidx47 = getelementptr i32, ptr %42, i32 %43
  %44 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %arrayidx47, align 4
  %45 = load ptr, ptr %ptr, align 8
  %46 = load i32, ptr %length_dw, align 4
  %inc50 = add i32 %46, 1
  store i32 %inc50, ptr %length_dw, align 4
  %arrayidx51 = getelementptr i32, ptr %45, i32 %46
  %47 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 33554433, ptr %arrayidx51, align 4
  %48 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %48)
  %cmp116 = icmp ult i32 %48, 1024
  br i1 %cmp116, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0117 = phi i32 [ %inc55, %for.body.for.body_crit_edge ], [ %48, %if.end.for.body_crit_edge ]
  %49 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptr, align 8
  %arrayidx54 = getelementptr i32, ptr %50, i32 %i.0117
  %51 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx54, align 4
  %inc55 = add i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc55, 1024
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %52 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %job, align 4
  br i1 %direct, label %if.then57, label %if.else

if.then57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 @amdgpu_job_submit_direct(ptr noundef %53, ptr noundef %ring, ptr noundef nonnull %f) #7
  br label %if.end61

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring, align 8
  %entity = getelementptr inbounds %struct.amdgpu_device, ptr %55, i32 0, i32 109, i32 15
  %call60 = call i32 @amdgpu_job_submit(ptr noundef %53, ptr noundef %entity, ptr noundef null, ptr noundef nonnull %f) #7
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then57
  %r.0 = phi i32 [ %call58, %if.then57 ], [ %call60, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool62.not = icmp eq i32 %r.0, 0
  br i1 %tobool62.not, label %if.end64, label %err

if.end64:                                         ; preds = %if.end61
  %tobool65.not = icmp eq ptr %fence, null
  br i1 %tobool65.not, label %if.end64.if.end68_crit_edge, label %if.then66

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then66:                                        ; preds = %if.end64
  %56 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.then66.dma_fence_get.exit_crit_edge, label %if.then.i

if.then66.dma_fence_get.exit_crit_edge:           ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.then66
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %57, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !145
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !146

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %59 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %.not.i.i.i.i.i = icmp sgt i32 %59, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !147

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

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.then66.dma_fence_get.exit_crit_edge
  %60 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %fence, align 4
  br label %if.end68

if.end68:                                         ; preds = %dma_fence_get.exit, %if.end64.if.end68_crit_edge
  %61 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f, align 4
  %tobool.not.i111 = icmp eq ptr %62, null
  br i1 %tobool.not.i111, label %if.end68.cleanup_crit_edge, label %if.then.i114

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i114:                                     ; preds = %if.end68
  %refcount.i112 = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 6
  %call.i.i.i.i.i.i.i113 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i112, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i112, i32 1, i32 3, i32 1) #7
  %63 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i112, ptr %refcount.i112, i32 1, ptr elementtype(i32) %refcount.i112) #7, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i115 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i115, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i112, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i112) #7
  br label %cleanup

err:                                              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %65) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_ring_parse_cs(ptr noundef %p, i32 noundef %ib_idx) local_unnamed_addr #0 align 64 {
entry:
  %allocated = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibs, align 4
  %arrayidx = getelementptr %struct.amdgpu_ib, ptr %3, i32 %ib_idx
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocated) #7
  %4 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %allocated, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp)
  %vm = getelementptr inbounds %struct.amdgpu_job, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %vm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vm, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %manager.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %manager.i, align 4
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_sa_manager, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %gpu_addr.i, align 8
  %soffset.i = getelementptr inbounds %struct.amdgpu_sa_bo, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %soffset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %soffset.i, align 4
  %conv.i = zext i32 %13 to i64
  %add.i = add i64 %11, %conv.i
  %gpu_addr = getelementptr %struct.amdgpu_ib, ptr %3, i32 %ib_idx, i32 2
  %14 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add.i, ptr %gpu_addr, align 8
  %length_dw = getelementptr %struct.amdgpu_ib, ptr %3, i32 %ib_idx, i32 1
  %15 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp474.not = icmp eq i32 %16, 0
  br i1 %cmp474.not, label %entry.for.end175_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end175_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end175

for.cond60.preheader:                             ; preds = %cleanup
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %37, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp62481.not = icmp eq i32 %39, 0
  br i1 %cmp62481.not, label %for.cond60.preheader.for.end175_crit_edge, label %for.cond60.preheader.for.body63_crit_edge

for.cond60.preheader.for.body63_crit_edge:        ; preds = %for.cond60.preheader
  br label %for.body63

for.cond60.preheader.for.end175_crit_edge:        ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end175

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %idx.0477 = phi i32 [ %add58, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bs_idx.0476 = phi i32 [ %bs_idx.1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %fb_idx.0475 = phi i32 [ %fb_idx.1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %18 = phi i32 [ %37, %cleanup.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %19 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %job, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ibs.i, align 4
  %ptr.i = getelementptr %struct.amdgpu_ib, ptr %22, i32 %ib_idx, i32 3
  %23 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %24, i32 %idx.0477
  %25 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp4 = icmp ugt i32 %26, 7
  %and = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp4, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %18, ptr %tmp, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %26) #7
  br label %if.else183

if.end:                                           ; preds = %for.body
  %add = add nuw i32 %idx.0477, 1
  %arrayidx1.i370 = getelementptr i32, ptr %24, i32 %add
  %28 = ptrtoint ptr %arrayidx1.i370 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.i370, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %29, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 50331649, label %sw.bb9
    i32 83886081, label %sw.bb22
    i32 83886084, label %sw.bb29
    i32 83886085, label %sw.bb38
    i32 83886093, label %sw.bb45
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add5 = add i32 %idx.0477, 6
  %arrayidx1.i374 = getelementptr i32, ptr %24, i32 %add5
  %31 = ptrtoint ptr %arrayidx1.i374 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.i374, align 4
  %add7 = add i32 %idx.0477, 7
  %arrayidx1.i378 = getelementptr i32, ptr %24, i32 %add7
  %33 = ptrtoint ptr %arrayidx1.i378 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.i378, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  %add10 = add i32 %idx.0477, 10
  %add11 = add i32 %idx.0477, 9
  %call12 = tail call fastcc i32 @amdgpu_vce_validate_bo(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add10, i32 noundef %add11, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %sw.bb9.if.else183.loopexit451_crit_edge

sw.bb9.if.else183.loopexit451_crit_edge:          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.loopexit451

if.end15:                                         ; preds = %sw.bb9
  %add16 = add i32 %idx.0477, 12
  %add17 = add i32 %idx.0477, 11
  %call18 = tail call fastcc i32 @amdgpu_vce_validate_bo(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add16, i32 noundef %add17, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.cleanup_crit_edge, label %if.end15.if.else183.loopexit451_crit_edge

if.end15.if.else183.loopexit451_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.loopexit451

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  %add23 = add i32 %idx.0477, 3
  %add24 = add i32 %idx.0477, 2
  %call25 = tail call fastcc i32 @amdgpu_vce_validate_bo(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add23, i32 noundef %add24, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %sw.bb22.cleanup_crit_edge, label %sw.bb22.if.else183.loopexit451_crit_edge

sw.bb22.if.else183.loopexit451_crit_edge:         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.loopexit451

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  %add30 = add i32 %idx.0477, 4
  %arrayidx1.i382 = getelementptr i32, ptr %24, i32 %add30
  %35 = ptrtoint ptr %arrayidx1.i382 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx1.i382, align 4
  %add32 = add i32 %idx.0477, 3
  %add33 = add i32 %idx.0477, 2
  %call34 = tail call fastcc i32 @amdgpu_vce_validate_bo(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add32, i32 noundef %add33, i32 noundef %36, i32 noundef %bs_idx.0476)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %sw.bb29.cleanup_crit_edge, label %sw.bb29.if.else183.loopexit451_crit_edge

sw.bb29.if.else183.loopexit451_crit_edge:         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.loopexit451

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  %add39 = add i32 %idx.0477, 3
  %add40 = add i32 %idx.0477, 2
  %call41 = tail call fastcc i32 @amdgpu_vce_validate_bo(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add39, i32 noundef %add40, i32 noundef 4096, i32 noundef %fb_idx.0475)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %sw.bb38.cleanup_crit_edge, label %sw.bb38.if.else183.loopexit451_crit_edge

sw.bb38.if.else183.loopexit451_crit_edge:         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.loopexit451

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  %add46 = add i32 %idx.0477, 3
  %add47 = add i32 %idx.0477, 2
  %call48 = tail call fastcc i32 @amdgpu_vce_validate_bo(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add46, i32 noundef %add47, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %sw.bb45.if.else183.loopexit451_crit_edge

sw.bb45.if.else183.loopexit451_crit_edge:         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.loopexit451

if.end51:                                         ; preds = %sw.bb45
  %add52 = add i32 %idx.0477, 8
  %add53 = add i32 %idx.0477, 7
  %call54 = tail call fastcc i32 @amdgpu_vce_validate_bo(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add52, i32 noundef %add53, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end51.cleanup_crit_edge, label %if.end51.if.else183.loopexit451_crit_edge

if.end51.if.else183.loopexit451_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183.loopexit451

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end51.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge
  %37 = phi i32 [ %18, %if.end.cleanup_crit_edge ], [ %18, %if.end51.cleanup_crit_edge ], [ %18, %sw.bb38.cleanup_crit_edge ], [ %36, %sw.bb29.cleanup_crit_edge ], [ %18, %sw.bb22.cleanup_crit_edge ], [ %18, %if.end15.cleanup_crit_edge ], [ %18, %sw.bb ]
  %fb_idx.1 = phi i32 [ %fb_idx.0475, %if.end.cleanup_crit_edge ], [ %fb_idx.0475, %if.end51.cleanup_crit_edge ], [ %fb_idx.0475, %sw.bb38.cleanup_crit_edge ], [ %fb_idx.0475, %sw.bb29.cleanup_crit_edge ], [ %fb_idx.0475, %sw.bb22.cleanup_crit_edge ], [ %fb_idx.0475, %if.end15.cleanup_crit_edge ], [ %32, %sw.bb ]
  %bs_idx.1 = phi i32 [ %bs_idx.0476, %if.end.cleanup_crit_edge ], [ %bs_idx.0476, %if.end51.cleanup_crit_edge ], [ %bs_idx.0476, %sw.bb38.cleanup_crit_edge ], [ %bs_idx.0476, %sw.bb29.cleanup_crit_edge ], [ %bs_idx.0476, %sw.bb22.cleanup_crit_edge ], [ %bs_idx.0476, %if.end15.cleanup_crit_edge ], [ %34, %sw.bb ]
  %div363 = lshr i32 %26, 2
  %add58 = add i32 %div363, %idx.0477
  %38 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length_dw, align 4
  %cmp = icmp ult i32 %add58, %39
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.cond60.preheader

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body63:                                       ; preds = %cleanup171.for.body63_crit_edge, %for.cond60.preheader.for.body63_crit_edge
  %idx.2488 = phi i32 [ %add170, %cleanup171.for.body63_crit_edge ], [ 0, %for.cond60.preheader.for.body63_crit_edge ]
  %size.0487 = phi ptr [ %size.1434, %cleanup171.for.body63_crit_edge ], [ %tmp, %for.cond60.preheader.for.body63_crit_edge ]
  %created.0486 = phi i32 [ %created.1433, %cleanup171.for.body63_crit_edge ], [ 0, %for.cond60.preheader.for.body63_crit_edge ]
  %destroyed.0485 = phi i32 [ %destroyed.2432, %cleanup171.for.body63_crit_edge ], [ 0, %for.cond60.preheader.for.body63_crit_edge ]
  %session_idx.0484 = phi i32 [ %session_idx.1431, %cleanup171.for.body63_crit_edge ], [ -1, %for.cond60.preheader.for.body63_crit_edge ]
  %bs_idx.3483 = phi i32 [ %bs_idx.4430, %cleanup171.for.body63_crit_edge ], [ %bs_idx.1, %for.cond60.preheader.for.body63_crit_edge ]
  %fb_idx.3482 = phi i32 [ %fb_idx.4429, %cleanup171.for.body63_crit_edge ], [ %fb_idx.1, %for.cond60.preheader.for.body63_crit_edge ]
  %40 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %job, align 4
  %ibs.i384 = getelementptr inbounds %struct.amdgpu_job, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ibs.i384 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ibs.i384, align 4
  %ptr.i385 = getelementptr %struct.amdgpu_ib, ptr %43, i32 %ib_idx, i32 3
  %44 = ptrtoint ptr %ptr.i385 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptr.i385, align 8
  %arrayidx1.i386 = getelementptr i32, ptr %45, i32 %idx.2488
  %46 = ptrtoint ptr %arrayidx1.i386 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx1.i386, align 4
  %add67 = add nuw i32 %idx.2488, 1
  %arrayidx1.i390 = getelementptr i32, ptr %45, i32 %add67
  %48 = ptrtoint ptr %arrayidx1.i390 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx1.i390, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %49, label %sw.default164 [
    i32 1, label %sw.bb69
    i32 2, label %sw.bb77
    i32 16777217, label %sw.bb82
    i32 67108865, label %for.body63.sw.epilog165_crit_edge
    i32 67108866, label %for.body63.sw.epilog165_crit_edge557
    i32 67108869, label %for.body63.sw.epilog165_crit_edge558
    i32 67108871, label %for.body63.sw.epilog165_crit_edge559
    i32 67108872, label %for.body63.sw.epilog165_crit_edge560
    i32 67108873, label %for.body63.sw.epilog165_crit_edge561
    i32 83886082, label %for.body63.sw.epilog165_crit_edge562
    i32 83886089, label %for.body63.sw.epilog165_crit_edge563
    i32 83886092, label %sw.bb105
    i32 50331649, label %sw.bb109
    i32 33554433, label %sw.bb123
    i32 83886081, label %sw.bb126
    i32 83886084, label %sw.bb134
    i32 83886085, label %sw.bb143
    i32 83886093, label %sw.bb150
  ]

for.body63.sw.epilog165_crit_edge563:             ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

for.body63.sw.epilog165_crit_edge562:             ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

for.body63.sw.epilog165_crit_edge561:             ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

for.body63.sw.epilog165_crit_edge560:             ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

for.body63.sw.epilog165_crit_edge559:             ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

for.body63.sw.epilog165_crit_edge558:             ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

for.body63.sw.epilog165_crit_edge557:             ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

for.body63.sw.epilog165_crit_edge:                ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.bb69:                                          ; preds = %for.body63
  %add70 = add i32 %idx.2488, 2
  %arrayidx1.i394 = getelementptr i32, ptr %45, i32 %add70
  %51 = ptrtoint ptr %arrayidx1.i394 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx1.i394, align 4
  %call72 = call fastcc i32 @amdgpu_vce_validate_handle(ptr noundef %p, i32 noundef %52, ptr noundef nonnull %allocated)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %sw.bb69.if.else183_crit_edge, label %sw.epilog165.thread

sw.bb69.if.else183_crit_edge:                     ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

sw.epilog165.thread:                              ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %p, align 8
  %arrayidx76 = getelementptr %struct.amdgpu_device, ptr %54, i32 0, i32 109, i32 8, i32 %call72
  br label %cleanup171

sw.bb77:                                          ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  %add78 = add i32 %idx.2488, 6
  %arrayidx1.i398 = getelementptr i32, ptr %45, i32 %add78
  %55 = ptrtoint ptr %arrayidx1.i398 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx1.i398, align 4
  %add80 = add i32 %idx.2488, 7
  %arrayidx1.i402 = getelementptr i32, ptr %45, i32 %add80
  %57 = ptrtoint ptr %arrayidx1.i402 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx1.i402, align 4
  br label %sw.epilog165

sw.bb82:                                          ; preds = %for.body63
  %shl = shl nuw i32 1, %session_idx.0484
  %or = or i32 %created.0486, %shl
  %and84 = and i32 %destroyed.0485, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %and88 = and i32 %destroyed.0485, %neg
  %59 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %allocated, align 4
  %or90 = or i32 %60, %shl
  store i32 %or90, ptr %allocated, align 4
  br label %if.end96

if.else:                                          ; preds = %sw.bb82
  %61 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %allocated, align 4
  %and92 = and i32 %62, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then94, label %if.else.if.end96_crit_edge

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then94:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43) #7
  br label %if.else183

if.end96:                                         ; preds = %if.else.if.end96_crit_edge, %if.then86
  %destroyed.1 = phi i32 [ %and88, %if.then86 ], [ %destroyed.0485, %if.else.if.end96_crit_edge ]
  %add97 = add i32 %idx.2488, 8
  %arrayidx1.i406 = getelementptr i32, ptr %45, i32 %add97
  %63 = ptrtoint ptr %arrayidx1.i406 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx1.i406, align 4
  %add99 = add i32 %idx.2488, 10
  %arrayidx1.i410 = getelementptr i32, ptr %45, i32 %add99
  %65 = ptrtoint ptr %arrayidx1.i410 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx1.i410, align 4
  %mul = mul i32 %64, 24
  %mul102 = mul i32 %mul, %66
  %div103362 = lshr exact i32 %mul102, 1
  %67 = ptrtoint ptr %size.0487 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div103362, ptr %size.0487, align 4
  br label %sw.epilog165

sw.bb105:                                         ; preds = %for.body63
  %68 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %p, align 8
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %asic_type, align 8
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %71, label %sw.bb105.if.else183_crit_edge [
    i32 6, label %sw.bb105.sw.epilog165_crit_edge
    i32 9, label %sw.bb105.sw.epilog165_crit_edge564
    i32 13, label %sw.bb105.sw.epilog165_crit_edge565
  ]

sw.bb105.sw.epilog165_crit_edge565:               ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.bb105.sw.epilog165_crit_edge564:               ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.bb105.sw.epilog165_crit_edge:                  ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.bb105.if.else183_crit_edge:                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

sw.bb109:                                         ; preds = %for.body63
  %add110 = add i32 %idx.2488, 10
  %add111 = add i32 %idx.2488, 9
  %73 = ptrtoint ptr %size.0487 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.0487, align 4
  %call112 = tail call fastcc i32 @amdgpu_vce_cs_reloc(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add110, i32 noundef %add111, i32 noundef %74, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %sw.bb109.if.else183_crit_edge

sw.bb109.if.else183_crit_edge:                    ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

if.end115:                                        ; preds = %sw.bb109
  %add116 = add i32 %idx.2488, 12
  %add117 = add i32 %idx.2488, 11
  %75 = ptrtoint ptr %size.0487 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.0487, align 4
  %div118 = udiv i32 %76, 3
  %call119 = tail call fastcc i32 @amdgpu_vce_cs_reloc(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add116, i32 noundef %add117, i32 noundef %div118, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end115.sw.epilog165_crit_edge, label %if.end115.if.else183_crit_edge

if.end115.if.else183_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

if.end115.sw.epilog165_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.bb123:                                         ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  %shl124 = shl nuw i32 1, %session_idx.0484
  %or125 = or i32 %destroyed.0485, %shl124
  br label %sw.epilog165

sw.bb126:                                         ; preds = %for.body63
  %add127 = add i32 %idx.2488, 3
  %add128 = add i32 %idx.2488, 2
  %77 = ptrtoint ptr %size.0487 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.0487, align 4
  %mul129 = shl i32 %78, 1
  %call130 = tail call fastcc i32 @amdgpu_vce_cs_reloc(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add127, i32 noundef %add128, i32 noundef %mul129, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %sw.bb126.sw.epilog165_crit_edge, label %sw.bb126.if.else183_crit_edge

sw.bb126.if.else183_crit_edge:                    ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

sw.bb126.sw.epilog165_crit_edge:                  ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.bb134:                                         ; preds = %for.body63
  %add135 = add i32 %idx.2488, 4
  %arrayidx1.i414 = getelementptr i32, ptr %45, i32 %add135
  %79 = ptrtoint ptr %arrayidx1.i414 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx1.i414, align 4
  %81 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %tmp, align 4
  %add137 = add i32 %idx.2488, 3
  %add138 = add i32 %idx.2488, 2
  %call139 = tail call fastcc i32 @amdgpu_vce_cs_reloc(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add137, i32 noundef %add138, i32 noundef %80, i32 noundef %bs_idx.3483)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %sw.bb134.sw.epilog165_crit_edge, label %sw.bb134.if.else183_crit_edge

sw.bb134.if.else183_crit_edge:                    ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

sw.bb134.sw.epilog165_crit_edge:                  ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.bb143:                                         ; preds = %for.body63
  %add144 = add i32 %idx.2488, 3
  %add145 = add i32 %idx.2488, 2
  %call146 = tail call fastcc i32 @amdgpu_vce_cs_reloc(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add144, i32 noundef %add145, i32 noundef 4096, i32 noundef %fb_idx.3482)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %sw.bb143.sw.epilog165_crit_edge, label %sw.bb143.if.else183_crit_edge

sw.bb143.if.else183_crit_edge:                    ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

sw.bb143.sw.epilog165_crit_edge:                  ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.bb150:                                         ; preds = %for.body63
  %add151 = add i32 %idx.2488, 3
  %add152 = add i32 %idx.2488, 2
  %82 = ptrtoint ptr %size.0487 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size.0487, align 4
  %call153 = tail call fastcc i32 @amdgpu_vce_cs_reloc(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add151, i32 noundef %add152, i32 noundef %83, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %sw.bb150.if.else183_crit_edge

sw.bb150.if.else183_crit_edge:                    ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

if.end156:                                        ; preds = %sw.bb150
  %add157 = add i32 %idx.2488, 8
  %add158 = add i32 %idx.2488, 7
  %84 = ptrtoint ptr %size.0487 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size.0487, align 4
  %div159 = udiv i32 %85, 12
  %call160 = tail call fastcc i32 @amdgpu_vce_cs_reloc(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %add157, i32 noundef %add158, i32 noundef %div159, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end156.sw.epilog165_crit_edge, label %if.end156.if.else183_crit_edge

if.end156.if.else183_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

if.end156.sw.epilog165_crit_edge:                 ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog165

sw.default164:                                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %49) #7
  br label %if.else183

sw.epilog165:                                     ; preds = %if.end156.sw.epilog165_crit_edge, %sw.bb143.sw.epilog165_crit_edge, %sw.bb134.sw.epilog165_crit_edge, %sw.bb126.sw.epilog165_crit_edge, %sw.bb123, %if.end115.sw.epilog165_crit_edge, %sw.bb105.sw.epilog165_crit_edge, %sw.bb105.sw.epilog165_crit_edge564, %sw.bb105.sw.epilog165_crit_edge565, %if.end96, %sw.bb77, %for.body63.sw.epilog165_crit_edge, %for.body63.sw.epilog165_crit_edge557, %for.body63.sw.epilog165_crit_edge558, %for.body63.sw.epilog165_crit_edge559, %for.body63.sw.epilog165_crit_edge560, %for.body63.sw.epilog165_crit_edge561, %for.body63.sw.epilog165_crit_edge562, %for.body63.sw.epilog165_crit_edge563
  %fb_idx.4 = phi i32 [ %fb_idx.3482, %if.end156.sw.epilog165_crit_edge ], [ %fb_idx.3482, %sw.bb143.sw.epilog165_crit_edge ], [ %fb_idx.3482, %sw.bb134.sw.epilog165_crit_edge ], [ %fb_idx.3482, %sw.bb126.sw.epilog165_crit_edge ], [ %fb_idx.3482, %sw.bb123 ], [ %fb_idx.3482, %if.end115.sw.epilog165_crit_edge ], [ %fb_idx.3482, %sw.bb105.sw.epilog165_crit_edge ], [ %fb_idx.3482, %sw.bb105.sw.epilog165_crit_edge564 ], [ %fb_idx.3482, %sw.bb105.sw.epilog165_crit_edge565 ], [ %fb_idx.3482, %for.body63.sw.epilog165_crit_edge ], [ %fb_idx.3482, %for.body63.sw.epilog165_crit_edge557 ], [ %fb_idx.3482, %for.body63.sw.epilog165_crit_edge558 ], [ %fb_idx.3482, %for.body63.sw.epilog165_crit_edge559 ], [ %fb_idx.3482, %for.body63.sw.epilog165_crit_edge560 ], [ %fb_idx.3482, %for.body63.sw.epilog165_crit_edge561 ], [ %fb_idx.3482, %for.body63.sw.epilog165_crit_edge562 ], [ %fb_idx.3482, %for.body63.sw.epilog165_crit_edge563 ], [ %fb_idx.3482, %if.end96 ], [ %56, %sw.bb77 ]
  %bs_idx.4 = phi i32 [ %bs_idx.3483, %if.end156.sw.epilog165_crit_edge ], [ %bs_idx.3483, %sw.bb143.sw.epilog165_crit_edge ], [ %bs_idx.3483, %sw.bb134.sw.epilog165_crit_edge ], [ %bs_idx.3483, %sw.bb126.sw.epilog165_crit_edge ], [ %bs_idx.3483, %sw.bb123 ], [ %bs_idx.3483, %if.end115.sw.epilog165_crit_edge ], [ %bs_idx.3483, %sw.bb105.sw.epilog165_crit_edge ], [ %bs_idx.3483, %sw.bb105.sw.epilog165_crit_edge564 ], [ %bs_idx.3483, %sw.bb105.sw.epilog165_crit_edge565 ], [ %bs_idx.3483, %for.body63.sw.epilog165_crit_edge ], [ %bs_idx.3483, %for.body63.sw.epilog165_crit_edge557 ], [ %bs_idx.3483, %for.body63.sw.epilog165_crit_edge558 ], [ %bs_idx.3483, %for.body63.sw.epilog165_crit_edge559 ], [ %bs_idx.3483, %for.body63.sw.epilog165_crit_edge560 ], [ %bs_idx.3483, %for.body63.sw.epilog165_crit_edge561 ], [ %bs_idx.3483, %for.body63.sw.epilog165_crit_edge562 ], [ %bs_idx.3483, %for.body63.sw.epilog165_crit_edge563 ], [ %bs_idx.3483, %if.end96 ], [ %58, %sw.bb77 ]
  %destroyed.2 = phi i32 [ %destroyed.0485, %if.end156.sw.epilog165_crit_edge ], [ %destroyed.0485, %sw.bb143.sw.epilog165_crit_edge ], [ %destroyed.0485, %sw.bb134.sw.epilog165_crit_edge ], [ %destroyed.0485, %sw.bb126.sw.epilog165_crit_edge ], [ %or125, %sw.bb123 ], [ %destroyed.0485, %if.end115.sw.epilog165_crit_edge ], [ %destroyed.0485, %sw.bb105.sw.epilog165_crit_edge ], [ %destroyed.0485, %sw.bb105.sw.epilog165_crit_edge564 ], [ %destroyed.0485, %sw.bb105.sw.epilog165_crit_edge565 ], [ %destroyed.0485, %for.body63.sw.epilog165_crit_edge ], [ %destroyed.0485, %for.body63.sw.epilog165_crit_edge557 ], [ %destroyed.0485, %for.body63.sw.epilog165_crit_edge558 ], [ %destroyed.0485, %for.body63.sw.epilog165_crit_edge559 ], [ %destroyed.0485, %for.body63.sw.epilog165_crit_edge560 ], [ %destroyed.0485, %for.body63.sw.epilog165_crit_edge561 ], [ %destroyed.0485, %for.body63.sw.epilog165_crit_edge562 ], [ %destroyed.0485, %for.body63.sw.epilog165_crit_edge563 ], [ %destroyed.1, %if.end96 ], [ %destroyed.0485, %sw.bb77 ]
  %created.1 = phi i32 [ %created.0486, %if.end156.sw.epilog165_crit_edge ], [ %created.0486, %sw.bb143.sw.epilog165_crit_edge ], [ %created.0486, %sw.bb134.sw.epilog165_crit_edge ], [ %created.0486, %sw.bb126.sw.epilog165_crit_edge ], [ %created.0486, %sw.bb123 ], [ %created.0486, %if.end115.sw.epilog165_crit_edge ], [ %created.0486, %sw.bb105.sw.epilog165_crit_edge ], [ %created.0486, %sw.bb105.sw.epilog165_crit_edge564 ], [ %created.0486, %sw.bb105.sw.epilog165_crit_edge565 ], [ %created.0486, %for.body63.sw.epilog165_crit_edge ], [ %created.0486, %for.body63.sw.epilog165_crit_edge557 ], [ %created.0486, %for.body63.sw.epilog165_crit_edge558 ], [ %created.0486, %for.body63.sw.epilog165_crit_edge559 ], [ %created.0486, %for.body63.sw.epilog165_crit_edge560 ], [ %created.0486, %for.body63.sw.epilog165_crit_edge561 ], [ %created.0486, %for.body63.sw.epilog165_crit_edge562 ], [ %created.0486, %for.body63.sw.epilog165_crit_edge563 ], [ %or, %if.end96 ], [ %created.0486, %sw.bb77 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %session_idx.0484)
  %cmp166 = icmp eq i32 %session_idx.0484, -1
  br i1 %cmp166, label %if.then167, label %sw.epilog165.cleanup171_crit_edge

sw.epilog165.cleanup171_crit_edge:                ; preds = %sw.epilog165
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup171

if.then167:                                       ; preds = %sw.epilog165
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #7
  br label %if.else183

cleanup171:                                       ; preds = %sw.epilog165.cleanup171_crit_edge, %sw.epilog165.thread
  %size.1434 = phi ptr [ %arrayidx76, %sw.epilog165.thread ], [ %size.0487, %sw.epilog165.cleanup171_crit_edge ]
  %created.1433 = phi i32 [ %created.0486, %sw.epilog165.thread ], [ %created.1, %sw.epilog165.cleanup171_crit_edge ]
  %destroyed.2432 = phi i32 [ %destroyed.0485, %sw.epilog165.thread ], [ %destroyed.2, %sw.epilog165.cleanup171_crit_edge ]
  %session_idx.1431 = phi i32 [ %call72, %sw.epilog165.thread ], [ %session_idx.0484, %sw.epilog165.cleanup171_crit_edge ]
  %bs_idx.4430 = phi i32 [ %bs_idx.3483, %sw.epilog165.thread ], [ %bs_idx.4, %sw.epilog165.cleanup171_crit_edge ]
  %fb_idx.4429 = phi i32 [ %fb_idx.3482, %sw.epilog165.thread ], [ %fb_idx.4, %sw.epilog165.cleanup171_crit_edge ]
  %div169361 = lshr i32 %47, 2
  %add170 = add i32 %div169361, %idx.2488
  %86 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length_dw, align 4
  %cmp62 = icmp ult i32 %add170, %87
  br i1 %cmp62, label %cleanup171.for.body63_crit_edge, label %cleanup171.for.end175_crit_edge

cleanup171.for.end175_crit_edge:                  ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end175

cleanup171.for.body63_crit_edge:                  ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body63

for.end175:                                       ; preds = %cleanup171.for.end175_crit_edge, %for.cond60.preheader.for.end175_crit_edge, %entry.for.end175_crit_edge
  %destroyed.0.lcssa = phi i32 [ 0, %for.cond60.preheader.for.end175_crit_edge ], [ 0, %entry.for.end175_crit_edge ], [ %destroyed.2432, %cleanup171.for.end175_crit_edge ]
  %created.0.lcssa = phi i32 [ 0, %for.cond60.preheader.for.end175_crit_edge ], [ 0, %entry.for.end175_crit_edge ], [ %created.1433, %cleanup171.for.end175_crit_edge ]
  %88 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %allocated, align 4
  %neg176 = xor i32 %created.0.lcssa, -1
  %and177 = and i32 %89, %neg176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %for.end175.if.end184_crit_edge, label %if.then179

for.end175.if.end184_crit_edge:                   ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

if.then179:                                       ; preds = %for.end175
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #7
  br label %if.else183

if.else183.loopexit451:                           ; preds = %if.end51.if.else183.loopexit451_crit_edge, %sw.bb45.if.else183.loopexit451_crit_edge, %sw.bb38.if.else183.loopexit451_crit_edge, %sw.bb29.if.else183.loopexit451_crit_edge, %sw.bb22.if.else183.loopexit451_crit_edge, %if.end15.if.else183.loopexit451_crit_edge, %sw.bb9.if.else183.loopexit451_crit_edge
  %90 = phi i32 [ %18, %sw.bb9.if.else183.loopexit451_crit_edge ], [ %18, %if.end15.if.else183.loopexit451_crit_edge ], [ %18, %sw.bb22.if.else183.loopexit451_crit_edge ], [ %36, %sw.bb29.if.else183.loopexit451_crit_edge ], [ %18, %sw.bb38.if.else183.loopexit451_crit_edge ], [ %18, %sw.bb45.if.else183.loopexit451_crit_edge ], [ %18, %if.end51.if.else183.loopexit451_crit_edge ]
  %r.6449.ph452 = phi i32 [ %call12, %sw.bb9.if.else183.loopexit451_crit_edge ], [ %call18, %if.end15.if.else183.loopexit451_crit_edge ], [ %call25, %sw.bb22.if.else183.loopexit451_crit_edge ], [ %call34, %sw.bb29.if.else183.loopexit451_crit_edge ], [ %call41, %sw.bb38.if.else183.loopexit451_crit_edge ], [ %call48, %sw.bb45.if.else183.loopexit451_crit_edge ], [ %call54, %if.end51.if.else183.loopexit451_crit_edge ]
  %91 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %tmp, align 4
  br label %if.else183

if.else183:                                       ; preds = %if.else183.loopexit451, %if.then179, %if.then167, %sw.default164, %if.end156.if.else183_crit_edge, %sw.bb150.if.else183_crit_edge, %sw.bb143.if.else183_crit_edge, %sw.bb134.if.else183_crit_edge, %sw.bb126.if.else183_crit_edge, %if.end115.if.else183_crit_edge, %sw.bb109.if.else183_crit_edge, %sw.bb105.if.else183_crit_edge, %if.then94, %sw.bb69.if.else183_crit_edge, %if.then
  %r.6449 = phi i32 [ -2, %if.then179 ], [ -22, %if.then ], [ -22, %if.then94 ], [ -22, %if.then167 ], [ -22, %sw.default164 ], [ %r.6449.ph452, %if.else183.loopexit451 ], [ %call72, %sw.bb69.if.else183_crit_edge ], [ -22, %sw.bb105.if.else183_crit_edge ], [ %call112, %sw.bb109.if.else183_crit_edge ], [ %call119, %if.end115.if.else183_crit_edge ], [ %call130, %sw.bb126.if.else183_crit_edge ], [ %call139, %sw.bb134.if.else183_crit_edge ], [ %call146, %sw.bb143.if.else183_crit_edge ], [ %call153, %sw.bb150.if.else183_crit_edge ], [ %call160, %if.end156.if.else183_crit_edge ]
  %92 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %allocated, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.else183, %for.end175.if.end184_crit_edge
  %r.6450 = phi i32 [ %r.6449, %if.else183 ], [ 0, %for.end175.if.end184_crit_edge ]
  %storemerge = phi i32 [ %93, %if.else183 ], [ %destroyed.0.lcssa, %for.end175.if.end184_crit_edge ]
  br label %for.body187

for.body187:                                      ; preds = %for.inc.for.body187_crit_edge, %if.end184
  %i.0492 = phi i32 [ 0, %if.end184 ], [ %inc, %for.inc.for.body187_crit_edge ]
  %shl188 = shl nuw nsw i32 1, %i.0492
  %and189 = and i32 %storemerge, %shl188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %for.body187.for.inc_crit_edge, label %if.then191

for.body187.for.inc_crit_edge:                    ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then191:                                       ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %p, align 8
  %arrayidx194 = getelementptr %struct.amdgpu_device, ptr %95, i32 0, i32 109, i32 6, i32 %i.0492
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx194, i32 noundef 4) #7
  %96 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 0, ptr %arrayidx194, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then191, %for.body187.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0492, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %cleanup197, label %for.inc.for.body187_crit_edge

for.inc.for.body187_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body187

cleanup197:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocated) #7
  ret i32 %r.6450
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_vce_validate_bo(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %lo, i32 noundef %hi, i32 noundef %size, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %mapping = alloca ptr, align 4
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %size to i64
  %conv1 = sext i32 %index to i64
  %mul = mul nsw i64 %conv1, %conv
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #7
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #7
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #7
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !143
  %job.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %3 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibs.i, align 4
  %ptr.i = getelementptr %struct.amdgpu_ib, ptr %6, i32 %ib_idx, i32 3
  %7 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %8, i32 %lo
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i, align 4
  %conv2 = zext i32 %10 to i64
  %arrayidx1.i82 = getelementptr i32, ptr %8, i32 %hi
  %11 = ptrtoint ptr %arrayidx1.i82 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.i82, align 4
  %conv4 = zext i32 %12 to i64
  %shl = shl nuw i64 %conv4, 32
  %or = or i64 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index)
  %cmp = icmp sgt i32 %index, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i64 %or, %mul
  %add6 = add nsw i64 %mul, 4095
  %13 = lshr i64 %add6, 12
  %conv7 = trunc i64 %13 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add8 = add nsw i64 %mul, 4095
  %and9 = and i64 %add8, 17592186040320
  %sub = sub nsw i64 4294967296, %and9
  %shr10 = lshr exact i64 %sub, 12
  %conv11 = trunc i64 %shr10 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fpfn.0 = phi i32 [ %conv7, %if.then ], [ 0, %if.else ]
  %lpfn.0 = phi i32 [ 1048576, %if.then ], [ %conv11, %if.else ]
  %addr.0 = phi i64 [ %add, %if.then ], [ %or, %if.else ]
  %call12 = call i32 @amdgpu_cs_find_mapping(ptr noundef %p, i64 noundef %addr.0, ptr noundef nonnull %bo, ptr noundef nonnull %mapping) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then13

for.cond.preheader:                               ; preds = %if.end
  %14 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bo, align 4
  %placement83 = getelementptr inbounds %struct.amdgpu_bo, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %placement83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %placement83, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1584.not = icmp eq i32 %17, 0
  br i1 %cmp1584.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i64 noundef %addr.0, i32 noundef %lo, i32 noundef %hi, i32 noundef %size, i32 noundef %index) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %18 = phi ptr [ %30, %for.body.for.body_crit_edge ], [ %15, %for.cond.preheader.for.body_crit_edge ]
  %i.085 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_bo, ptr %18, i32 0, i32 2, i32 %i.085
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 8
  %21 = call i32 @llvm.umax.i32(i32 %20, i32 %fpfn.0)
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx, align 8
  %23 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo, align 4
  %lpfn25 = getelementptr %struct.amdgpu_bo, ptr %24, i32 0, i32 2, i32 %i.085, i32 1
  %25 = ptrtoint ptr %lpfn25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lpfn25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool26.not = icmp eq i32 %26, 0
  %27 = call i32 @llvm.umin.i32(i32 %26, i32 %lpfn.0)
  %cond40 = select i1 %tobool26.not, i32 %lpfn.0, i32 %27
  %28 = ptrtoint ptr %lpfn25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond40, ptr %lpfn25, align 4
  %inc = add nuw i32 %i.085, 1
  %29 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bo, align 4
  %placement = getelementptr inbounds %struct.amdgpu_bo, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %placement to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %placement, align 8
  %cmp15 = icmp ult i32 %inc, %32
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi ptr [ %15, %for.cond.preheader.for.end_crit_edge ], [ %30, %for.body.for.end_crit_edge ]
  %placement.lcssa = phi ptr [ %placement83, %for.cond.preheader.for.end_crit_edge ], [ %placement, %for.body.for.end_crit_edge ]
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %.lcssa, i32 0, i32 4
  %call45 = call i32 @ttm_bo_validate(ptr noundef %tbo, ptr noundef %placement.lcssa, ptr noundef nonnull %ctx) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then13
  %retval.0 = phi i32 [ %call12, %if.then13 ], [ %call45, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_vce_validate_handle(ptr nocapture noundef readonly %p, i32 noundef %handle, ptr nocapture noundef %allocated) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 109, i32 6, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %handle)
  %cmp1 = icmp eq i32 %3, %handle
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.051.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ], [ 15, %for.inc.14.if.then_crit_edge ]
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 8
  %arrayidx4 = getelementptr %struct.amdgpu_device, ptr %5, i32 0, i32 109, i32 7, i32 %i.051.lcssa
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %filp5 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %8 = ptrtoint ptr %filp5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filp5, align 4
  %cmp6.not = icmp eq ptr %7, %9
  br i1 %cmp6.not, label %if.then.cleanup_crit_edge, label %if.then7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52) #7
  br label %cleanup

for.inc:                                          ; preds = %entry
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 8
  %arrayidx.1 = getelementptr %struct.amdgpu_device, ptr %11, i32 0, i32 109, i32 6, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1, i32 noundef 4) #7
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %handle)
  %cmp1.1 = icmp eq i32 %13, %handle
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p, align 8
  %arrayidx.2 = getelementptr %struct.amdgpu_device, ptr %15, i32 0, i32 109, i32 6, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.2, i32 noundef 4) #7
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %handle)
  %cmp1.2 = icmp eq i32 %17, %handle
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p, align 8
  %arrayidx.3 = getelementptr %struct.amdgpu_device, ptr %19, i32 0, i32 109, i32 6, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.3, i32 noundef 4) #7
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %handle)
  %cmp1.3 = icmp eq i32 %21, %handle
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %22 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p, align 8
  %arrayidx.4 = getelementptr %struct.amdgpu_device, ptr %23, i32 0, i32 109, i32 6, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.4, i32 noundef 4) #7
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %handle)
  %cmp1.4 = icmp eq i32 %25, %handle
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p, align 8
  %arrayidx.5 = getelementptr %struct.amdgpu_device, ptr %27, i32 0, i32 109, i32 6, i32 5
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.5, i32 noundef 4) #7
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %handle)
  %cmp1.5 = icmp eq i32 %29, %handle
  br i1 %cmp1.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p, align 8
  %arrayidx.6 = getelementptr %struct.amdgpu_device, ptr %31, i32 0, i32 109, i32 6, i32 6
  %call.i.i.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.6, i32 noundef 4) #7
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %handle)
  %cmp1.6 = icmp eq i32 %33, %handle
  br i1 %cmp1.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %34 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %p, align 8
  %arrayidx.7 = getelementptr %struct.amdgpu_device, ptr %35, i32 0, i32 109, i32 6, i32 7
  %call.i.i.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.7, i32 noundef 4) #7
  %36 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %handle)
  %cmp1.7 = icmp eq i32 %37, %handle
  br i1 %cmp1.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %38 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p, align 8
  %arrayidx.8 = getelementptr %struct.amdgpu_device, ptr %39, i32 0, i32 109, i32 6, i32 8
  %call.i.i.8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.8, i32 noundef 4) #7
  %40 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %handle)
  %cmp1.8 = icmp eq i32 %41, %handle
  br i1 %cmp1.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %42 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p, align 8
  %arrayidx.9 = getelementptr %struct.amdgpu_device, ptr %43, i32 0, i32 109, i32 6, i32 9
  %call.i.i.9 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.9, i32 noundef 4) #7
  %44 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %handle)
  %cmp1.9 = icmp eq i32 %45, %handle
  br i1 %cmp1.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %46 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %p, align 8
  %arrayidx.10 = getelementptr %struct.amdgpu_device, ptr %47, i32 0, i32 109, i32 6, i32 10
  %call.i.i.10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.10, i32 noundef 4) #7
  %48 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %handle)
  %cmp1.10 = icmp eq i32 %49, %handle
  br i1 %cmp1.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %50 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p, align 8
  %arrayidx.11 = getelementptr %struct.amdgpu_device, ptr %51, i32 0, i32 109, i32 6, i32 11
  %call.i.i.11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.11, i32 noundef 4) #7
  %52 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %handle)
  %cmp1.11 = icmp eq i32 %53, %handle
  br i1 %cmp1.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %54 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p, align 8
  %arrayidx.12 = getelementptr %struct.amdgpu_device, ptr %55, i32 0, i32 109, i32 6, i32 12
  %call.i.i.12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.12, i32 noundef 4) #7
  %56 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %handle)
  %cmp1.12 = icmp eq i32 %57, %handle
  br i1 %cmp1.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %58 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %p, align 8
  %arrayidx.13 = getelementptr %struct.amdgpu_device, ptr %59, i32 0, i32 109, i32 6, i32 13
  %call.i.i.13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.13, i32 noundef 4) #7
  %60 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %handle)
  %cmp1.13 = icmp eq i32 %61, %handle
  br i1 %cmp1.13, label %for.inc.12.if.then_crit_edge, label %for.inc.13

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %p, align 8
  %arrayidx.14 = getelementptr %struct.amdgpu_device, ptr %63, i32 0, i32 109, i32 6, i32 14
  %call.i.i.14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.14, i32 noundef 4) #7
  %64 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %handle)
  %cmp1.14 = icmp eq i32 %65, %handle
  br i1 %cmp1.14, label %for.inc.13.if.then_crit_edge, label %for.inc.14

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %66 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %p, align 8
  %arrayidx.15 = getelementptr %struct.amdgpu_device, ptr %67, i32 0, i32 109, i32 6, i32 15
  %call.i.i.15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.15, i32 noundef 4) #7
  %68 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %handle)
  %cmp1.15 = icmp eq i32 %69, %handle
  br i1 %cmp1.15, label %for.inc.14.if.then_crit_edge, label %for.inc.14.for.body11_crit_edge

for.inc.14.for.body11_crit_edge:                  ; preds = %for.inc.14
  br label %for.body11

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body11:                                       ; preds = %for.inc27.for.body11_crit_edge, %for.inc.14.for.body11_crit_edge
  %i.152 = phi i32 [ %inc28, %for.inc27.for.body11_crit_edge ], [ 0, %for.inc.14.for.body11_crit_edge ]
  %70 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %p, align 8
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %71, i32 0, i32 109, i32 6, i32 %i.152
  %call.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx15, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %arrayidx15, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.body11
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx15, ptr %arrayidx15, i32 0, i32 %handle, ptr elementtype(i32) %arrayidx15) #7, !srcloc !152
  %asmresult.i.i.i = extractvalue { i32, i32 } %72, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %72, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool.not, label %if.then17, label %for.inc27

if.then17:                                        ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %filp18 = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 1
  %73 = ptrtoint ptr %filp18 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %filp18, align 4
  %75 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %p, align 8
  %arrayidx22 = getelementptr %struct.amdgpu_device, ptr %76, i32 0, i32 109, i32 7, i32 %i.152
  %77 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %arrayidx22, align 4
  %78 = load ptr, ptr %p, align 8
  %arrayidx25 = getelementptr %struct.amdgpu_device, ptr %78, i32 0, i32 109, i32 8, i32 %i.152
  %79 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx25, align 4
  %shl = shl nuw i32 1, %i.152
  %80 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %allocated, align 4
  %or = or i32 %81, %shl
  store i32 %or, ptr %allocated, align 4
  br label %cleanup

for.inc27:                                        ; preds = %atomic_cmpxchg.exit
  %inc28 = add nuw nsw i32 %i.152, 1
  %exitcond.not = icmp eq i32 %inc28, 16
  br i1 %exitcond.not, label %for.end29, label %for.inc27.for.body11_crit_edge

for.inc27.for.body11_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

for.end29:                                        ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %if.then17, %if.then7, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ %i.152, %if.then17 ], [ -22, %for.end29 ], [ %i.051.lcssa, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_vce_cs_reloc(ptr noundef %p, i32 noundef %ib_idx, i32 noundef %lo, i32 noundef %hi, i32 noundef %size, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %mapping = alloca ptr, align 4
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #7
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #7
  %1 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index)
  %cmp = icmp eq i32 %index, -1
  %spec.store.select = select i1 %cmp, i32 0, i32 %index
  %job.i = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ibs.i, align 4
  %ptr.i = getelementptr %struct.amdgpu_ib, ptr %5, i32 %ib_idx, i32 3
  %6 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %7, i32 %lo
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  %conv = zext i32 %9 to i64
  %arrayidx1.i61 = getelementptr i32, ptr %7, i32 %hi
  %10 = ptrtoint ptr %arrayidx1.i61 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i61, align 4
  %conv2 = zext i32 %11 to i64
  %shl = shl nuw i64 %conv2, 32
  %or = or i64 %shl, %conv
  %conv3 = zext i32 %size to i64
  %conv4 = zext i32 %spec.store.select to i64
  %mul = mul nuw i64 %conv4, %conv3
  %add = add i64 %or, %mul
  %call5 = call i32 @amdgpu_cs_find_mapping(ptr noundef %p, i64 noundef %add, ptr noundef nonnull %bo, ptr noundef nonnull %mapping) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.51, i64 noundef %add, i32 noundef %lo, i32 noundef %hi, i32 noundef %size, i32 noundef %spec.store.select) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %add9 = add i64 %add, %conv3
  %12 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping, align 4
  %last = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %last, align 8
  %add10 = shl i64 %15, 12
  %mul11 = add i64 %add10, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add9, i64 %mul11)
  %cmp12 = icmp ugt i64 %add9, %mul11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.54, i64 noundef %add, i32 noundef %lo, i32 noundef %hi) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %start = getelementptr inbounds %struct.amdgpu_bo_va_mapping, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %start, align 8
  %mul16.neg = mul i64 %17, -4096
  %18 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo, align 4
  %call17 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %19) #7
  %add18 = add i64 %or, %mul16.neg
  %sub22 = add i64 %add18, %call17
  %conv23 = trunc i64 %sub22 to i32
  %20 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %job.i, align 4
  %ibs.i63 = getelementptr inbounds %struct.amdgpu_job, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ibs.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ibs.i63, align 4
  %ptr.i64 = getelementptr %struct.amdgpu_ib, ptr %23, i32 %ib_idx, i32 3
  %24 = ptrtoint ptr %ptr.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptr.i64, align 8
  %arrayidx1.i65 = getelementptr i32, ptr %25, i32 %lo
  %26 = ptrtoint ptr %arrayidx1.i65 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv23, ptr %arrayidx1.i65, align 4
  %shr = lshr i64 %sub22, 32
  %conv25 = trunc i64 %shr to i32
  %27 = load ptr, ptr %job.i, align 4
  %ibs.i67 = getelementptr inbounds %struct.amdgpu_job, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ibs.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ibs.i67, align 4
  %ptr.i68 = getelementptr %struct.amdgpu_ib, ptr %29, i32 %ib_idx, i32 3
  %30 = ptrtoint ptr %ptr.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptr.i68, align 8
  %arrayidx1.i69 = getelementptr i32, ptr %31, i32 %hi
  %32 = ptrtoint ptr %arrayidx1.i69 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv25, ptr %arrayidx1.i69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then6
  %retval.0 = phi i32 [ %call5, %if.then6 ], [ -22, %if.then14 ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_ring_parse_cs_vm(ptr nocapture noundef readonly %p, i32 noundef %ib_idx) local_unnamed_addr #0 align 64 {
entry:
  %allocated = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %job = getelementptr inbounds %struct.amdgpu_cs_parser, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibs, align 4
  %arrayidx = getelementptr %struct.amdgpu_ib, ptr %3, i32 %ib_idx
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %allocated) #7
  %4 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %allocated, align 4
  %length_dw = getelementptr %struct.amdgpu_ib, ptr %3, i32 %ib_idx, i32 1
  %5 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp132.not = icmp eq i32 %6, 0
  br i1 %cmp132.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %idx.0136 = phi i32 [ %add30, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %created.0135 = phi i32 [ %created.1108, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %destroyed.0134 = phi i32 [ %destroyed.1107, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %session_idx.0133 = phi i32 [ %session_idx.1106, %cleanup.while.body_crit_edge ], [ -1, %entry.while.body_crit_edge ]
  %7 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %job, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ibs.i, align 4
  %ptr.i = getelementptr %struct.amdgpu_ib, ptr %10, i32 %ib_idx, i32 3
  %11 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr.i, align 8
  %arrayidx1.i = getelementptr i32, ptr %12, i32 %idx.0136
  %13 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp2 = icmp ugt i32 %14, 7
  %and = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp2, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.42, i32 noundef %14) #7
  br label %if.else39

if.end:                                           ; preds = %while.body
  %add = add nuw i32 %idx.0136, 1
  %arrayidx1.i97 = getelementptr i32, ptr %12, i32 %add
  %15 = ptrtoint ptr %arrayidx1.i97 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.i97, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %16, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 16777217, label %sw.bb9
    i32 33554433, label %sw.bb24
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %add3 = add i32 %idx.0136, 2
  %arrayidx1.i101 = getelementptr i32, ptr %12, i32 %add3
  %18 = ptrtoint ptr %arrayidx1.i101 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.i101, align 4
  %call5 = call fastcc i32 @amdgpu_vce_validate_handle(ptr noundef %p, i32 noundef %19, ptr noundef nonnull %allocated)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %sw.bb.if.else39_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.if.else39_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else39

sw.bb9:                                           ; preds = %if.end
  %shl = shl nuw i32 1, %session_idx.0133
  %or = or i32 %created.0135, %shl
  %and11 = and i32 %destroyed.0134, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %and15 = and i32 %destroyed.0134, %neg
  %20 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %allocated, align 4
  %or17 = or i32 %21, %shl
  store i32 %or17, ptr %allocated, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb9
  %22 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %allocated, align 4
  %and19 = and i32 %23, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43) #7
  br label %if.else39

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl25 = shl nuw i32 1, %session_idx.0133
  %or26 = or i32 %destroyed.0134, %shl25
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %if.else.sw.epilog_crit_edge, %if.then13, %if.end.sw.epilog_crit_edge
  %destroyed.1 = phi i32 [ %destroyed.0134, %if.end.sw.epilog_crit_edge ], [ %or26, %sw.bb24 ], [ %and15, %if.then13 ], [ %destroyed.0134, %if.else.sw.epilog_crit_edge ]
  %created.1 = phi i32 [ %created.0135, %if.end.sw.epilog_crit_edge ], [ %created.0135, %sw.bb24 ], [ %or, %if.then13 ], [ %or, %if.else.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %session_idx.0133)
  %cmp27 = icmp eq i32 %session_idx.0133, -1
  br i1 %cmp27, label %if.then28, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45) #7
  br label %if.else39

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %created.1108 = phi i32 [ %created.1, %sw.epilog.cleanup_crit_edge ], [ %created.0135, %sw.bb.cleanup_crit_edge ]
  %destroyed.1107 = phi i32 [ %destroyed.1, %sw.epilog.cleanup_crit_edge ], [ %destroyed.0134, %sw.bb.cleanup_crit_edge ]
  %session_idx.1106 = phi i32 [ %session_idx.0133, %sw.epilog.cleanup_crit_edge ], [ %call5, %sw.bb.cleanup_crit_edge ]
  %div92 = lshr i32 %14, 2
  %add30 = add i32 %div92, %idx.0136
  %24 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length_dw, align 4
  %cmp = icmp ult i32 %add30, %25
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %destroyed.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %destroyed.1107, %cleanup.while.end_crit_edge ]
  %created.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %created.1108, %cleanup.while.end_crit_edge ]
  %26 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %allocated, align 4
  %neg32 = xor i32 %created.0.lcssa, -1
  %and33 = and i32 %27, %neg32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then38, label %if.then35

if.then35:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46) #7
  br label %if.else39

if.then38:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p, align 8
  tail call void @amdgpu_ib_free(ptr noundef %29, ptr noundef %arrayidx, ptr noundef null) #7
  br label %if.end40

if.else39:                                        ; preds = %if.then35, %if.then28, %if.then21, %sw.bb.if.else39_crit_edge, %if.then
  %r.2.ph = phi i32 [ -2, %if.then35 ], [ -22, %if.then21 ], [ -22, %if.then28 ], [ -22, %if.then ], [ %call5, %sw.bb.if.else39_crit_edge ]
  %30 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %allocated, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then38
  %r.2119 = phi i32 [ %r.2.ph, %if.else39 ], [ 0, %if.then38 ]
  %tmp.0 = phi i32 [ %31, %if.else39 ], [ %destroyed.0.lcssa, %if.then38 ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end40
  %i.0138 = phi i32 [ 0, %if.end40 ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl42 = shl nuw nsw i32 1, %i.0138
  %and43 = and i32 %shl42, %tmp.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %for.body.for.inc_crit_edge, label %if.then45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p, align 8
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %33, i32 0, i32 109, i32 6, i32 %i.0138
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx47, i32 noundef 4) #7
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %arrayidx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %cleanup49, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup49:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %allocated) #7
  ret i32 %r.2119
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vce_ring_emit_ib(ptr nocapture noundef %ring, ptr nocapture noundef readnone %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 2, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %15 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i10 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i10, label %if.then.i11, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit21

if.then.i11:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit21

amdgpu_ring_write.exit21:                         ; preds = %if.then.i11, %amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge
  %17 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring1.i, align 4
  %19 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wptr.i, align 8
  %inc.i14 = add i64 %20, 1
  store i64 %inc.i14, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_mask.i, align 8
  %23 = trunc i64 %20 to i32
  %idxprom.i16 = and i32 %22, %23
  %arrayidx.i17 = getelementptr i32, ptr %18, i32 %idxprom.i16
  %24 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %conv, ptr %arrayidx.i17, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ptr_mask.i, align 8
  %27 = load i64, ptr %wptr.i, align 8
  %and3.i19 = and i64 %27, %26
  store i64 %and3.i19, ptr %wptr.i, align 8
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 8
  %dec.i20 = add i32 %29, -1
  store i32 %dec.i20, ptr %count_dw.i, align 8
  %30 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %31, 32
  %conv3 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i20)
  %cmp.i23 = icmp slt i32 %dec.i20, 1
  br i1 %cmp.i23, label %if.then.i24, label %amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge

amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge: ; preds = %amdgpu_ring_write.exit21
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit34

if.then.i24:                                      ; preds = %amdgpu_ring_write.exit21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit34

amdgpu_ring_write.exit34:                         ; preds = %if.then.i24, %amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i27 = add i64 %35, 1
  store i64 %inc.i27, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i29 = and i32 %37, %38
  %arrayidx.i30 = getelementptr i32, ptr %33, i32 %idxprom.i29
  %39 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %conv3, ptr %arrayidx.i30, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i32 = and i64 %42, %41
  store i64 %and3.i32, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i33 = add i32 %44, -1
  store i32 %dec.i33, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %45 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i33)
  %cmp.i36 = icmp slt i32 %dec.i33, 1
  br i1 %cmp.i36, label %if.then.i37, label %amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge

amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge: ; preds = %amdgpu_ring_write.exit34
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit47

if.then.i37:                                      ; preds = %amdgpu_ring_write.exit34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit47

amdgpu_ring_write.exit47:                         ; preds = %if.then.i37, %amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i40 = add i64 %50, 1
  store i64 %inc.i40, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i42 = and i32 %52, %53
  %arrayidx.i43 = getelementptr i32, ptr %48, i32 %idxprom.i42
  %54 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %46, ptr %arrayidx.i43, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i45 = and i64 %57, %56
  store i64 %and3.i45, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i46 = add i32 %59, -1
  store i32 %dec.i46, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_vce_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !147

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1086, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 3, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i31 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i31, label %if.then.i32, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit42_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit42_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit42

if.then.i32:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit42

amdgpu_ring_write.exit42:                         ; preds = %if.then.i32, %amdgpu_ring_write.exit.amdgpu_ring_write.exit42_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i35 = add i64 %18, 1
  store i64 %inc.i35, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i37 = and i32 %20, %21
  %arrayidx.i38 = getelementptr i32, ptr %16, i32 %idxprom.i37
  %22 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i38, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i40 = and i64 %25, %24
  store i64 %and3.i40, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i41 = add i32 %27, -1
  store i32 %dec.i41, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv21 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i41)
  %cmp.i44 = icmp slt i32 %dec.i41, 1
  br i1 %cmp.i44, label %if.then.i45, label %amdgpu_ring_write.exit42.amdgpu_ring_write.exit55_crit_edge

amdgpu_ring_write.exit42.amdgpu_ring_write.exit55_crit_edge: ; preds = %amdgpu_ring_write.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit55

if.then.i45:                                      ; preds = %amdgpu_ring_write.exit42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit55

amdgpu_ring_write.exit55:                         ; preds = %if.then.i45, %amdgpu_ring_write.exit42.amdgpu_ring_write.exit55_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i48 = add i64 %31, 1
  store i64 %inc.i48, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i50 = and i32 %33, %34
  %arrayidx.i51 = getelementptr i32, ptr %29, i32 %idxprom.i50
  %35 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %conv21, ptr %arrayidx.i51, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i53 = and i64 %38, %37
  store i64 %and3.i53, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i54 = add i32 %40, -1
  store i32 %dec.i54, ptr %count_dw.i, align 8
  %conv22 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i54)
  %cmp.i57 = icmp slt i32 %dec.i54, 1
  br i1 %cmp.i57, label %if.then.i58, label %amdgpu_ring_write.exit55.amdgpu_ring_write.exit68_crit_edge

amdgpu_ring_write.exit55.amdgpu_ring_write.exit68_crit_edge: ; preds = %amdgpu_ring_write.exit55
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit68

if.then.i58:                                      ; preds = %amdgpu_ring_write.exit55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit68

amdgpu_ring_write.exit68:                         ; preds = %if.then.i58, %amdgpu_ring_write.exit55.amdgpu_ring_write.exit68_crit_edge
  %41 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring1.i, align 4
  %43 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %wptr.i, align 8
  %inc.i61 = add i64 %44, 1
  store i64 %inc.i61, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buf_mask.i, align 8
  %47 = trunc i64 %44 to i32
  %idxprom.i63 = and i32 %46, %47
  %arrayidx.i64 = getelementptr i32, ptr %42, i32 %idxprom.i63
  %48 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv22, ptr %arrayidx.i64, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ptr_mask.i, align 8
  %51 = load i64, ptr %wptr.i, align 8
  %and3.i66 = and i64 %51, %50
  store i64 %and3.i66, ptr %wptr.i, align 8
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 8
  %dec.i67 = add i32 %53, -1
  store i32 %dec.i67, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i67)
  %cmp.i70 = icmp slt i32 %dec.i67, 1
  br i1 %cmp.i70, label %if.then.i71, label %amdgpu_ring_write.exit68.amdgpu_ring_write.exit81_crit_edge

amdgpu_ring_write.exit68.amdgpu_ring_write.exit81_crit_edge: ; preds = %amdgpu_ring_write.exit68
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit81

if.then.i71:                                      ; preds = %amdgpu_ring_write.exit68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit81

amdgpu_ring_write.exit81:                         ; preds = %if.then.i71, %amdgpu_ring_write.exit68.amdgpu_ring_write.exit81_crit_edge
  %54 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i, align 4
  %56 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr.i, align 8
  %inc.i74 = add i64 %57, 1
  store i64 %inc.i74, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i76 = and i32 %59, %60
  %arrayidx.i77 = getelementptr i32, ptr %55, i32 %idxprom.i76
  %61 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 4, ptr %arrayidx.i77, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i, align 8
  %64 = load i64, ptr %wptr.i, align 8
  %and3.i79 = and i64 %64, %63
  store i64 %and3.i79, ptr %wptr.i, align 8
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 8
  %dec.i80 = add i32 %66, -1
  store i32 %dec.i80, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i80)
  %cmp.i83 = icmp slt i32 %dec.i80, 1
  br i1 %cmp.i83, label %if.then.i84, label %amdgpu_ring_write.exit81.amdgpu_ring_write.exit94_crit_edge

amdgpu_ring_write.exit81.amdgpu_ring_write.exit94_crit_edge: ; preds = %amdgpu_ring_write.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit94

if.then.i84:                                      ; preds = %amdgpu_ring_write.exit81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit94

amdgpu_ring_write.exit94:                         ; preds = %if.then.i84, %amdgpu_ring_write.exit81.amdgpu_ring_write.exit94_crit_edge
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 4
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %wptr.i, align 8
  %inc.i87 = add i64 %70, 1
  store i64 %inc.i87, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_mask.i, align 8
  %73 = trunc i64 %70 to i32
  %idxprom.i89 = and i32 %72, %73
  %arrayidx.i90 = getelementptr i32, ptr %68, i32 %idxprom.i89
  %74 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 1, ptr %arrayidx.i90, align 4
  %75 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ptr_mask.i, align 8
  %77 = load i64, ptr %wptr.i, align 8
  %and3.i92 = and i64 %77, %76
  store i64 %and3.i92, ptr %wptr.i, align 8
  %78 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count_dw.i, align 8
  %dec.i93 = add i32 %79, -1
  store i32 %dec.i93, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_ring_test_ring(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %get_rptr = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %get_rptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rptr, align 4
  %call5 = tail call i64 %9(ptr noundef %ring) #7
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.end4.amdgpu_ring_write.exit_crit_edge

if.end4.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55) #7
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end4.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %14 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %15, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %16 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_mask.i, align 8
  %18 = trunc i64 %15 to i32
  %idxprom.i = and i32 %17, %18
  %arrayidx.i = getelementptr i32, ptr %13, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %20 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ptr_mask.i, align 8
  %22 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %22, %21
  store i64 %and3.i, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  tail call void @amdgpu_ring_commit(ptr noundef %ring) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp36.not = icmp eq i32 %3, 0
  br i1 %cmp36.not, label %amdgpu_ring_write.exit.cleanup_crit_edge, label %for.body.lr.ph

amdgpu_ring_write.exit.cleanup_crit_edge:         ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %amdgpu_ring_write.exit
  %conv10 = and i64 %call5, 4294967295
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %25 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs, align 4
  %get_rptr8 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %get_rptr8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_rptr8, align 4
  %call9 = tail call i64 %28(ptr noundef %ring) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %conv10)
  %cmp11.not = icmp eq i64 %call9, %conv10
  br i1 %cmp11.not, label %if.end14, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #7
  %inc = add nuw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end14.cleanup_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14.cleanup_crit_edge, %for.body.cleanup_crit_edge, %amdgpu_ring_write.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -110, %amdgpu_ring_write.exit.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ -110, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_vce_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %job.i = alloca ptr, align 4
  %ib_msg.i = alloca %struct.amdgpu_ib, align 8
  %f.i = alloca ptr, align 4
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #7
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fence, align 4
  %1 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ring, align 8
  %ring1 = getelementptr inbounds %struct.amdgpu_device, ptr %2, i32 0, i32 109, i32 12
  %cmp.not = icmp eq ptr %ring1, %ring
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job.i) #7
  %3 = ptrtoint ptr %job.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %job.i, align 4, !annotation !143
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib_msg.i) #7
  %4 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib_msg.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f.i) #7
  %5 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %f.i, align 4
  %call.i = call i32 @amdgpu_job_alloc_with_ib(ptr noundef %2, i32 noundef 4096, i32 noundef 2, ptr noundef nonnull %job.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.amdgpu_vce_get_create_msg.exit_crit_edge

if.end.amdgpu_vce_get_create_msg.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_vce_get_create_msg.exit

if.end.i:                                         ; preds = %if.end
  %6 = call ptr @memset(ptr %ib_msg.i, i32 0, i32 24)
  %7 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring, align 8
  %call2.i = call i32 @amdgpu_ib_get(ptr noundef %8, ptr noundef null, i32 noundef 8192, i32 noundef 2, ptr noundef nonnull %ib_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.err.i_crit_edge

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end5.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %job.i, align 4
  %ibs.i = getelementptr inbounds %struct.amdgpu_job, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ibs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ibs.i, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %4, align 8
  %add.i = add i64 %14, 4095
  %length_dw.i = getelementptr inbounds %struct.amdgpu_ib, ptr %12, i32 0, i32 1
  %ptr.i = getelementptr inbounds %struct.amdgpu_ib, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptr.i, align 8
  %17 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %length_dw.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %16, align 4
  %19 = load ptr, ptr %ptr.i, align 8
  %20 = load i32, ptr %length_dw.i, align 4
  %inc10.i = add i32 %20, 1
  store i32 %inc10.i, ptr %length_dw.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %19, i32 %20
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx11.i, align 4
  %22 = load ptr, ptr %ptr.i, align 8
  %23 = load i32, ptr %length_dw.i, align 4
  %inc14.i = add i32 %23, 1
  store i32 %inc14.i, ptr %length_dw.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %22, i32 %23
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx15.i, align 4
  %25 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring, align 8
  %fw_version.i = getelementptr inbounds %struct.amdgpu_device, ptr %26, i32 0, i32 109, i32 4
  %27 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 872415231, i32 %28)
  %cmp.i = icmp ugt i32 %28, 872415231
  %29 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptr.i, align 8
  %31 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length_dw.i, align 4
  %inc20.i = add i32 %32, 1
  store i32 %inc20.i, ptr %length_dw.i, align 4
  %arrayidx21.i = getelementptr i32, ptr %30, i32 %32
  %..i = select i1 %cmp.i, i32 64, i32 48
  %33 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %..i, ptr %arrayidx21.i, align 4
  %34 = load ptr, ptr %ptr.i, align 8
  %35 = load i32, ptr %length_dw.i, align 4
  %inc29.i = add i32 %35, 1
  store i32 %inc29.i, ptr %length_dw.i, align 4
  %arrayidx30.i = getelementptr i32, ptr %34, i32 %35
  %36 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777217, ptr %arrayidx30.i, align 4
  %37 = load ptr, ptr %ptr.i, align 8
  %38 = load i32, ptr %length_dw.i, align 4
  %inc33.i = add i32 %38, 1
  store i32 %inc33.i, ptr %length_dw.i, align 4
  %arrayidx34.i = getelementptr i32, ptr %37, i32 %38
  %39 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx34.i, align 4
  %40 = load ptr, ptr %ptr.i, align 8
  %41 = load i32, ptr %length_dw.i, align 4
  %inc37.i = add i32 %41, 1
  store i32 %inc37.i, ptr %length_dw.i, align 4
  %arrayidx38.i = getelementptr i32, ptr %40, i32 %41
  %42 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 66, ptr %arrayidx38.i, align 4
  %43 = load ptr, ptr %ptr.i, align 8
  %44 = load i32, ptr %length_dw.i, align 4
  %inc41.i = add i32 %44, 1
  store i32 %inc41.i, ptr %length_dw.i, align 4
  %arrayidx42.i = getelementptr i32, ptr %43, i32 %44
  %45 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 10, ptr %arrayidx42.i, align 4
  %46 = load ptr, ptr %ptr.i, align 8
  %47 = load i32, ptr %length_dw.i, align 4
  %inc45.i = add i32 %47, 1
  store i32 %inc45.i, ptr %length_dw.i, align 4
  %arrayidx46.i = getelementptr i32, ptr %46, i32 %47
  %48 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %arrayidx46.i, align 4
  %49 = load ptr, ptr %ptr.i, align 8
  %50 = load i32, ptr %length_dw.i, align 4
  %inc49.i = add i32 %50, 1
  store i32 %inc49.i, ptr %length_dw.i, align 4
  %arrayidx50.i = getelementptr i32, ptr %49, i32 %50
  %51 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 128, ptr %arrayidx50.i, align 4
  %52 = load ptr, ptr %ptr.i, align 8
  %53 = load i32, ptr %length_dw.i, align 4
  %inc53.i = add i32 %53, 1
  store i32 %inc53.i, ptr %length_dw.i, align 4
  %arrayidx54.i = getelementptr i32, ptr %52, i32 %53
  %54 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 96, ptr %arrayidx54.i, align 4
  %55 = load ptr, ptr %ptr.i, align 8
  %56 = load i32, ptr %length_dw.i, align 4
  %inc57.i = add i32 %56, 1
  store i32 %inc57.i, ptr %length_dw.i, align 4
  %arrayidx58.i = getelementptr i32, ptr %55, i32 %56
  %57 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 256, ptr %arrayidx58.i, align 4
  %58 = load ptr, ptr %ptr.i, align 8
  %59 = load i32, ptr %length_dw.i, align 4
  %inc61.i = add i32 %59, 1
  store i32 %inc61.i, ptr %length_dw.i, align 4
  %arrayidx62.i = getelementptr i32, ptr %58, i32 %59
  %60 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 256, ptr %arrayidx62.i, align 4
  %61 = load ptr, ptr %ptr.i, align 8
  %62 = load i32, ptr %length_dw.i, align 4
  %inc65.i = add i32 %62, 1
  store i32 %inc65.i, ptr %length_dw.i, align 4
  %arrayidx66.i = getelementptr i32, ptr %61, i32 %62
  %63 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 12, ptr %arrayidx66.i, align 4
  %64 = load ptr, ptr %ptr.i, align 8
  %65 = load i32, ptr %length_dw.i, align 4
  %inc69.i = add i32 %65, 1
  store i32 %inc69.i, ptr %length_dw.i, align 4
  %arrayidx70.i = getelementptr i32, ptr %64, i32 %65
  %66 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %arrayidx70.i, align 4
  %67 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring, align 8
  %fw_version73.i = getelementptr inbounds %struct.amdgpu_device, ptr %68, i32 0, i32 109, i32 4
  %69 = ptrtoint ptr %fw_version73.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_version73.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 872415231, i32 %70)
  %cmp75.i = icmp ugt i32 %70, 872415231
  br i1 %cmp75.i, label %if.then76.i, label %if.end5.i.if.end93.i_crit_edge

if.end5.i.if.end93.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.then76.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ptr.i, align 8
  %73 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length_dw.i, align 4
  %inc79.i = add i32 %74, 1
  store i32 %inc79.i, ptr %length_dw.i, align 4
  %arrayidx80.i = getelementptr i32, ptr %72, i32 %74
  %75 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx80.i, align 4
  %76 = load ptr, ptr %ptr.i, align 8
  %77 = load i32, ptr %length_dw.i, align 4
  %inc83.i = add i32 %77, 1
  store i32 %inc83.i, ptr %length_dw.i, align 4
  %arrayidx84.i = getelementptr i32, ptr %76, i32 %77
  %78 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx84.i, align 4
  %79 = load ptr, ptr %ptr.i, align 8
  %80 = load i32, ptr %length_dw.i, align 4
  %inc87.i = add i32 %80, 1
  store i32 %inc87.i, ptr %length_dw.i, align 4
  %arrayidx88.i = getelementptr i32, ptr %79, i32 %80
  %81 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %arrayidx88.i, align 4
  %82 = load ptr, ptr %ptr.i, align 8
  %83 = load i32, ptr %length_dw.i, align 4
  %inc91.i = add i32 %83, 1
  store i32 %inc91.i, ptr %length_dw.i, align 4
  %arrayidx92.i = getelementptr i32, ptr %82, i32 %83
  %84 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %arrayidx92.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then76.i, %if.end5.i.if.end93.i_crit_edge
  %85 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ptr.i, align 8
  %87 = ptrtoint ptr %length_dw.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length_dw.i, align 4
  %inc96.i = add i32 %88, 1
  store i32 %inc96.i, ptr %length_dw.i, align 4
  %arrayidx97.i = getelementptr i32, ptr %86, i32 %88
  %89 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 20, ptr %arrayidx97.i, align 4
  %90 = load ptr, ptr %ptr.i, align 8
  %91 = load i32, ptr %length_dw.i, align 4
  %inc100.i = add i32 %91, 1
  store i32 %inc100.i, ptr %length_dw.i, align 4
  %arrayidx101.i = getelementptr i32, ptr %90, i32 %91
  %92 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 83886085, ptr %arrayidx101.i, align 4
  %shr102.i = lshr i64 %add.i, 32
  %conv.i = trunc i64 %shr102.i to i32
  %93 = load ptr, ptr %ptr.i, align 8
  %94 = load i32, ptr %length_dw.i, align 4
  %inc106.i = add i32 %94, 1
  store i32 %inc106.i, ptr %length_dw.i, align 4
  %arrayidx107.i = getelementptr i32, ptr %93, i32 %94
  %95 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv.i, ptr %arrayidx107.i, align 4
  %96 = trunc i64 %add.i to i32
  %conv108.i = and i32 %96, -4096
  %97 = load ptr, ptr %ptr.i, align 8
  %98 = load i32, ptr %length_dw.i, align 4
  %inc111.i = add i32 %98, 1
  store i32 %inc111.i, ptr %length_dw.i, align 4
  %arrayidx112.i = getelementptr i32, ptr %97, i32 %98
  %99 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv108.i, ptr %arrayidx112.i, align 4
  %100 = load ptr, ptr %ptr.i, align 8
  %101 = load i32, ptr %length_dw.i, align 4
  %inc115.i = add i32 %101, 1
  store i32 %inc115.i, ptr %length_dw.i, align 4
  %arrayidx116.i = getelementptr i32, ptr %100, i32 %101
  %102 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %arrayidx116.i, align 4
  %103 = load i32, ptr %length_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %103)
  %cmp1181.i = icmp ult i32 %103, 1024
  br i1 %cmp1181.i, label %if.end93.i.for.body.i_crit_edge, label %if.end93.i.for.end.i_crit_edge

if.end93.i.for.end.i_crit_edge:                   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end93.i.for.body.i_crit_edge:                  ; preds = %if.end93.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end93.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc122.i, %for.body.i.for.body.i_crit_edge ], [ %103, %if.end93.i.for.body.i_crit_edge ]
  %104 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ptr.i, align 8
  %arrayidx121.i = getelementptr i32, ptr %105, i32 %i.02.i
  %106 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %arrayidx121.i, align 4
  %inc122.i = add i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc122.i, 1024
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end93.i.for.end.i_crit_edge
  %107 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %job.i, align 4
  %call123.i = call i32 @amdgpu_job_submit_direct(ptr noundef %108, ptr noundef %ring, ptr noundef nonnull %f.i) #7
  %109 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ring, align 8
  %111 = ptrtoint ptr %f.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %f.i, align 4
  call void @amdgpu_ib_free(ptr noundef %110, ptr noundef nonnull %ib_msg.i, ptr noundef %112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool125.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool125.not.i, label %if.end131.i, label %for.end.i.err.i_crit_edge

for.end.i.err.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end131.i:                                      ; preds = %for.end.i
  %113 = ptrtoint ptr %f.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %f.i, align 4
  %tobool.not.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i, label %if.end131.i.if.end3_crit_edge, label %if.then.i.i

if.end131.i.if.end3_crit_edge:                    ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then.i.i:                                      ; preds = %if.end131.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %114, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %115 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end3_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.i.if.end3_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %if.end3

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i.i) #7
  br label %if.end3

err.i:                                            ; preds = %for.end.i.err.i_crit_edge, %if.end.i.err.i_crit_edge
  %r.0.i = phi i32 [ %call2.i, %if.end.i.err.i_crit_edge ], [ %call123.i, %for.end.i.err.i_crit_edge ]
  %116 = ptrtoint ptr %job.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %job.i, align 4
  call void @amdgpu_job_free(ptr noundef %117) #7
  br label %amdgpu_vce_get_create_msg.exit

amdgpu_vce_get_create_msg.exit:                   ; preds = %err.i, %if.end.amdgpu_vce_get_create_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %r.0.i, %err.i ], [ %call.i, %if.end.amdgpu_vce_get_create_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib_msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #7
  br label %error

if.end3:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end3_crit_edge, %if.end131.i.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib_msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job.i) #7
  %call4 = call fastcc i32 @amdgpu_vce_get_destroy_msg(ptr noundef %ring, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull %fence)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.error_crit_edge

if.end3.error_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fence, align 4
  %call8 = call i32 @dma_fence_wait_timeout(ptr noundef %119, i1 noundef zeroext false, i32 noundef %timeout) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  %120 = call i32 @llvm.smin.i32(i32 %call8, i32 0)
  %spec.select = select i1 %cmp9, i32 -110, i32 %120
  br label %error

error:                                            ; preds = %if.end7, %if.end3.error_crit_edge, %amdgpu_vce_get_create_msg.exit
  %r.0 = phi i32 [ %retval.0.i, %amdgpu_vce_get_create_msg.exit ], [ %call4, %if.end3.error_crit_edge ], [ %spec.select, %if.end7 ]
  %121 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fence, align 4
  %tobool.not.i23 = icmp eq ptr %122, null
  br i1 %tobool.not.i23, label %error.cleanup_crit_edge, label %if.then.i

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %error
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %122, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !148
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %123 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !149
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i24, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !147

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %cleanup

if.then.i.i24:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !150
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i24, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %error.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %r.0, %error.cleanup_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_vce_get_ring_prio(i32 noundef %ring) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ring)
  %switch.selectcmp = icmp eq i32 %ring, 1
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ring)
  %switch.selectcmp3 = icmp eq i32 %ring, 2
  %switch.select4 = select i1 %switch.selectcmp3, i32 2, i32 %switch.select
  ret i32 %switch.select4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_count_emitted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc_with_ib(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_submit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_cs_find_mapping(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !121, !123, !125, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 64, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware344, !3, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 65, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware345, !5, !"__UNIQUE_ID_firmware345", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 66, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware346, !7, !"__UNIQUE_ID_firmware346", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 67, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware347, !9, !"__UNIQUE_ID_firmware347", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 68, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware348, !11, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 70, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware349, !13, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 71, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware350, !15, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 72, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware351, !17, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 73, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware352, !19, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 74, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware353, !21, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 75, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware354, !23, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 76, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware355, !25, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 77, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware356, !27, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 79, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware357, !29, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 80, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware358, !31, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 81, i32 1}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 107, i32 13}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 110, i32 13}
!36 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 113, i32 13}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 116, i32 13}
!40 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 119, i32 13}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 123, i32 13}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 126, i32 13}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 129, i32 13}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 132, i32 13}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 135, i32 13}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 138, i32 13}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 141, i32 13}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 144, i32 13}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 147, i32 13}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 150, i32 13}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 153, i32 13}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 162, i32 3}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @amdgpu_vce_sw_init._entry, !65, !"_entry", i1 false, i1 false}
!71 = !{ptr @amdgpu_vce_sw_init._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 169, i32 3}
!74 = !{ptr @amdgpu_vce_sw_init._entry.21, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @amdgpu_vce_sw_init._entry_ptr.23, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 182, i32 2}
!78 = !{ptr @amdgpu_vce_sw_init._entry.24, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @amdgpu_vce_sw_init._entry_ptr.26, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 191, i32 3}
!82 = !{ptr @amdgpu_vce_sw_init._entry.27, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @amdgpu_vce_sw_init._entry_ptr.29, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @amdgpu_vce_sw_init.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 200, i32 2}
!86 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @amdgpu_vce_sw_init.__key.31, !85, !"__key", i1 false, i1 false}
!88 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @amdgpu_vce_sw_init.__key.33, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 201, i32 2}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 251, i32 3}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 302, i32 3}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @amdgpu_vce_resume._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @amdgpu_vce_resume._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 309, i32 3}
!101 = !{ptr @amdgpu_vce_resume._entry.38, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @amdgpu_vce_resume._entry_ptr.40, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 425, i32 4}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 755, i32 4}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 844, i32 5}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 929, i32 4}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 935, i32 4}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 944, i32 3}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!117 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @amdgpu_bo_reserve._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @amdgpu_bo_reserve._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 623, i32 3}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 707, i32 5}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 724, i32 2}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c", i32 673, i32 3}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i8 0, i8 2}
!143 = !{!"auto-init"}
!144 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!145 = !{i64 2148588512, i64 2148588544, i64 2148588573, i64 2148588607, i64 2148588638, i64 2148588661}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 2148676537}
!149 = !{i64 2148590977, i64 2148591009, i64 2148591038, i64 2148591072, i64 2148591103, i64 2148591126}
!150 = !{i64 2149874310}
!151 = !{i64 2148688829}
!152 = !{i64 1072495, i64 1072519, i64 1072540, i64 1072557, i64 1072574}
!153 = !{i64 2148689055}
