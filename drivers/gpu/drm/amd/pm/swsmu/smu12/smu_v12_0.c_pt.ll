; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu12/smu_v12_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/smu_v12_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atom_get_smu_clock_info_parameters_v3_1 = type { i8, i8, i8, i8 }
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct.atom_firmware_info_v3_1 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, [6 x i32] }
%struct.atom_firmware_info_v3_3 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, [2 x i32] }

@smu_v12_0_check_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"amdgpu: smu driver if version = 0x%08x, smu fw if version = 0x%08x, smu fw version = 0x%08x (%d.%d.%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smu_v12_0_check_fw_version\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/smu_v12_0.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smu_v12_0_check_fw_version._entry_ptr = internal global ptr @smu_v12_0_check_fw_version._entry, section ".printk_index", align 4
@smu_v12_0_check_fw_version._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 104, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: SMU driver if version not matched\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@smu_v12_0_check_fw_version._entry_ptr.8 = internal global ptr @smu_v12_0_check_fw_version._entry.5, section ".printk_index", align 4
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"disable gfxoff timeout and failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@smu_v12_0_get_vbios_bootup_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 331, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: unknown atom_firmware_info version! for smu12\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smu_v12_0_get_vbios_bootup_values\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@smu_v12_0_get_vbios_bootup_values._entry_ptr = internal global ptr @smu_v12_0_get_vbios_bootup_values._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 6, i64 7, i64 12, i64 13, i64 14]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 100, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 104, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 173, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/smu_v12_0.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 331, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @smu_v12_0_check_fw_version._entry, ptr @smu_v12_0_check_fw_version._entry.5, ptr @smu_v12_0_check_fw_version._entry_ptr, ptr @smu_v12_0_check_fw_version._entry_ptr.8, ptr @smu_v12_0_get_vbios_bootup_values._entry, ptr @smu_v12_0_get_vbios_bootup_values._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v12_0_check_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v12_0_check_fw_version._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v12_0_get_vbios_bootup_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_check_fw_status(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 61931556) #5
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_check_fw_version(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  %if_version = alloca i32, align 4
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_version) #5
  %2 = ptrtoint ptr %if_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %if_version, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #5
  %3 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %smu_version, align 4
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef nonnull %if_version, ptr noundef nonnull %smu_version) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smu_version, align 4
  %shr = lshr i32 %5, 16
  %shr2 = lshr i32 %5, 8
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %6 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_apu, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 17
  %8 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %fw_version, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %9 = ptrtoint ptr %if_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %if_version, align 4
  %smc_driver_if_version = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 44
  %11 = ptrtoint ptr %smc_driver_if_version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smc_driver_if_version, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end10.cleanup_crit_edge, label %do.end

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smu, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %conv16 = and i32 %shr2, 255
  %conv17 = and i32 %5, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef %10, i32 noundef %5, i32 noundef %shr, i32 noundef %conv16, i32 noundef %conv17) #8
  %17 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smu, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.6) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_version) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_smc_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_powergate_sdma(ptr noundef %smu, i1 noundef zeroext %gate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_apu = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 43
  %0 = ptrtoint ptr %is_apu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_apu, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %gate, i32 105, i32 106
  %call3 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef %., ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_set_gfx_cgpg(ptr noundef %smu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %pg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 100
  %2 = ptrtoint ptr %pg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %in_s0ix = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 140
  %4 = ptrtoint ptr %in_s0ix to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_s0ix, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %cond = zext i1 %enable to i32
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 129, i32 noundef %cond, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_get_gfxoff_status(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 22
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 200
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 22) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 22
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 200
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %and20 = lshr i32 %cond, 1
  %shr = and i32 %and20, 3
  ret i32 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_gfx_off_control(ptr noundef %smu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 73, ptr noundef null) #5
  br label %if.end5

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 74, ptr noundef null) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.else
  %timeout.0 = phi i32 [ 500, %if.else ], [ %dec, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.cond.false.i_crit_edge, label %land.lhs.true.i

while.cond.cond.false.i_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %while.cond
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool7.not.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true3.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 22
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 200
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %add.i, i32 noundef 0, i32 noundef 22) #5
  br label %smu_v12_0_get_gfxoff_status.exit

cond.false.i:                                     ; preds = %land.lhs.true3.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %while.cond.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 22
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 200
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0) #5
  br label %smu_v12_0_get_gfxoff_status.exit

