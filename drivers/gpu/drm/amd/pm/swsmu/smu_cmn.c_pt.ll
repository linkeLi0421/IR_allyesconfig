; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.95, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.94], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.94 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.95 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.106, i32, i32, i32, i32 }
%union.anon.106 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmn2asic_msg_mapping = type { i32, i32, i32 }
%struct.cmn2asic_mapping = type { i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.metrics_table_header = type { i16, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"features high: 0x%08x low: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%-2s. %-20s  %-3s : %-s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Feature\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Bit\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"State\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%02d. %-20s (%2d) : %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@smu_cmn_get_metrics_table_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 985, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: Failed to export SMU metrics table!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"smu_cmn_get_metrics_table_locked\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smu_cmn_get_metrics_table_locked._entry_ptr = internal global ptr @smu_cmn_get_metrics_table_locked._entry, section ".printk_index", align 4
@smu_cmn_set_mp1_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 1078, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: [PrepareMp1] Failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smu_cmn_set_mp1_state\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@smu_cmn_set_mp1_state._entry_ptr = internal global ptr @smu_cmn_set_mp1_state._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__smu_cmn_reg_print_error._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.__smu_cmn_reg_print_error = private unnamed_addr constant [26 x i8] c"__smu_cmn_reg_print_error\00", align 1
@__smu_cmn_reg_print_error._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @__func__.__smu_cmn_reg_print_error, ptr @.str, i32 147, ptr @.str.16, ptr @.str.13 }, align 1
@.str.18 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"amdgpu: SMU: I'm not done with your previous command: SMN_C2PMSG_66:0x%08X SMN_C2PMSG_82:0x%08X\00", [32 x i8] zeroinitializer }, align 32
@__smu_cmn_reg_print_error._entry_ptr = internal global ptr @__smu_cmn_reg_print_error._entry, section ".printk_index", align 4
@__smu_cmn_reg_print_error._rs.19 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smu_cmn_reg_print_error._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @__func__.__smu_cmn_reg_print_error, ptr @.str, i32 163, ptr @.str.16, ptr @.str.13 }, align 1
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: SMU: unknown command: index:%d param:0x%08X message:%s\00", [33 x i8] zeroinitializer }, align 32
@__smu_cmn_reg_print_error._entry_ptr.22 = internal global ptr @__smu_cmn_reg_print_error._entry.20, section ".printk_index", align 4
@__smu_cmn_reg_print_error._rs.23 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smu_cmn_reg_print_error._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @__func__.__smu_cmn_reg_print_error, ptr @.str, i32 168, ptr @.str.16, ptr @.str.13 }, align 1
@.str.25 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"amdgpu: SMU: valid command, bad prerequisites: index:%d param:0x%08X message:%s\00", [48 x i8] zeroinitializer }, align 32
@__smu_cmn_reg_print_error._entry_ptr.26 = internal global ptr @__smu_cmn_reg_print_error._entry.24, section ".printk_index", align 4
@__smu_cmn_reg_print_error._rs.27 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smu_cmn_reg_print_error._entry.28 = internal constant %struct.pi_entry { ptr @.str.29, ptr @__func__.__smu_cmn_reg_print_error, ptr @.str, i32 173, ptr @.str.16, ptr @.str.13 }, align 1
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"amdgpu: SMU: I'm very busy for your command: index:%d param:0x%08X message:%s\00", [50 x i8] zeroinitializer }, align 32
@__smu_cmn_reg_print_error._entry_ptr.30 = internal global ptr @__smu_cmn_reg_print_error._entry.28, section ".printk_index", align 4
@__smu_cmn_reg_print_error._rs.31 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smu_cmn_reg_print_error._entry.32 = internal constant %struct.pi_entry { ptr @.str.33, ptr @__func__.__smu_cmn_reg_print_error, ptr @.str, i32 177, ptr @.str.16, ptr @.str.13 }, align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu: SMU: I'm debugging!\00", [36 x i8] zeroinitializer }, align 32
@__smu_cmn_reg_print_error._entry_ptr.34 = internal global ptr @__smu_cmn_reg_print_error._entry.32, section ".printk_index", align 4
@__smu_cmn_reg_print_error._rs.35 = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__smu_cmn_reg_print_error._entry.36 = internal constant %struct.pi_entry { ptr @.str.37, ptr @__func__.__smu_cmn_reg_print_error, ptr @.str, i32 182, ptr @.str.16, ptr @.str.13 }, align 1
@.str.37 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"amdgpu: SMU: response:0x%08X for index:%d param:0x%08X message:%s?\00", [61 x i8] zeroinitializer }, align 32
@__smu_cmn_reg_print_error._entry_ptr.38 = internal global ptr @__smu_cmn_reg_print_error._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown smu message\00", [44 x i8] zeroinitializer }, align 32
@__smu_message_names = internal unnamed_addr constant [207 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246], align 4
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TestMessage\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GetSmuVersion\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GetDriverIfVersion\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SetAllowedFeaturesMaskLow\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SetAllowedFeaturesMaskHigh\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EnableAllSmuFeatures\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DisableAllSmuFeatures\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EnableSmuFeaturesLow\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EnableSmuFeaturesHigh\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DisableSmuFeaturesLow\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DisableSmuFeaturesHigh\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetEnabledSmuFeatures\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GetEnabledSmuFeaturesLow\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GetEnabledSmuFeaturesHigh\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SetWorkloadMask\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SetPptLimit\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SetDriverDramAddrHigh\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SetDriverDramAddrLow\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SetToolsDramAddrHigh\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SetToolsDramAddrLow\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TransferTableSmu2Dram\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TransferTableDram2Smu\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UseDefaultPPTable\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UseBackupPPTable\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RunBtc\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RequestI2CBus\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ReleaseI2CBus\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SetFloorSocVoltage\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SoftReset\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"StartBacoMonitor\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CancelBacoMonitor\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EnterBaco\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetSoftMinByFreq\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetSoftMaxByFreq\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetHardMinByFreq\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetHardMaxByFreq\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GetMinDpmFreq\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GetMaxDpmFreq\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GetDpmFreqByIndex\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GetDpmClockFreq\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GetSsVoltageByDpm\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetMemoryChannelConfig\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SetGeminiMode\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SetGeminiApertureHigh\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SetGeminiApertureLow\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SetMinLinkDpmByIndex\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OverridePcieParameters\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OverDriveSetPercentage\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetMinDeepSleepDcefclk\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ReenableAcDcInterrupt\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NotifyPowerSource\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SetUclkFastSwitch\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SetUclkDownHyst\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GfxDeviceDriverReset\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GetCurrentRpm\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SetVideoFps\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SetTjMax\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SetFanTemperatureTarget\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PrepareMp1ForUnload\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DramLogSetDramAddrHigh\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DramLogSetDramAddrLow\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DramLogSetDramSize\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SetFanMaxRpm\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SetFanMinPwm\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ConfigureGfxDidt\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NumOfDisplays\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RemoveMargins\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ReadSerialNumTop32\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ReadSerialNumBottom32\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SetSystemVirtualDramAddrHigh\00", [35 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SetSystemVirtualDramAddrLow\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WaflTest\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SetFclkGfxClkRatio\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AllowGfxOff\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DisallowGfxOff\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GetPptLimit\00", [20 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GetDcModeMaxDpmFreq\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GetDebugData\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SetXgmiMode\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RunAfllBtc\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ExitBaco\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PrepareMp1ForReset\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PrepareMp1ForShutdown\00", [42 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SetMGpuFanBoostLimitRpm\00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GetAVFSVoltageByDpm\00", [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PowerUpVcn\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PowerDownVcn\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PowerUpJpeg\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PowerDownJpeg\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BacoAudioD3PME\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ArmD3\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RunDcBtc\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RunGfxDcBtc\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RunSocDcBtc\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetMemoryChannelEnable\00", [41 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SetDfSwitchType\00", [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GetVoltageByDpm\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GetVoltageByDpmOverdrive\00", [39 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PowerUpVcn0\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PowerDownVcn0\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PowerUpVcn1\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PowerDownVcn1\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PowerUpGfx\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PowerDownIspByTile\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PowerUpIspByTile\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PowerDownSdma\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PowerUpSdma\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetHardMinIspclkByFreq\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SetHardMinVcn\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SetAllowFclkSwitch\00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SetMinVideoGfxclkFreq\00", [42 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ActiveProcessNotify\00", [44 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SetCustomPolicy\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QueryPowerLimit\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SetGfxclkOverdriveByFreqVid\00", [36 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetHardMinDcfclkByFreq\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetHardMinSocclkByFreq\00", [41 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ControlIgpuATS\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SetMinVideoFclkFreq\00", [44 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SetMinDeepSleepDcfclk\00", [42 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ForcePowerDownGfx\00", [46 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetPhyclkVoltageByFreq\00", [41 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetDppclkVoltageByFreq\00", [41 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SetSoftMinVcn\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EnablePostCode\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"GetGfxclkFrequency\00", [45 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GetFclkFrequency\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetMinGfxclkFrequency\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetMaxGfxclkFrequency\00", [42 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SetGfxCGPG\00", [21 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetSoftMaxGfxClk\00", [47 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetHardMinGfxClk\00", [47 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetSoftMaxSocclkByFreq\00", [41 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SetSoftMaxFclkByFreq\00", [43 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SetSoftMaxVcn\00", [18 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PowerGateMmHub\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UpdatePmeRestore\00", [47 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GpuChangeState\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SetPowerLimitPercentage\00", [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ForceGfxContentSave\00", [44 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EnableTmdp48MHzRefclkPwrDown\00", [35 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PowerGateAtHub\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetSoftMinJpeg\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SetHardMinFclkByFreq\00", [43 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFCstateControl\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GmiPwrDnControl\00", [16 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spare\00", [26 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SetNumBadHbmPagesRetired\00", [39 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GetGmiPwrDnHyst\00", [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SetGmiPwrDnHyst\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EnterGfxoff\00", [20 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ExitGfxoff\00", [21 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SetExecuteDMATest\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DAL_DISABLE_DUMMY_PSTATE_CHANGE\00", [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DAL_ENABLE_DUMMY_PSTATE_CHANGE\00", [33 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SET_DRIVER_DUMMY_TABLE_DRAM_ADDR_HIGH\00", [58 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SET_DRIVER_DUMMY_TABLE_DRAM_ADDR_LOW\00", [59 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GET_UMC_FW_WA\00", [18 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mode1Reset\00", [21 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RlcPowerNotify\00", [17 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SetHardMinIspiclkByFreq\00", [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SetHardMinIspxclkByFreq\00", [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetSoftMinSocclkByFreq\00", [41 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PowerUpCvip\00", [20 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PowerDownCvip\00", [18 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EnableGfxOff\00", [19 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetSoftMinGfxclk\00", [47 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetSoftMinFclk\00", [17 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GetThermalLimit\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetCurrentTemperature\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GetCurrentPower\00", [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GetCurrentVoltage\00", [46 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GetCurrentCurrent\00", [46 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetAverageCpuActivity\00", [42 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetAverageGfxActivity\00", [42 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GetAveragePower\00", [16 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetAverageTemperature\00", [42 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SetAveragePowerTimeConstant\00", [36 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SetAverageActivityTimeConstant\00", [33 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SetAverageTemperatureTimeConstant\00", [62 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SetMitigationEndHysteresis\00", [37 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GetCurrentFreq\00", [17 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SetReducedPptLimit\00", [45 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetReducedThermalLimit\00", [41 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DramLogSetDramAddr\00", [45 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"StartDramLogging\00", [47 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"StopDramLogging\00", [16 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetSoftMinCclk\00", [17 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetSoftMaxCclk\00", [17 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SetGpoFeaturePMask\00", [45 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DisallowGpo\00", [20 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enable2ndUSB20Port\00", [45 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RequestActiveWgp\00", [47 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SetFastPPTLimit\00", [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SetSlowPPTLimit\00", [16 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GetFastPPTLimit\00", [16 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GetSlowPPTLimit\00", [16 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EnableDeterminism\00", [46 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DisableDeterminism\00", [45 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetUclkDpmMode\00", [17 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LightSBR\00", [23 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GfxDriverResetRecovery\00", [41 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BoardPowerCalibration\00", [42 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RequestGfxclk\00", [18 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ForceGfxVid\00", [20 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UnforceGfxVid\00", [18 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HeavySBR\00", [23 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown smu feature\00", [44 x i8] zeroinitializer }, align 32
@__smu_feature_names = internal unnamed_addr constant [95 x ptr] [ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342], align 4
@.str.248 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DPM_PREFETCHER\00", [17 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DPM_GFXCLK\00", [21 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DPM_UCLK\00", [23 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DPM_SOCCLK\00", [21 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DPM_UVD\00", [24 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DPM_VCE\00", [24 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DPM_LCLK\00", [23 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ULV\00", [28 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DPM_MP0CLK\00", [21 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DPM_LINK\00", [23 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DPM_DCEFCLK\00", [20 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DPM_XGMI\00", [23 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DS_GFXCLK\00", [22 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DS_SOCCLK\00", [22 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DS_LCLK\00", [24 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PPT\00", [28 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDC\00", [28 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"THERMAL\00", [24 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GFX_PER_CU_CG\00", [18 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DATA_CALCULATIONS\00", [46 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RM\00", [29 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DS_DCEFCLK\00", [21 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ACDC\00", [27 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VR0HOT\00", [25 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VR1HOT\00", [25 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FW_CTF\00", [25 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LED_DISPLAY\00", [20 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FAN_CONTROL\00", [20 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GFX_EDC\00", [24 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GFXOFF\00", [25 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CG\00", [29 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DPM_FCLK\00", [23 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DS_FCLK\00", [24 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DS_MP1CLK\00", [22 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DS_MP0CLK\00", [22 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XGMI_PER_LINK_PWR_DWN\00", [42 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DPM_GFX_PACE\00", [19 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MEM_VDDCI_SCALING\00", [46 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MEM_MVDD_SCALING\00", [47 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DS_UCLK\00", [24 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GFX_ULV\00", [24 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FW_DSTATE\00", [22 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BACO\00", [27 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCN_PG\00", [25 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MM_DPM_PG\00", [22 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"JPEG_PG\00", [24 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USB_PG\00", [25 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RSMU_SMN_CG\00", [20 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APCC_PLUS\00", [22 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GTHR\00", [27 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GFX_DCS\00", [24 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GFX_SS\00", [25 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUT_OF_BAND_MONITOR\00", [44 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TEMP_DEPENDENT_VMIN\00", [44 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MMHUB_PG\00", [23 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ATHUB_PG\00", [23 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APCC_DFLL\00", [22 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DF_CSTATE\00", [22 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DPM_GFX_GPO\00", [20 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WAFL_CG\00", [24 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CCLK_DPM\00", [23 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FAN_CONTROLLER\00", [17 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VCN_DPM\00", [24 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LCLK_DPM\00", [23 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SHUBCLK_DPM\00", [20 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DCFCLK_DPM\00", [21 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DS_DCFCLK\00", [22 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S0I2\00", [27 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SMU_LOW_POWER\00", [18 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GFX_DEM\00", [24 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PSI\00", [28 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PROCHOT\00", [24 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPUOFF\00", [25 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STAPM\00", [26 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"S0I3\00", [27 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DF_CSTATES\00", [21 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PERF_LIMIT\00", [21 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CORE_DLDO\00", [22 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RSMU_LOW_POWER\00", [17 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SMN_LOW_POWER\00", [18 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"THM_LOW_POWER\00", [18 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMUIO_LOW_POWER\00", [16 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MP1_LOW_POWER\00", [18 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DS_VCN\00", [25 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CPPC\00", [27 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OS_CSTATES\00", [21 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ISP_DPM\00", [24 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"A55_DPM\00", [24 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CVIP_DSP_DPM\00", [19 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MSMU_LOW_POWER\00", [17 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FUSE_CG\00", [24 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MP1_CG\00", [25 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SMUIO_CG\00", [23 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"THM_CG\00", [25 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLK_CG\00", [25 x i8] zeroinitializer }, align 32
@switch.table.smu_cmn_set_mp1_state = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 82, i32 58, i32 81], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.343 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967234]
@__sancov_gen_cov_switch_values.344 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.345 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967234]
@__sancov_gen_cov_switch_values.346 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.347 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.348 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.349 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 251, i64 252, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.350 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.351 = internal global [9 x i64] [i64 7, i64 32, i64 65536, i64 65537, i64 65538, i64 65539, i64 131072, i64 131073, i64 131074]
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 279, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 739, i32 35 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 754, i32 35 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 755, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 755, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 755, i32 21 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 755, i32 28 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 761, i32 36 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 766, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 766, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 985, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 1078, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 145, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 161, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 166, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 171, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 176, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 180, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 66, i32 10 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 59, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 711, i32 10 }
@___asan_gen_.1339 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1340 = private constant [52 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1340, i32 704, i32 2 }
@___asan_gen_.1342 = private unnamed_addr constant [35 x i8] c"switch.table.smu_cmn_set_mp1_state\00", align 1
@llvm.compiler.used = appending global [345 x ptr] [ptr @__smu_cmn_reg_print_error._entry, ptr @__smu_cmn_reg_print_error._entry.20, ptr @__smu_cmn_reg_print_error._entry.24, ptr @__smu_cmn_reg_print_error._entry.28, ptr @__smu_cmn_reg_print_error._entry.32, ptr @__smu_cmn_reg_print_error._entry.36, ptr @__smu_cmn_reg_print_error._entry_ptr, ptr @__smu_cmn_reg_print_error._entry_ptr.22, ptr @__smu_cmn_reg_print_error._entry_ptr.26, ptr @__smu_cmn_reg_print_error._entry_ptr.30, ptr @__smu_cmn_reg_print_error._entry_ptr.34, ptr @__smu_cmn_reg_print_error._entry_ptr.38, ptr @smu_cmn_get_metrics_table_locked._entry, ptr @smu_cmn_get_metrics_table_locked._entry_ptr, ptr @smu_cmn_set_mp1_state._entry, ptr @smu_cmn_set_mp1_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.25, ptr @.str.29, ptr @.str.33, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @switch.table.smu_cmn_set_mp1_state], section "llvm.metadata"
@0 = internal global [331 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_cmn_get_metrics_table_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_cmn_set_mp1_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smu_cmn_set_mp1_state to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_send_msg_without_waiting(ptr nocapture noundef readonly %smu, i16 noundef zeroext %msg_index, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %no_hw_access = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 168
  %2 = ptrtoint ptr %no_hw_access to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_hw_access, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usec_timeout.i, align 8
  %mul.i = mul i32 %5, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp33.i = icmp sgt i32 %mul.i, 0
  br i1 %cmp33.i, label %for.body.lr.ph.i, label %if.end.Out_crit_edge

if.end.Out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %Out

for.body.lr.ph.i:                                 ; preds = %if.end
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %timeout.034.i = phi i32 [ %mul.i, %for.body.lr.ph.i ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.cond.false.i_crit_edge, label %land.lhs.true.i

for.body.i.cond.false.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add.i = add i32 %15, 666
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body.i.cond.false.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add18.i = add i32 %19, 666
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  %20 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond.i, label %cond.end.i.Out_crit_edge [
    i32 0, label %if.end.i
    i32 252, label %cond.end.i.Out.loopexit_crit_edge
    i32 1, label %cond.end.i.if.end7_crit_edge
    i32 255, label %cond.end.i.if.end7_crit_edge69
    i32 254, label %cond.end.i.if.end7_crit_edge70
    i32 253, label %cond.end.i.if.end7_crit_edge71
  ]

cond.end.i.if.end7_crit_edge71:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cond.end.i.if.end7_crit_edge70:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cond.end.i.if.end7_crit_edge69:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cond.end.i.if.end7_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cond.end.i.Out.loopexit_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %Out.loopexit

cond.end.i.Out_crit_edge:                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %Out

if.end.i:                                         ; preds = %cond.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  %dec.i = add nsw i32 %timeout.034.i, -1
  %cmp.i = icmp sgt i32 %timeout.034.i, 1
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.Out.loopexit_crit_edge

if.end.i.Out.loopexit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %Out.loopexit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end7:                                          ; preds = %cond.end.i.if.end7_crit_edge, %cond.end.i.if.end7_crit_edge69, %cond.end.i.if.end7_crit_edge70, %cond.end.i.if.end7_crit_edge71
  tail call fastcc void @__smu_cmn_send_msg(ptr noundef %smu, i16 noundef zeroext %msg_index, i32 noundef %param)
  br label %Out

Out.loopexit:                                     ; preds = %if.end.i.Out.loopexit_crit_edge, %cond.end.i.Out.loopexit_crit_edge
  %res.0.ph = phi i32 [ -16, %cond.end.i.Out.loopexit_crit_edge ], [ -62, %if.end.i.Out.loopexit_crit_edge ]
  br label %Out

Out:                                              ; preds = %Out.loopexit, %if.end7, %cond.end.i.Out_crit_edge, %if.end.Out_crit_edge
  %res.0 = phi i32 [ 0, %if.end7 ], [ -121, %if.end.Out_crit_edge ], [ %res.0.ph, %Out.loopexit ], [ -121, %cond.end.i.Out_crit_edge ]
  %smu_debug_mask = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 29
  %22 = ptrtoint ptr %smu_debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %smu_debug_mask, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %Out.cleanup_crit_edge, label %land.lhs.true, !prof !387

Out.cleanup_crit_edge:                            ; preds = %Out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %Out
  %24 = zext i32 %res.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %res.0, label %if.then14 [
    i32 0, label %land.lhs.true.cleanup_crit_edge
    i32 -62, label %land.lhs.true.cleanup_crit_edge72
  ]

land.lhs.true.cleanup_crit_edge72:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_halt(ptr noundef %1) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge72, %Out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %res.0, %land.lhs.true.cleanup_crit_edge ], [ %res.0, %land.lhs.true.cleanup_crit_edge72 ], [ %res.0, %if.then14 ], [ %res.0, %Out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__smu_cmn_send_msg(ptr nocapture noundef readonly %smu, i16 noundef zeroext %msg, i32 noundef %param) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 666
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 666
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt, align 8
  %and21 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false44_crit_edge, label %land.lhs.true23

cond.end.cond.false44_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false44

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false44_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false44_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false44

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg32, align 4
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false44_crit_edge, label %cond.true34

land.lhs.true28.cond.false44_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false44

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx40 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx40, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add43 = add i32 %25, 658
  tail call void %21(ptr noundef %1, i32 noundef %add43, i32 noundef %param, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end50

cond.false44:                                     ; preds = %land.lhs.true28.cond.false44_crit_edge, %land.lhs.true23.cond.false44_crit_edge, %cond.end.cond.false44_crit_edge
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx46, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add49 = add i32 %29, 658
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add49, i32 noundef %param, i32 noundef 0) #6
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false44, %cond.true34
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %virt, align 8
  %and53 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %cond.end50.cond.false76_crit_edge, label %land.lhs.true55

cond.end50.cond.false76_crit_edge:                ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false76

land.lhs.true55:                                  ; preds = %cond.end50
  %funcs58 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %32 = ptrtoint ptr %funcs58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs58, align 4
  %tobool59.not = icmp eq ptr %33, null
  br i1 %tobool59.not, label %land.lhs.true55.cond.false76_crit_edge, label %land.lhs.true60

land.lhs.true55.cond.false76_crit_edge:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false76

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %sriov_wreg64 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg64, align 4
  %tobool65.not = icmp eq ptr %35, null
  br i1 %tobool65.not, label %land.lhs.true60.cond.false76_crit_edge, label %cond.true66

land.lhs.true60.cond.false76_crit_edge:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false76

cond.true66:                                      ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx72 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %36 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx72, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add75 = add i32 %39, 642
  %conv = zext i16 %msg to i32
  tail call void %35(ptr noundef %1, i32 noundef %add75, i32 noundef %conv, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end83

cond.false76:                                     ; preds = %land.lhs.true60.cond.false76_crit_edge, %land.lhs.true55.cond.false76_crit_edge, %cond.end50.cond.false76_crit_edge
  %arrayidx78 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %40 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx78, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add81 = add i32 %43, 642
  %conv82 = zext i16 %msg to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add81, i32 noundef %conv82, i32 noundef 0) #6
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false76, %cond.true66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_wait_for_response(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 8
  %mul.i = mul i32 %3, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp33.i = icmp sgt i32 %mul.i, 0
  br i1 %cmp33.i, label %for.body.lr.ph.i, label %entry.__smu_cmn_reg2errno.exit_crit_edge

entry.__smu_cmn_reg2errno.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__smu_cmn_reg2errno.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %timeout.034.i = phi i32 [ %mul.i, %for.body.lr.ph.i ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.cond.false.i_crit_edge, label %land.lhs.true.i

for.body.i.cond.false.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add.i = add i32 %13, 666
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body.i.cond.false.i_crit_edge
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add18.i = add i32 %17, 666
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  %18 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %cond.i, label %cond.end.i.__smu_cmn_reg2errno.exit_crit_edge [
    i32 0, label %if.end.i
    i32 252, label %__smu_cmn_reg2errno.exit.loopexit40
    i32 1, label %cond.end.i.__smu_cmn_reg2errno.exit.loopexit_crit_edge
    i32 255, label %__smu_cmn_reg2errno.exit.loopexit37
    i32 254, label %__smu_cmn_reg2errno.exit.loopexit38
    i32 253, label %__smu_cmn_reg2errno.exit.loopexit39
  ]

cond.end.i.__smu_cmn_reg2errno.exit.loopexit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__smu_cmn_reg2errno.exit.loopexit

cond.end.i.__smu_cmn_reg2errno.exit_crit_edge:    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__smu_cmn_reg2errno.exit

if.end.i:                                         ; preds = %cond.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %dec.i = add nsw i32 %timeout.034.i, -1
  %cmp.i = icmp sgt i32 %timeout.034.i, 1
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.__smu_cmn_reg2errno.exit.loopexit_crit_edge

if.end.i.__smu_cmn_reg2errno.exit.loopexit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__smu_cmn_reg2errno.exit.loopexit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

__smu_cmn_reg2errno.exit.loopexit:                ; preds = %if.end.i.__smu_cmn_reg2errno.exit.loopexit_crit_edge, %cond.end.i.__smu_cmn_reg2errno.exit.loopexit_crit_edge
  %res.0.i.ph = phi i32 [ 0, %cond.end.i.__smu_cmn_reg2errno.exit.loopexit_crit_edge ], [ -62, %if.end.i.__smu_cmn_reg2errno.exit.loopexit_crit_edge ]
  br label %__smu_cmn_reg2errno.exit

__smu_cmn_reg2errno.exit.loopexit37:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__smu_cmn_reg2errno.exit

__smu_cmn_reg2errno.exit.loopexit38:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__smu_cmn_reg2errno.exit

__smu_cmn_reg2errno.exit.loopexit39:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__smu_cmn_reg2errno.exit

__smu_cmn_reg2errno.exit.loopexit40:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__smu_cmn_reg2errno.exit

__smu_cmn_reg2errno.exit:                         ; preds = %__smu_cmn_reg2errno.exit.loopexit40, %__smu_cmn_reg2errno.exit.loopexit39, %__smu_cmn_reg2errno.exit.loopexit38, %__smu_cmn_reg2errno.exit.loopexit37, %__smu_cmn_reg2errno.exit.loopexit, %cond.end.i.__smu_cmn_reg2errno.exit_crit_edge, %entry.__smu_cmn_reg2errno.exit_crit_edge
  %res.0.i = phi i32 [ %res.0.i.ph, %__smu_cmn_reg2errno.exit.loopexit ], [ -5, %__smu_cmn_reg2errno.exit.loopexit37 ], [ -95, %__smu_cmn_reg2errno.exit.loopexit38 ], [ -22, %__smu_cmn_reg2errno.exit.loopexit39 ], [ -16, %__smu_cmn_reg2errno.exit.loopexit40 ], [ -121, %cond.end.i.__smu_cmn_reg2errno.exit_crit_edge ], [ -121, %entry.__smu_cmn_reg2errno.exit_crit_edge ]
  %20 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smu, align 8
  %smu_debug_mask = getelementptr inbounds %struct.amdgpu_device, ptr %21, i32 0, i32 98, i32 29
  %22 = ptrtoint ptr %smu_debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %smu_debug_mask, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %__smu_cmn_reg2errno.exit.if.end27_crit_edge, label %land.lhs.true, !prof !387

__smu_cmn_reg2errno.exit.if.end27_crit_edge:      ; preds = %__smu_cmn_reg2errno.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true:                                    ; preds = %__smu_cmn_reg2errno.exit
  %24 = zext i32 %res.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.345)
  switch i32 %res.0.i, label %if.then [
    i32 0, label %land.lhs.true.if.end27_crit_edge
    i32 -62, label %land.lhs.true.if.end27_crit_edge41
  ]

land.lhs.true.if.end27_crit_edge41:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_halt(ptr noundef %21) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.lhs.true.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge41, %__smu_cmn_reg2errno.exit.if.end27_crit_edge
  ret i32 %res.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef %msg, i32 noundef %param, ptr noundef writeonly %read_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %no_hw_access = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 168
  %2 = ptrtoint ptr %no_hw_access to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_hw_access, align 4, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 206, i32 %msg)
  %cmp.i = icmp ugt i32 %msg, 206
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %message_map.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %4 = ptrtoint ptr %message_map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %message_map.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr %struct.cmn2asic_msg_mapping, ptr %5, i32 %msg
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %msg_mapping.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_mapping.sroa.0.0.copyload.i)
  %tobool2.not.i = icmp eq i32 %msg_mapping.sroa.0.0.copyload.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %msg_mapping.sroa.7.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %7 = ptrtoint ptr %msg_mapping.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %msg_mapping.sroa.7.0.copyload.i = load i32, ptr %msg_mapping.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %msg_mapping.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %8 = ptrtoint ptr %msg_mapping.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %msg_mapping.sroa.5.0.copyload.i = load i32, ptr %msg_mapping.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %9 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_mapping.sroa.7.0.copyload.i)
  %tobool6.not.i = icmp eq i32 %msg_mapping.sroa.7.0.copyload.i, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 %tobool6.not.i, i1 false
  br i1 %or.cond.i, label %if.end4.i.if.then2.thread185_crit_edge, label %smu_cmn_to_asic_specific_index.exit

if.end4.i.if.then2.thread185_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.thread185

smu_cmn_to_asic_specific_index.exit:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_mapping.sroa.5.0.copyload.i)
  %cmp = icmp slt i32 %msg_mapping.sroa.5.0.copyload.i, 0
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %msg_mapping.sroa.5.0.copyload.i)
  %cmp3 = icmp eq i32 %msg_mapping.sroa.5.0.copyload.i, -13
  br i1 %cmp3, label %if.then2.if.then2.thread185_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.if.then2.thread185_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.thread185

if.then2.thread185:                               ; preds = %if.then2.if.then2.thread185_crit_edge, %if.end4.i.if.then2.thread185_crit_edge
  br label %cleanup

if.end4:                                          ; preds = %smu_cmn_to_asic_specific_index.exit
  %message_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %message_lock, i32 noundef 0) #6
  %11 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smu, align 8
  %usec_timeout.i = getelementptr inbounds %struct.amdgpu_device, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout.i, align 8
  %mul.i = mul i32 %14, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp33.i = icmp sgt i32 %mul.i, 0
  br i1 %cmp33.i, label %for.body.lr.ph.i, label %if.end4.if.then11_crit_edge

if.end4.if.then11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

for.body.lr.ph.i:                                 ; preds = %if.end4
  %virt.i85 = getelementptr inbounds %struct.amdgpu_device, ptr %12, i32 0, i32 132
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %12, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i86 = getelementptr %struct.amdgpu_device, ptr %12, i32 0, i32 130, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i91.for.body.i_crit_edge, %for.body.lr.ph.i
  %timeout.034.i = phi i32 [ %mul.i, %for.body.lr.ph.i ], [ %dec.i, %if.end.i91.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %virt.i85 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virt.i85, align 8
  %and.i87 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %for.body.i.cond.false.i_crit_edge, label %land.lhs.true.i

for.body.i.cond.false.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %17 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i89 = icmp eq ptr %18, null
  br i1 %tobool2.not.i89, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %20, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i86, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add.i = add i32 %24, 666
  %call.i = tail call i32 %20(ptr noundef %12, i32 noundef %add.i, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %for.body.i.cond.false.i_crit_edge
  %25 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i86, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add18.i = add i32 %28, 666
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %12, i32 noundef %add18.i, i32 noundef 0) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  %29 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.346)
  switch i32 %cond.i, label %cond.end.i.if.then11_crit_edge [
    i32 0, label %if.end.i91
    i32 252, label %cond.end.i.if.then11.loopexit_crit_edge
    i32 1, label %cond.end.i.if.end12_crit_edge
    i32 255, label %cond.end.i.if.end12_crit_edge236
    i32 254, label %cond.end.i.if.end12_crit_edge237
    i32 253, label %cond.end.i.if.end12_crit_edge238
  ]

cond.end.i.if.end12_crit_edge238:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

cond.end.i.if.end12_crit_edge237:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

cond.end.i.if.end12_crit_edge236:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

cond.end.i.if.end12_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

cond.end.i.if.then11.loopexit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.loopexit

cond.end.i.if.then11_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end.i91:                                       ; preds = %cond.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #6
  %dec.i = add nsw i32 %timeout.034.i, -1
  %cmp.i90 = icmp sgt i32 %timeout.034.i, 1
  br i1 %cmp.i90, label %if.end.i91.for.body.i_crit_edge, label %if.end.i91.if.then11.loopexit_crit_edge

if.end.i91.if.then11.loopexit_crit_edge:          ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.loopexit

if.end.i91.for.body.i_crit_edge:                  ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then11.loopexit:                               ; preds = %if.end.i91.if.then11.loopexit_crit_edge, %cond.end.i.if.then11.loopexit_crit_edge
  %res.0.i160.ph = phi i32 [ -16, %cond.end.i.if.then11.loopexit_crit_edge ], [ -62, %if.end.i91.if.then11.loopexit_crit_edge ]
  br label %if.then11

if.then11:                                        ; preds = %if.then11.loopexit, %cond.end.i.if.then11_crit_edge, %if.end4.if.then11_crit_edge
  %res.0.i160 = phi i32 [ -121, %if.end4.if.then11_crit_edge ], [ %res.0.i160.ph, %if.then11.loopexit ], [ -121, %cond.end.i.if.then11_crit_edge ]
  %reg.1.i152158 = phi i32 [ -1, %if.end4.if.then11_crit_edge ], [ %cond.i, %if.then11.loopexit ], [ %cond.i, %cond.end.i.if.then11_crit_edge ]
  tail call fastcc void @__smu_cmn_reg_print_error(ptr noundef %smu, i32 noundef %reg.1.i152158, i32 noundef %msg_mapping.sroa.5.0.copyload.i, i32 noundef %param, i32 noundef %msg)
  br label %Out

if.end12:                                         ; preds = %cond.end.i.if.end12_crit_edge, %cond.end.i.if.end12_crit_edge236, %cond.end.i.if.end12_crit_edge237, %cond.end.i.if.end12_crit_edge238
  %conv = trunc i32 %msg_mapping.sroa.5.0.copyload.i to i16
  tail call fastcc void @__smu_cmn_send_msg(ptr noundef %smu, i16 noundef zeroext %conv, i32 noundef %param)
  %31 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smu, align 8
  %usec_timeout.i92 = getelementptr inbounds %struct.amdgpu_device, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %usec_timeout.i92 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %usec_timeout.i92, align 8
  %mul.i93 = mul i32 %34, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i93)
  %cmp33.i94 = icmp sgt i32 %mul.i93, 0
  br i1 %cmp33.i94, label %for.body.lr.ph.i98, label %if.end12.if.then17_crit_edge

if.end12.if.then17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

for.body.lr.ph.i98:                               ; preds = %if.end12
  %virt.i95 = getelementptr inbounds %struct.amdgpu_device, ptr %32, i32 0, i32 132
  %funcs.i96 = getelementptr inbounds %struct.amdgpu_device, ptr %32, i32 0, i32 106, i32 2, i32 15
  %arrayidx.i97 = getelementptr %struct.amdgpu_device, ptr %32, i32 0, i32 130, i32 15
  br label %for.body.i102

for.body.i102:                                    ; preds = %if.end.i119.for.body.i102_crit_edge, %for.body.lr.ph.i98
  %timeout.034.i99 = phi i32 [ %mul.i93, %for.body.lr.ph.i98 ], [ %dec.i117, %if.end.i119.for.body.i102_crit_edge ]
  %35 = ptrtoint ptr %virt.i95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %virt.i95, align 8
  %and.i100 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %for.body.i102.cond.false.i113_crit_edge, label %land.lhs.true.i104

for.body.i102.cond.false.i113_crit_edge:          ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i113

land.lhs.true.i104:                               ; preds = %for.body.i102
  %37 = ptrtoint ptr %funcs.i96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %funcs.i96, align 4
  %tobool2.not.i103 = icmp eq ptr %38, null
  br i1 %tobool2.not.i103, label %land.lhs.true.i104.cond.false.i113_crit_edge, label %land.lhs.true3.i107

land.lhs.true.i104.cond.false.i113_crit_edge:     ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i113

land.lhs.true3.i107:                              ; preds = %land.lhs.true.i104
  %sriov_rreg.i105 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %sriov_rreg.i105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sriov_rreg.i105, align 4
  %tobool7.not.i106 = icmp eq ptr %40, null
  br i1 %tobool7.not.i106, label %land.lhs.true3.i107.cond.false.i113_crit_edge, label %cond.true.i110

land.lhs.true3.i107.cond.false.i113_crit_edge:    ; preds = %land.lhs.true3.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i113

cond.true.i110:                                   ; preds = %land.lhs.true3.i107
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i97, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add.i108 = add i32 %44, 666
  %call.i109 = tail call i32 %40(ptr noundef %32, i32 noundef %add.i108, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end.i116

cond.false.i113:                                  ; preds = %land.lhs.true3.i107.cond.false.i113_crit_edge, %land.lhs.true.i104.cond.false.i113_crit_edge, %for.body.i102.cond.false.i113_crit_edge
  %45 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i97, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add18.i111 = add i32 %48, 666
  %call19.i112 = tail call i32 @amdgpu_device_rreg(ptr noundef %32, i32 noundef %add18.i111, i32 noundef 0) #6
  br label %cond.end.i116

cond.end.i116:                                    ; preds = %cond.false.i113, %cond.true.i110
  %cond.i114 = phi i32 [ %call.i109, %cond.true.i110 ], [ %call19.i112, %cond.false.i113 ]
  %49 = zext i32 %cond.i114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %cond.i114, label %if.then17.loopexit221 [
    i32 0, label %if.end.i119
    i32 252, label %if.then17.loopexit212
    i32 1, label %cond.end.i116.if.end18_crit_edge
    i32 255, label %cond.end.i116.if.then17_crit_edge
    i32 254, label %if.then17.loopexit195
    i32 253, label %if.then17.loopexit204
  ]

cond.end.i116.if.then17_crit_edge:                ; preds = %cond.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

cond.end.i116.if.end18_crit_edge:                 ; preds = %cond.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end.i119:                                      ; preds = %cond.end.i116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #6
  %dec.i117 = add nsw i32 %timeout.034.i99, -1
  %cmp.i118 = icmp sgt i32 %timeout.034.i99, 1
  br i1 %cmp.i118, label %if.end.i119.for.body.i102_crit_edge, label %if.end.i119.if.then17_crit_edge

if.end.i119.if.then17_crit_edge:                  ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.end.i119.for.body.i102_crit_edge:              ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i102

if.then17.loopexit195:                            ; preds = %cond.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17.loopexit204:                            ; preds = %cond.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17.loopexit212:                            ; preds = %cond.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17.loopexit221:                            ; preds = %cond.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %if.then17.loopexit221, %if.then17.loopexit212, %if.then17.loopexit204, %if.then17.loopexit195, %if.end.i119.if.then17_crit_edge, %cond.end.i116.if.then17_crit_edge, %if.end12.if.then17_crit_edge
  %reg.1.i120173.ph = phi i32 [ %cond.i114, %if.then17.loopexit195 ], [ %cond.i114, %if.then17.loopexit204 ], [ %cond.i114, %if.then17.loopexit212 ], [ -1, %if.end12.if.then17_crit_edge ], [ %cond.i114, %if.then17.loopexit221 ], [ %cond.i114, %if.end.i119.if.then17_crit_edge ], [ %cond.i114, %cond.end.i116.if.then17_crit_edge ]
  %res.0.i128.ph = phi i32 [ -95, %if.then17.loopexit195 ], [ -22, %if.then17.loopexit204 ], [ -16, %if.then17.loopexit212 ], [ -121, %if.end12.if.then17_crit_edge ], [ -121, %if.then17.loopexit221 ], [ -5, %cond.end.i116.if.then17_crit_edge ], [ -62, %if.end.i119.if.then17_crit_edge ]
  tail call fastcc void @__smu_cmn_reg_print_error(ptr noundef %smu, i32 noundef %reg.1.i120173.ph, i32 noundef %msg_mapping.sroa.5.0.copyload.i, i32 noundef %param, i32 noundef %msg)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %cond.end.i116.if.end18_crit_edge
  %res.0.i128182 = phi i32 [ %res.0.i128.ph, %if.then17 ], [ 0, %cond.end.i116.if.end18_crit_edge ]
  %tobool19.not = icmp eq ptr %read_arg, null
  br i1 %tobool19.not, label %if.end18.Out_crit_edge, label %if.then20

if.end18.Out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %Out

if.then20:                                        ; preds = %if.end18
  %51 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %smu, align 8
  %virt.i130 = getelementptr inbounds %struct.amdgpu_device, ptr %52, i32 0, i32 132
  %53 = ptrtoint ptr %virt.i130 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %virt.i130, align 8
  %and.i131 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool.not.i132 = icmp eq i32 %and.i131, 0
  br i1 %tobool.not.i132, label %if.then20.cond.false.i145_crit_edge, label %land.lhs.true.i135

if.then20.cond.false.i145_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i145

land.lhs.true.i135:                               ; preds = %if.then20
  %funcs.i133 = getelementptr inbounds %struct.amdgpu_device, ptr %52, i32 0, i32 106, i32 2, i32 15
  %55 = ptrtoint ptr %funcs.i133 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %funcs.i133, align 4
  %tobool2.not.i134 = icmp eq ptr %56, null
  br i1 %tobool2.not.i134, label %land.lhs.true.i135.cond.false.i145_crit_edge, label %land.lhs.true3.i138

land.lhs.true.i135.cond.false.i145_crit_edge:     ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i145

land.lhs.true3.i138:                              ; preds = %land.lhs.true.i135
  %sriov_rreg.i136 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %56, i32 0, i32 13
  %57 = ptrtoint ptr %sriov_rreg.i136 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sriov_rreg.i136, align 4
  %tobool7.not.i137 = icmp eq ptr %58, null
  br i1 %tobool7.not.i137, label %land.lhs.true3.i138.cond.false.i145_crit_edge, label %cond.true.i142

land.lhs.true3.i138.cond.false.i145_crit_edge:    ; preds = %land.lhs.true3.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i145

cond.true.i142:                                   ; preds = %land.lhs.true3.i138
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i139 = getelementptr %struct.amdgpu_device, ptr %52, i32 0, i32 130, i32 15
  %59 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i139, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add.i140 = add i32 %62, 658
  %call.i141 = tail call i32 %58(ptr noundef %52, i32 noundef %add.i140, i32 noundef 0, i32 noundef 15) #6
  br label %smu_cmn_read_arg.exit

cond.false.i145:                                  ; preds = %land.lhs.true3.i138.cond.false.i145_crit_edge, %land.lhs.true.i135.cond.false.i145_crit_edge, %if.then20.cond.false.i145_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %52, i32 0, i32 130, i32 15
  %63 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx15.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add18.i143 = add i32 %66, 658
  %call19.i144 = tail call i32 @amdgpu_device_rreg(ptr noundef %52, i32 noundef %add18.i143, i32 noundef 0) #6
  br label %smu_cmn_read_arg.exit

smu_cmn_read_arg.exit:                            ; preds = %cond.false.i145, %cond.true.i142
  %cond.i146 = phi i32 [ %call.i141, %cond.true.i142 ], [ %call19.i144, %cond.false.i145 ]
  %67 = ptrtoint ptr %read_arg to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond.i146, ptr %read_arg, align 4
  br label %Out

Out:                                              ; preds = %smu_cmn_read_arg.exit, %if.end18.Out_crit_edge, %if.then11
  %res.0 = phi i32 [ %res.0.i160, %if.then11 ], [ %res.0.i128182, %smu_cmn_read_arg.exit ], [ %res.0.i128182, %if.end18.Out_crit_edge ]
  %smu_debug_mask = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 29
  %68 = ptrtoint ptr %smu_debug_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %smu_debug_mask, align 4
  %and = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %Out.if.end48_crit_edge, label %land.lhs.true, !prof !387

Out.if.end48_crit_edge:                           ; preds = %Out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true:                                    ; preds = %Out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %tobool25.not = icmp eq i32 %res.0, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end48_crit_edge, label %if.then26

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amdgpu_device_halt(ptr noundef %1) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 379, i32 noundef 9, ptr noundef null) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then26, %land.lhs.true.if.end48_crit_edge, %Out.if.end48_crit_edge
  tail call void @mutex_unlock(ptr noundef %message_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then2.thread185, %if.then2.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %if.end48 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.thread185 ], [ %msg_mapping.sroa.5.0.copyload.i, %if.then2.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smu_cmn_to_asic_specific_index(ptr nocapture noundef readonly %smu, i32 noundef %type, i32 noundef %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.348)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb22
    i32 3, label %sw.bb35
    i32 4, label %sw.bb48
    i32 5, label %sw.bb61
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 206, i32 %index)
  %cmp = icmp ugt i32 %index, 206
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %message_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 3
  %1 = ptrtoint ptr %message_map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %message_map, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.cmn2asic_msg_mapping, ptr %2, i32 %index
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %msg_mapping.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_mapping.sroa.0.0.copyload)
  %tobool2.not = icmp eq i32 %msg_mapping.sroa.0.0.copyload, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %msg_mapping.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %4 = ptrtoint ptr %msg_mapping.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %msg_mapping.sroa.7.0.copyload = load i32, ptr %msg_mapping.sroa.7.0.arrayidx.sroa_idx, align 4
  %msg_mapping.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %5 = ptrtoint ptr %msg_mapping.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %msg_mapping.sroa.5.0.copyload = load i32, ptr %msg_mapping.sroa.5.0.arrayidx.sroa_idx, align 4
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %7, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_mapping.sroa.7.0.copyload)
  %tobool6.not = icmp eq i32 %msg_mapping.sroa.7.0.copyload, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool6.not, i1 false
  %spec.select = select i1 %or.cond, i32 -13, i32 %msg_mapping.sroa.5.0.copyload
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %index)
  %cmp10 = icmp ugt i32 %index, 22
  br i1 %cmp10, label %sw.bb9.cleanup_crit_edge, label %lor.lhs.false11

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false11:                                  ; preds = %sw.bb9
  %clock_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 4
  %10 = ptrtoint ptr %clock_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock_map, align 8
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %lor.lhs.false11.cleanup_crit_edge, label %if.end14

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false11
  %arrayidx16 = getelementptr %struct.cmn2asic_mapping, ptr %11, i32 %index
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %mapping.sroa.0.0.copyload = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload)
  %tobool18.not = icmp eq i32 %mapping.sroa.0.0.copyload, 0
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %mapping.sroa.13.0.arrayidx16.sroa_idx = getelementptr inbounds i8, ptr %arrayidx16, i32 4
  %13 = ptrtoint ptr %mapping.sroa.13.0.arrayidx16.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %mapping.sroa.13.0.copyload = load i32, ptr %mapping.sroa.13.0.arrayidx16.sroa_idx, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %index)
  %cmp23 = icmp ugt i32 %index, 94
  br i1 %cmp23, label %sw.bb22.cleanup_crit_edge, label %lor.lhs.false24

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24:                                  ; preds = %sw.bb22
  %feature_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %14 = ptrtoint ptr %feature_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %feature_map, align 4
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %lor.lhs.false24.cleanup_crit_edge, label %if.end27

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false24
  %arrayidx29 = getelementptr %struct.cmn2asic_mapping, ptr %15, i32 %index
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %mapping.sroa.0.0.copyload79 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload79)
  %tobool31.not = icmp eq i32 %mapping.sroa.0.0.copyload79, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %mapping.sroa.13.0.arrayidx29.sroa_idx = getelementptr inbounds i8, ptr %arrayidx29, i32 4
  %17 = ptrtoint ptr %mapping.sroa.13.0.arrayidx29.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %mapping.sroa.13.0.copyload83 = load i32, ptr %mapping.sroa.13.0.arrayidx29.sroa_idx, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %index)
  %cmp36 = icmp ugt i32 %index, 14
  br i1 %cmp36, label %sw.bb35.cleanup_crit_edge, label %lor.lhs.false37

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false37:                                  ; preds = %sw.bb35
  %table_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %18 = ptrtoint ptr %table_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %table_map, align 8
  %tobool38.not = icmp eq ptr %19, null
  br i1 %tobool38.not, label %lor.lhs.false37.cleanup_crit_edge, label %if.end40

lor.lhs.false37.cleanup_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false37
  %arrayidx42 = getelementptr %struct.cmn2asic_mapping, ptr %19, i32 %index
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %mapping.sroa.0.0.copyload80 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload80)
  %tobool44.not = icmp eq i32 %mapping.sroa.0.0.copyload80, 0
  br i1 %tobool44.not, label %if.end40.cleanup_crit_edge, label %if.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %mapping.sroa.13.0.arrayidx42.sroa_idx = getelementptr inbounds i8, ptr %arrayidx42, i32 4
  %21 = ptrtoint ptr %mapping.sroa.13.0.arrayidx42.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %mapping.sroa.13.0.copyload84 = load i32, ptr %mapping.sroa.13.0.arrayidx42.sroa_idx, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp49 = icmp ugt i32 %index, 1
  br i1 %cmp49, label %sw.bb48.cleanup_crit_edge, label %lor.lhs.false50

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false50:                                  ; preds = %sw.bb48
  %pwr_src_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 7
  %22 = ptrtoint ptr %pwr_src_map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pwr_src_map, align 4
  %tobool51.not = icmp eq ptr %23, null
  br i1 %tobool51.not, label %lor.lhs.false50.cleanup_crit_edge, label %if.end53

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false50
  %arrayidx55 = getelementptr %struct.cmn2asic_mapping, ptr %23, i32 %index
  %24 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %mapping.sroa.0.0.copyload81 = load i32, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload81)
  %tobool57.not = icmp eq i32 %mapping.sroa.0.0.copyload81, 0
  br i1 %tobool57.not, label %if.end53.cleanup_crit_edge, label %if.end59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %mapping.sroa.13.0.arrayidx55.sroa_idx = getelementptr inbounds i8, ptr %arrayidx55, i32 4
  %25 = ptrtoint ptr %mapping.sroa.13.0.arrayidx55.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %mapping.sroa.13.0.copyload85 = load i32, ptr %mapping.sroa.13.0.arrayidx55.sroa_idx, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %index)
  %cmp62 = icmp ugt i32 %index, 6
  br i1 %cmp62, label %sw.bb61.cleanup_crit_edge, label %lor.lhs.false63

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false63:                                  ; preds = %sw.bb61
  %workload_map = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 8
  %26 = ptrtoint ptr %workload_map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %workload_map, align 8
  %tobool64.not = icmp eq ptr %27, null
  br i1 %tobool64.not, label %lor.lhs.false63.cleanup_crit_edge, label %if.end66

lor.lhs.false63.cleanup_crit_edge:                ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %lor.lhs.false63
  %arrayidx68 = getelementptr %struct.cmn2asic_mapping, ptr %27, i32 %index
  %28 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %mapping.sroa.0.0.copyload82 = load i32, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload82)
  %tobool70.not = icmp eq i32 %mapping.sroa.0.0.copyload82, 0
  br i1 %tobool70.not, label %if.end66.cleanup_crit_edge, label %if.end72

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %mapping.sroa.13.0.arrayidx68.sroa_idx = getelementptr inbounds i8, ptr %arrayidx68, i32 4
  %29 = ptrtoint ptr %mapping.sroa.13.0.arrayidx68.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %mapping.sroa.13.0.copyload86 = load i32, ptr %mapping.sroa.13.0.arrayidx68.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end66.cleanup_crit_edge, %lor.lhs.false63.cleanup_crit_edge, %sw.bb61.cleanup_crit_edge, %if.end59, %if.end53.cleanup_crit_edge, %lor.lhs.false50.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %if.end46, %if.end40.cleanup_crit_edge, %lor.lhs.false37.cleanup_crit_edge, %sw.bb35.cleanup_crit_edge, %if.end33, %if.end27.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %if.end20, %if.end14.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %if.end4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mapping.sroa.13.0.copyload86, %if.end72 ], [ %mapping.sroa.13.0.copyload85, %if.end59 ], [ %mapping.sroa.13.0.copyload84, %if.end46 ], [ %mapping.sroa.13.0.copyload83, %if.end33 ], [ %mapping.sroa.13.0.copyload, %if.end20 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %lor.lhs.false24.cleanup_crit_edge ], [ -22, %sw.bb22.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %lor.lhs.false37.cleanup_crit_edge ], [ -22, %sw.bb35.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %lor.lhs.false50.cleanup_crit_edge ], [ -22, %sw.bb48.cleanup_crit_edge ], [ -22, %if.end53.cleanup_crit_edge ], [ -22, %lor.lhs.false63.cleanup_crit_edge ], [ -22, %sw.bb61.cleanup_crit_edge ], [ -22, %if.end66.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__smu_cmn_reg_print_error(ptr nocapture noundef readonly %smu, i32 noundef %reg_c2pmsg_90, i32 noundef %msg_index, i32 noundef %param, i32 noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 206, i32 %msg)
  %cmp1.i = icmp ugt i32 %msg, 206
  br i1 %cmp1.i, label %entry.smu_get_message_name.exit_crit_edge, label %if.end.i

entry.smu_get_message_name.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_get_message_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [207 x ptr], ptr @__smu_message_names, i32 0, i32 %msg
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  br label %smu_get_message_name.exit

smu_get_message_name.exit:                        ; preds = %if.end.i, %entry.smu_get_message_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ @.str.39, %entry.smu_get_message_name.exit_crit_edge ]
  %4 = zext i32 %reg_c2pmsg_90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.349)
  switch i32 %reg_c2pmsg_90, label %do.body109 [
    i32 0, label %sw.bb
    i32 1, label %smu_get_message_name.exit.sw.epilog_crit_edge
    i32 255, label %smu_get_message_name.exit.sw.epilog_crit_edge155
    i32 254, label %do.body62
    i32 253, label %do.body74
    i32 252, label %do.body86
    i32 251, label %do.body98
  ]

smu_get_message_name.exit.sw.epilog_crit_edge155: ; preds = %smu_get_message_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

smu_get_message_name.exit.sw.epilog_crit_edge:    ; preds = %smu_get_message_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %smu_get_message_name.exit
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cond.false_crit_edge, label %land.lhs.true

sw.bb.cond.false_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %sw.bb
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %7 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add = add i32 %14, 642
  %call14 = tail call i32 %10(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %sw.bb.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx16, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add19 = add i32 %18, 642
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call14, %cond.true ], [ %call20, %cond.false ]
  %19 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virt, align 8
  %and23 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.end.cond.false47_crit_edge, label %land.lhs.true25

cond.end.cond.false47_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true25:                                  ; preds = %cond.end
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %21 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false47_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false47_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_rreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %sriov_rreg34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sriov_rreg34, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false47_crit_edge, label %cond.true36

land.lhs.true30.cond.false47_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx42, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add45 = add i32 %28, 658
  %call46 = tail call i32 %24(ptr noundef %1, i32 noundef %add45, i32 noundef 0, i32 noundef 15) #6
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true30.cond.false47_crit_edge, %land.lhs.true25.cond.false47_crit_edge, %cond.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx49, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add52 = add i32 %32, 658
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add52, i32 noundef 0) #6
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true36
  %cond55 = phi i32 [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  %call56 = tail call i32 @___ratelimit(ptr noundef nonnull @__smu_cmn_reg_print_error._rs, ptr noundef nonnull @__func__.__smu_cmn_reg_print_error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cond.end54.sw.epilog_crit_edge, label %do.end

cond.end54.sw.epilog_crit_edge:                   ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.18, i32 noundef %cond, i32 noundef %cond55) #9
  br label %sw.epilog

do.body62:                                        ; preds = %smu_get_message_name.exit
  %call63 = tail call i32 @___ratelimit(ptr noundef nonnull @__smu_cmn_reg_print_error._rs.19, ptr noundef nonnull @__func__.__smu_cmn_reg_print_error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body62.sw.epilog_crit_edge, label %do.end68

do.body62.sw.epilog_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.21, i32 noundef %msg_index, i32 noundef %param, ptr noundef %retval.0.i) #9
  br label %sw.epilog

do.body74:                                        ; preds = %smu_get_message_name.exit
  %call75 = tail call i32 @___ratelimit(ptr noundef nonnull @__smu_cmn_reg_print_error._rs.23, ptr noundef nonnull @__func__.__smu_cmn_reg_print_error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body74.sw.epilog_crit_edge, label %do.end80

do.body74.sw.epilog_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.25, i32 noundef %msg_index, i32 noundef %param, ptr noundef %retval.0.i) #9
  br label %sw.epilog

do.body86:                                        ; preds = %smu_get_message_name.exit
  %call87 = tail call i32 @___ratelimit(ptr noundef nonnull @__smu_cmn_reg_print_error._rs.27, ptr noundef nonnull @__func__.__smu_cmn_reg_print_error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.body86.sw.epilog_crit_edge, label %do.end92

do.body86.sw.epilog_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end92:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.29, i32 noundef %msg_index, i32 noundef %param, ptr noundef %retval.0.i) #9
  br label %sw.epilog

do.body98:                                        ; preds = %smu_get_message_name.exit
  %call99 = tail call i32 @___ratelimit(ptr noundef nonnull @__smu_cmn_reg_print_error._rs.31, ptr noundef nonnull @__func__.__smu_cmn_reg_print_error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.body98.sw.epilog_crit_edge, label %do.end104

do.body98.sw.epilog_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end104:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.33) #9
  br label %sw.epilog

do.body109:                                       ; preds = %smu_get_message_name.exit
  %call110 = tail call i32 @___ratelimit(ptr noundef nonnull @__smu_cmn_reg_print_error._rs.35, ptr noundef nonnull @__func__.__smu_cmn_reg_print_error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %do.body109.sw.epilog_crit_edge, label %do.end115

do.body109.sw.epilog_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end115:                                        ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.37, i32 noundef %reg_c2pmsg_90, i32 noundef %msg_index, i32 noundef %param, ptr noundef %retval.0.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end115, %do.body109.sw.epilog_crit_edge, %do.end104, %do.body98.sw.epilog_crit_edge, %do.end92, %do.body86.sw.epilog_crit_edge, %do.end80, %do.body74.sw.epilog_crit_edge, %do.end68, %do.body62.sw.epilog_crit_edge, %do.end, %cond.end54.sw.epilog_crit_edge, %smu_get_message_name.exit.sw.epilog_crit_edge, %smu_get_message_name.exit.sw.epilog_crit_edge155
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef %msg, ptr noundef %read_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef %msg, i32 noundef 0, ptr noundef %read_arg)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %mask)
  %cmp23.i = icmp ugt i32 %mask, 94
  br i1 %cmp23.i, label %entry.cleanup_crit_edge, label %lor.lhs.false24.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24.i:                                ; preds = %entry
  %feature_map.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %0 = ptrtoint ptr %feature_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feature_map.i, align 4
  %tobool25.not.i = icmp eq ptr %1, null
  br i1 %tobool25.not.i, label %lor.lhs.false24.i.cleanup_crit_edge, label %if.end27.i

lor.lhs.false24.i.cleanup_crit_edge:              ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.i:                                       ; preds = %lor.lhs.false24.i
  %arrayidx29.i = getelementptr %struct.cmn2asic_mapping, ptr %1, i32 %mask
  %2 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mapping.sroa.0.0.copyload79.i = load i32, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload79.i)
  %tobool31.not.i = icmp eq i32 %mapping.sroa.0.0.copyload79.i, 0
  br i1 %tobool31.not.i, label %if.end27.i.cleanup_crit_edge, label %smu_cmn_to_asic_specific_index.exit

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

smu_cmn_to_asic_specific_index.exit:              ; preds = %if.end27.i
  %mapping.sroa.13.0.arrayidx29.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx29.i, i32 4
  %3 = ptrtoint ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %mapping.sroa.13.0.copyload83.i = load i32, ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload83.i)
  %cmp = icmp slt i32 %mapping.sroa.13.0.copyload83.i, 0
  br i1 %cmp, label %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, label %if.end

smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %smu_cmn_to_asic_specific_index.exit
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %4 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smu_feature, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mapping.sroa.13.0.copyload83.i, i32 %5)
  %cmp1 = icmp ugt i32 %mapping.sroa.13.0.copyload83.i, %5
  br i1 %cmp1, label %do.end, label %if.end.if.end15_crit_edge, !prof !388

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 492, i32 noundef 9, ptr noundef null) #6
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %supported = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 1
  %div3.i = lshr i32 %mapping.sroa.13.0.copyload83.i, 5
  %arrayidx.i = getelementptr i32, ptr %supported, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %mapping.sroa.13.0.copyload83.i, 31
  %shr.i = lshr i32 %7, %and.i
  %and1.i = and i32 %shr.i, 1
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %lor.lhs.false24.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and1.i, %if.end15 ], [ 0, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false24.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %0 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_apu, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %family = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %5)
  %cmp = icmp ult i32 %5, 144
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %mask)
  %cmp23.i = icmp ugt i32 %mask, 94
  br i1 %cmp23.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false24.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24.i:                                ; preds = %if.end
  %feature_map.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %6 = ptrtoint ptr %feature_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %feature_map.i, align 4
  %tobool25.not.i = icmp eq ptr %7, null
  br i1 %tobool25.not.i, label %lor.lhs.false24.i.cleanup_crit_edge, label %if.end27.i

lor.lhs.false24.i.cleanup_crit_edge:              ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.i:                                       ; preds = %lor.lhs.false24.i
  %arrayidx29.i = getelementptr %struct.cmn2asic_mapping, ptr %7, i32 %mask
  %8 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %mapping.sroa.0.0.copyload79.i = load i32, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload79.i)
  %tobool31.not.i = icmp eq i32 %mapping.sroa.0.0.copyload79.i, 0
  br i1 %tobool31.not.i, label %if.end27.i.cleanup_crit_edge, label %smu_cmn_to_asic_specific_index.exit

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

smu_cmn_to_asic_specific_index.exit:              ; preds = %if.end27.i
  %mapping.sroa.13.0.arrayidx29.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx29.i, i32 4
  %9 = ptrtoint ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %mapping.sroa.13.0.copyload83.i = load i32, ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload83.i)
  %cmp2 = icmp slt i32 %mapping.sroa.13.0.copyload83.i, 0
  br i1 %cmp2, label %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, label %if.end4

smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %smu_cmn_to_asic_specific_index.exit
  %10 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smu_feature, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mapping.sroa.13.0.copyload83.i, i32 %11)
  %cmp5 = icmp ugt i32 %mapping.sroa.13.0.copyload83.i, %11
  br i1 %cmp5, label %do.end, label %if.end4.if.end20_crit_edge, !prof !388

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 518, i32 noundef 9, ptr noundef null) #6
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end4.if.end20_crit_edge
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %div3.i = lshr i32 %mapping.sroa.13.0.copyload83.i, 5
  %arrayidx.i = getelementptr i32, ptr %enabled, i32 %div3.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %mapping.sroa.13.0.copyload83.i, 31
  %shr.i = lshr i32 %13, %and.i
  %and1.i = and i32 %shr.i, 1
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %lor.lhs.false24.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %and1.i, %if.end20 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false24.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.350)
  switch i32 %clk_type, label %entry.cleanup_crit_edge [
    i32 14, label %entry.sw.epilog_crit_edge
    i32 7, label %entry.sw.epilog_crit_edge8
    i32 0, label %entry.sw.bb1_crit_edge
    i32 13, label %entry.sw.bb1_crit_edge9
    i32 6, label %sw.bb2
  ]

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge8
  %feature_id.0 = phi i32 [ 3, %sw.bb2 ], [ 1, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge8 ]
  %smu_feature.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %is_apu.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %1 = ptrtoint ptr %is_apu.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_apu.i, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %land.lhs.true.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.epilog
  %3 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smu, align 8
  %family.i = getelementptr inbounds %struct.amdgpu_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %6)
  %cmp.i = icmp ult i32 %6, 144
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.epilog.if.end.i_crit_edge
  %feature_map.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %7 = ptrtoint ptr %feature_map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %feature_map.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %8, null
  br i1 %tobool25.not.i.i, label %if.end.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %if.end27.i.i

if.end.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

if.end27.i.i:                                     ; preds = %if.end.i
  %arrayidx29.i.i = getelementptr %struct.cmn2asic_mapping, ptr %8, i32 %feature_id.0
  %9 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %mapping.sroa.0.0.copyload79.i.i = load i32, ptr %arrayidx29.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload79.i.i)
  %tobool31.not.i.i = icmp eq i32 %mapping.sroa.0.0.copyload79.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end27.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %smu_cmn_to_asic_specific_index.exit.i

if.end27.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

smu_cmn_to_asic_specific_index.exit.i:            ; preds = %if.end27.i.i
  %mapping.sroa.13.0.arrayidx29.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx29.i.i, i32 4
  %10 = ptrtoint ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %mapping.sroa.13.0.copyload83.i.i = load i32, ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload83.i.i)
  %cmp2.i = icmp slt i32 %mapping.sroa.13.0.copyload83.i.i, 0
  br i1 %cmp2.i, label %smu_cmn_to_asic_specific_index.exit.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %if.end4.i

smu_cmn_to_asic_specific_index.exit.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

if.end4.i:                                        ; preds = %smu_cmn_to_asic_specific_index.exit.i
  %11 = ptrtoint ptr %smu_feature.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smu_feature.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mapping.sroa.13.0.copyload83.i.i, i32 %12)
  %cmp5.i = icmp ugt i32 %mapping.sroa.13.0.copyload83.i.i, %12
  br i1 %cmp5.i, label %do.end.i, label %if.end4.i.smu_cmn_feature_is_enabled.exit_crit_edge, !prof !388

if.end4.i.smu_cmn_feature_is_enabled.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 518, i32 noundef 9, ptr noundef null) #6
  br label %smu_cmn_feature_is_enabled.exit

smu_cmn_feature_is_enabled.exit:                  ; preds = %do.end.i, %if.end4.i.smu_cmn_feature_is_enabled.exit_crit_edge
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %enabled.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %div3.i.i = lshr i32 %mapping.sroa.13.0.copyload83.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %enabled.i, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %mapping.sroa.13.0.copyload83.i.i, 31
  tail call void @mutex_unlock(ptr noundef %mutex.i) #6
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %smu_cmn_feature_is_enabled.exit.cleanup_crit_edge

smu_cmn_feature_is_enabled.exit.cleanup_crit_edge: ; preds = %smu_cmn_feature_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %smu_cmn_feature_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

smu_cmn_feature_is_enabled.exit.thread:           ; preds = %smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread_crit_edge, %smu_cmn_to_asic_specific_index.exit.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, %if.end27.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, %if.end.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %smu_cmn_feature_is_enabled.exit.thread, %smu_cmn_feature_is_enabled.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %smu_cmn_feature_is_enabled.exit.thread ], [ true, %smu_cmn_feature_is_enabled.exit.cleanup_crit_edge ], [ true, %land.lhs.true.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_get_enabled_mask(ptr noundef %smu, ptr noundef writeonly %feature_mask, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %feature_mask_high = alloca i32, align 4
  %feature_mask_low = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_high) #6
  %0 = ptrtoint ptr %feature_mask_high to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %feature_mask_high, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_low) #6
  %1 = ptrtoint ptr %feature_mask_low to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %feature_mask_low, align 4
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %tobool.not = icmp eq ptr %feature_mask, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp ult i32 %num, 2
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smu_feature, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %enabled, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %3)
  %cmp4.i = icmp eq i32 %call.i, %3
  br i1 %cmp4.i, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call.i30 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %feature_mask_high) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool3.not = icmp eq i32 %call.i30, 0
  br i1 %tobool3.not, label %if.end5, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %call.i31 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %feature_mask_low) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool7.not = icmp eq i32 %call.i31, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %feature_mask_low to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feature_mask_low, align 4
  %6 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %feature_mask, align 4
  %7 = ptrtoint ptr %feature_mask_high to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %feature_mask_high, align 4
  %arrayidx10 = getelementptr i32, ptr %feature_mask, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx10, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smu_feature, align 4
  %sub.i32 = add i32 %11, 31
  %12 = lshr i32 %sub.i32, 3
  %mul.i = and i32 %12, 536870908
  %13 = call ptr @memcpy(ptr %feature_mask, ptr %enabled, i32 %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end9, %if.end5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i30, %if.then1.cleanup_crit_edge ], [ %call.i31, %if.end5.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_low) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_high) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_get_enabled_32_bits_mask(ptr noundef %smu, ptr noundef writeonly %feature_mask, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %feature_mask_en_low = alloca i32, align 4
  %feature_mask_en_high = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_en_low) #6
  %0 = ptrtoint ptr %feature_mask_en_low to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %feature_mask_en_low, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_en_high) #6
  %1 = ptrtoint ptr %feature_mask_en_high to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %feature_mask_en_high, align 4
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %tobool.not = icmp eq ptr %feature_mask, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp ult i32 %num, 2
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smu_feature, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %enabled, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %3)
  %cmp4.i = icmp eq i32 %call.i, %3
  br i1 %cmp4.i, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 11, i32 noundef 0, ptr noundef nonnull %feature_mask_en_low)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %call6 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %feature_mask_en_high)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %feature_mask_en_low to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feature_mask_en_low, align 4
  %6 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %feature_mask, align 4
  %7 = ptrtoint ptr %feature_mask_en_high to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %feature_mask_en_high, align 4
  %arrayidx10 = getelementptr i32, ptr %feature_mask, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx10, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smu_feature, align 4
  %sub.i30 = add i32 %11, 31
  %12 = lshr i32 %sub.i30, 3
  %mul.i = and i32 %12, 536870908
  %13 = call ptr @memcpy(ptr %feature_mask, ptr %enabled, i32 %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end9, %if.end5.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_en_high) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_en_low) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @smu_cmn_get_indep_throttler_status(i32 noundef %dep_status, ptr nocapture noundef readonly %throttler_map) local_unnamed_addr #0 align 64 {
entry:
  %dep_status.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dep_status.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dep_status, ptr %dep_status.addr, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %dep_status.addr, i32 noundef 32, i32 noundef 0) #6
  %conv110 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv110)
  %cmp11 = icmp ult i32 %conv110, 32
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %conv113 = phi i32 [ %conv1, %for.body.for.body_crit_edge ], [ %conv110, %entry.for.body_crit_edge ]
  %indep_status.012 = phi i64 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %throttler_map, i32 %conv113
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %sh_prom = zext i8 %2 to i64
  %shl = shl nuw i64 1, %sh_prom
  %or = or i64 %shl, %indep_status.012
  %add = add nuw nsw i32 %conv113, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %dep_status.addr, i32 noundef 32, i32 noundef %add) #6
  %conv1 = and i32 %call5, 255
  %cmp = icmp ult i32 %conv1, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %indep_status.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  ret i64 %indep_status.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_feature_update_enable_state(ptr noundef %smu, i64 noundef %feature_mask, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  %feature_mask.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %feature_mask.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %feature_mask, ptr %feature_mask.addr, align 8
  %conv = trunc i64 %feature_mask to i32
  br i1 %enabled, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 7, i32 noundef %conv, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %1 = ptrtoint ptr %feature_mask.addr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %feature_mask.addr, align 8
  %shr = lshr i64 %2, 32
  %conv4 = trunc i64 %shr to i32
  %call5 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 8, i32 noundef %conv4, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %call11 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 9, i32 noundef %conv, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %3 = ptrtoint ptr %feature_mask.addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %feature_mask.addr, align 8
  %shr15 = lshr i64 %4, 32
  %conv17 = trunc i64 %shr15 to i32
  %call18 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 10, i32 noundef %conv17, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else28, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mutex55 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex55, i32 noundef 0) #6
  %enabled25 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  call void @__bitmap_or(ptr noundef %enabled25, ptr noundef %enabled25, ptr noundef nonnull %feature_mask.addr, i32 noundef 64) #6
  br label %if.end34

if.else28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %enabled29 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %call.i = call i32 @__bitmap_andnot(ptr noundef %enabled29, ptr noundef %enabled29, ptr noundef nonnull %feature_mask.addr, i32 noundef 64) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else28, %if.then24
  %mutex56 = phi ptr [ %mutex, %if.else28 ], [ %mutex55, %if.then24 ]
  call void @mutex_unlock(ptr noundef %mutex56) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end14.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call, %if.then.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call11, %if.else.cleanup_crit_edge ], [ %call18, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_feature_set_enabled(ptr noundef %smu, i32 noundef %mask, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %mask)
  %cmp23.i = icmp ugt i32 %mask, 94
  br i1 %cmp23.i, label %entry.cleanup_crit_edge, label %lor.lhs.false24.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24.i:                                ; preds = %entry
  %feature_map.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %0 = ptrtoint ptr %feature_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feature_map.i, align 4
  %tobool25.not.i = icmp eq ptr %1, null
  br i1 %tobool25.not.i, label %lor.lhs.false24.i.cleanup_crit_edge, label %if.end27.i

lor.lhs.false24.i.cleanup_crit_edge:              ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.i:                                       ; preds = %lor.lhs.false24.i
  %arrayidx29.i = getelementptr %struct.cmn2asic_mapping, ptr %1, i32 %mask
  %2 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mapping.sroa.0.0.copyload79.i = load i32, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload79.i)
  %tobool31.not.i = icmp eq i32 %mapping.sroa.0.0.copyload79.i, 0
  br i1 %tobool31.not.i, label %if.end27.i.cleanup_crit_edge, label %smu_cmn_to_asic_specific_index.exit

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

smu_cmn_to_asic_specific_index.exit:              ; preds = %if.end27.i
  %mapping.sroa.13.0.arrayidx29.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx29.i, i32 4
  %3 = ptrtoint ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %mapping.sroa.13.0.copyload83.i = load i32, ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload83.i)
  %cmp = icmp slt i32 %mapping.sroa.13.0.copyload83.i, 0
  br i1 %cmp, label %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, label %if.end

smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %smu_cmn_to_asic_specific_index.exit
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %4 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smu_feature, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mapping.sroa.13.0.copyload83.i, i32 %5)
  %cmp1 = icmp ugt i32 %mapping.sroa.13.0.copyload83.i, %5
  br i1 %cmp1, label %do.end, label %if.end.if.end15_crit_edge, !prof !388

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 694, i32 noundef 9, ptr noundef null) #6
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %sh_prom = zext i32 %mapping.sroa.13.0.copyload83.i to i64
  %shl = shl nuw i64 1, %sh_prom
  %call23 = tail call i32 @smu_cmn_feature_update_enable_state(ptr noundef %smu, i64 noundef %shl, i1 noundef zeroext %enable)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %lor.lhs.false24.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end15 ], [ -22, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false24.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_get_pp_feature_mask(ptr noundef %smu, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %feature_mask_en_low.i = alloca i32, align 4
  %feature_mask_en_high.i = alloca i32, align 4
  %feature_mask_high.i = alloca i32, align 4
  %feature_mask_low.i = alloca i32, align 4
  %feature_mask.sroa.0 = alloca i64, align 8
  %sort_feature = alloca [95 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask.sroa.0)
  %0 = ptrtoint ptr %feature_mask.sroa.0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %feature_mask.sroa.0, align 8
  call void @llvm.lifetime.start.p0(i64 95, ptr nonnull %sort_feature) #6
  %1 = call ptr @memset(ptr %sort_feature, i32 255, i32 95)
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %2 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_apu, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_high.i) #6
  %4 = ptrtoint ptr %feature_mask_high.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %feature_mask_high.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_low.i) #6
  %5 = ptrtoint ptr %feature_mask_low.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %feature_mask_low.i, align 4
  %smu_feature.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %enabled.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %6 = ptrtoint ptr %smu_feature.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smu_feature.i, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %enabled.i, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %7)
  %cmp4.i.i = icmp eq i32 %call.i.i, %7
  br i1 %cmp4.i.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then
  %call.i30.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %feature_mask_high.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool3.not.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then1.i.smu_cmn_get_enabled_mask.exit_crit_edge

if.then1.i.smu_cmn_get_enabled_mask.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_get_enabled_mask.exit

if.end5.i:                                        ; preds = %if.then1.i
  %call.i31.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %feature_mask_low.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool7.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.smu_cmn_get_enabled_mask.exit_crit_edge

if.end5.i.smu_cmn_get_enabled_mask.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_get_enabled_mask.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %feature_mask_low.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %feature_mask_low.i, align 4
  %10 = ptrtoint ptr %feature_mask.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %feature_mask.sroa.0, align 8
  %11 = ptrtoint ptr %feature_mask_high.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %feature_mask_high.i, align 4
  %feature_mask.sroa.0.4.arrayidx10.i.sroa_idx = getelementptr inbounds i8, ptr %feature_mask.sroa.0, i32 4
  %13 = ptrtoint ptr %feature_mask.sroa.0.4.arrayidx10.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %feature_mask.sroa.0.4.arrayidx10.i.sroa_idx, align 4
  br label %smu_cmn_get_enabled_mask.exit.thread

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %smu_feature.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smu_feature.i, align 4
  %sub.i32.i = add i32 %15, 31
  %16 = lshr i32 %sub.i32.i, 3
  %mul.i.i = and i32 %16, 536870908
  %17 = call ptr @memcpy(ptr %feature_mask.sroa.0, ptr %enabled.i, i32 %mul.i.i)
  br label %smu_cmn_get_enabled_mask.exit.thread

smu_cmn_get_enabled_mask.exit.thread:             ; preds = %if.else.i, %if.end9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_low.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_high.i) #6
  br label %if.end8

smu_cmn_get_enabled_mask.exit:                    ; preds = %if.end5.i.smu_cmn_get_enabled_mask.exit_crit_edge, %if.then1.i.smu_cmn_get_enabled_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_low.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_high.i) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_en_low.i) #6
  %18 = ptrtoint ptr %feature_mask_en_low.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %feature_mask_en_low.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_en_high.i) #6
  %19 = ptrtoint ptr %feature_mask_en_high.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %feature_mask_en_high.i, align 4
  %smu_feature.i71 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %enabled.i72 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %20 = ptrtoint ptr %smu_feature.i71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smu_feature.i71, align 4
  %call.i.i79 = tail call i32 @_find_first_bit_be(ptr noundef %enabled.i72, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i79, i32 %21)
  %cmp4.i.i80 = icmp eq i32 %call.i.i79, %21
  br i1 %cmp4.i.i80, label %if.then1.i83, label %if.else.i89

if.then1.i83:                                     ; preds = %if.else
  %call2.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 11, i32 noundef 0, ptr noundef nonnull %feature_mask_en_low.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i82 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i82, label %if.end5.i85, label %if.then1.i83.smu_cmn_get_enabled_32_bits_mask.exit_crit_edge

if.then1.i83.smu_cmn_get_enabled_32_bits_mask.exit_crit_edge: ; preds = %if.then1.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_get_enabled_32_bits_mask.exit

if.end5.i85:                                      ; preds = %if.then1.i83
  %call6.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %feature_mask_en_high.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i84 = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i84, label %if.end9.i87, label %if.end5.i85.smu_cmn_get_enabled_32_bits_mask.exit_crit_edge

if.end5.i85.smu_cmn_get_enabled_32_bits_mask.exit_crit_edge: ; preds = %if.end5.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_get_enabled_32_bits_mask.exit

if.end9.i87:                                      ; preds = %if.end5.i85
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %feature_mask_en_low.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %feature_mask_en_low.i, align 4
  %24 = ptrtoint ptr %feature_mask.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %feature_mask.sroa.0, align 8
  %25 = ptrtoint ptr %feature_mask_en_high.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %feature_mask_en_high.i, align 4
  %feature_mask.sroa.0.4.arrayidx10.i86.sroa_idx = getelementptr inbounds i8, ptr %feature_mask.sroa.0, i32 4
  %27 = ptrtoint ptr %feature_mask.sroa.0.4.arrayidx10.i86.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %feature_mask.sroa.0.4.arrayidx10.i86.sroa_idx, align 4
  br label %smu_cmn_get_enabled_32_bits_mask.exit.thread

if.else.i89:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %smu_feature.i71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %smu_feature.i71, align 4
  %sub.i30.i = add i32 %29, 31
  %30 = lshr i32 %sub.i30.i, 3
  %mul.i.i88 = and i32 %30, 536870908
  %31 = call ptr @memcpy(ptr %feature_mask.sroa.0, ptr %enabled.i72, i32 %mul.i.i88)
  br label %smu_cmn_get_enabled_32_bits_mask.exit.thread

smu_cmn_get_enabled_32_bits_mask.exit.thread:     ; preds = %if.else.i89, %if.end9.i87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_en_high.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_en_low.i) #6
  br label %if.end8

smu_cmn_get_enabled_32_bits_mask.exit:            ; preds = %if.end5.i85.smu_cmn_get_enabled_32_bits_mask.exit_crit_edge, %if.then1.i83.smu_cmn_get_enabled_32_bits_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_en_high.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_en_low.i) #6
  br label %cleanup

if.end8:                                          ; preds = %smu_cmn_get_enabled_32_bits_mask.exit.thread, %smu_cmn_get_enabled_mask.exit.thread
  %feature_mask.sroa.0.4.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %feature_mask.sroa.0, i32 4
  %32 = ptrtoint ptr %feature_mask.sroa.0.4.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %feature_mask.sroa.0.4.feature_mask.sroa.0.4.feature_mask.sroa.0.4. = load i32, ptr %feature_mask.sroa.0.4.arrayidx.sroa_idx, align 4
  %33 = ptrtoint ptr %feature_mask.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %feature_mask.sroa.0.0.feature_mask.sroa.0.0.feature_mask.sroa.0.0. = load i32, ptr %feature_mask.sroa.0, align 8
  %call10 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %feature_mask.sroa.0.4.feature_mask.sroa.0.4.feature_mask.sroa.0.4., i32 noundef %feature_mask.sroa.0.0.feature_mask.sroa.0.0.feature_mask.sroa.0.0.) #6
  %34 = call ptr @memset(ptr %sort_feature, i32 255, i32 95)
  %feature_map.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %35 = ptrtoint ptr %feature_map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %feature_map.i, align 4
  %tobool25.not.i = icmp eq ptr %36, null
  br label %lor.lhs.false24.i

lor.lhs.false24.i:                                ; preds = %for.inc.lor.lhs.false24.i_crit_edge, %if.end8
  %i.0114 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.lor.lhs.false24.i_crit_edge ]
  br i1 %tobool25.not.i, label %lor.lhs.false24.i.for.inc_crit_edge, label %if.end27.i

lor.lhs.false24.i.for.inc_crit_edge:              ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27.i:                                       ; preds = %lor.lhs.false24.i
  %arrayidx29.i = getelementptr %struct.cmn2asic_mapping, ptr %36, i32 %i.0114
  %37 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %mapping.sroa.0.0.copyload79.i = load i32, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload79.i)
  %tobool31.not.i = icmp eq i32 %mapping.sroa.0.0.copyload79.i, 0
  br i1 %tobool31.not.i, label %if.end27.i.for.inc_crit_edge, label %smu_cmn_to_asic_specific_index.exit

if.end27.i.for.inc_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

smu_cmn_to_asic_specific_index.exit:              ; preds = %if.end27.i
  %mapping.sroa.13.0.arrayidx29.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx29.i, i32 4
  %38 = ptrtoint ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %mapping.sroa.13.0.copyload83.i = load i32, ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload83.i)
  %cmp13 = icmp slt i32 %mapping.sroa.13.0.copyload83.i, 0
  br i1 %cmp13, label %smu_cmn_to_asic_specific_index.exit.for.inc_crit_edge, label %if.end15

smu_cmn_to_asic_specific_index.exit.for.inc_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end15:                                         ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %i.0114 to i8
  %arrayidx16 = getelementptr [95 x i8], ptr %sort_feature, i32 0, i32 %mapping.sroa.13.0.copyload83.i
  %39 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %arrayidx16, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %smu_cmn_to_asic_specific_index.exit.for.inc_crit_edge, %if.end27.i.for.inc_crit_edge, %lor.lhs.false24.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, 95
  br i1 %exitcond.not, label %for.end, label %for.inc.lor.lhs.false24.i_crit_edge

for.inc.lor.lhs.false24.i_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false24.i

for.end:                                          ; preds = %for.inc
  %call17 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %call10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #6
  %add = add i32 %call17, %call10
  %smu_feature.i93 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  %enabled.i95 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  br label %for.body21

for.body21:                                       ; preds = %for.inc39.for.body21_crit_edge, %for.end
  %i.1118 = phi i32 [ 0, %for.end ], [ %inc40, %for.inc39.for.body21_crit_edge ]
  %size.0117 = phi i32 [ %add, %for.end ], [ %size.1, %for.inc39.for.body21_crit_edge ]
  %count.0116 = phi i32 [ 0, %for.end ], [ %count.1, %for.inc39.for.body21_crit_edge ]
  %arrayidx22 = getelementptr [95 x i8], ptr %sort_feature, i32 0, i32 %i.1118
  %40 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp24 = icmp slt i8 %41, 0
  br i1 %cmp24, label %for.body21.for.inc39_crit_edge, label %if.end27

for.body21.for.inc39_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc39

if.end27:                                         ; preds = %for.body21
  %conv23113 = zext i8 %41 to i32
  %inc28 = add i32 %count.0116, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %41)
  %cmp1.i = icmp ugt i8 %41, 94
  br i1 %cmp1.i, label %if.end27.smu_get_feature_name.exit_crit_edge, label %if.end.i

if.end27.smu_get_feature_name.exit_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_get_feature_name.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [95 x ptr], ptr @__smu_feature_names, i32 0, i32 %conv23113
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  br label %smu_get_feature_name.exit

smu_get_feature_name.exit:                        ; preds = %if.end.i, %if.end27.smu_get_feature_name.exit_crit_edge
  %retval.0.i92 = phi ptr [ %43, %if.end.i ], [ @.str.247, %if.end27.smu_get_feature_name.exit_crit_edge ]
  %44 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_apu, align 1, !range !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %smu_get_feature_name.exit.if.end.i94_crit_edge, label %land.lhs.true.i

smu_get_feature_name.exit.if.end.i94_crit_edge:   ; preds = %smu_get_feature_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i94

land.lhs.true.i:                                  ; preds = %smu_get_feature_name.exit
  %46 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %smu, align 8
  %family.i = getelementptr inbounds %struct.amdgpu_device, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %49)
  %cmp.i = icmp ult i32 %49, 144
  br i1 %cmp.i, label %land.lhs.true.i.smu_cmn_feature_is_enabled.exit.thread110_crit_edge, label %land.lhs.true.i.if.end.i94_crit_edge

land.lhs.true.i.if.end.i94_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i94

land.lhs.true.i.smu_cmn_feature_is_enabled.exit.thread110_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread110

if.end.i94:                                       ; preds = %land.lhs.true.i.if.end.i94_crit_edge, %smu_get_feature_name.exit.if.end.i94_crit_edge
  br i1 %cmp1.i, label %if.end.i94.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %lor.lhs.false24.i.i

if.end.i94.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

lor.lhs.false24.i.i:                              ; preds = %if.end.i94
  %50 = ptrtoint ptr %feature_map.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %feature_map.i, align 4
  %tobool25.not.i.i = icmp eq ptr %51, null
  br i1 %tobool25.not.i.i, label %lor.lhs.false24.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %if.end27.i.i

lor.lhs.false24.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

if.end27.i.i:                                     ; preds = %lor.lhs.false24.i.i
  %arrayidx29.i.i = getelementptr %struct.cmn2asic_mapping, ptr %51, i32 %conv23113
  %52 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %mapping.sroa.0.0.copyload79.i.i = load i32, ptr %arrayidx29.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload79.i.i)
  %tobool31.not.i.i = icmp eq i32 %mapping.sroa.0.0.copyload79.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end27.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %smu_cmn_to_asic_specific_index.exit.i

if.end27.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

smu_cmn_to_asic_specific_index.exit.i:            ; preds = %if.end27.i.i
  %mapping.sroa.13.0.arrayidx29.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx29.i.i, i32 4
  %53 = ptrtoint ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %mapping.sroa.13.0.copyload83.i.i = load i32, ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload83.i.i)
  %cmp2.i = icmp slt i32 %mapping.sroa.13.0.copyload83.i.i, 0
  br i1 %cmp2.i, label %smu_cmn_to_asic_specific_index.exit.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %if.end4.i

smu_cmn_to_asic_specific_index.exit.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

if.end4.i:                                        ; preds = %smu_cmn_to_asic_specific_index.exit.i
  %54 = ptrtoint ptr %smu_feature.i93 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %smu_feature.i93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mapping.sroa.13.0.copyload83.i.i, i32 %55)
  %cmp5.i = icmp ugt i32 %mapping.sroa.13.0.copyload83.i.i, %55
  br i1 %cmp5.i, label %do.end.i, label %if.end4.i.smu_cmn_feature_is_enabled.exit_crit_edge, !prof !388

if.end4.i.smu_cmn_feature_is_enabled.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 518, i32 noundef 9, ptr noundef null) #6
  br label %smu_cmn_feature_is_enabled.exit

smu_cmn_feature_is_enabled.exit:                  ; preds = %do.end.i, %if.end4.i.smu_cmn_feature_is_enabled.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %div3.i.i = lshr i32 %mapping.sroa.13.0.copyload83.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %enabled.i95, i32 %div3.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i96 = and i32 %mapping.sroa.13.0.copyload83.i.i, 31
  call void @mutex_unlock(ptr noundef %mutex.i) #6
  %58 = shl nuw i32 1, %and.i.i96
  %59 = and i32 %57, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool35.not = icmp eq i32 %59, 0
  br i1 %tobool35.not, label %smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread_crit_edge, label %smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread110_crit_edge

smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread110_crit_edge: ; preds = %smu_cmn_feature_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread110

smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread_crit_edge: ; preds = %smu_cmn_feature_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_is_enabled.exit.thread

smu_cmn_feature_is_enabled.exit.thread:           ; preds = %smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread_crit_edge, %smu_cmn_to_asic_specific_index.exit.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, %if.end27.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, %lor.lhs.false24.i.i.smu_cmn_feature_is_enabled.exit.thread_crit_edge, %if.end.i94.smu_cmn_feature_is_enabled.exit.thread_crit_edge
  br label %smu_cmn_feature_is_enabled.exit.thread110

smu_cmn_feature_is_enabled.exit.thread110:        ; preds = %smu_cmn_feature_is_enabled.exit.thread, %smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread110_crit_edge, %land.lhs.true.i.smu_cmn_feature_is_enabled.exit.thread110_crit_edge
  %60 = phi ptr [ @.str.9, %smu_cmn_feature_is_enabled.exit.thread ], [ @.str.8, %smu_cmn_feature_is_enabled.exit.smu_cmn_feature_is_enabled.exit.thread110_crit_edge ], [ @.str.8, %land.lhs.true.i.smu_cmn_feature_is_enabled.exit.thread110_crit_edge ]
  %call37 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %size.0117, ptr noundef nonnull @.str.7, i32 noundef %count.0116, ptr noundef %retval.0.i92, i32 noundef %i.1118, ptr noundef nonnull %60) #6
  %add38 = add i32 %call37, %size.0117
  br label %for.inc39

for.inc39:                                        ; preds = %smu_cmn_feature_is_enabled.exit.thread110, %for.body21.for.inc39_crit_edge
  %count.1 = phi i32 [ %count.0116, %for.body21.for.inc39_crit_edge ], [ %inc28, %smu_cmn_feature_is_enabled.exit.thread110 ]
  %size.1 = phi i32 [ %size.0117, %for.body21.for.inc39_crit_edge ], [ %add38, %smu_cmn_feature_is_enabled.exit.thread110 ]
  %inc40 = add nuw nsw i32 %i.1118, 1
  %exitcond119.not = icmp eq i32 %inc40, 95
  br i1 %exitcond119.not, label %for.inc39.cleanup_crit_edge, label %for.inc39.for.body21_crit_edge

for.inc39.for.body21_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21

for.inc39.cleanup_crit_edge:                      ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc39.cleanup_crit_edge, %smu_cmn_get_enabled_32_bits_mask.exit, %smu_cmn_get_enabled_mask.exit
  %retval.0 = phi i32 [ 0, %smu_cmn_get_enabled_mask.exit ], [ 0, %smu_cmn_get_enabled_32_bits_mask.exit ], [ %size.1, %for.inc39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 95, ptr nonnull %sort_feature) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_set_pp_feature_mask(ptr noundef %smu, i64 noundef %new_mask) local_unnamed_addr #0 align 64 {
entry:
  %feature_mask.addr.i36 = alloca i64, align 8
  %feature_mask.addr.i = alloca i64, align 8
  %feature_mask_high.i = alloca i32, align 4
  %feature_mask_low.i = alloca i32, align 4
  %feature_mask.sroa.0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask.sroa.0)
  %0 = ptrtoint ptr %feature_mask.sroa.0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %feature_mask.sroa.0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_high.i) #6
  %1 = ptrtoint ptr %feature_mask_high.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %feature_mask_high.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %feature_mask_low.i) #6
  %2 = ptrtoint ptr %feature_mask_low.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %feature_mask_low.i, align 4
  %smu_feature.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %enabled.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %3 = ptrtoint ptr %smu_feature.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smu_feature.i, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %enabled.i, i32 noundef %4) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %4)
  %cmp4.i.i = icmp eq i32 %call.i.i, %4
  br i1 %cmp4.i.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %entry
  %call.i30.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 13, i32 noundef 0, ptr noundef nonnull %feature_mask_high.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool3.not.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then1.i.smu_cmn_get_enabled_mask.exit_crit_edge

if.then1.i.smu_cmn_get_enabled_mask.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_get_enabled_mask.exit

if.end5.i:                                        ; preds = %if.then1.i
  %call.i31.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %feature_mask_low.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %tobool7.not.i = icmp eq i32 %call.i31.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.smu_cmn_get_enabled_mask.exit_crit_edge

if.end5.i.smu_cmn_get_enabled_mask.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_get_enabled_mask.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %feature_mask_low.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %feature_mask_low.i, align 4
  %7 = ptrtoint ptr %feature_mask.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %feature_mask.sroa.0, align 8
  %8 = ptrtoint ptr %feature_mask_high.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %feature_mask_high.i, align 4
  %feature_mask.sroa.0.4.arrayidx10.i.sroa_idx = getelementptr inbounds i8, ptr %feature_mask.sroa.0, i32 4
  %10 = ptrtoint ptr %feature_mask.sroa.0.4.arrayidx10.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %feature_mask.sroa.0.4.arrayidx10.i.sroa_idx, align 4
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %smu_feature.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smu_feature.i, align 4
  %sub.i32.i = add i32 %12, 31
  %13 = lshr i32 %sub.i32.i, 3
  %mul.i.i = and i32 %13, 536870908
  %14 = call ptr @memcpy(ptr %feature_mask.sroa.0, ptr %enabled.i, i32 %mul.i.i)
  br label %if.end

smu_cmn_get_enabled_mask.exit:                    ; preds = %if.end5.i.smu_cmn_get_enabled_mask.exit_crit_edge, %if.then1.i.smu_cmn_get_enabled_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i30.i, %if.then1.i.smu_cmn_get_enabled_mask.exit_crit_edge ], [ %call.i31.i, %if.end5.i.smu_cmn_get_enabled_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_low.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_high.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %if.end9.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_low.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %feature_mask_high.i) #6
  %feature_mask.sroa.0.4.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %feature_mask.sroa.0, i32 4
  %15 = ptrtoint ptr %feature_mask.sroa.0.4.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %feature_mask.sroa.0.4.feature_mask.sroa.0.4.feature_mask.sroa.0.4. = load i32, ptr %feature_mask.sroa.0.4.arrayidx.sroa_idx, align 4
  %conv = zext i32 %feature_mask.sroa.0.4.feature_mask.sroa.0.4.feature_mask.sroa.0.4. to i64
  %shl = shl nuw i64 %conv, 32
  %16 = ptrtoint ptr %feature_mask.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %feature_mask.sroa.0.0.feature_mask.sroa.0.0.feature_mask.sroa.0.0. = load i32, ptr %feature_mask.sroa.0, align 8
  %conv2 = zext i32 %feature_mask.sroa.0.0.feature_mask.sroa.0.0.feature_mask.sroa.0.0. to i64
  %or = or i64 %shl, %conv2
  %neg = xor i64 %or, -1
  %and = and i64 %neg, %new_mask
  %neg3 = xor i64 %new_mask, -1
  %and4 = and i64 %or, %neg3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask.addr.i)
  %17 = ptrtoint ptr %feature_mask.addr.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %and, ptr %feature_mask.addr.i, align 8
  %conv.i = trunc i64 %and to i32
  %call.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 7, i32 noundef %conv.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then6.smu_cmn_feature_update_enable_state.exit.thread_crit_edge

if.then6.smu_cmn_feature_update_enable_state.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_update_enable_state.exit.thread

if.end.i:                                         ; preds = %if.then6
  %18 = ptrtoint ptr %feature_mask.addr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %feature_mask.addr.i, align 8
  %shr.i = lshr i64 %19, 32
  %conv4.i = trunc i64 %shr.i to i32
  %call5.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 8, i32 noundef %conv4.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %smu_cmn_feature_update_enable_state.exit, label %if.end.i.smu_cmn_feature_update_enable_state.exit.thread_crit_edge

if.end.i.smu_cmn_feature_update_enable_state.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_update_enable_state.exit.thread

smu_cmn_feature_update_enable_state.exit.thread:  ; preds = %if.end.i.smu_cmn_feature_update_enable_state.exit.thread_crit_edge, %if.then6.smu_cmn_feature_update_enable_state.exit.thread_crit_edge
  %retval.0.i35.ph = phi i32 [ %call5.i, %if.end.i.smu_cmn_feature_update_enable_state.exit.thread_crit_edge ], [ %call.i, %if.then6.smu_cmn_feature_update_enable_state.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask.addr.i)
  br label %cleanup

smu_cmn_feature_update_enable_state.exit:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mutex55.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex55.i, i32 noundef 0) #6
  call void @__bitmap_or(ptr noundef %enabled.i, ptr noundef %enabled.i, ptr noundef nonnull %feature_mask.addr.i, i32 noundef 64) #6
  call void @mutex_unlock(ptr noundef %mutex55.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask.addr.i)
  br label %if.end11

if.end11:                                         ; preds = %smu_cmn_feature_update_enable_state.exit, %if.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool12.not = icmp eq i64 %and4, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask.addr.i36)
  %20 = ptrtoint ptr %feature_mask.addr.i36 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %and4, ptr %feature_mask.addr.i36, align 8
  %conv.i37 = trunc i64 %and4 to i32
  %call11.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 9, i32 noundef %conv.i37, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then13.smu_cmn_feature_update_enable_state.exit41.thread_crit_edge

if.then13.smu_cmn_feature_update_enable_state.exit41.thread_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_update_enable_state.exit41.thread

if.end14.i:                                       ; preds = %if.then13
  %21 = ptrtoint ptr %feature_mask.addr.i36 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %feature_mask.addr.i36, align 8
  %shr15.i = lshr i64 %22, 32
  %conv17.i = trunc i64 %shr15.i to i32
  %call18.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 10, i32 noundef %conv17.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %smu_cmn_feature_update_enable_state.exit41, label %if.end14.i.smu_cmn_feature_update_enable_state.exit41.thread_crit_edge

if.end14.i.smu_cmn_feature_update_enable_state.exit41.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_update_enable_state.exit41.thread

smu_cmn_feature_update_enable_state.exit41.thread: ; preds = %if.end14.i.smu_cmn_feature_update_enable_state.exit41.thread_crit_edge, %if.then13.smu_cmn_feature_update_enable_state.exit41.thread_crit_edge
  %retval.0.i40.ph = phi i32 [ %call18.i, %if.end14.i.smu_cmn_feature_update_enable_state.exit41.thread_crit_edge ], [ %call11.i, %if.then13.smu_cmn_feature_update_enable_state.exit41.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask.addr.i36)
  br label %cleanup

smu_cmn_feature_update_enable_state.exit41:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %call.i.i39 = call i32 @__bitmap_andnot(ptr noundef %enabled.i, ptr noundef %enabled.i, ptr noundef nonnull %feature_mask.addr.i36, i32 noundef 64) #6
  call void @mutex_unlock(ptr noundef %mutex.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask.addr.i36)
  br label %cleanup

cleanup:                                          ; preds = %smu_cmn_feature_update_enable_state.exit41, %smu_cmn_feature_update_enable_state.exit41.thread, %if.end11.cleanup_crit_edge, %smu_cmn_feature_update_enable_state.exit.thread, %smu_cmn_get_enabled_mask.exit
  %retval.0 = phi i32 [ %retval.0.i, %smu_cmn_get_enabled_mask.exit ], [ %retval.0.i35.ph, %smu_cmn_feature_update_enable_state.exit.thread ], [ %retval.0.i40.ph, %smu_cmn_feature_update_enable_state.exit41.thread ], [ 0, %smu_cmn_feature_update_enable_state.exit41 ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_disable_all_features_with_exception(ptr noundef %smu, i1 noundef zeroext %no_hw_disablement, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %feature_mask.addr.i = alloca i64, align 8
  %features_to_disable = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features_to_disable) #6
  %0 = ptrtoint ptr %features_to_disable to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %features_to_disable, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 95
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %mask)
  %cmp23.i = icmp ugt i32 %mask, 94
  br i1 %cmp23.i, label %if.then.cleanup_crit_edge, label %lor.lhs.false24.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24.i:                                ; preds = %if.then
  %feature_map.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 5
  %1 = ptrtoint ptr %feature_map.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %feature_map.i, align 4
  %tobool25.not.i = icmp eq ptr %2, null
  br i1 %tobool25.not.i, label %lor.lhs.false24.i.cleanup_crit_edge, label %if.end27.i

lor.lhs.false24.i.cleanup_crit_edge:              ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.i:                                       ; preds = %lor.lhs.false24.i
  %arrayidx29.i = getelementptr %struct.cmn2asic_mapping, ptr %2, i32 %mask
  %3 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %mapping.sroa.0.0.copyload79.i = load i32, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload79.i)
  %tobool31.not.i = icmp eq i32 %mapping.sroa.0.0.copyload79.i, 0
  br i1 %tobool31.not.i, label %if.end27.i.cleanup_crit_edge, label %smu_cmn_to_asic_specific_index.exit

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

smu_cmn_to_asic_specific_index.exit:              ; preds = %if.end27.i
  %mapping.sroa.13.0.arrayidx29.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx29.i, i32 4
  %4 = ptrtoint ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mapping.sroa.13.0.copyload83.i = load i32, ptr %mapping.sroa.13.0.arrayidx29.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload83.i)
  %cmp1 = icmp slt i32 %mapping.sroa.13.0.copyload83.i, 0
  br i1 %cmp1, label %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, label %if.end

smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sh_prom = zext i32 %mapping.sroa.13.0.copyload83.i to i64
  %shl = shl nuw i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %5 = ptrtoint ptr %features_to_disable to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %neg, ptr %features_to_disable, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  br i1 %no_hw_disablement, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %call.i = call i32 @__bitmap_andnot(ptr noundef %enabled, ptr noundef %enabled, ptr noundef nonnull %features_to_disable, i32 noundef 64) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %6 = ptrtoint ptr %features_to_disable to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features_to_disable, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask.addr.i)
  %8 = ptrtoint ptr %feature_mask.addr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %feature_mask.addr.i, align 8
  %conv.i = trunc i64 %7 to i32
  %call11.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 9, i32 noundef %conv.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.else.smu_cmn_feature_update_enable_state.exit_crit_edge

if.else.smu_cmn_feature_update_enable_state.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_update_enable_state.exit

if.end14.i:                                       ; preds = %if.else
  %9 = ptrtoint ptr %feature_mask.addr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %feature_mask.addr.i, align 8
  %shr15.i = lshr i64 %10, 32
  %conv17.i = trunc i64 %shr15.i to i32
  %call18.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 10, i32 noundef %conv17.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.else28.i, label %if.end14.i.smu_cmn_feature_update_enable_state.exit_crit_edge

if.end14.i.smu_cmn_feature_update_enable_state.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_feature_update_enable_state.exit

if.else28.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %mutex.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %enabled29.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %call.i.i = call i32 @__bitmap_andnot(ptr noundef %enabled29.i, ptr noundef %enabled29.i, ptr noundef nonnull %feature_mask.addr.i, i32 noundef 64) #6
  call void @mutex_unlock(ptr noundef %mutex.i) #6
  br label %smu_cmn_feature_update_enable_state.exit

smu_cmn_feature_update_enable_state.exit:         ; preds = %if.else28.i, %if.end14.i.smu_cmn_feature_update_enable_state.exit_crit_edge, %if.else.smu_cmn_feature_update_enable_state.exit_crit_edge
  %retval.0.i19 = phi i32 [ 0, %if.else28.i ], [ %call11.i, %if.else.smu_cmn_feature_update_enable_state.exit_crit_edge ], [ %call18.i, %if.end14.i.smu_cmn_feature_update_enable_state.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %smu_cmn_feature_update_enable_state.exit, %if.then4, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %lor.lhs.false24.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %retval.0.i19, %smu_cmn_feature_update_enable_state.exit ], [ -22, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false24.i.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end27.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_to_disable) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef %if_version, ptr noundef %smu_version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %if_version, null
  %tobool1.not = icmp eq ptr %smu_version, null
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %smc_fw_if_version = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 45
  %0 = ptrtoint ptr %smc_fw_if_version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smc_fw_if_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %land.lhs.true3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true3:                                   ; preds = %if.end
  %smc_fw_version = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 46
  %2 = ptrtoint ptr %smc_fw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smc_fw_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end14_crit_edge, label %if.then5

land.lhs.true3.if.end14_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then5:                                         ; preds = %land.lhs.true3
  br i1 %tobool.not, label %if.then5.if.end9_crit_edge, label %if.then7

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %if_version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %if_version, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5.if.end9_crit_edge
  br i1 %tobool1.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %smc_fw_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smc_fw_version, align 8
  %7 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %smu_version, align 4
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true3.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br i1 %tobool.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %call.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %if_version) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %if_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %if_version, align 4
  %10 = ptrtoint ptr %smc_fw_if_version to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %smc_fw_if_version, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end14.if.end21_crit_edge
  br i1 %tobool1.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  %call.i51 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %smu_version) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool25.not = icmp eq i32 %call.i51, 0
  br i1 %tobool25.not, label %if.end27, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smu_version, align 4
  %smc_fw_version28 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 46
  %13 = ptrtoint ptr %smc_fw_version28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %smc_fw_version28, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then23.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then11, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end9.cleanup_crit_edge ], [ %call.i, %if.then16.cleanup_crit_edge ], [ %call.i51, %if.then23.cleanup_crit_edge ], [ 0, %if.end27 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef %table_index, i32 noundef %argument, ptr noundef %table_data, i1 noundef zeroext %drv2smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %table_index)
  %cmp36.i = icmp ugt i32 %table_index, 14
  br i1 %cmp36.i, label %entry.cleanup_crit_edge, label %lor.lhs.false37.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false37.i:                                ; preds = %entry
  %table_map.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %2 = ptrtoint ptr %table_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table_map.i, align 8
  %tobool38.not.i = icmp eq ptr %3, null
  br i1 %tobool38.not.i, label %lor.lhs.false37.i.cleanup_crit_edge, label %if.end40.i

