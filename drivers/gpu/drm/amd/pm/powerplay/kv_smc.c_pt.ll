; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/kv_smc.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/kv_smc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hlist_node = type { ptr, ptr }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_kv_notify_message_to_smu(ptr noundef %adev, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %id, 65535
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 148, i32 noundef %and, i32 noundef 0) #2
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %and1 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp2.not = icmp eq i32 %and1, 0
  br i1 %cmp2.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #2
  %inc = add nuw i32 %i.022, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %5 = and i32 %call3, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %5)
  %switch = icmp eq i32 %5, 254
  %spec.select = select i1 %switch, i32 -22, i32 0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_kv_dpm_get_enable_mask(ptr noundef %adev, ptr nocapture noundef writeonly %enable_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 148, i32 noundef 354, i32 noundef 0) #2
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not.i = icmp eq i32 %1, 0
  br i1 %cmp21.not.i, label %entry.amdgpu_kv_notify_message_to_smu.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.amdgpu_kv_notify_message_to_smu.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %amdgpu_kv_notify_message_to_smu.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %and1.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp2.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge

for.body.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %amdgpu_kv_notify_message_to_smu.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #2
  %inc.i = add nuw i32 %i.022.i, 1
  %3 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %4
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge

if.end.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %amdgpu_kv_notify_message_to_smu.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

amdgpu_kv_notify_message_to_smu.exit:             ; preds = %if.end.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge, %for.body.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge, %entry.amdgpu_kv_notify_message_to_smu.exit_crit_edge
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %5 = and i32 %call3.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %5)
  %switch.i = icmp eq i32 %5, 254
  br i1 %switch.i, label %amdgpu_kv_notify_message_to_smu.exit.if.end_crit_edge, label %if.then

amdgpu_kv_notify_message_to_smu.exit.if.end_crit_edge: ; preds = %amdgpu_kv_notify_message_to_smu.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %amdgpu_kv_notify_message_to_smu.exit
  call void @__sanitizer_cov_trace_pc() #4
  %smc_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 36
  %6 = ptrtoint ptr %smc_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smc_rreg, align 4
  %call1 = tail call i32 %7(ptr noundef %adev, i32 noundef -2147483544) #2
  %8 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1, ptr %enable_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %amdgpu_kv_notify_message_to_smu.exit.if.end_crit_edge
  %spec.select.i = phi i32 [ 0, %if.then ], [ -22, %amdgpu_kv_notify_message_to_smu.exit.if.end_crit_edge ]
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_kv_send_msg_to_smc_with_parameter(ptr noundef %adev, i16 noundef zeroext %msg, i32 noundef %parameter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 164, i32 noundef %parameter, i32 noundef 0) #2
  %conv = zext i16 %msg to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 148, i32 noundef %conv, i32 noundef 0) #2
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not.i = icmp eq i32 %1, 0
  br i1 %cmp21.not.i, label %entry.amdgpu_kv_notify_message_to_smu.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.amdgpu_kv_notify_message_to_smu.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %amdgpu_kv_notify_message_to_smu.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %and1.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp2.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge

for.body.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %amdgpu_kv_notify_message_to_smu.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #2
  %inc.i = add nuw i32 %i.022.i, 1
  %3 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %4
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge

if.end.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %amdgpu_kv_notify_message_to_smu.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