smu_v12_0_get_gfxoff_status.exit:                 ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  %16 = and i32 %cond.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.not = icmp eq i32 %16, 4
  br i1 %cmp.not, label %smu_v12_0_get_gfxoff_status.exit.if.end5_crit_edge, label %while.body

smu_v12_0_get_gfxoff_status.exit.if.end5_crit_edge: ; preds = %smu_v12_0_get_gfxoff_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

while.body:                                       ; preds = %smu_v12_0_get_gfxoff_status.exit
  tail call void @msleep(i32 noundef 1) #5
  %dec = add nsw i32 %timeout.0, -1
  %cmp3 = icmp eq i32 %dec, 0
  br i1 %cmp3, label %if.then4, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %smu_v12_0_get_gfxoff_status.exit.if.end5_crit_edge, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call1, %if.then4 ], [ %call1, %smu_v12_0_get_gfxoff_status.exit.if.end5_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_fini_smc_tables(ptr nocapture noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %clocks_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %clocks_table, align 4
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %3 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %metrics_table, align 8
  tail call void @kfree(ptr noundef %4) #5
  %5 = ptrtoint ptr %metrics_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %metrics_table, align 8
  %watermarks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %6 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %watermarks_table, align 8
  tail call void @kfree(ptr noundef %7) #5
  %8 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %watermarks_table, align 8
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %9 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpu_metrics_table, align 4
  tail call void @kfree(ptr noundef %10) #5
  %11 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %gpu_metrics_table, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_set_default_dpm_tables(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 5
  %0 = ptrtoint ptr %clocks_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks_table, align 4
  %call = tail call i32 @smu_cmn_update_table(ptr noundef %smu, i32 noundef 3, i32 noundef 0, ptr noundef %1, i1 noundef zeroext false) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_update_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_mode2_reset(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 53, i32 noundef 2, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %min, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #5
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_type, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 13, label %if.end.sw.bb_crit_edge66
    i32 12, label %if.end.sw.bb8_crit_edge
    i32 14, label %if.end.sw.bb8_crit_edge67
    i32 7, label %if.end.sw.bb8_crit_edge68
    i32 6, label %sw.bb17
    i32 1, label %sw.bb26
  ]

if.end.sw.bb8_crit_edge68:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

if.end.sw.bb8_crit_edge67:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

if.end.sw.bb_crit_edge66:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge66
  %call1 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 131, i32 noundef %min, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %call4 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 130, i32 noundef %max, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.sw.epilog_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge67, %if.end.sw.bb8_crit_edge68
  %call9 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 143, i32 noundef %min, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  %call13 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 133, i32 noundef %max, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.sw.epilog_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %call18 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 116, i32 noundef %min, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %sw.bb17
  %call22 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 132, i32 noundef %max, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.sw.epilog_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %call27 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 108, i32 noundef %min, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %sw.bb26
  %call31 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 134, i32 noundef %max, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.sw.epilog_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end30.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end30.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call18, %sw.bb17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call27, %sw.bb26.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_set_driver_table_location(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_address = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 12, i32 3
  %0 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mc_address, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %shr = lshr i64 %1, 32
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 16, i32 noundef %conv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mc_address, align 8
  %conv7 = trunc i64 %3 to i32
  %call8 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 17, i32 noundef %conv7, ptr noundef null) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.if.end9_crit_edge ], [ %call8, %if.then5 ], [ 0, %entry.if.end9_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v12_0_get_vbios_bootup_values(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  %input.i220 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i212 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i204 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i196 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i188 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %header = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %size, align 2, !annotation !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #5
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #5
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header) #5
  %3 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %header, align 4, !annotation !31
  %4 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu, align 8
  %call = call i32 @amdgpu_atombios_get_data_table(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %header) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %header, align 4
  %format_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %format_revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %format_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.not = icmp eq i8 %9, 3
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %content_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %content_revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %content_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %switch = icmp ult i8 %15, 3
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %firmware_revision = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %firmware_revision to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %firmware_revision, align 1
  %boot_values = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8
  %18 = ptrtoint ptr %boot_values to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %boot_values, align 8
  %bootup_sclk_in10khz = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 2
  %19 = ptrtoint ptr %bootup_sclk_in10khz to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %bootup_sclk_in10khz, align 1
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %21 = ptrtoint ptr %gfxclk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %gfxclk, align 4
  %bootup_mclk_in10khz = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 3
  %22 = ptrtoint ptr %bootup_mclk_in10khz to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %bootup_mclk_in10khz, align 1
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %24 = ptrtoint ptr %uclk to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %uclk, align 8
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %25 = ptrtoint ptr %socclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %socclk, align 4
  %dcefclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %26 = ptrtoint ptr %dcefclk to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dcefclk, align 8
  %bootup_vddc_mv = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 7
  %27 = ptrtoint ptr %bootup_vddc_mv to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %bootup_vddc_mv, align 1
  %vddc = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 8
  %29 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vddc, align 8
  %bootup_vddci_mv = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 8
  %30 = ptrtoint ptr %bootup_vddci_mv to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %bootup_vddci_mv, align 1
  %vddci = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 9
  %32 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %vddci, align 2
  %bootup_mvddc_mv = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 9
  %33 = ptrtoint ptr %bootup_mvddc_mv to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %bootup_mvddc_mv, align 1
  %mvddc = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 10
  %35 = ptrtoint ptr %mvddc to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %mvddc, align 4
  %bootup_vddgfx_mv = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 10
  %36 = ptrtoint ptr %bootup_vddgfx_mv to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %bootup_vddgfx_mv, align 1
  %vdd_gfx = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 11
  %38 = ptrtoint ptr %vdd_gfx to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %vdd_gfx, align 2
  %coolingsolution_id = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 12
  %39 = ptrtoint ptr %coolingsolution_id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %coolingsolution_id, align 1
  %cooling_id = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 12
  %41 = ptrtoint ptr %cooling_id to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %cooling_id, align 8
  %pp_table_id = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 13
  %42 = ptrtoint ptr %pp_table_id to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %pp_table_id, align 4
  %firmware_capability = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %firmware_revision29 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 1
  %43 = ptrtoint ptr %firmware_revision29 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %firmware_revision29, align 1
  %boot_values31 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8
  %45 = ptrtoint ptr %boot_values31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %boot_values31, align 8
  %bootup_sclk_in10khz33 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 2
  %46 = ptrtoint ptr %bootup_sclk_in10khz33 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %bootup_sclk_in10khz33, align 1
  %gfxclk36 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %48 = ptrtoint ptr %gfxclk36 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %gfxclk36, align 4
  %bootup_mclk_in10khz37 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 3
  %49 = ptrtoint ptr %bootup_mclk_in10khz37 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %bootup_mclk_in10khz37, align 1
  %uclk40 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %51 = ptrtoint ptr %uclk40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %uclk40, align 8
  %socclk43 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %52 = ptrtoint ptr %socclk43 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %socclk43, align 4
  %dcefclk46 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %53 = ptrtoint ptr %dcefclk46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %dcefclk46, align 8
  %bootup_vddc_mv47 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 7
  %54 = ptrtoint ptr %bootup_vddc_mv47 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %bootup_vddc_mv47, align 1
  %vddc50 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 8
  %56 = ptrtoint ptr %vddc50 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %vddc50, align 8
  %bootup_vddci_mv51 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 8
  %57 = ptrtoint ptr %bootup_vddci_mv51 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %bootup_vddci_mv51, align 1
  %vddci54 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 9
  %59 = ptrtoint ptr %vddci54 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %vddci54, align 2
  %bootup_mvddc_mv55 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 9
  %60 = ptrtoint ptr %bootup_mvddc_mv55 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %bootup_mvddc_mv55, align 1
  %mvddc58 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 10
  %62 = ptrtoint ptr %mvddc58 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %mvddc58, align 4
  %bootup_vddgfx_mv59 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 10
  %63 = ptrtoint ptr %bootup_vddgfx_mv59 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %bootup_vddgfx_mv59, align 1
  %vdd_gfx62 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 11
  %65 = ptrtoint ptr %vdd_gfx62 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %vdd_gfx62, align 2
  %coolingsolution_id63 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 12
  %66 = ptrtoint ptr %coolingsolution_id63 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %coolingsolution_id63, align 1
  %cooling_id66 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 12
  %68 = ptrtoint ptr %cooling_id66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %cooling_id66, align 8
  %pplib_pptable_id = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 23
  %69 = ptrtoint ptr %pplib_pptable_id to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %pplib_pptable_id, align 1
  %pp_table_id69 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 13
  %71 = ptrtoint ptr %pp_table_id69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %pp_table_id69, align 4
  %firmware_capability70 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %.sink.in = phi ptr [ %firmware_capability, %sw.bb ], [ %firmware_capability70, %sw.default ]
  %72 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %.sink = load i32, ptr %.sink.in, align 1
  %73 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 18
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink, ptr %73, align 8
  %75 = ptrtoint ptr %format_revision to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %format_revision, align 1
  %conv75 = zext i8 %76 to i32
  %format_revision78 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 14
  %77 = ptrtoint ptr %format_revision78 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv75, ptr %format_revision78, align 8
  %78 = ptrtoint ptr %content_revision to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %content_revision, align 1
  %conv80 = zext i8 %79 to i32
  %content_revision83 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 15
  %80 = ptrtoint ptr %content_revision83 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv80, ptr %content_revision83, align 4
  %81 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i) #5
  %83 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 65536, ptr %input.i, align 4
  %mode_info.i = getelementptr inbounds %struct.amdgpu_device, ptr %82, i32 0, i32 79
  %84 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mode_info.i, align 8
  %call.i = call i32 @amdgpu_atom_execute_table(ptr noundef %85, i32 noundef 41, ptr noundef nonnull %input.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.smu_v12_0_atom_get_smu_clockinfo.exit_crit_edge

sw.epilog.smu_v12_0_atom_get_smu_clockinfo.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %smu_v12_0_atom_get_smu_clockinfo.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %socclk87 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %86 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %input.i, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #5
  %div.i = udiv i32 %88, 10000
  %89 = ptrtoint ptr %socclk87 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %div.i, ptr %socclk87, align 4
  br label %smu_v12_0_atom_get_smu_clockinfo.exit

smu_v12_0_atom_get_smu_clockinfo.exit:            ; preds = %if.end.i, %sw.epilog.smu_v12_0_atom_get_smu_clockinfo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i) #5
  %90 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i188) #5
  %92 = ptrtoint ptr %input.i188 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 16973824, ptr %input.i188, align 4
  %mode_info.i190 = getelementptr inbounds %struct.amdgpu_device, ptr %91, i32 0, i32 79
  %93 = ptrtoint ptr %mode_info.i190 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mode_info.i190, align 8
  %call.i191 = call i32 @amdgpu_atom_execute_table(ptr noundef %94, i32 noundef 41, ptr noundef nonnull %input.i188) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i192 = icmp eq i32 %call.i191, 0
  br i1 %tobool.not.i192, label %if.end.i194, label %smu_v12_0_atom_get_smu_clockinfo.exit.smu_v12_0_atom_get_smu_clockinfo.exit195_crit_edge

smu_v12_0_atom_get_smu_clockinfo.exit.smu_v12_0_atom_get_smu_clockinfo.exit195_crit_edge: ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %smu_v12_0_atom_get_smu_clockinfo.exit195

if.end.i194:                                      ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dcefclk92 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %95 = ptrtoint ptr %input.i188 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %input.i188, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96) #5
  %div.i193 = udiv i32 %97, 10000
  %98 = ptrtoint ptr %dcefclk92 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %div.i193, ptr %dcefclk92, align 4
  br label %smu_v12_0_atom_get_smu_clockinfo.exit195