lor.lhs.false37.i.cleanup_crit_edge:              ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40.i:                                       ; preds = %lor.lhs.false37.i
  %arrayidx42.i = getelementptr %struct.cmn2asic_mapping, ptr %3, i32 %table_index
  %4 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mapping.sroa.0.0.copyload80.i = load i32, ptr %arrayidx42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload80.i)
  %tobool44.not.i = icmp eq i32 %mapping.sroa.0.0.copyload80.i, 0
  br i1 %tobool44.not.i, label %if.end40.i.cleanup_crit_edge, label %smu_cmn_to_asic_specific_index.exit

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

smu_cmn_to_asic_specific_index.exit:              ; preds = %if.end40.i
  %mapping.sroa.13.0.arrayidx42.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx42.i, i32 4
  %5 = ptrtoint ptr %mapping.sroa.13.0.arrayidx42.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %mapping.sroa.13.0.copyload84.i = load i32, ptr %mapping.sroa.13.0.arrayidx42.sroa_idx.i, align 4
  %tobool.not = icmp eq ptr %table_data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %mapping.sroa.13.0.copyload84.i)
  %cmp = icmp sgt i32 %mapping.sroa.13.0.copyload84.i, 14
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload84.i)
  %cmp4 = icmp slt i32 %mapping.sroa.13.0.copyload84.i, 0
  %or.cond61 = select i1 %or.cond, i1 true, i1 %cmp4
  br i1 %or.cond61, label %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, label %if.end

smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %smu_cmn_to_asic_specific_index.exit
  %arrayidx = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 %table_index
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %7 to i32
  br i1 %drv2smu, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %cpu_addr = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 12, i32 4
  %8 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_addr, align 8
  %10 = call ptr @memcpy(ptr %9, ptr %table_data, i32 %conv)
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic_funcs, align 4
  %flush_hdp = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %flush_hdp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %flush_hdp, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %cond.false, label %if.then6.if.end11.sink.split_crit_edge

if.then6.if.end11.sink.split_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split

cond.false:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 102, i32 1
  %15 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %funcs, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %cond.false, %if.then6.if.end11.sink.split_crit_edge
  %.sink = phi ptr [ %18, %cond.false ], [ %14, %if.then6.if.end11.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %1, ptr noundef null) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.end.if.end11_crit_edge
  %cond = phi i32 [ 20, %if.end.if.end11_crit_edge ], [ 21, %if.end11.sink.split ]
  %shl = shl i32 %argument, 16
  %or = or i32 %mapping.sroa.13.0.copyload84.i, %shl
  %call14 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef %cond, i32 noundef %or, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp ne i32 %call14, 0
  %brmerge = or i1 %tobool15.not, %drv2smu
  br i1 %brmerge, label %if.end11.cleanup_crit_edge, label %if.then19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end11
  %asic_funcs20 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %asic_funcs20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asic_funcs20, align 4
  %invalidate_hdp = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %invalidate_hdp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %invalidate_hdp, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %cond.false25, label %if.then19.cond.end29_crit_edge