amdgpu_kv_notify_message_to_smu.exit:             ; preds = %if.end.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge, %for.body.i.amdgpu_kv_notify_message_to_smu.exit_crit_edge, %entry.amdgpu_kv_notify_message_to_smu.exit_crit_edge
  %call3.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %5 = and i32 %call3.i, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %5)
  %switch.i = icmp eq i32 %5, 254
  %spec.select.i = select i1 %switch.i, i32 -22, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_kv_read_smc_sram_dword(ptr noundef %adev, i32 noundef %smc_address, ptr nocapture noundef writeonly %value, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %smc_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %add.i = add i32 %smc_address, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp.i = icmp ugt i32 %add.i, %limit
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %smc_address, i32 noundef 0) #2
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 144, i32 noundef 0) #2
  %and3.i = and i32 %call.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 144, i32 noundef %and3.i, i32 noundef 0) #2
  %call1 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 129, i32 noundef 0) #2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_kv_smc_dpm_enable(ptr noundef %adev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 148, i32 noundef 334, i32 noundef 0) #2
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not.i = icmp eq i32 %1, 0
  br i1 %cmp21.not.i, label %if.then.return_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %and1.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp2.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #2
  %inc.i = add nuw i32 %i.022.i, 1
  %3 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %4
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.else:                                          ; preds = %entry
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 148, i32 noundef 335, i32 noundef 0) #2
  %usec_timeout.i3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %5 = ptrtoint ptr %usec_timeout.i3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.not.i4 = icmp eq i32 %6, 0
  br i1 %cmp21.not.i4, label %if.else.return_crit_edge, label %if.else.for.body.i9_crit_edge

if.else.for.body.i9_crit_edge:                    ; preds = %if.else
  br label %for.body.i9

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

for.body.i9:                                      ; preds = %if.end.i12.for.body.i9_crit_edge, %if.else.for.body.i9_crit_edge
  %i.022.i5 = phi i32 [ %inc.i10, %if.end.i12.for.body.i9_crit_edge ], [ 0, %if.else.for.body.i9_crit_edge ]
  %call.i6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %and1.i7 = and i32 %call.i6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i7)
  %cmp2.not.i8 = icmp eq i32 %and1.i7, 0
  br i1 %cmp2.not.i8, label %if.end.i12, label %for.body.i9.return_crit_edge

for.body.i9.return_crit_edge:                     ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.i12:                                       ; preds = %for.body.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #2
  %inc.i10 = add nuw i32 %i.022.i5, 1
  %8 = ptrtoint ptr %usec_timeout.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i3, align 8
  %cmp.i11 = icmp ult i32 %inc.i10, %9
  br i1 %cmp.i11, label %if.end.i12.for.body.i9_crit_edge, label %if.end.i12.return_crit_edge

if.end.i12.return_crit_edge:                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.i12.for.body.i9_crit_edge:                 ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i9

return:                                           ; preds = %if.end.i12.return_crit_edge, %for.body.i9.return_crit_edge, %if.else.return_crit_edge, %if.end.i.return_crit_edge, %for.body.i.return_crit_edge, %if.then.return_crit_edge
  %call3.i13 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %10 = and i32 %call3.i13, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %10)
  %switch.i14 = icmp eq i32 %10, 254
  %spec.select.i15 = select i1 %switch.i14, i32 -22, i32 0
  ret i32 %spec.select.i15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_kv_smc_bapm_enable(ptr noundef %adev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 148, i32 noundef 288, i32 noundef 0) #2
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not.i = icmp eq i32 %1, 0
  br i1 %cmp21.not.i, label %if.then.return_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %and1.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp2.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.return_crit_edge

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #2
  %inc.i = add nuw i32 %i.022.i, 1
  %3 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %4
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.else:                                          ; preds = %entry
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 148, i32 noundef 289, i32 noundef 0) #2
  %usec_timeout.i3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 11
  %5 = ptrtoint ptr %usec_timeout.i3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.not.i4 = icmp eq i32 %6, 0
  br i1 %cmp21.not.i4, label %if.else.return_crit_edge, label %if.else.for.body.i9_crit_edge

if.else.for.body.i9_crit_edge:                    ; preds = %if.else
  br label %for.body.i9

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

for.body.i9:                                      ; preds = %if.end.i12.for.body.i9_crit_edge, %if.else.for.body.i9_crit_edge
  %i.022.i5 = phi i32 [ %inc.i10, %if.end.i12.for.body.i9_crit_edge ], [ 0, %if.else.for.body.i9_crit_edge ]
  %call.i6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %and1.i7 = and i32 %call.i6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i7)
  %cmp2.not.i8 = icmp eq i32 %and1.i7, 0
  br i1 %cmp2.not.i8, label %if.end.i12, label %for.body.i9.return_crit_edge