smu_v12_0_atom_get_smu_clockinfo.exit195:         ; preds = %if.end.i194, %smu_v12_0_atom_get_smu_clockinfo.exit.smu_v12_0_atom_get_smu_clockinfo.exit195_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i188) #5
  %99 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i196) #5
  %101 = ptrtoint ptr %input.i196 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 327680, ptr %input.i196, align 4
  %mode_info.i198 = getelementptr inbounds %struct.amdgpu_device, ptr %100, i32 0, i32 79
  %102 = ptrtoint ptr %mode_info.i198 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mode_info.i198, align 8
  %call.i199 = call i32 @amdgpu_atom_execute_table(ptr noundef %103, i32 noundef 41, ptr noundef nonnull %input.i196) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool.not.i200, label %if.end.i202, label %smu_v12_0_atom_get_smu_clockinfo.exit195.smu_v12_0_atom_get_smu_clockinfo.exit203_crit_edge

smu_v12_0_atom_get_smu_clockinfo.exit195.smu_v12_0_atom_get_smu_clockinfo.exit203_crit_edge: ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit195
  call void @__sanitizer_cov_trace_pc() #7
  br label %smu_v12_0_atom_get_smu_clockinfo.exit203

if.end.i202:                                      ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit195
  call void @__sanitizer_cov_trace_pc() #7
  %vclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 6
  %104 = ptrtoint ptr %input.i196 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %input.i196, align 4
  %106 = call i32 @llvm.bswap.i32(i32 %105) #5
  %div.i201 = udiv i32 %106, 10000
  %107 = ptrtoint ptr %vclk to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %div.i201, ptr %vclk, align 4
  br label %smu_v12_0_atom_get_smu_clockinfo.exit203