if.then19.cond.end29_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end29

cond.false25:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %funcs27 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 102, i32 1
  %23 = ptrtoint ptr %funcs27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %funcs27, align 4
  %invalidate_hdp28 = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %invalidate_hdp28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %invalidate_hdp28, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false25, %if.then19.cond.end29_crit_edge
  %.sink68 = phi ptr [ %26, %cond.false25 ], [ %22, %if.then19.cond.end29_crit_edge ]
  tail call void %.sink68(ptr noundef %1, ptr noundef null) #6
  %cpu_addr30 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 12, i32 4
  %27 = ptrtoint ptr %cpu_addr30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpu_addr30, align 8
  %29 = call ptr @memcpy(ptr %table_data, ptr %28, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %cond.end29, %if.end11.cleanup_crit_edge, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge, %if.end40.i.cleanup_crit_edge, %lor.lhs.false37.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %smu_cmn_to_asic_specific_index.exit.cleanup_crit_edge ], [ %call14, %if.end11.cleanup_crit_edge ], [ 0, %cond.end29 ], [ -22, %lor.lhs.false37.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end40.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_write_watermarks_table(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %watermarks_table1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %0 = ptrtoint ptr %watermarks_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %watermarks_table1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %table_map.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %4 = ptrtoint ptr %table_map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_map.i.i, align 8
  %tobool38.not.i.i = icmp eq ptr %5, null
  br i1 %tobool38.not.i.i, label %if.end.cleanup_crit_edge, label %if.end40.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40.i.i:                                     ; preds = %if.end
  %arrayidx42.i.i = getelementptr %struct.cmn2asic_mapping, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %mapping.sroa.0.0.copyload80.i.i = load i32, ptr %arrayidx42.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload80.i.i)
  %tobool44.not.i.i = icmp eq i32 %mapping.sroa.0.0.copyload80.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end40.i.i.cleanup_crit_edge, label %smu_cmn_to_asic_specific_index.exit.i

if.end40.i.i.cleanup_crit_edge:                   ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

smu_cmn_to_asic_specific_index.exit.i:            ; preds = %if.end40.i.i
  %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i = getelementptr %struct.cmn2asic_mapping, ptr %5, i32 1, i32 1
  %7 = ptrtoint ptr %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %mapping.sroa.13.0.copyload84.i.i = load i32, ptr %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %mapping.sroa.13.0.copyload84.i.i)
  %8 = icmp ugt i32 %mapping.sroa.13.0.copyload84.i.i, 14
  br i1 %8, label %smu_cmn_to_asic_specific_index.exit.i.cleanup_crit_edge, label %if.end.i