for.body.i9.return_crit_edge:                     ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.i12:                                       ; preds = %for.body.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #2
  %inc.i10 = add nuw i32 %i.022.i5, 1
  %8 = ptrtoint ptr %usec_timeout.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i3, align 8
  %cmp.i11 = icmp ult i32 %inc.i10, %9
  br i1 %cmp.i11, label %if.end.i12.for.body.i9_crit_edge, label %if.end.i12.return_crit_edge

if.end.i12.return_crit_edge:                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end.i12.for.body.i9_crit_edge:                 ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i9

return:                                           ; preds = %if.end.i12.return_crit_edge, %for.body.i9.return_crit_edge, %if.else.return_crit_edge, %if.end.i.return_crit_edge, %for.body.i.return_crit_edge, %if.then.return_crit_edge
  %call3.i13 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 149, i32 noundef 0) #2
  %10 = and i32 %call3.i13, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %10)
  %switch.i14 = icmp eq i32 %10, 254
  %spec.select.i15 = select i1 %switch.i14, i32 -22, i32 0
  ret i32 %spec.select.i15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_kv_copy_bytes_to_smc(ptr noundef %adev, i32 noundef %smc_start_address, ptr nocapture noundef readonly %src, i32 noundef %byte_count, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %byte_count, %smc_start_address
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %limit)
  %cmp = icmp ugt i32 %add, %limit
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %smc_start_address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %if.end.if.end29_crit_edge, label %if.then2

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29

if.then2:                                         ; preds = %if.end
  %sub = and i32 %smc_start_address, -4
  %add.i = or i32 %smc_start_address, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %limit)
  %cmp.i = icmp ugt i32 %add.i, %limit
  br i1 %cmp.i, label %if.then2.cleanup_crit_edge, label %if.end20

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end20:                                         ; preds = %if.then2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %sub, i32 noundef 0) #2
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 144, i32 noundef 0) #2
  %and3.i = and i32 %call.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 144, i32 noundef %and3.i, i32 noundef 0) #2
  %call5 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 129, i32 noundef 0) #2
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end20.if.else.3_crit_edge [
    i32 1, label %if.else.1
    i32 2, label %if.end20.if.else.2_crit_edge
  ]

if.end20.if.else.2_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.2

if.end20.if.else.3_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.3

if.else.1:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count)
  %cmp9.not.1 = icmp eq i32 %byte_count, 0
  br i1 %cmp9.not.1, label %if.else.1.if.else.3.thread_crit_edge, label %if.then10.1

if.else.1.if.else.3.thread_crit_edge:             ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.3.thread

if.then10.1:                                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr.1 = getelementptr i8, ptr %src, i32 1
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %src, align 1
  %conv.1 = zext i8 %2 to i32
  %dec13.1 = add i32 %byte_count, -1
  br label %if.else.2

if.else.2:                                        ; preds = %if.then10.1, %if.end20.if.else.2_crit_edge
  %mask.1.1225 = phi i32 [ 16711680, %if.then10.1 ], [ 16776960, %if.end20.if.else.2_crit_edge ]
  %data.1.1224 = phi i32 [ %conv.1, %if.then10.1 ], [ 0, %if.end20.if.else.2_crit_edge ]
  %byte_count.addr.1.1223 = phi i32 [ %dec13.1, %if.then10.1 ], [ %byte_count, %if.end20.if.else.2_crit_edge ]
  %src.addr.1.1222 = phi ptr [ %incdec.ptr.1, %if.then10.1 ], [ %src, %if.end20.if.else.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.1.1223)
  %cmp9.not.2 = icmp eq i32 %byte_count.addr.1.1223, 0
  br i1 %cmp9.not.2, label %if.else.2.if.else.3.thread_crit_edge, label %if.then10.2

if.else.2.if.else.3.thread_crit_edge:             ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.3.thread

if.then10.2:                                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #4
  %shl11.2 = shl nuw nsw i32 %data.1.1224, 8
  %incdec.ptr.2 = getelementptr i8, ptr %src.addr.1.1222, i32 1
  %3 = ptrtoint ptr %src.addr.1.1222 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %src.addr.1.1222, align 1
  %conv.2 = zext i8 %4 to i32
  %add12.2 = or i32 %shl11.2, %conv.2
  %dec13.2 = add i32 %byte_count.addr.1.1223, -1
  br label %if.else.3