smu_v12_0_atom_get_smu_clockinfo.exit203:         ; preds = %if.end.i202, %smu_v12_0_atom_get_smu_clockinfo.exit195.smu_v12_0_atom_get_smu_clockinfo.exit203_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i196) #5
  %108 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i204) #5
  %110 = ptrtoint ptr %input.i204 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 458752, ptr %input.i204, align 4
  %mode_info.i206 = getelementptr inbounds %struct.amdgpu_device, ptr %109, i32 0, i32 79
  %111 = ptrtoint ptr %mode_info.i206 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mode_info.i206, align 8
  %call.i207 = call i32 @amdgpu_atom_execute_table(ptr noundef %112, i32 noundef 41, ptr noundef nonnull %input.i204) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool.not.i208 = icmp eq i32 %call.i207, 0
  br i1 %tobool.not.i208, label %if.end.i210, label %smu_v12_0_atom_get_smu_clockinfo.exit203.smu_v12_0_atom_get_smu_clockinfo.exit211_crit_edge

smu_v12_0_atom_get_smu_clockinfo.exit203.smu_v12_0_atom_get_smu_clockinfo.exit211_crit_edge: ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit203
  call void @__sanitizer_cov_trace_pc() #7
  br label %smu_v12_0_atom_get_smu_clockinfo.exit211