smu_cmn_to_asic_specific_index.exit.i.cleanup_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %smu_cmn_to_asic_specific_index.exit.i
  %arrayidx.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %10 to i32
  %cpu_addr.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 12, i32 4
  %11 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_addr.i, align 8
  %13 = call ptr @memcpy(ptr %12, ptr %1, i32 %conv.i)
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asic_funcs.i, align 4
  %flush_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %flush_hdp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %flush_hdp.i, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %cond.false.i, label %if.end.i.if.end11.sink.split.i_crit_edge

if.end.i.if.end11.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 102, i32 1
  %18 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %cond.false.i, %if.end.i.if.end11.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %21, %cond.false.i ], [ %17, %if.end.i.if.end11.sink.split.i_crit_edge ]
  tail call void %.sink.i(ptr noundef %3, ptr noundef null) #6
  %call14.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 21, i32 noundef %mapping.sroa.13.0.copyload84.i.i, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11.sink.split.i, %smu_cmn_to_asic_specific_index.exit.i.cleanup_crit_edge, %if.end40.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %smu_cmn_to_asic_specific_index.exit.i.cleanup_crit_edge ], [ %call14.i, %if.end11.sink.split.i ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end40.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_write_pptable(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_pptable, align 4
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %table_map.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %4 = ptrtoint ptr %table_map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table_map.i.i, align 8
  %tobool38.not.i.i = icmp eq ptr %5, null
  br i1 %tobool38.not.i.i, label %entry.smu_cmn_update_table.exit_crit_edge, label %if.end40.i.i

entry.smu_cmn_update_table.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_update_table.exit

if.end40.i.i:                                     ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %mapping.sroa.0.0.copyload80.i.i = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload80.i.i)
  %tobool44.not.i.i = icmp eq i32 %mapping.sroa.0.0.copyload80.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end40.i.i.smu_cmn_update_table.exit_crit_edge, label %smu_cmn_to_asic_specific_index.exit.i

if.end40.i.i.smu_cmn_update_table.exit_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_update_table.exit

smu_cmn_to_asic_specific_index.exit.i:            ; preds = %if.end40.i.i
  %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i = getelementptr inbounds i8, ptr %5, i32 4
  %7 = ptrtoint ptr %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %mapping.sroa.13.0.copyload84.i.i = load i32, ptr %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %mapping.sroa.13.0.copyload84.i.i)
  %cmp.i = icmp sgt i32 %mapping.sroa.13.0.copyload84.i.i, 14
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload84.i.i)
  %cmp4.i = icmp slt i32 %mapping.sroa.13.0.copyload84.i.i, 0
  %or.cond61.i = select i1 %or.cond.i, i1 true, i1 %cmp4.i
  br i1 %or.cond61.i, label %smu_cmn_to_asic_specific_index.exit.i.smu_cmn_update_table.exit_crit_edge, label %if.end.i