if.else.3.thread:                                 ; preds = %if.else.2.if.else.3.thread_crit_edge, %if.else.1.if.else.3.thread_crit_edge
  %src.addr.1.1222242 = phi ptr [ %src.addr.1.1222, %if.else.2.if.else.3.thread_crit_edge ], [ %src, %if.else.1.if.else.3.thread_crit_edge ]
  %data.1.1224241 = phi i32 [ %data.1.1224, %if.else.2.if.else.3.thread_crit_edge ], [ 0, %if.else.1.if.else.3.thread_crit_edge ]
  %mask.1.1225240 = phi i32 [ %mask.1.1225, %if.else.2.if.else.3.thread_crit_edge ], [ 16776960, %if.else.1.if.else.3.thread_crit_edge ]
  %shl16.2 = shl nuw nsw i32 %data.1.1224241, 8
  %or18.2 = or i32 %mask.1.1225240, 255
  br label %if.else15.3

if.else.3:                                        ; preds = %if.then10.2, %if.end20.if.else.3_crit_edge
  %mask.1.2234 = phi i32 [ %mask.1.1225, %if.then10.2 ], [ 16777215, %if.end20.if.else.3_crit_edge ]
  %data.1.2233 = phi i32 [ %add12.2, %if.then10.2 ], [ 0, %if.end20.if.else.3_crit_edge ]
  %byte_count.addr.1.2232 = phi i32 [ %dec13.2, %if.then10.2 ], [ %byte_count, %if.end20.if.else.3_crit_edge ]
  %src.addr.1.2231 = phi ptr [ %incdec.ptr.2, %if.then10.2 ], [ %src, %if.end20.if.else.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.1.2232)
  %cmp9.not.3 = icmp eq i32 %byte_count.addr.1.2232, 0
  br i1 %cmp9.not.3, label %if.else.3.if.else15.3_crit_edge, label %if.then10.3

if.else.3.if.else15.3_crit_edge:                  ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else15.3

if.then10.3:                                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #4
  %shl11.3 = shl nsw i32 %data.1.2233, 8
  %incdec.ptr.3 = getelementptr i8, ptr %src.addr.1.2231, i32 1
  %5 = ptrtoint ptr %src.addr.1.2231 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %src.addr.1.2231, align 1
  %conv.3 = zext i8 %6 to i32
  %add12.3 = or i32 %shl11.3, %conv.3
  %dec13.3 = add i32 %byte_count.addr.1.2232, -1
  %shl14.3 = shl nuw i32 %mask.1.2234, 8
  br label %if.end27

if.else15.3:                                      ; preds = %if.else.3.if.else15.3_crit_edge, %if.else.3.thread
  %src.addr.1.2231250 = phi ptr [ %src.addr.1.1222242, %if.else.3.thread ], [ %src.addr.1.2231, %if.else.3.if.else15.3_crit_edge ]
  %data.1.2233249 = phi i32 [ %shl16.2, %if.else.3.thread ], [ %data.1.2233, %if.else.3.if.else15.3_crit_edge ]
  %mask.1.2234248 = phi i32 [ %or18.2, %if.else.3.thread ], [ %mask.1.2234, %if.else.3.if.else15.3_crit_edge ]
  %shl16.3 = shl nsw i32 %data.1.2233249, 8
  %shl17.3 = shl i32 %mask.1.2234248, 8
  %or18.3 = or i32 %shl17.3, 255
  br label %if.end27