if.end.i210:                                      ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit203
  call void @__sanitizer_cov_trace_pc() #7
  %dclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 7
  %113 = ptrtoint ptr %input.i204 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %input.i204, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114) #5
  %div.i209 = udiv i32 %115, 10000
  %116 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %div.i209, ptr %dclk, align 4
  br label %smu_v12_0_atom_get_smu_clockinfo.exit211

smu_v12_0_atom_get_smu_clockinfo.exit211:         ; preds = %if.end.i210, %smu_v12_0_atom_get_smu_clockinfo.exit203.smu_v12_0_atom_get_smu_clockinfo.exit211_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i204) #5
  %117 = ptrtoint ptr %format_revision78 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %format_revision78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %118)
  %cmp105 = icmp eq i32 %118, 3
  br i1 %cmp105, label %land.lhs.true, label %smu_v12_0_atom_get_smu_clockinfo.exit211.if.end117_crit_edge

smu_v12_0_atom_get_smu_clockinfo.exit211.if.end117_crit_edge: ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit211
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

land.lhs.true:                                    ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit211
  %119 = ptrtoint ptr %content_revision83 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %content_revision83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp110 = icmp ugt i32 %120, 1
  br i1 %cmp110, label %if.then112, label %land.lhs.true.if.end117_crit_edge

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