smu_cmn_to_asic_specific_index.exit.i.smu_cmn_update_table.exit_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smu_cmn_update_table.exit

if.end.i:                                         ; preds = %smu_cmn_to_asic_specific_index.exit.i
  %arrayidx.i = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %9 to i32
  %cpu_addr.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 12, i32 4
  %10 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpu_addr.i, align 8
  %12 = call ptr @memcpy(ptr %11, ptr %1, i32 %conv.i)
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic_funcs.i, align 4
  %flush_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %flush_hdp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flush_hdp.i, align 4
  %tobool7.not.i = icmp eq ptr %16, null
  br i1 %tobool7.not.i, label %cond.false.i, label %if.end.i.if.end11.sink.split.i_crit_edge

if.end.i.if.end11.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 102, i32 1
  %17 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %cond.false.i, %if.end.i.if.end11.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %20, %cond.false.i ], [ %16, %if.end.i.if.end11.sink.split.i_crit_edge ]
  tail call void %.sink.i(ptr noundef %3, ptr noundef null) #6
  %call14.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 21, i32 noundef %mapping.sroa.13.0.copyload84.i.i, ptr noundef null) #6
  br label %smu_cmn_update_table.exit

smu_cmn_update_table.exit:                        ; preds = %if.end11.sink.split.i, %smu_cmn_to_asic_specific_index.exit.i.smu_cmn_update_table.exit_crit_edge, %if.end40.i.i.smu_cmn_update_table.exit_crit_edge, %entry.smu_cmn_update_table.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %smu_cmn_to_asic_specific_index.exit.i.smu_cmn_update_table.exit_crit_edge ], [ %call14.i, %if.end11.sink.split.i ], [ -22, %entry.smu_cmn_update_table.exit_crit_edge ], [ -22, %if.end40.i.i.smu_cmn_update_table.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef writeonly %metrics_table, i1 noundef zeroext %bypass_cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %1 to i32
  br i1 %bypass_cache, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %metrics_time = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %metrics_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %metrics_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false4

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %add = add i32 %3, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false4.if.then_crit_edge, label %lor.lhs.false4.if.end12_crit_edge

lor.lhs.false4.if.end12_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %metrics_table7 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %5 = ptrtoint ptr %metrics_table7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %metrics_table7, align 8
  %7 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smu, align 8
  %table_map.i.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 6
  %9 = ptrtoint ptr %table_map.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %table_map.i.i, align 8
  %tobool38.not.i.i = icmp eq ptr %10, null
  br i1 %tobool38.not.i.i, label %if.then.do.end_crit_edge, label %if.end40.i.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end40.i.i:                                     ; preds = %if.then
  %arrayidx42.i.i = getelementptr %struct.cmn2asic_mapping, ptr %10, i32 8
  %11 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %mapping.sroa.0.0.copyload80.i.i = load i32, ptr %arrayidx42.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.0.0.copyload80.i.i)
  %tobool44.not.i.i = icmp eq i32 %mapping.sroa.0.0.copyload80.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end40.i.i.do.end_crit_edge, label %smu_cmn_to_asic_specific_index.exit.i