if.end27:                                         ; preds = %if.else15.3, %if.then10.3
  %src.addr.1.3 = phi ptr [ %incdec.ptr.3, %if.then10.3 ], [ %src.addr.1.2231250, %if.else15.3 ]
  %byte_count.addr.1.3 = phi i32 [ %dec13.3, %if.then10.3 ], [ 0, %if.else15.3 ]
  %data.1.3 = phi i32 [ %add12.3, %if.then10.3 ], [ %shl16.3, %if.else15.3 ]
  %mask.1.3 = phi i32 [ %shl14.3, %if.then10.3 ], [ %or18.3, %if.else15.3 ]
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %sub, i32 noundef 0) #2
  %call.i154 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 144, i32 noundef 0) #2
  %and3.i155 = and i32 %call.i154, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 144, i32 noundef %and3.i155, i32 noundef 0) #2
  %and22 = and i32 %mask.1.3, %call5
  %or23 = or i32 %and22, %data.1.3
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 129, i32 noundef %or23, i32 noundef 0) #2
  %add28 = add i32 %sub, 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end.if.end29_crit_edge
  %src.addr.2 = phi ptr [ %src.addr.1.3, %if.end27 ], [ %src, %if.end.if.end29_crit_edge ]
  %byte_count.addr.2 = phi i32 [ %byte_count.addr.1.3, %if.end27 ], [ %byte_count, %if.end.if.end29_crit_edge ]
  %addr.0 = phi i32 [ %add28, %if.end27 ], [ %smc_start_address, %if.end.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %byte_count.addr.2)
  %cmp31205 = icmp ugt i32 %byte_count.addr.2, 3
  br i1 %cmp31205, label %while.body33.preheader, label %if.end29.while.end53_crit_edge

if.end29.while.end53_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end53

while.body33.preheader:                           ; preds = %if.end29
  %7 = and i32 %addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp ne i32 %7, 0
  br label %while.body33

while.body33:                                     ; preds = %if.end50.while.body33_crit_edge, %while.body33.preheader
  %addr.1208 = phi i32 [ %add52, %if.end50.while.body33_crit_edge ], [ %addr.0, %while.body33.preheader ]
  %byte_count.addr.3207 = phi i32 [ %sub51, %if.end50.while.body33_crit_edge ], [ %byte_count.addr.2, %while.body33.preheader ]
  %src.addr.3206 = phi ptr [ %add.ptr, %if.end50.while.body33_crit_edge ], [ %src.addr.2, %while.body33.preheader ]
  %add.i159 = add i32 %addr.1208, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i159, i32 %limit)
  %cmp.i160 = icmp ugt i32 %add.i159, %limit
  %or.cond.i = or i1 %tobool.not.i, %cmp.i160
  br i1 %or.cond.i, label %while.body33.cleanup_crit_edge, label %if.end50

while.body33.cleanup_crit_edge:                   ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end50:                                         ; preds = %while.body33
  %arrayidx44 = getelementptr i8, ptr %src.addr.3206, i32 3
  %8 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx44, align 1
  %arrayidx40 = getelementptr i8, ptr %src.addr.3206, i32 2
  %10 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx40, align 1
  %arrayidx36 = getelementptr i8, ptr %src.addr.3206, i32 1
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx36, align 1
  %14 = ptrtoint ptr %src.addr.3206 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %src.addr.3206, align 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %addr.1208, i32 noundef 0) #2
  %call.i161 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 144, i32 noundef 0) #2
  %and3.i162 = and i32 %call.i161, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 144, i32 noundef %and3.i162, i32 noundef 0) #2
  %conv34 = zext i8 %15 to i32
  %shl35 = shl nuw i32 %conv34, 24
  %conv37 = zext i8 %13 to i32
  %shl38 = shl nuw nsw i32 %conv37, 16
  %conv41 = zext i8 %11 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %conv45 = zext i8 %9 to i32
  %add39 = or i32 %shl42, %conv45
  %add43 = or i32 %add39, %shl38
  %add46 = or i32 %add43, %shl35
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 129, i32 noundef %add46, i32 noundef 0) #2
  %add.ptr = getelementptr i8, ptr %src.addr.3206, i32 4
  %sub51 = add i32 %byte_count.addr.3207, -4
  %add52 = add i32 %addr.1208, 4
  %cmp31 = icmp ugt i32 %sub51, 3
  br i1 %cmp31, label %if.end50.while.body33_crit_edge, label %if.end50.while.end53_crit_edge