if.then112:                                       ; preds = %land.lhs.true
  %121 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i212) #5
  %123 = ptrtoint ptr %input.i212 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 50331648, ptr %input.i212, align 4
  %mode_info.i214 = getelementptr inbounds %struct.amdgpu_device, ptr %122, i32 0, i32 79
  %124 = ptrtoint ptr %mode_info.i214 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mode_info.i214, align 8
  %call.i215 = call i32 @amdgpu_atom_execute_table(ptr noundef %125, i32 noundef 41, ptr noundef nonnull %input.i212) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.not.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.not.i216, label %if.end.i218, label %if.then112.smu_v12_0_atom_get_smu_clockinfo.exit219_crit_edge

if.then112.smu_v12_0_atom_get_smu_clockinfo.exit219_crit_edge: ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  br label %smu_v12_0_atom_get_smu_clockinfo.exit219

if.end.i218:                                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #7
  %fclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %126 = ptrtoint ptr %input.i212 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %input.i212, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #5
  %div.i217 = udiv i32 %128, 10000
  %129 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %div.i217, ptr %fclk, align 4
  br label %smu_v12_0_atom_get_smu_clockinfo.exit219

smu_v12_0_atom_get_smu_clockinfo.exit219:         ; preds = %if.end.i218, %if.then112.smu_v12_0_atom_get_smu_clockinfo.exit219_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i212) #5
  br label %if.end117

if.end117:                                        ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit219, %land.lhs.true.if.end117_crit_edge, %smu_v12_0_atom_get_smu_clockinfo.exit211.if.end117_crit_edge
  %130 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i220) #5
  %132 = ptrtoint ptr %input.i220 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 393216, ptr %input.i220, align 4
  %mode_info.i222 = getelementptr inbounds %struct.amdgpu_device, ptr %131, i32 0, i32 79
  %133 = ptrtoint ptr %mode_info.i222 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mode_info.i222, align 8
  %call.i223 = call i32 @amdgpu_atom_execute_table(ptr noundef %134, i32 noundef 41, ptr noundef nonnull %input.i220) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool.not.i224 = icmp eq i32 %call.i223, 0
  br i1 %tobool.not.i224, label %if.end.i226, label %if.end117.smu_v12_0_atom_get_smu_clockinfo.exit227_crit_edge

if.end117.smu_v12_0_atom_get_smu_clockinfo.exit227_crit_edge: ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %smu_v12_0_atom_get_smu_clockinfo.exit227

if.end.i226:                                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  %lclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 17
  %135 = ptrtoint ptr %input.i220 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %input.i220, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136) #5
  %div.i225 = udiv i32 %137, 10000
  %138 = ptrtoint ptr %lclk to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %div.i225, ptr %lclk, align 4
  br label %smu_v12_0_atom_get_smu_clockinfo.exit227

smu_v12_0_atom_get_smu_clockinfo.exit227:         ; preds = %if.end.i226, %if.end117.smu_v12_0_atom_get_smu_clockinfo.exit227_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i220) #5
  br label %cleanup

cleanup:                                          ; preds = %smu_v12_0_atom_get_smu_clockinfo.exit227, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %smu_v12_0_atom_get_smu_clockinfo.exit227 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/smu_v12_0.c", i32 100, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smu_v12_0_check_fw_version._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @smu_v12_0_check_fw_version._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/smu_v12_0.c", i32 104, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @smu_v12_0_check_fw_version._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @smu_v12_0_check_fw_version._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/smu_v12_0.c", i32 173, i32 5}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu12/smu_v12_0.c", i32 331, i32 3}
!17 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @smu_v12_0_get_vbios_bootup_values._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @smu_v12_0_get_vbios_bootup_values._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{!"auto-init"}