if.end40.i.i.do.end_crit_edge:                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

smu_cmn_to_asic_specific_index.exit.i:            ; preds = %if.end40.i.i
  %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i = getelementptr %struct.cmn2asic_mapping, ptr %10, i32 8, i32 1
  %12 = ptrtoint ptr %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %mapping.sroa.13.0.copyload84.i.i = load i32, ptr %mapping.sroa.13.0.arrayidx42.sroa_idx.i.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %mapping.sroa.13.0.copyload84.i.i)
  %cmp.i = icmp sgt i32 %mapping.sroa.13.0.copyload84.i.i, 14
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mapping.sroa.13.0.copyload84.i.i)
  %cmp4.i = icmp slt i32 %mapping.sroa.13.0.copyload84.i.i, 0
  %or.cond61.i = select i1 %or.cond.i, i1 true, i1 %cmp4.i
  br i1 %or.cond61.i, label %smu_cmn_to_asic_specific_index.exit.i.do.end_crit_edge, label %if.end.i

smu_cmn_to_asic_specific_index.exit.i.do.end_crit_edge: ; preds = %smu_cmn_to_asic_specific_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %smu_cmn_to_asic_specific_index.exit.i
  %call14.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 20, i32 noundef %mapping.sroa.13.0.copyload84.i.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i.not = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i.not, label %if.then19.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then19.i:                                      ; preds = %if.end.i
  %asic_funcs20.i = getelementptr inbounds %struct.amdgpu_device, ptr %8, i32 0, i32 12
  %13 = ptrtoint ptr %asic_funcs20.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic_funcs20.i, align 4
  %invalidate_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %invalidate_hdp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %invalidate_hdp.i, align 4
  %tobool21.not.i = icmp eq ptr %16, null
  br i1 %tobool21.not.i, label %cond.false25.i, label %if.then19.i.if.end_crit_edge