if.end50.while.end53_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end53

if.end50.while.body33_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body33

while.end53:                                      ; preds = %if.end50.while.end53_crit_edge, %if.end29.while.end53_crit_edge
  %src.addr.3.lcssa = phi ptr [ %src.addr.2, %if.end29.while.end53_crit_edge ], [ %add.ptr, %if.end50.while.end53_crit_edge ]
  %byte_count.addr.3.lcssa = phi i32 [ %byte_count.addr.2, %if.end29.while.end53_crit_edge ], [ %sub51, %if.end50.while.end53_crit_edge ]
  %addr.1.lcssa = phi i32 [ %addr.0, %if.end29.while.end53_crit_edge ], [ %add52, %if.end50.while.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %byte_count.addr.3.lcssa)
  %cmp54.not = icmp eq i32 %byte_count.addr.3.lcssa, 0
  br i1 %cmp54.not, label %while.end53.cleanup_crit_edge, label %if.then56

while.end53.cleanup_crit_edge:                    ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then56:                                        ; preds = %while.end53
  %and.i166 = and i32 %addr.1.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %tobool.not.i167 = icmp ne i32 %and.i166, 0
  %add.i168 = add i32 %addr.1.lcssa, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i168, i32 %limit)
  %cmp.i169 = icmp ugt i32 %add.i168, %limit
  %or.cond.i170 = or i1 %tobool.not.i167, %cmp.i169
  br i1 %or.cond.i170, label %if.then56.cleanup_crit_edge, label %while.body66.preheader

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

while.body66.preheader:                           ; preds = %if.then56
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %addr.1.lcssa, i32 noundef 0) #2
  %call.i171 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 144, i32 noundef 0) #2
  %and3.i172 = and i32 %call.i171, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 144, i32 noundef %and3.i172, i32 noundef 0) #2
  %call61 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 129, i32 noundef 0) #2
  %.neg = mul nsw i32 %byte_count.addr.3.lcssa, -8
  %mul = add nsw i32 %.neg, 32
  br label %while.body66

while.body66:                                     ; preds = %while.body66.while.body66_crit_edge, %while.body66.preheader
  %data.2214 = phi i32 [ %add70, %while.body66.while.body66_crit_edge ], [ 0, %while.body66.preheader ]
  %byte_count.addr.4213 = phi i32 [ %dec71, %while.body66.while.body66_crit_edge ], [ %byte_count.addr.3.lcssa, %while.body66.preheader ]
  %src.addr.4212 = phi ptr [ %incdec.ptr68, %while.body66.while.body66_crit_edge ], [ %src.addr.3.lcssa, %while.body66.preheader ]
  %shl67 = shl i32 %data.2214, 8
  %incdec.ptr68 = getelementptr i8, ptr %src.addr.4212, i32 1
  %16 = ptrtoint ptr %src.addr.4212 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %src.addr.4212, align 1
  %conv69 = zext i8 %17 to i32
  %add70 = or i32 %shl67, %conv69
  %dec71 = add i32 %byte_count.addr.4213, -1
  %cmp64.not = icmp eq i32 %dec71, 0
  br i1 %cmp64.not, label %if.end80, label %while.body66.while.body66_crit_edge

while.body66.while.body66_crit_edge:              ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body66

if.end80:                                         ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 128, i32 noundef %addr.1.lcssa, i32 noundef 0) #2
  %call.i181 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 144, i32 noundef 0) #2
  %and3.i182 = and i32 %call.i181, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 144, i32 noundef %and3.i182, i32 noundef 0) #2
  %shl73 = shl i32 %add70, %mul
  %shl74 = shl nsw i32 -1, %mul
  %neg = xor i32 %shl74, -1
  %and75 = and i32 %call61, %neg
  %or76 = or i32 %shl73, %and75
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 129, i32 noundef %or76, i32 noundef 0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then56.cleanup_crit_edge, %while.end53.cleanup_crit_edge, %while.body33.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end80 ], [ 0, %while.end53.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -22, %if.then56.cleanup_crit_edge ], [ -22, %while.body33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