if.then19.i.if.end_crit_edge:                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.false25.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %funcs27.i = getelementptr inbounds %struct.amdgpu_device, ptr %8, i32 0, i32 102, i32 1
  %17 = ptrtoint ptr %funcs27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs27.i, align 4
  %invalidate_hdp28.i = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %invalidate_hdp28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %invalidate_hdp28.i, align 4
  br label %if.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %smu_cmn_to_asic_specific_index.exit.i.do.end_crit_edge, %if.end40.i.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end40.i.i.do.end_crit_edge ], [ -22, %if.then.do.end_crit_edge ], [ %call14.i, %if.end.i.do.end_crit_edge ], [ -22, %smu_cmn_to_asic_specific_index.exit.i.do.end_crit_edge ]
  %21 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %smu, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %cond.false25.i, %if.then19.i.if.end_crit_edge
  %.sink68.i = phi ptr [ %20, %cond.false25.i ], [ %16, %if.then19.i.if.end_crit_edge ]
  tail call void %.sink68.i(ptr noundef %8, ptr noundef null) #6
  %cpu_addr30.i = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 12, i32 4
  %25 = ptrtoint ptr %cpu_addr30.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpu_addr30.i, align 8
  %27 = call ptr @memcpy(ptr %6, ptr %26, i32 %conv)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %metrics_time11 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %29 = ptrtoint ptr %metrics_time11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %metrics_time11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %lor.lhs.false4.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %metrics_table, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %metrics_table15 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %30 = ptrtoint ptr %metrics_table15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %metrics_table15, align 8
  %32 = call ptr @memcpy(ptr %metrics_table, ptr %31, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.then14 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_get_metrics_table(ptr noundef %smu, ptr noundef %metrics_table, i1 noundef zeroext %bypass_cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %metrics_lock = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %metrics_lock, i32 noundef 0) #6
  %call = tail call i32 @smu_cmn_get_metrics_table_locked(ptr noundef %smu, ptr noundef %metrics_table, i1 noundef zeroext %bypass_cache)
  tail call void @mutex_unlock(ptr noundef %metrics_lock) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @smu_cmn_init_soft_gpu_metrics(ptr nocapture noundef writeonly %table, i8 noundef zeroext %frev, i8 noundef zeroext %crev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %frev to i32
  %shl = shl nuw nsw i32 %conv, 16
  %conv1 = zext i8 %crev to i32
  %or = or i32 %shl, %conv1
  %0 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.351)
  switch i32 %or, label %entry.cleanup_crit_edge [
    i32 65536, label %entry.sw.epilog_crit_edge
    i32 65537, label %sw.bb2
    i32 65538, label %sw.bb3
    i32 65539, label %sw.bb4
    i32 131072, label %sw.bb5
    i32 131073, label %sw.bb6
    i32 131074, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %structure_size.0 = phi i16 [ 128, %sw.bb7 ], [ 120, %sw.bb6 ], [ 120, %sw.bb5 ], [ 120, %sw.bb4 ], [ 104, %sw.bb3 ], [ 96, %sw.bb2 ], [ 80, %entry.sw.epilog_crit_edge ]
  %conv8 = zext i16 %structure_size.0 to i32
  %1 = call ptr @memset(ptr %table, i32 255, i32 %conv8)
  %format_revision = getelementptr inbounds %struct.metrics_table_header, ptr %table, i32 0, i32 1
  %2 = ptrtoint ptr %format_revision to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frev, ptr %format_revision, align 2
  %content_revision = getelementptr inbounds %struct.metrics_table_header, ptr %table, i32 0, i32 2
  %3 = ptrtoint ptr %content_revision to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %crev, ptr %content_revision, align 1
  %4 = ptrtoint ptr %table to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %structure_size.0, ptr %table, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_cmn_set_mp1_state(ptr noundef %smu, i32 noundef %mp1_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %mp1_state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.smu_cmn_set_mp1_state, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef %switch.load, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %do.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.end ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smu_cmn_is_audio_func_enabled(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %domain_nr.i, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number, align 4
  %conv = zext i8 %7 to i32
  %call3 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %5, i32 noundef %conv, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enable_cnt.i = getelementptr inbounds %struct.pci_dev, ptr %call3, i32 0, i32 51
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i, i32 noundef 4) #6
  %8 = ptrtoint ptr %enable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %enable_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp sgt i32 %9, 0
  tail call void @pci_dev_put(ptr noundef nonnull %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.i, %if.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 331)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 331)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !277, !279, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!llvm.module.flags = !{!377, !378, !379, !380, !381, !382, !383, !384}
!llvm.ident = !{!385}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 279, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 739, i32 35}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 754, i32 35}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 755, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 755, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 755, i32 21}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 755, i32 28}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 761, i32 36}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 766, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 766, i32 17}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 985, i32 4}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @smu_cmn_get_metrics_table_locked._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @smu_cmn_get_metrics_table_locked._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 1078, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @smu_cmn_set_mp1_state._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @smu_cmn_set_mp1_state._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 145, i32 3}
!35 = !{ptr @__smu_cmn_reg_print_error._rs, !34, !"_rs", i1 false, i1 false}
!36 = !{ptr @__func__.__smu_cmn_reg_print_error, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__smu_cmn_reg_print_error._entry, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @__smu_cmn_reg_print_error._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__smu_cmn_reg_print_error._rs.19, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 161, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__smu_cmn_reg_print_error._entry.20, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @__smu_cmn_reg_print_error._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__smu_cmn_reg_print_error._rs.23, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 166, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__smu_cmn_reg_print_error._entry.24, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @__smu_cmn_reg_print_error._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @__smu_cmn_reg_print_error._rs.27, !51, !"_rs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 171, i32 3}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__smu_cmn_reg_print_error._entry.28, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @__smu_cmn_reg_print_error._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @__smu_cmn_reg_print_error._rs.31, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 176, i32 3}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__smu_cmn_reg_print_error._entry.32, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @__smu_cmn_reg_print_error._entry_ptr.34, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__smu_cmn_reg_print_error._rs.35, !61, !"_rs", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 180, i32 3}
!62 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__smu_cmn_reg_print_error._entry.36, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @__smu_cmn_reg_print_error._entry_ptr.38, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 66, i32 10}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 59, i32 2}
!69 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.44, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.46, !68, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.47, !68, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.48, !68, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.49, !68, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.50, !68, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.51, !68, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.52, !68, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.53, !68, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.54, !68, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.55, !68, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.56, !68, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.57, !68, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.58, !68, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.59, !68, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.60, !68, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.61, !68, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.62, !68, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.63, !68, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.64, !68, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.65, !68, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.66, !68, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.67, !68, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.68, !68, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.69, !68, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.70, !68, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.71, !68, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.72, !68, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.73, !68, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.74, !68, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.75, !68, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.76, !68, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.77, !68, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.78, !68, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.79, !68, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.80, !68, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.81, !68, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.82, !68, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.83, !68, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.84, !68, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.85, !68, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.86, !68, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.87, !68, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.88, !68, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.89, !68, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.90, !68, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.91, !68, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.92, !68, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.93, !68, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.94, !68, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.95, !68, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.96, !68, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.97, !68, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.98, !68, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.99, !68, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.100, !68, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.101, !68, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.102, !68, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.103, !68, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.104, !68, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.105, !68, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.106, !68, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.107, !68, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.108, !68, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.109, !68, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.110, !68, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.111, !68, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.112, !68, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.113, !68, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.114, !68, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.115, !68, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.116, !68, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.117, !68, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.118, !68, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.119, !68, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.120, !68, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.121, !68, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.122, !68, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.123, !68, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.124, !68, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.125, !68, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.126, !68, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.127, !68, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.128, !68, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.129, !68, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.130, !68, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.131, !68, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.132, !68, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.133, !68, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.134, !68, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.135, !68, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.136, !68, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.137, !68, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.138, !68, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.139, !68, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.140, !68, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.141, !68, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.142, !68, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.143, !68, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.144, !68, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.145, !68, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.146, !68, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.147, !68, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.148, !68, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.149, !68, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.150, !68, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.151, !68, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.152, !68, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.153, !68, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.154, !68, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.155, !68, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.156, !68, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.157, !68, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.158, !68, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.159, !68, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.160, !68, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.161, !68, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.162, !68, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.163, !68, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.164, !68, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.165, !68, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.166, !68, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.167, !68, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.168, !68, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.169, !68, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.170, !68, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.171, !68, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.172, !68, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.173, !68, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.174, !68, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.175, !68, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.176, !68, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.177, !68, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.178, !68, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.179, !68, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.180, !68, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.181, !68, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.182, !68, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.183, !68, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.184, !68, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.185, !68, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.186, !68, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.187, !68, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.188, !68, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.189, !68, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.190, !68, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.191, !68, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.192, !68, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.193, !68, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.194, !68, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.195, !68, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.196, !68, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.197, !68, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.198, !68, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.199, !68, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.200, !68, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.201, !68, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.202, !68, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.203, !68, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.204, !68, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.205, !68, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.206, !68, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.207, !68, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.208, !68, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.209, !68, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.210, !68, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.211, !68, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.212, !68, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.213, !68, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.214, !68, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.215, !68, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.216, !68, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.217, !68, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.218, !68, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.219, !68, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.220, !68, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.221, !68, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.222, !68, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.223, !68, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.224, !68, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.225, !68, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.226, !68, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.227, !68, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.228, !68, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.229, !68, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.230, !68, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.231, !68, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.232, !68, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.233, !68, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.234, !68, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.235, !68, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.236, !68, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.237, !68, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.238, !68, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.239, !68, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.240, !68, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.241, !68, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.242, !68, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.243, !68, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.244, !68, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.245, !68, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.246, !68, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @__smu_message_names, !276, !"__smu_message_names", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 58, i32 27}
!277 = !{ptr @.str.247, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 711, i32 10}
!279 = !{ptr @.str.248, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 704, i32 2}
!281 = !{ptr @.str.249, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.250, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.251, !280, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.252, !280, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.253, !280, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.254, !280, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.255, !280, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.256, !280, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.257, !280, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.258, !280, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.259, !280, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.260, !280, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.261, !280, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.262, !280, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.263, !280, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.264, !280, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.265, !280, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.266, !280, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.267, !280, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.268, !280, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.269, !280, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.270, !280, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.271, !280, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.272, !280, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.273, !280, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.274, !280, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.275, !280, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.276, !280, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.277, !280, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.278, !280, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.279, !280, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.280, !280, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.281, !280, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.282, !280, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.283, !280, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.284, !280, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.285, !280, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.286, !280, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.287, !280, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.288, !280, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.289, !280, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.290, !280, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.291, !280, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.292, !280, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.293, !280, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.294, !280, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.295, !280, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.296, !280, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.297, !280, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.298, !280, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.299, !280, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.300, !280, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.301, !280, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.302, !280, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.303, !280, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.304, !280, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @.str.305, !280, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.306, !280, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.307, !280, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.308, !280, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.309, !280, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.310, !280, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.311, !280, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.312, !280, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.313, !280, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.314, !280, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.315, !280, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.316, !280, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.317, !280, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.318, !280, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.319, !280, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.320, !280, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.321, !280, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.322, !280, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.323, !280, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.324, !280, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.325, !280, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.326, !280, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.327, !280, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.328, !280, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.329, !280, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.330, !280, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.331, !280, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.332, !280, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.333, !280, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.334, !280, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.335, !280, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.336, !280, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.337, !280, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.338, !280, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.339, !280, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.340, !280, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.341, !280, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.342, !280, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @__smu_feature_names, !376, !"__smu_feature_names", i1 false, i1 false}
!376 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c", i32 703, i32 20}
!377 = !{i32 1, !"wchar_size", i32 2}
!378 = !{i32 1, !"min_enum_size", i32 4}
!379 = !{i32 8, !"branch-target-enforcement", i32 0}
!380 = !{i32 8, !"sign-return-address", i32 0}
!381 = !{i32 8, !"sign-return-address-all", i32 0}
!382 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!383 = !{i32 7, !"uwtable", i32 1}
!384 = !{i32 7, !"frame-pointer", i32 2}
!385 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!386 = !{i8 0, i8 2}
!387 = !{!"branch_weights", i32 2000, i32 1}
!388 = !{!"branch_weights", i32 1, i32 2000}
