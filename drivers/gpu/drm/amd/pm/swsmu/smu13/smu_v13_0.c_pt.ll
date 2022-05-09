; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/swsmu/smu13/smu_v13_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.smc_firmware_header_v2_1 = type { %struct.smc_firmware_header_v1_0, i32, i32 }
%struct.smc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32 }
%struct.smc_soft_pptable_entry = type { i32, i32, i32 }
%struct.atom_get_smu_clock_info_parameters_v3_1 = type { i8, i8, i8, i8 }
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct.atom_firmware_info_v3_1 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, [6 x i32] }
%struct.atom_firmware_info_v3_3 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, [2 x i32] }
%struct.atom_firmware_info_v3_4 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.smu_13_0_max_sustainable_clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_display_clock_request = type { i32, i32 }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_smu_nv_clock_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu_13_0_dpm_tables = type { %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_dpm_table, %struct.smu_13_0_pcie_table }
%struct.smu_13_0_dpm_table = type { i32, i32, i32, [16 x %struct.smu_13_0_dpm_clk_level] }
%struct.smu_13_0_dpm_clk_level = type { i8, i32 }
%struct.smu_13_0_pcie_table = type { [2 x i8], [2 x i8] }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@__UNIQUE_ID_firmware343 = internal constant [41 x i8] c"amdgpu.firmware=amdgpu/aldebaran_smc.bin\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aldebaran\00", [22 x i8] zeroinitializer }, align 32
@smu_v13_0_init_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 96, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu: Unsupported IP version 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smu_v13_0_init_microcode\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smu_v13_0_init_microcode._entry_ptr = internal global ptr @smu_v13_0_init_microcode._entry, section ".printk_index", align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu/%s_smc.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"smu_v13_0: Failed to load firmware \22%s\22\0A\00", [55 x i8] zeroinitializer }, align 32
@smu_v13_0_check_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: smu unsupported IP version: 0x%x.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smu_v13_0_check_fw_version\00", [37 x i8] zeroinitializer }, align 32
@smu_v13_0_check_fw_version._entry_ptr = internal global ptr @smu_v13_0_check_fw_version._entry, section ".printk_index", align 4
@smu_v13_0_check_fw_version.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.9, ptr @.str.3, ptr @.str.11, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: smu fw reported version = 0x%08x (%d.%d.%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@smu_v13_0_check_fw_version._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.3, i32 247, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"amdgpu: smu driver if version = 0x%08x, smu fw if version = 0x%08x, smu fw version = 0x%08x (%d.%d.%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@smu_v13_0_check_fw_version._entry_ptr.15 = internal global ptr @smu_v13_0_check_fw_version._entry.12, section ".printk_index", align 4
@smu_v13_0_check_fw_version._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.3, i32 248, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"amdgpu: SMU driver if version not matched\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@smu_v13_0_check_fw_version._entry_ptr.19 = internal global ptr @smu_v13_0_check_fw_version._entry.16, section ".printk_index", align 4
@amdgpu_smu_pptable_id = external dso_local local_unnamed_addr global i32, align 4
@smu_v13_0_setup_pptable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 347, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: override pptable id %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smu_v13_0_setup_pptable\00", [40 x i8] zeroinitializer }, align 32
@smu_v13_0_setup_pptable._entry_ptr = internal global ptr @smu_v13_0_setup_pptable._entry, section ".printk_index", align 4
@smu_v13_0_get_vbios_bootup_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amdgpu: unknown atom_firmware_info version! for smu13\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smu_v13_0_get_vbios_bootup_values\00", [62 x i8] zeroinitializer }, align 32
@smu_v13_0_get_vbios_bootup_values._entry_ptr = internal global ptr @smu_v13_0_get_vbios_bootup_values._entry, section ".printk_index", align 4
@smu_v13_0_set_min_deep_sleep_dcefclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 661, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: SMU13 attempt to set divider for DCEFCLK Failed!\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"smu_v13_0_set_min_deep_sleep_dcefclk\00", [59 x i8] zeroinitializer }, align 32
@smu_v13_0_set_min_deep_sleep_dcefclk._entry_ptr = internal global ptr @smu_v13_0_set_min_deep_sleep_dcefclk._entry, section ".printk_index", align 4
@smu_v13_0_init_max_sustainable_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 868, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: [%s] failed to get max UCLK from SMC!\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"smu_v13_0_init_max_sustainable_clocks\00", [58 x i8] zeroinitializer }, align 32
@smu_v13_0_init_max_sustainable_clocks._entry_ptr = internal global ptr @smu_v13_0_init_max_sustainable_clocks._entry, section ".printk_index", align 4
@smu_v13_0_init_max_sustainable_clocks._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 879, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: [%s] failed to get max SOCCLK from SMC!\00", [48 x i8] zeroinitializer }, align 32
@smu_v13_0_init_max_sustainable_clocks._entry_ptr.30 = internal global ptr @smu_v13_0_init_max_sustainable_clocks._entry.28, section ".printk_index", align 4
@smu_v13_0_init_max_sustainable_clocks._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: [%s] failed to get max DCEFCLK from SMC!\00", [47 x i8] zeroinitializer }, align 32
@smu_v13_0_init_max_sustainable_clocks._entry_ptr.33 = internal global ptr @smu_v13_0_init_max_sustainable_clocks._entry.31, section ".printk_index", align 4
@smu_v13_0_init_max_sustainable_clocks._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amdgpu: [%s] failed to get max DISPCLK from SMC!\00", [47 x i8] zeroinitializer }, align 32
@smu_v13_0_init_max_sustainable_clocks._entry_ptr.36 = internal global ptr @smu_v13_0_init_max_sustainable_clocks._entry.34, section ".printk_index", align 4
@smu_v13_0_init_max_sustainable_clocks._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: [%s] failed to get max PHYCLK from SMC!\00", [48 x i8] zeroinitializer }, align 32
@smu_v13_0_init_max_sustainable_clocks._entry_ptr.39 = internal global ptr @smu_v13_0_init_max_sustainable_clocks._entry.37, section ".printk_index", align 4
@smu_v13_0_init_max_sustainable_clocks._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.3, i32 915, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: [%s] failed to get max PIXCLK from SMC!\00", [48 x i8] zeroinitializer }, align 32
@smu_v13_0_init_max_sustainable_clocks._entry_ptr.42 = internal global ptr @smu_v13_0_init_max_sustainable_clocks._entry.40, section ".printk_index", align 4
@smu_v13_0_get_current_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 948, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"amdgpu: [%s] get PPT limit failed!\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smu_v13_0_get_current_power_limit\00", [62 x i8] zeroinitializer }, align 32
@smu_v13_0_get_current_power_limit._entry_ptr = internal global ptr @smu_v13_0_get_current_power_limit._entry, section ".printk_index", align 4
@smu_v13_0_set_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: Setting new power limit is not supported!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smu_v13_0_set_power_limit\00", [38 x i8] zeroinitializer }, align 32
@smu_v13_0_set_power_limit._entry_ptr = internal global ptr @smu_v13_0_set_power_limit._entry, section ".printk_index", align 4
@smu_v13_0_set_power_limit._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 969, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: [%s] Set power limit Failed!\0A\00", [58 x i8] zeroinitializer }, align 32
@smu_v13_0_set_power_limit._entry_ptr.49 = internal global ptr @smu_v13_0_set_power_limit._entry.47, section ".printk_index", align 4
@smu_v13_0_display_clock_voltage_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1044, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu: [%s] Invalid Clock Type!\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"smu_v13_0_display_clock_voltage_request\00", [56 x i8] zeroinitializer }, align 32
@smu_v13_0_display_clock_voltage_request._entry_ptr = internal global ptr @smu_v13_0_display_clock_voltage_request._entry, section ".printk_index", align 4
@smu_v13_0_set_fan_control_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 1154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"amdgpu: [%s]Set fan control mode failed!\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smu_v13_0_set_fan_control_mode\00", [33 x i8] zeroinitializer }, align 32
@smu_v13_0_set_fan_control_mode._entry_ptr = internal global ptr @smu_v13_0_set_fan_control_mode._entry, section ".printk_index", align 4
@smu_v13_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @smu_v13_0_set_irq_state, ptr @smu_v13_0_irq_process }, [24 x i8] zeroinitializer }, align 32
@smu_v13_0_set_performance_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 1672, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amdgpu: Invalid performance level %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"smu_v13_0_set_performance_level\00", [32 x i8] zeroinitializer }, align 32
@smu_v13_0_set_performance_level._entry_ptr = internal global ptr @smu_v13_0_set_performance_level._entry, section ".printk_index", align 4
@smu_v13_0_set_single_dpm_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: [%s] failed to get dpm levels!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smu_v13_0_set_single_dpm_table\00", [33 x i8] zeroinitializer }, align 32
@smu_v13_0_set_single_dpm_table._entry_ptr = internal global ptr @smu_v13_0_set_single_dpm_table._entry, section ".printk_index", align 4
@smu_v13_0_set_single_dpm_table._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 1809, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: [%s] failed to get dpm freq by index!\0A\00", [49 x i8] zeroinitializer }, align 32
@smu_v13_0_set_single_dpm_table._entry_ptr.60 = internal global ptr @smu_v13_0_set_single_dpm_table._entry.58, section ".printk_index", align 4
@link_width = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 12, i32 16], [36 x i8] zeroinitializer }, align 32
@link_speed = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 25, i32 50, i32 80, i32 160], [16 x i8] zeroinitializer }, align 32
@smu_v13_0_get_pptable_from_vbios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 288, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: use vbios provided pptable\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"smu_v13_0_get_pptable_from_vbios\00", [63 x i8] zeroinitializer }, align 32
@smu_v13_0_get_pptable_from_vbios._entry_ptr = internal global ptr @smu_v13_0_get_pptable_from_vbios._entry, section ".printk_index", align 4
@smu_v13_0_get_pptable_from_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 315, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: use driver provided pptable %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"smu_v13_0_get_pptable_from_firmware\00", [60 x i8] zeroinitializer }, align 32
@smu_v13_0_get_pptable_from_firmware._entry_ptr = internal global ptr @smu_v13_0_get_pptable_from_firmware._entry, section ".printk_index", align 4
@smu_v13_0_get_pptable_from_firmware._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: Unsupported smu firmware version %d.%d\0A\00", [48 x i8] zeroinitializer }, align 32
@smu_v13_0_get_pptable_from_firmware._entry_ptr.67 = internal global ptr @smu_v13_0_get_pptable_from_firmware._entry.65, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smu_v13_0_get_max_sustainable_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 831, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"amdgpu: [GetMaxSustainableClock] Failed to get max DC clock from SMC!\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"smu_v13_0_get_max_sustainable_clock\00", [60 x i8] zeroinitializer }, align 32
@smu_v13_0_get_max_sustainable_clock._entry_ptr = internal global ptr @smu_v13_0_get_max_sustainable_clock._entry, section ".printk_index", align 4
@smu_v13_0_get_max_sustainable_clock._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"amdgpu: [GetMaxSustainableClock] failed to get max AC clock from SMC!\00", [58 x i8] zeroinitializer }, align 32
@smu_v13_0_get_max_sustainable_clock._entry_ptr.72 = internal global ptr @smu_v13_0_get_max_sustainable_clock._entry.70, section ".printk_index", align 4
@smu_v13_0_auto_fan_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1084, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: [%s]%s smc FAN CONTROL feature failed!\00", [49 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smu_v13_0_auto_fan_control\00", [37 x i8] zeroinitializer }, align 32
@smu_v13_0_auto_fan_control._entry_ptr = internal global ptr @smu_v13_0_auto_fan_control._entry, section ".printk_index", align 4
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Start\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Stop\00", [27 x i8] zeroinitializer }, align 32
@smu_v13_0_irq_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1291, ptr @.str.79, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"amdgpu: ERROR: GPU over temperature range(SW CTF) detected!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smu_v13_0_irq_process\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@smu_v13_0_irq_process._entry_ptr = internal global ptr @smu_v13_0_irq_process._entry, section ".printk_index", align 4
@smu_v13_0_irq_process._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str.3, i32 1296, ptr @.str.79, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: ERROR: System is going to shutdown due to GPU SW CTF!\0A\00", [33 x i8] zeroinitializer }, align 32
@smu_v13_0_irq_process._entry_ptr.82 = internal global ptr @smu_v13_0_irq_process._entry.80, section ".printk_index", align 4
@smu_v13_0_irq_process._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.78, ptr @.str.3, i32 1300, ptr @.str.79, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"amdgpu: ERROR: GPU under temperature range detected\0A\00", [43 x i8] zeroinitializer }, align 32
@smu_v13_0_irq_process._entry_ptr.85 = internal global ptr @smu_v13_0_irq_process._entry.83, section ".printk_index", align 4
@smu_v13_0_irq_process._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.78, ptr @.str.3, i32 1304, ptr @.str.79, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"amdgpu: ERROR: GPU under temperature range unknown src id (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@smu_v13_0_irq_process._entry_ptr.88 = internal global ptr @smu_v13_0_irq_process._entry.86, section ".printk_index", align 4
@smu_v13_0_irq_process._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.78, ptr @.str.3, i32 1308, ptr @.str.79, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"amdgpu: ERROR: GPU HW Critical Temperature Fault(aka CTF) detected!\0A\00", [59 x i8] zeroinitializer }, align 32
@smu_v13_0_irq_process._entry_ptr.91 = internal global ptr @smu_v13_0_irq_process._entry.89, section ".printk_index", align 4
@smu_v13_0_irq_process._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.78, ptr @.str.3, i32 1312, ptr @.str.79, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"amdgpu: ERROR: System is going to shutdown due to GPU HW CTF!\0A\00", [33 x i8] zeroinitializer }, align 32
@smu_v13_0_irq_process._entry_ptr.94 = internal global ptr @smu_v13_0_irq_process._entry.92, section ".printk_index", align 4
@smu_v13_0_irq_process.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.78, ptr @.str.3, ptr @.str.95, i8 1, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: Switched to AC mode!\0A\00", [34 x i8] zeroinitializer }, align 32
@smu_v13_0_irq_process.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.78, ptr @.str.3, ptr @.str.96, i8 1, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: Switched to DC mode!\0A\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@smu_v13_0_wait_for_reset_complete.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.97, ptr @.str.3, ptr @.str.98, i8 1, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smu_v13_0_wait_for_reset_complete\00", [62 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"amdgpu: waiting for smu reset complete\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.smu_v13_0_check_fw_version = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 8, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 851969, i64 851971]
@__sancov_gen_cov_switch_values.100 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.103 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 22, i64 31]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 7]
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 92, i32 15 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 95, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 100, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 124, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 224, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 232, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 244, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 248, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 347, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 532, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 661, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 867, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 878, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 889, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 898, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 906, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 914, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 948, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 963, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 969, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1044, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1154, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c"smu_v13_0_irq_funcs\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1350, i32 42 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1672, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1799, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1809, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant [11 x i8] c"link_width\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 73, i32 18 }
@___asan_gen_.306 = private unnamed_addr constant [11 x i8] c"link_speed\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 74, i32 18 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 288, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 315, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 320, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 831, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 842, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1083, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1291, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1296, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1300, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1303, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1308, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1312, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1323, i32 5 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1327, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.415 = private constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1437, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [40 x i8] c"switch.table.smu_v13_0_check_fw_version\00", align 1
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_firmware343, ptr @smu_v13_0_auto_fan_control._entry, ptr @smu_v13_0_auto_fan_control._entry_ptr, ptr @smu_v13_0_check_fw_version._entry, ptr @smu_v13_0_check_fw_version._entry.12, ptr @smu_v13_0_check_fw_version._entry.16, ptr @smu_v13_0_check_fw_version._entry_ptr, ptr @smu_v13_0_check_fw_version._entry_ptr.15, ptr @smu_v13_0_check_fw_version._entry_ptr.19, ptr @smu_v13_0_display_clock_voltage_request._entry, ptr @smu_v13_0_display_clock_voltage_request._entry_ptr, ptr @smu_v13_0_get_current_power_limit._entry, ptr @smu_v13_0_get_current_power_limit._entry_ptr, ptr @smu_v13_0_get_max_sustainable_clock._entry, ptr @smu_v13_0_get_max_sustainable_clock._entry.70, ptr @smu_v13_0_get_max_sustainable_clock._entry_ptr, ptr @smu_v13_0_get_max_sustainable_clock._entry_ptr.72, ptr @smu_v13_0_get_pptable_from_firmware._entry, ptr @smu_v13_0_get_pptable_from_firmware._entry.65, ptr @smu_v13_0_get_pptable_from_firmware._entry_ptr, ptr @smu_v13_0_get_pptable_from_firmware._entry_ptr.67, ptr @smu_v13_0_get_pptable_from_vbios._entry, ptr @smu_v13_0_get_pptable_from_vbios._entry_ptr, ptr @smu_v13_0_get_vbios_bootup_values._entry, ptr @smu_v13_0_get_vbios_bootup_values._entry_ptr, ptr @smu_v13_0_init_max_sustainable_clocks._entry, ptr @smu_v13_0_init_max_sustainable_clocks._entry.28, ptr @smu_v13_0_init_max_sustainable_clocks._entry.31, ptr @smu_v13_0_init_max_sustainable_clocks._entry.34, ptr @smu_v13_0_init_max_sustainable_clocks._entry.37, ptr @smu_v13_0_init_max_sustainable_clocks._entry.40, ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr, ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.30, ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.33, ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.36, ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.39, ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.42, ptr @smu_v13_0_init_microcode._entry, ptr @smu_v13_0_init_microcode._entry_ptr, ptr @smu_v13_0_irq_process._entry, ptr @smu_v13_0_irq_process._entry.80, ptr @smu_v13_0_irq_process._entry.83, ptr @smu_v13_0_irq_process._entry.86, ptr @smu_v13_0_irq_process._entry.89, ptr @smu_v13_0_irq_process._entry.92, ptr @smu_v13_0_irq_process._entry_ptr, ptr @smu_v13_0_irq_process._entry_ptr.82, ptr @smu_v13_0_irq_process._entry_ptr.85, ptr @smu_v13_0_irq_process._entry_ptr.88, ptr @smu_v13_0_irq_process._entry_ptr.91, ptr @smu_v13_0_irq_process._entry_ptr.94, ptr @smu_v13_0_set_fan_control_mode._entry, ptr @smu_v13_0_set_fan_control_mode._entry_ptr, ptr @smu_v13_0_set_min_deep_sleep_dcefclk._entry, ptr @smu_v13_0_set_min_deep_sleep_dcefclk._entry_ptr, ptr @smu_v13_0_set_performance_level._entry, ptr @smu_v13_0_set_performance_level._entry_ptr, ptr @smu_v13_0_set_power_limit._entry, ptr @smu_v13_0_set_power_limit._entry.47, ptr @smu_v13_0_set_power_limit._entry_ptr, ptr @smu_v13_0_set_power_limit._entry_ptr.49, ptr @smu_v13_0_set_single_dpm_table._entry, ptr @smu_v13_0_set_single_dpm_table._entry.58, ptr @smu_v13_0_set_single_dpm_table._entry_ptr, ptr @smu_v13_0_set_single_dpm_table._entry_ptr.60, ptr @smu_v13_0_setup_pptable._entry, ptr @smu_v13_0_setup_pptable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @smu_v13_0_irq_funcs, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @link_width, ptr @link_speed, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @switch.table.smu_v13_0_check_fw_version], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_init_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_check_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_check_fw_version._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_check_fw_version._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_setup_pptable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_get_vbios_bootup_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_set_min_deep_sleep_dcefclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_init_max_sustainable_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_init_max_sustainable_clocks._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_init_max_sustainable_clocks._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_init_max_sustainable_clocks._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_init_max_sustainable_clocks._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_init_max_sustainable_clocks._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_get_current_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_set_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_set_power_limit._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_display_clock_voltage_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_set_fan_control_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_set_performance_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_set_single_dpm_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_set_single_dpm_table._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_width to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_speed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_get_pptable_from_vbios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_get_pptable_from_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_get_pptable_from_firmware._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_get_max_sustainable_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_get_max_sustainable_clock._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_auto_fan_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_irq_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_irq_process._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_irq_process._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_irq_process._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_irq_process._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v13_0_irq_process._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smu_v13_0_check_fw_version to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_init_microcode(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  %fw_name = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %fw_name) #10
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = call ptr @memset(ptr %fw_name, i32 255, i32 30)
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 851970, i32 %6)
  %cond = icmp eq i32 %6, 851970
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %if.end
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 30, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str)
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 16
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call8 = call i32 @request_firmware(ptr noundef %fw, ptr noundef nonnull %fw_name, ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %sw.bb.if.then37_crit_edge

sw.bb.if.then37_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %6) #13
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 8
  %call14 = call i32 @amdgpu_ucode_validate(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.if.then37_crit_edge

if.end11.if.then37_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.end17:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 8
  %data = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  call void @amdgpu_ucode_print_smc_hdr(ptr noundef %16) #10
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ucode_version, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 17
  %20 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fw_version, align 4
  %load_type = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 1
  %21 = ptrtoint ptr %load_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %load_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.then23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx26 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 0, i32 24
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 24, ptr %arrayidx26, align 8
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 8
  %fw29 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 0, i32 24, i32 1
  %26 = ptrtoint ptr %fw29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %fw29, align 4
  %data31 = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data31, align 4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ucode_size_bytes, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %add = add i32 %31, 4095
  %and32 = and i32 %add, -4096
  %fw_size = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 112, i32 3
  %32 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_size, align 8
  %add34 = add i32 %and32, %33
  store i32 %add34, ptr %fw_size, align 8
  br label %cleanup

if.then37:                                        ; preds = %if.end11.if.then37_crit_edge, %sw.bb.if.then37_crit_edge
  %err.0 = phi i32 [ %call8, %sw.bb.if.then37_crit_edge ], [ %call14, %if.end11.if.then37_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef nonnull %fw_name) #10
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw, align 8
  call void @release_firmware(ptr noundef %35) #10
  %36 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %fw, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then23, %if.end17.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %err.0, %if.then37 ], [ 0, %if.then23 ], [ 0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %fw_name) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ucode_validate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ucode_print_smc_hdr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smu_v13_0_fini_microcode(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 16
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 8
  tail call void @release_firmware(ptr noundef %3) #10
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fw, align 8
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 17
  %5 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fw_version, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smu_v13_0_load_microcode(ptr nocapture noundef readnone %smu) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_check_fw_status(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 61931556) #10
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_check_fw_version(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  %if_version = alloca i32, align 4
  %smu_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_version) #10
  %2 = ptrtoint ptr %if_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 255, ptr %if_version, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smu_version) #10
  %3 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %smu_version, align 4
  %call = call i32 @smu_cmn_get_smc_version(ptr noundef %smu, ptr noundef nonnull %if_version, ptr noundef nonnull %smu_version) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %7 = load i8, ptr %is_apu, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 17
  %8 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %fw_version, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %switch.tableidx = add i32 %10, -851969
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 3
  br i1 %11, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %10) #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.smu_v13_0_check_fw_version, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end
  %.sink = phi i32 [ -1, %do.end ], [ %switch.load, %switch.lookup ]
  %smc_driver_if_version17 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 44
  %15 = ptrtoint ptr %smc_driver_if_version17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %smc_driver_if_version17, align 8
  %fw = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 16
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 8
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %sw.epilog.if.end34_crit_edge, label %do.body21

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu_v13_0_check_fw_version.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu_v13_0_check_fw_version, %if.then26)) #10
          to label %if.end34 [label %if.then26], !srcloc !195

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smu_version, align 4
  %conv29 = and i32 %shr2, 255
  %conv30 = and i32 %5, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smu_v13_0_check_fw_version.__UNIQUE_ID_ddebug344, ptr noundef %19, ptr noundef nonnull @.str.11, i32 noundef %21, i32 noundef %shr, i32 noundef %conv29, i32 noundef %conv30) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %do.body21, %sw.epilog.if.end34_crit_edge
  %22 = ptrtoint ptr %if_version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %if_version, align 4
  %smc_driver_if_version35 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 44
  %24 = ptrtoint ptr %smc_driver_if_version35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smc_driver_if_version35, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not = icmp eq i32 %23, %25
  br i1 %cmp.not, label %if.end34.cleanup_crit_edge, label %do.end40

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %smu_version to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %smu_version, align 4
  %conv44 = and i32 %shr2, 255
  %conv45 = and i32 %5, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.13, i32 noundef %25, i32 noundef %23, i32 noundef %29, i32 noundef %shr, i32 noundef %conv44, i32 noundef %conv45) #13
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.17) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smu_version) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_version) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_smc_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_setup_pptable(ptr nocapture noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  %atom_table_size.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %table = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table) #10
  %2 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %table, align 4, !annotation !196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_smu_pptable_id to i32))
  %3 = load i32, ptr @amdgpu_smu_pptable_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %3) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pp_table_id = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 13
  %6 = ptrtoint ptr %pp_table_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pp_table_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pptable_id.0 = phi i32 [ %3, %if.then ], [ %7, %if.else ]
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pptable_id.0)
  %tobool2.not = icmp eq i32 %pptable_id.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  br i1 %or.cond, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %atom_table_size.i) #10
  %12 = ptrtoint ptr %atom_table_size.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %atom_table_size.i, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #10
  %13 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %frev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #10
  %14 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %crev.i, align 1, !annotation !196
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.61) #13
  %call.i = call i32 @amdgpu_atombios_get_data_table(ptr noundef %11, i32 noundef 15, ptr noundef nonnull %atom_table_size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %table) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i.not, label %if.end6.thread47, label %if.end6

if.end6.thread47:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %atom_table_size.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %atom_table_size.i, align 2
  %conv.i = zext i16 %18 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atom_table_size.i) #10
  br label %if.end9

if.else4:                                         ; preds = %if.end
  %fw.i = getelementptr inbounds %struct.amdgpu_device, ptr %11, i32 0, i32 98, i32 16
  %19 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i, align 8
  %data.i = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %tobool.not.i37 = icmp eq ptr %22, null
  br i1 %tobool.not.i37, label %if.else4.cleanup_crit_edge, label %do.end.i

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.else4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.63, i32 noundef %pptable_id.0) #13
  %header_version_major.i = getelementptr inbounds %struct.common_firmware_header, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %header_version_major.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %header_version_major.i, align 4
  %header_version_minor.i = getelementptr inbounds %struct.common_firmware_header, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %header_version_minor.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %header_version_minor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %26)
  %cmp.not.i = icmp eq i16 %26, 512
  br i1 %cmp.not.i, label %if.end11.i, label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  %30 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  %conv.i38 = zext i16 %30 to i32
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %11, align 8
  %conv10.i = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.66, i32 noundef %conv.i38, i32 noundef %conv10.i) #13
  br label %cleanup

if.end11.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %28)
  %cond.i = icmp eq i16 %28, 256
  br i1 %cond.i, label %sw.bb.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end11.i
  %33 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smu, align 8
  %fw.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %34, i32 0, i32 98, i32 16
  %35 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %pptable_entry_offset.i.i = getelementptr inbounds %struct.smc_firmware_header_v2_1, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %pptable_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pptable_entry_offset.i.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %41
  %pptable_count2.i.i = getelementptr inbounds %struct.smc_firmware_header_v2_1, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %pptable_count2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pptable_count2.i.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp27.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp27.not.i.i, label %sw.bb.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge, label %for.body.preheader.i.i

sw.bb.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_set_pptable_v2_1.exit.i

for.body.preheader.i.i:                           ; preds = %sw.bb.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %44, i32 1) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.028.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.smc_soft_pptable_entry, ptr %add.ptr.i.i, i32 %i.028.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %pptable_id.0)
  %cmp3.i.i = icmp eq i32 %47, %pptable_id.0
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ppt_offset_bytes.i.i = getelementptr inbounds %struct.smc_soft_pptable_entry, ptr %arrayidx.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %ppt_offset_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ppt_offset_bytes.i.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %add.ptr5.i.i = getelementptr i8, ptr %38, i32 %50
  %51 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr5.i.i, ptr %table, align 4
  %ppt_size_bytes.i.i = getelementptr inbounds %struct.smc_soft_pptable_entry, ptr %arrayidx.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %ppt_size_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ppt_size_bytes.i.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  br label %smu_v13_0_set_pptable_v2_1.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_set_pptable_v2_1.exit.i

smu_v13_0_set_pptable_v2_1.exit.i:                ; preds = %for.inc.i.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge, %if.then.i.i, %sw.bb.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge
  %size.1 = phi i32 [ 0, %sw.bb.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge ], [ %54, %if.then.i.i ], [ 0, %for.inc.i.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge ]
  %i.026.i.i = phi i32 [ 0, %sw.bb.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge ], [ %i.028.i.i, %if.then.i.i ], [ %umax.i.i, %for.inc.i.i.smu_v13_0_set_pptable_v2_1.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.026.i.i, i32 %44)
  %cmp7.i.i = icmp eq i32 %i.026.i.i, %44
  br i1 %cmp7.i.i, label %smu_v13_0_set_pptable_v2_1.exit.i.cleanup_crit_edge, label %smu_v13_0_set_pptable_v2_1.exit.i.if.end9_crit_edge

smu_v13_0_set_pptable_v2_1.exit.i.if.end9_crit_edge: ; preds = %smu_v13_0_set_pptable_v2_1.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

smu_v13_0_set_pptable_v2_1.exit.i.cleanup_crit_edge: ; preds = %smu_v13_0_set_pptable_v2_1.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atom_table_size.i) #10
  br label %cleanup

if.end9:                                          ; preds = %smu_v13_0_set_pptable_v2_1.exit.i.if.end9_crit_edge, %if.end6.thread47
  %size.346 = phi i32 [ %conv.i, %if.end6.thread47 ], [ %size.1, %smu_v13_0_set_pptable_v2_1.exit.i.if.end9_crit_edge ]
  %smu_table10 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14
  %55 = ptrtoint ptr %smu_table10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %smu_table10, align 8
  %tobool11.not = icmp eq ptr %56, null
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %table, align 4
  %59 = ptrtoint ptr %smu_table10 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %smu_table10, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %power_play_table_size = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 1
  %60 = ptrtoint ptr %power_play_table_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %power_play_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool17.not = icmp eq i32 %61, 0
  br i1 %tobool17.not, label %if.then18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %power_play_table_size to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %size.346, ptr %power_play_table_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %if.end6, %smu_v13_0_set_pptable_v2_1.exit.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %do.end7.i, %if.else4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ 0, %if.then18 ], [ 0, %if.end15.cleanup_crit_edge ], [ -22, %do.end7.i ], [ -22, %if.else4.cleanup_crit_edge ], [ -22, %if.end11.i.cleanup_crit_edge ], [ -22, %smu_v13_0_set_pptable_v2_1.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_init_smc_tables(ptr nocapture noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tables2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11
  %0 = ptrtoint ptr %tables2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tables2, align 8
  %conv = trunc i64 %1 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3520) #14
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %2 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %driver_pptable, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #15
  %max_sustainable_clocks = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 7
  %4 = ptrtoint ptr %max_sustainable_clocks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i54, ptr %max_sustainable_clocks, align 4
  %tobool6.not = icmp eq ptr %call7.i.i54, null
  br i1 %tobool6.not, label %if.end.err1_out_crit_edge, label %if.end8

if.end.err1_out_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1_out

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 11
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool11.not = icmp eq i64 %6, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end8.i.i83

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i83:                                    ; preds = %if.end8
  %conv15 = trunc i64 %6 to i32
  %call9.i.i82 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv15, i32 noundef 3520) #14
  %overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 16
  %7 = ptrtoint ptr %overdrive_table to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i82, ptr %overdrive_table, align 4
  %tobool18.not = icmp eq ptr %call9.i.i82, null
  br i1 %tobool18.not, label %if.end8.i.i83.err2_out_crit_edge, label %if.end8.i.i112

if.end8.i.i83.err2_out_crit_edge:                 ; preds = %if.end8.i.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %err2_out

if.end8.i.i112:                                   ; preds = %if.end8.i.i83
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx9, align 8
  %conv23 = trunc i64 %9 to i32
  %call9.i.i111 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv23, i32 noundef 3520) #14
  %boot_overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 17
  %10 = ptrtoint ptr %boot_overdrive_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i111, ptr %boot_overdrive_table, align 8
  %tobool26.not = icmp eq ptr %call9.i.i111, null
  br i1 %tobool26.not, label %if.then27, label %if.end8.i.i112.cleanup_crit_edge

if.end8.i.i112.cleanup_crit_edge:                 ; preds = %if.end8.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.end8.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %overdrive_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %overdrive_table, align 4
  tail call void @kfree(ptr noundef %12) #10
  br label %err2_out

err2_out:                                         ; preds = %if.then27, %if.end8.i.i83.err2_out_crit_edge
  %13 = ptrtoint ptr %max_sustainable_clocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %max_sustainable_clocks, align 4
  tail call void @kfree(ptr noundef %14) #10
  br label %err1_out

err1_out:                                         ; preds = %err2_out, %if.end.err1_out_crit_edge
  %15 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_pptable, align 4
  tail call void @kfree(ptr noundef %16) #10
  br label %cleanup

cleanup:                                          ; preds = %err1_out, %if.end8.i.i112.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.i.i112.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %err1_out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_fini_smc_tables(ptr nocapture noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_dpm2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15
  %gpu_metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 20
  %0 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu_metrics_table, align 4
  tail call void @kfree(ptr noundef %1) #10
  %boot_overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 17
  %2 = ptrtoint ptr %boot_overdrive_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_overdrive_table, align 8
  tail call void @kfree(ptr noundef %3) #10
  %overdrive_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 16
  %4 = ptrtoint ptr %overdrive_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %overdrive_table, align 4
  tail call void @kfree(ptr noundef %5) #10
  %max_sustainable_clocks = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 7
  %6 = ptrtoint ptr %max_sustainable_clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %max_sustainable_clocks, align 4
  tail call void @kfree(ptr noundef %7) #10
  %driver_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 9
  %8 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_pptable, align 4
  tail call void @kfree(ptr noundef %9) #10
  %10 = ptrtoint ptr %gpu_metrics_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %gpu_metrics_table, align 4
  %11 = ptrtoint ptr %boot_overdrive_table to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %boot_overdrive_table, align 8
  %12 = ptrtoint ptr %overdrive_table to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %overdrive_table, align 4
  %13 = ptrtoint ptr %max_sustainable_clocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %max_sustainable_clocks, align 4
  %14 = ptrtoint ptr %driver_pptable to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_pptable, align 4
  %hardcode_pptable = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 2
  %15 = ptrtoint ptr %hardcode_pptable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hardcode_pptable, align 8
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %hardcode_pptable to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %hardcode_pptable, align 8
  %ecc_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 10
  %18 = ptrtoint ptr %ecc_table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ecc_table, align 8
  tail call void @kfree(ptr noundef %19) #10
  %metrics_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 4
  %20 = ptrtoint ptr %metrics_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %metrics_table, align 8
  tail call void @kfree(ptr noundef %21) #10
  %watermarks_table = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 6
  %22 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %watermarks_table, align 8
  tail call void @kfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %ecc_table to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ecc_table, align 8
  %25 = ptrtoint ptr %metrics_table to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %metrics_table, align 8
  %26 = ptrtoint ptr %watermarks_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %watermarks_table, align 8
  %metrics_time = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 3
  %27 = ptrtoint ptr %metrics_time to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %metrics_time, align 4
  %dpm_context = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %dpm_context to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dpm_context, align 4
  tail call void @kfree(ptr noundef %29) #10
  %golden_dpm_context = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 2
  %30 = ptrtoint ptr %golden_dpm_context to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %golden_dpm_context, align 4
  tail call void @kfree(ptr noundef %31) #10
  %dpm_current_power_state = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 8
  %32 = ptrtoint ptr %dpm_current_power_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dpm_current_power_state, align 4
  tail call void @kfree(ptr noundef %33) #10
  %dpm_request_power_state = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 7
  %34 = ptrtoint ptr %dpm_request_power_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dpm_request_power_state, align 4
  tail call void @kfree(ptr noundef %35) #10
  %36 = ptrtoint ptr %dpm_context to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %dpm_context, align 4
  %37 = ptrtoint ptr %golden_dpm_context to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %golden_dpm_context, align 4
  %38 = ptrtoint ptr %smu_dpm2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %smu_dpm2, align 4
  %39 = ptrtoint ptr %dpm_current_power_state to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %dpm_current_power_state, align 4
  %40 = ptrtoint ptr %dpm_request_power_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %dpm_request_power_state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_init_power(ptr nocapture noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_power1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16
  %0 = ptrtoint ptr %smu_power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_power1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %power_context_size = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %power_context_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_context_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1552) #15
  %5 = ptrtoint ptr %smu_power1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %smu_power1, align 4
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %power_context_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1552, ptr %power_context_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_fini_power(ptr nocapture noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_power1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16
  %0 = ptrtoint ptr %smu_power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_power1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %power_context_size = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %power_context_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_context_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %1) #10
  %4 = ptrtoint ptr %smu_power1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %smu_power1, align 4
  %5 = ptrtoint ptr %power_context_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %power_context_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_vbios_bootup_values(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  %input.i273 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i265 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i257 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i249 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i241 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %input.i = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %header = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #10
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %size, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #10
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #10
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header) #10
  %3 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %header, align 4, !annotation !196
  %4 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu, align 8
  %call = call i32 @amdgpu_atombios_get_data_table(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %header) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smu, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %content_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %content_revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %content_revision, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %sw.default [
    i8 0, label %if.end4.sw.bb_crit_edge
    i8 1, label %if.end4.sw.bb_crit_edge281
    i8 2, label %if.end4.sw.bb_crit_edge282
    i8 3, label %sw.bb26
  ]

if.end4.sw.bb_crit_edge282:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end4.sw.bb_crit_edge281:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge281, %if.end4.sw.bb_crit_edge282
  %firmware_revision = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %firmware_revision to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %firmware_revision, align 1
  %boot_values = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8
  %19 = ptrtoint ptr %boot_values to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %boot_values, align 8
  %bootup_sclk_in10khz = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %bootup_sclk_in10khz to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %bootup_sclk_in10khz, align 1
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %22 = ptrtoint ptr %gfxclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %gfxclk, align 4
  %bootup_mclk_in10khz = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %bootup_mclk_in10khz to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %bootup_mclk_in10khz, align 1
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %25 = ptrtoint ptr %uclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %uclk, align 8
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %26 = ptrtoint ptr %socclk to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %socclk, align 4
  %dcefclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %27 = ptrtoint ptr %dcefclk to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dcefclk, align 8
  %bootup_vddc_mv = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 7
  %28 = ptrtoint ptr %bootup_vddc_mv to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %bootup_vddc_mv, align 1
  %vddc = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 8
  %30 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %vddc, align 8
  %bootup_vddci_mv = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 8
  %31 = ptrtoint ptr %bootup_vddci_mv to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %bootup_vddci_mv, align 1
  %vddci = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 9
  %33 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vddci, align 2
  %bootup_mvddc_mv = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 9
  %34 = ptrtoint ptr %bootup_mvddc_mv to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %bootup_mvddc_mv, align 1
  %mvddc = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 10
  %36 = ptrtoint ptr %mvddc to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %mvddc, align 4
  %bootup_vddgfx_mv = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 10
  %37 = ptrtoint ptr %bootup_vddgfx_mv to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %bootup_vddgfx_mv, align 1
  %vdd_gfx = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 11
  %39 = ptrtoint ptr %vdd_gfx to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %vdd_gfx, align 2
  %coolingsolution_id = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %7, i32 0, i32 12
  %40 = ptrtoint ptr %coolingsolution_id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %coolingsolution_id, align 1
  %cooling_id = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 12
  %42 = ptrtoint ptr %cooling_id to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %cooling_id, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %firmware_revision27 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 1
  %43 = ptrtoint ptr %firmware_revision27 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %firmware_revision27, align 1
  %boot_values29 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8
  %45 = ptrtoint ptr %boot_values29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %boot_values29, align 8
  %bootup_sclk_in10khz31 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 2
  %46 = ptrtoint ptr %bootup_sclk_in10khz31 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %bootup_sclk_in10khz31, align 1
  %gfxclk34 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %48 = ptrtoint ptr %gfxclk34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %gfxclk34, align 4
  %bootup_mclk_in10khz35 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 3
  %49 = ptrtoint ptr %bootup_mclk_in10khz35 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %bootup_mclk_in10khz35, align 1
  %uclk38 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %51 = ptrtoint ptr %uclk38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %uclk38, align 8
  %socclk41 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %52 = ptrtoint ptr %socclk41 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %socclk41, align 4
  %dcefclk44 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %53 = ptrtoint ptr %dcefclk44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %dcefclk44, align 8
  %bootup_vddc_mv45 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 7
  %54 = ptrtoint ptr %bootup_vddc_mv45 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %bootup_vddc_mv45, align 1
  %vddc48 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 8
  %56 = ptrtoint ptr %vddc48 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %vddc48, align 8
  %bootup_vddci_mv49 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 8
  %57 = ptrtoint ptr %bootup_vddci_mv49 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %bootup_vddci_mv49, align 1
  %vddci52 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 9
  %59 = ptrtoint ptr %vddci52 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %vddci52, align 2
  %bootup_mvddc_mv53 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 9
  %60 = ptrtoint ptr %bootup_mvddc_mv53 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %bootup_mvddc_mv53, align 1
  %mvddc56 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 10
  %62 = ptrtoint ptr %mvddc56 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %mvddc56, align 4
  %bootup_vddgfx_mv57 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 10
  %63 = ptrtoint ptr %bootup_vddgfx_mv57 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %bootup_vddgfx_mv57, align 1
  %vdd_gfx60 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 11
  %65 = ptrtoint ptr %vdd_gfx60 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %vdd_gfx60, align 2
  %coolingsolution_id61 = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 12
  %66 = ptrtoint ptr %coolingsolution_id61 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %coolingsolution_id61, align 1
  %cooling_id64 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 12
  %68 = ptrtoint ptr %cooling_id64 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %cooling_id64, align 8
  %pplib_pptable_id = getelementptr inbounds %struct.atom_firmware_info_v3_3, ptr %7, i32 0, i32 23
  %69 = ptrtoint ptr %pplib_pptable_id to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %pplib_pptable_id, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %firmware_revision69 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 1
  %71 = ptrtoint ptr %firmware_revision69 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %firmware_revision69, align 1
  %boot_values71 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8
  %73 = ptrtoint ptr %boot_values71 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %boot_values71, align 8
  %bootup_sclk_in10khz73 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 2
  %74 = ptrtoint ptr %bootup_sclk_in10khz73 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %bootup_sclk_in10khz73, align 1
  %gfxclk76 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %76 = ptrtoint ptr %gfxclk76 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %gfxclk76, align 4
  %bootup_mclk_in10khz77 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 3
  %77 = ptrtoint ptr %bootup_mclk_in10khz77 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %bootup_mclk_in10khz77, align 1
  %uclk80 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %79 = ptrtoint ptr %uclk80 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %uclk80, align 8
  %socclk83 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %80 = ptrtoint ptr %socclk83 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %socclk83, align 4
  %dcefclk86 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %81 = ptrtoint ptr %dcefclk86 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %dcefclk86, align 8
  %bootup_vddc_mv87 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 7
  %82 = ptrtoint ptr %bootup_vddc_mv87 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %bootup_vddc_mv87, align 1
  %vddc90 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 8
  %84 = ptrtoint ptr %vddc90 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %vddc90, align 8
  %bootup_vddci_mv91 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 8
  %85 = ptrtoint ptr %bootup_vddci_mv91 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %bootup_vddci_mv91, align 1
  %vddci94 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 9
  %87 = ptrtoint ptr %vddci94 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %vddci94, align 2
  %bootup_mvddc_mv95 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 9
  %88 = ptrtoint ptr %bootup_mvddc_mv95 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %bootup_mvddc_mv95, align 1
  %mvddc98 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 10
  %90 = ptrtoint ptr %mvddc98 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %mvddc98, align 4
  %bootup_vddgfx_mv99 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 10
  %91 = ptrtoint ptr %bootup_vddgfx_mv99 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %bootup_vddgfx_mv99, align 1
  %vdd_gfx102 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 11
  %93 = ptrtoint ptr %vdd_gfx102 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %vdd_gfx102, align 2
  %coolingsolution_id103 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 12
  %94 = ptrtoint ptr %coolingsolution_id103 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %coolingsolution_id103, align 1
  %cooling_id106 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 12
  %96 = ptrtoint ptr %cooling_id106 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %cooling_id106, align 8
  %pplib_pptable_id107 = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %7, i32 0, i32 23
  %97 = ptrtoint ptr %pplib_pptable_id107 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %pplib_pptable_id107, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb26, %sw.bb
  %.sink = phi i32 [ %98, %sw.default ], [ %70, %sw.bb26 ], [ 0, %sw.bb ]
  %pp_table_id110 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 13
  %99 = ptrtoint ptr %pp_table_id110 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %.sink, ptr %pp_table_id110, align 4
  %100 = ptrtoint ptr %format_revision to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %format_revision, align 1
  %conv112 = zext i8 %101 to i32
  %format_revision115 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 14
  %102 = ptrtoint ptr %format_revision115 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv112, ptr %format_revision115, align 8
  %103 = ptrtoint ptr %content_revision to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %content_revision, align 1
  %conv117 = zext i8 %104 to i32
  %content_revision120 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 15
  %105 = ptrtoint ptr %content_revision120 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %conv117, ptr %content_revision120, align 4
  %106 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i) #10
  %108 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 65536, ptr %input.i, align 4
  %mode_info.i = getelementptr inbounds %struct.amdgpu_device, ptr %107, i32 0, i32 79
  %109 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mode_info.i, align 8
  %call.i = call i32 @amdgpu_atom_execute_table(ptr noundef %110, i32 noundef 41, ptr noundef nonnull %input.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.smu_v13_0_atom_get_smu_clockinfo.exit_crit_edge

sw.epilog.smu_v13_0_atom_get_smu_clockinfo.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_atom_get_smu_clockinfo.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %socclk124 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %111 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %input.i, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #10
  %div.i = udiv i32 %113, 10000
  %114 = ptrtoint ptr %socclk124 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %div.i, ptr %socclk124, align 4
  br label %smu_v13_0_atom_get_smu_clockinfo.exit

smu_v13_0_atom_get_smu_clockinfo.exit:            ; preds = %if.end.i, %sw.epilog.smu_v13_0_atom_get_smu_clockinfo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i) #10
  %115 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i241) #10
  %117 = ptrtoint ptr %input.i241 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 327680, ptr %input.i241, align 4
  %mode_info.i243 = getelementptr inbounds %struct.amdgpu_device, ptr %116, i32 0, i32 79
  %118 = ptrtoint ptr %mode_info.i243 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mode_info.i243, align 8
  %call.i244 = call i32 @amdgpu_atom_execute_table(ptr noundef %119, i32 noundef 41, ptr noundef nonnull %input.i241) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool.not.i245 = icmp eq i32 %call.i244, 0
  br i1 %tobool.not.i245, label %if.end.i247, label %smu_v13_0_atom_get_smu_clockinfo.exit.smu_v13_0_atom_get_smu_clockinfo.exit248_crit_edge

smu_v13_0_atom_get_smu_clockinfo.exit.smu_v13_0_atom_get_smu_clockinfo.exit248_crit_edge: ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_atom_get_smu_clockinfo.exit248

if.end.i247:                                      ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dcefclk129 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %120 = ptrtoint ptr %input.i241 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %input.i241, align 4
  %122 = call i32 @llvm.bswap.i32(i32 %121) #10
  %div.i246 = udiv i32 %122, 10000
  %123 = ptrtoint ptr %dcefclk129 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %div.i246, ptr %dcefclk129, align 4
  br label %smu_v13_0_atom_get_smu_clockinfo.exit248

smu_v13_0_atom_get_smu_clockinfo.exit248:         ; preds = %if.end.i247, %smu_v13_0_atom_get_smu_clockinfo.exit.smu_v13_0_atom_get_smu_clockinfo.exit248_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i241) #10
  %124 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i249) #10
  %mode_info.i251 = getelementptr inbounds %struct.amdgpu_device, ptr %125, i32 0, i32 79
  %126 = ptrtoint ptr %input.i249 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %input.i249, align 4
  %127 = ptrtoint ptr %mode_info.i251 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mode_info.i251, align 8
  %call.i252 = call i32 @amdgpu_atom_execute_table(ptr noundef %128, i32 noundef 41, ptr noundef nonnull %input.i249) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool.not.i253 = icmp eq i32 %call.i252, 0
  br i1 %tobool.not.i253, label %if.end.i255, label %smu_v13_0_atom_get_smu_clockinfo.exit248.smu_v13_0_atom_get_smu_clockinfo.exit256_crit_edge

smu_v13_0_atom_get_smu_clockinfo.exit248.smu_v13_0_atom_get_smu_clockinfo.exit256_crit_edge: ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit248
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_atom_get_smu_clockinfo.exit256

if.end.i255:                                      ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit248
  call void @__sanitizer_cov_trace_pc() #12
  %eclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 5
  %129 = ptrtoint ptr %input.i249 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %input.i249, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130) #10
  %div.i254 = udiv i32 %131, 10000
  %132 = ptrtoint ptr %eclk to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %div.i254, ptr %eclk, align 4
  br label %smu_v13_0_atom_get_smu_clockinfo.exit256

smu_v13_0_atom_get_smu_clockinfo.exit256:         ; preds = %if.end.i255, %smu_v13_0_atom_get_smu_clockinfo.exit248.smu_v13_0_atom_get_smu_clockinfo.exit256_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i249) #10
  %133 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i257) #10
  %135 = ptrtoint ptr %input.i257 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 262144, ptr %input.i257, align 4
  %mode_info.i259 = getelementptr inbounds %struct.amdgpu_device, ptr %134, i32 0, i32 79
  %136 = ptrtoint ptr %mode_info.i259 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mode_info.i259, align 8
  %call.i260 = call i32 @amdgpu_atom_execute_table(ptr noundef %137, i32 noundef 41, ptr noundef nonnull %input.i257) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool.not.i261 = icmp eq i32 %call.i260, 0
  br i1 %tobool.not.i261, label %if.end.i263, label %smu_v13_0_atom_get_smu_clockinfo.exit256.smu_v13_0_atom_get_smu_clockinfo.exit264_crit_edge

smu_v13_0_atom_get_smu_clockinfo.exit256.smu_v13_0_atom_get_smu_clockinfo.exit264_crit_edge: ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit256
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_atom_get_smu_clockinfo.exit264

if.end.i263:                                      ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit256
  call void @__sanitizer_cov_trace_pc() #12
  %vclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 6
  %138 = ptrtoint ptr %input.i257 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %input.i257, align 4
  %140 = call i32 @llvm.bswap.i32(i32 %139) #10
  %div.i262 = udiv i32 %140, 10000
  %141 = ptrtoint ptr %vclk to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %div.i262, ptr %vclk, align 4
  br label %smu_v13_0_atom_get_smu_clockinfo.exit264

smu_v13_0_atom_get_smu_clockinfo.exit264:         ; preds = %if.end.i263, %smu_v13_0_atom_get_smu_clockinfo.exit256.smu_v13_0_atom_get_smu_clockinfo.exit264_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i257) #10
  %142 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i265) #10
  %144 = ptrtoint ptr %input.i265 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 196608, ptr %input.i265, align 4
  %mode_info.i267 = getelementptr inbounds %struct.amdgpu_device, ptr %143, i32 0, i32 79
  %145 = ptrtoint ptr %mode_info.i267 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mode_info.i267, align 8
  %call.i268 = call i32 @amdgpu_atom_execute_table(ptr noundef %146, i32 noundef 41, ptr noundef nonnull %input.i265) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %tobool.not.i269 = icmp eq i32 %call.i268, 0
  br i1 %tobool.not.i269, label %if.end.i271, label %smu_v13_0_atom_get_smu_clockinfo.exit264.smu_v13_0_atom_get_smu_clockinfo.exit272_crit_edge

smu_v13_0_atom_get_smu_clockinfo.exit264.smu_v13_0_atom_get_smu_clockinfo.exit272_crit_edge: ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit264
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_atom_get_smu_clockinfo.exit272

if.end.i271:                                      ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit264
  call void @__sanitizer_cov_trace_pc() #12
  %dclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 7
  %147 = ptrtoint ptr %input.i265 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %input.i265, align 4
  %149 = call i32 @llvm.bswap.i32(i32 %148) #10
  %div.i270 = udiv i32 %149, 10000
  %150 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %div.i270, ptr %dclk, align 4
  br label %smu_v13_0_atom_get_smu_clockinfo.exit272

smu_v13_0_atom_get_smu_clockinfo.exit272:         ; preds = %if.end.i271, %smu_v13_0_atom_get_smu_clockinfo.exit264.smu_v13_0_atom_get_smu_clockinfo.exit272_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i265) #10
  %151 = ptrtoint ptr %format_revision115 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %format_revision115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %152)
  %cmp146 = icmp eq i32 %152, 3
  br i1 %cmp146, label %land.lhs.true, label %smu_v13_0_atom_get_smu_clockinfo.exit272.cleanup_crit_edge

smu_v13_0_atom_get_smu_clockinfo.exit272.cleanup_crit_edge: ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit272
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit272
  %153 = ptrtoint ptr %content_revision120 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %content_revision120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp151 = icmp ugt i32 %154, 1
  br i1 %cmp151, label %if.then153, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then153:                                       ; preds = %land.lhs.true
  %155 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %smu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input.i273) #10
  %157 = ptrtoint ptr %input.i273 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 50331648, ptr %input.i273, align 4
  %mode_info.i275 = getelementptr inbounds %struct.amdgpu_device, ptr %156, i32 0, i32 79
  %158 = ptrtoint ptr %mode_info.i275 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mode_info.i275, align 8
  %call.i276 = call i32 @amdgpu_atom_execute_table(ptr noundef %159, i32 noundef 41, ptr noundef nonnull %input.i273) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool.not.i277 = icmp eq i32 %call.i276, 0
  br i1 %tobool.not.i277, label %if.end.i279, label %if.then153.smu_v13_0_atom_get_smu_clockinfo.exit280_crit_edge

if.then153.smu_v13_0_atom_get_smu_clockinfo.exit280_crit_edge: ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_atom_get_smu_clockinfo.exit280

if.end.i279:                                      ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  %fclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 16
  %160 = ptrtoint ptr %input.i273 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %input.i273, align 4
  %162 = call i32 @llvm.bswap.i32(i32 %161) #10
  %div.i278 = udiv i32 %162, 10000
  %163 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %div.i278, ptr %fclk, align 4
  br label %smu_v13_0_atom_get_smu_clockinfo.exit280

smu_v13_0_atom_get_smu_clockinfo.exit280:         ; preds = %if.end.i279, %if.then153.smu_v13_0_atom_get_smu_clockinfo.exit280_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input.i273) #10
  br label %cleanup

cleanup:                                          ; preds = %smu_v13_0_atom_get_smu_clockinfo.exit280, %land.lhs.true.cleanup_crit_edge, %smu_v13_0_atom_get_smu_clockinfo.exit272.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %smu_v13_0_atom_get_smu_clockinfo.exit280 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %smu_v13_0_atom_get_smu_clockinfo.exit272.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atombios_get_data_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_notify_memory_pool_location(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %memory_pool2 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 13
  %0 = ptrtoint ptr %memory_pool2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %memory_pool2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cpu_addr = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 13, i32 4
  %2 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_addr, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mc_address = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 13, i32 3
  %4 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mc_address, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 59, i32 noundef %conv, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conv5 = trunc i64 %5 to i32
  %call8 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 60, i32 noundef %conv5, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %memory_pool2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %memory_pool2, align 8
  %conv13 = trunc i64 %7 to i32
  %call14 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 61, i32 noundef %conv13, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call14, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg_with_param(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_min_deep_sleep_dcefclk(ptr noundef %smu, i32 noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 48, i32 noundef %clk, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_driver_table_location(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_address = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 12, i32 3
  %0 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mc_address, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %shr = lshr i64 %1, 32
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 16, i32 noundef %conv, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mc_address, align 8
  %conv7 = trunc i64 %3 to i32
  %call8 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 17, i32 noundef %conv7, ptr noundef null) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.if.end9_crit_edge ], [ %call8, %if.then5 ], [ 0, %entry.if.end9_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_tool_table_location(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_address = getelementptr %struct.smu_context, ptr %smu, i32 0, i32 14, i32 11, i32 7, i32 3
  %0 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mc_address, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %shr = lshr i64 %1, 32
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 18, i32 noundef %conv, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %mc_address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mc_address, align 8
  %conv6 = trunc i64 %3 to i32
  %call7 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 19, i32 noundef %conv6, ptr noundef null) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.if.end8_crit_edge ], [ %call7, %if.then4 ], [ 0, %entry.if.end8_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_init_display_count(ptr noundef %smu, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 65, i32 noundef %count, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_allowed_mask(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %allowed = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 2
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %allowed, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 64
  br i1 %cmp4.i, label %entry.failed_crit_edge, label %lor.lhs.false

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

lor.lhs.false:                                    ; preds = %entry
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  %0 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smu_feature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ult i32 %1, 64
  br i1 %cmp, label %lor.lhs.false.failed_crit_edge, label %if.end

lor.lhs.false.failed_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %allowed to i32
  call void @__asan_load4_noabort(i32 %2)
  %feature_mask.sroa.0.0.copyload = load i32, ptr %allowed, align 4
  %feature_mask.sroa.5.0.allowed.sroa_idx = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 2, i32 1
  %3 = ptrtoint ptr %feature_mask.sroa.5.0.allowed.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %feature_mask.sroa.5.0.copyload = load i32, ptr %feature_mask.sroa.5.0.allowed.sroa_idx, align 4
  %call4 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 4, i32 noundef %feature_mask.sroa.5.0.copyload, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.failed_crit_edge

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 3, i32 noundef %feature_mask.sroa.0.0.copyload, ptr noundef null) #10
  br label %failed

failed:                                           ; preds = %if.end6, %if.end.failed_crit_edge, %lor.lhs.false.failed_crit_edge, %entry.failed_crit_edge
  %ret.0 = phi i32 [ 0, %entry.failed_crit_edge ], [ 0, %lor.lhs.false.failed_crit_edge ], [ %call4, %if.end.failed_crit_edge ], [ %call8, %if.end6 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_gfx_off_control(ptr noundef %smu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 172, i32 15
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 851969, label %entry.sw.bb_crit_edge
    i32 851971, label %entry.sw.bb_crit_edge11
  ]

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11
  %pp_feature = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 24
  %5 = ptrtoint ptr %pp_feature to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pp_feature, align 8
  %and = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %. = select i1 %enable, i32 73, i32 74
  %call5 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef %., ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_send_smc_msg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_system_features_control(ptr noundef %smu, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  %feature_mask = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_feature = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %feature_mask) #10
  %0 = ptrtoint ptr %feature_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %feature_mask, align 4, !annotation !196
  %1 = getelementptr inbounds [2 x i32], ptr %feature_mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !196
  %cond = select i1 %en, i32 5, i32 6
  %call = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef %cond, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 3
  %3 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smu_feature, align 4
  %sub.i = add i32 %4, 31
  %5 = lshr i32 %sub.i, 3
  %mul.i = and i32 %5, 536870908
  %6 = call ptr @memset(ptr %enabled, i32 0, i32 %mul.i)
  %supported = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 17, i32 1
  %7 = call ptr @memset(ptr %supported, i32 0, i32 %mul.i)
  br i1 %en, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %call7 = call i32 @smu_cmn_get_enabled_mask(ptr noundef %smu, ptr noundef nonnull %feature_mask, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %smu_feature to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smu_feature, align 4
  %sub.i36 = add i32 %9, 31
  %10 = lshr i32 %sub.i36, 3
  %mul.i37 = and i32 %10, 536870908
  %11 = call ptr @memcpy(ptr %enabled, ptr %feature_mask, i32 %mul.i37)
  %12 = call ptr @memcpy(ptr %supported, ptr %feature_mask, i32 %mul.i37)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.then5.cleanup_crit_edge ], [ 0, %if.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %feature_mask) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_get_enabled_mask(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_notify_display_change(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_enabled = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 42
  %0 = ptrtoint ptr %pm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %vram_type = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 62, i32 21
  %4 = ptrtoint ptr %vram_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vram_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 51, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.then2 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_init_max_sustainable_clocks(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_sustainable_clocks1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %max_sustainable_clocks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max_sustainable_clocks1, align 4
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %2 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uclk, align 8
  %div = udiv i32 %3, 100
  %uclock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %uclock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %uclock, align 4
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %5 = ptrtoint ptr %socclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %socclk, align 4
  %div5 = udiv i32 %6, 100
  %soc_clock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %soc_clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div5, ptr %soc_clock, align 4
  %dcefclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 4
  %8 = ptrtoint ptr %dcefclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dcefclk, align 8
  %div8 = udiv i32 %9, 100
  %dcef_clock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dcef_clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div8, ptr %dcef_clock, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %1, align 4
  %phy_clock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %phy_clock to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %phy_clock, align 4
  %pixel_clock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %pixel_clock, align 4
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %call10 = tail call fastcc i32 @smu_v13_0_get_max_sustainable_clock(ptr noundef %smu, ptr noundef %uclock, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then.if.end13_crit_edge, label %do.end

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smu, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end13:                                         ; preds = %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %call14 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.if.end27_crit_edge, label %if.then16

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then16:                                        ; preds = %if.end13
  %call18 = tail call fastcc i32 @smu_v13_0_get_max_sustainable_clock(ptr noundef %smu, ptr noundef %soc_clock, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end27_crit_edge, label %do.end23

if.then16.if.end27_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end23:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smu, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end27:                                         ; preds = %if.then16.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  %call28 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end71_crit_edge, label %if.then30

if.end27.if.end71_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then30:                                        ; preds = %if.end27
  %call32 = tail call fastcc i32 @smu_v13_0_get_max_sustainable_clock(ptr noundef %smu, ptr noundef %dcef_clock, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smu, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end40:                                         ; preds = %if.then30
  %call42 = tail call fastcc i32 @smu_v13_0_get_max_sustainable_clock(ptr noundef %smu, ptr noundef %1, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end50, label %do.end47

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %smu, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %call52 = tail call fastcc i32 @smu_v13_0_get_max_sustainable_clock(ptr noundef %smu, ptr noundef %phy_clock, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %smu, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  %call62 = tail call fastcc i32 @smu_v13_0_get_max_sustainable_clock(ptr noundef %smu, ptr noundef %pixel_clock, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end60.if.end71_crit_edge, label %do.end67

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %smu, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.27) #13
  br label %cleanup

if.end71:                                         ; preds = %if.end60.if.end71_crit_edge, %if.end27.if.end71_crit_edge
  %38 = ptrtoint ptr %soc_clock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %soc_clock, align 4
  %40 = ptrtoint ptr %uclock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uclock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp = icmp ult i32 %39, %41
  br i1 %cmp, label %if.then74, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %uclock to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %uclock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.end71.cleanup_crit_edge, %do.end67, %do.end57, %do.end47, %do.end37, %do.end23, %do.end
  %retval.0 = phi i32 [ %call10, %do.end ], [ %call18, %do.end23 ], [ %call32, %do.end37 ], [ %call42, %do.end47 ], [ %call52, %do.end57 ], [ %call62, %do.end67 ], [ 0, %if.then74 ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu_v13_0_get_max_sustainable_clock(ptr noundef %smu, ptr noundef %clock, i32 noundef %clock_select) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 0, i32 noundef 76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 0, i32 noundef 37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clock_select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %shl = shl i32 %call3, 16
  %call7 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 76, i32 noundef %shl, ptr noundef %clock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end6
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call14 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 37, i32 noundef %shl, ptr noundef %clock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end12.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge
  %.str.71.sink = phi ptr [ @.str.68, %if.end6.cleanup.sink.split_crit_edge ], [ @.str.71, %if.end12.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call7, %if.end6.cleanup.sink.split_crit_edge ], [ %call14, %if.end12.cleanup.sink.split_crit_edge ]
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.71.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_current_power_limit(ptr noundef %smu, ptr noundef %power_limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %ac_power = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 23
  %2 = ptrtoint ptr %ac_power to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ac_power, align 4, !range !194
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  %call2 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 4, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %shl = shl i32 %call2, 16
  %call5 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 75, i32 noundef %shl, ptr noundef %power_limit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smu, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %do.end ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_to_asic_specific_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_power_limit(ptr noundef %smu, i32 noundef %limit_type, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit_type)
  %cmp.not = icmp eq i32 %limit_type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45) #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 15, i32 noundef %limit, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %current_power_limit = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 26
  %8 = ptrtoint ptr %current_power_limit to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %limit, ptr %current_power_limit, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ 0, %if.end11 ], [ -95, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_enable_thermal_alert(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_controller_type = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 15
  %0 = ptrtoint ptr %thermal_controller_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %thermal_controller_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %irq_source = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 1
  %call = tail call i32 @amdgpu_irq_get(ptr noundef %3, ptr noundef %irq_source, i32 noundef 0) #10
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_disable_thermal_alert(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %irq_source = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 1
  %call = tail call i32 @amdgpu_irq_put(ptr noundef %1, ptr noundef %irq_source, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_gfx_vdd(ptr nocapture noundef readonly %smu, ptr noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false_crit_edge, label %cond.true

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 22
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 4
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 22) #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 22
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx16, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19 = add i32 %15, 4
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call20, %cond.false ]
  %and21 = lshr i32 %cond, 16
  %16 = trunc i32 %and21 to i16
  %conv.i = and i16 %16, 255
  %mul.neg.i = mul nsw i16 %conv.i, -25
  %sub.i = add nsw i16 %mul.neg.i, 6200
  %div2.i = sdiv i16 %sub.i, 4
  %conv23 = zext i16 %div2.i to i32
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv23, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_display_clock_voltage_request(ptr noundef %smu, ptr nocapture noundef readonly %clock_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %clock_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_req, align 4
  %clock_freq_in_khz = getelementptr inbounds %struct.pp_display_clock_request, ptr %clock_req, i32 0, i32 1
  %2 = ptrtoint ptr %clock_freq_in_khz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock_freq_in_khz, align 4
  %div = udiv i32 %3, 1000
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %1, label %sw.epilog [
    i32 4, label %if.then.if.end11_crit_edge
    i32 1, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
    i32 3, label %land.lhs.true
  ]

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

sw.epilog:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %disable_uclk_switch = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 36
  %9 = ptrtoint ptr %disable_uclk_switch to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disable_uclk_switch, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %sw.bb5, %sw.bb4, %sw.bb3, %if.then.if.end11_crit_edge
  %clk_select.0.ph39 = phi i32 [ 7, %land.lhs.true.if.end11_crit_edge ], [ 11, %sw.bb5 ], [ 10, %sw.bb4 ], [ 9, %sw.bb3 ], [ 8, %if.then.if.end11_crit_edge ]
  %cmp.ph38 = phi i1 [ true, %land.lhs.true.if.end11_crit_edge ], [ false, %sw.bb5 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ false, %if.then.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %3)
  %11 = icmp ult i32 %3, 1000
  br i1 %11, label %if.end11.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge, label %if.end.i

if.end11.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_set_hard_freq_limited_range.exit

if.end.i:                                         ; preds = %if.end11
  %call.i = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_select.0.ph39) #10
  br i1 %call.i, label %if.end3.i, label %if.end.i.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge

if.end.i.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_set_hard_freq_limited_range.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_select.0.ph39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge, label %if.then15.i

if.end3.i.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_set_hard_freq_limited_range.exit

if.then15.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %shl16.i = shl i32 %call4.i, 16
  %and17.i = and i32 %div, 65535
  %or18.i = or i32 %shl16.i, %and17.i
  %call19.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 34, i32 noundef %or18.i, ptr noundef null) #10
  br label %smu_v13_0_set_hard_freq_limited_range.exit

smu_v13_0_set_hard_freq_limited_range.exit:       ; preds = %if.then15.i, %if.end3.i.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge, %if.end.i.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge, %if.end11.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end11.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge ], [ 0, %if.end.i.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge ], [ %call4.i, %if.end3.i.smu_v13_0_set_hard_freq_limited_range.exit_crit_edge ], [ %call19.i, %if.then15.i ]
  br i1 %cmp.ph38, label %if.then14, label %smu_v13_0_set_hard_freq_limited_range.exit.cleanup_crit_edge

smu_v13_0_set_hard_freq_limited_range.exit.cleanup_crit_edge: ; preds = %smu_v13_0_set_hard_freq_limited_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %smu_v13_0_set_hard_freq_limited_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  %hard_min_uclk_req_from_dal = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 35
  %12 = ptrtoint ptr %hard_min_uclk_req_from_dal to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %hard_min_uclk_req_from_dal, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %smu_v13_0_set_hard_freq_limited_range.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.epilog, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %sw.epilog ], [ %retval.0.i, %if.then14 ], [ %retval.0.i, %smu_v13_0_set_hard_freq_limited_range.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_hard_freq_limited_range(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %min, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min)
  %cmp = icmp eq i32 %min, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %cmp1 = icmp eq i32 %max, 0
  %0 = or i32 %max, %min
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  br i1 %cmp1, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  %shl = shl i32 %call4, 16
  %and = and i32 %max, 65535
  %or = or i32 %shl, %and
  %call10 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 35, i32 noundef %or, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then9.if.end13_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  br i1 %cmp, label %if.end13.if.end23_crit_edge, label %if.then15

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then15:                                        ; preds = %if.end13
  %shl16 = shl i32 %call4, 16
  %and17 = and i32 %min, 65535
  %or18 = or i32 %shl16, %and17
  %call19 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 34, i32 noundef %or18, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then15.if.end23_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %if.then15.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then15.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ], [ %call19, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_fan_control_mode(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_feature_is_enabled(ptr noundef %smu, i32 noundef 27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_fan_speed_percent(ptr noundef %smu, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %speed, i32 100)
  %call.i = tail call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end3_crit_edge, label %if.end.i

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @smu_cmn_feature_set_enabled(ptr noundef %smu, i32 noundef 27, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end3_crit_edge, label %smu_v13_0_auto_fan_control.exit

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

smu_v13_0_auto_fan_control.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %smu, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.76) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virt, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.cond.false_crit_edge, label %land.lhs.true

if.end3.cond.false_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end3
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sriov_rreg, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add = add i32 %16, 140
  %call17 = tail call i32 %12(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end3.cond.false_crit_edge
  %arrayidx19 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx19, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add22 = add i32 %20, 140
  %call23 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add22, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call17, %cond.true ], [ %call23, %cond.false ]
  %and24 = and i32 %cond, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.end.cleanup_crit_edge, label %if.end27

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %cond.end
  %narrow = mul nuw nsw i32 %and24, %2
  %mul = zext i32 %narrow to i64
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i32 0) #16, !srcloc !197
  %asmresult.i = extractvalue { i64, i32 } %21, 0
  %asmresult4.i = extractvalue { i64, i32 } %21, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #16, !srcloc !198
  %asmresult10.i = extractvalue { i64, i32 } %22, 0
  %div202459 = lshr i64 %asmresult10.i, 6
  %conv224 = trunc i64 %div202459 to i32
  %23 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %virt, align 8
  %and227 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  br i1 %tobool228.not, label %if.end27.cond.false320.sink.split_crit_edge, label %land.lhs.true229

if.end27.cond.false320.sink.split_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false320.sink.split

land.lhs.true229:                                 ; preds = %if.end27
  %funcs232 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %25 = ptrtoint ptr %funcs232 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %funcs232, align 4
  %tobool233.not = icmp eq ptr %26, null
  br i1 %tobool233.not, label %land.lhs.true229.cond.false320.sink.split_crit_edge, label %land.lhs.true234

land.lhs.true229.cond.false320.sink.split_crit_edge: ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false320.sink.split

land.lhs.true234:                                 ; preds = %land.lhs.true229
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_wreg, align 4
  %tobool238.not = icmp eq ptr %28, null
  br i1 %tobool238.not, label %land.lhs.true298, label %cond.true239

cond.true239:                                     ; preds = %land.lhs.true234
  %arrayidx245 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %29 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx245, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add248 = add i32 %32, 139
  %sriov_rreg262 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %26, i32 0, i32 13
  %33 = ptrtoint ptr %sriov_rreg262 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sriov_rreg262, align 4
  %tobool263.not = icmp eq ptr %34, null
  br i1 %tobool263.not, label %cond.false275, label %cond.true264

cond.true264:                                     ; preds = %cond.true239
  call void @__sanitizer_cov_trace_pc() #12
  %call274 = tail call i32 %34(ptr noundef %1, i32 noundef %add248, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end282

cond.false275:                                    ; preds = %cond.true239
  call void @__sanitizer_cov_trace_pc() #12
  %call281 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add248, i32 noundef 0) #10
  br label %cond.end282

cond.end282:                                      ; preds = %cond.false275, %cond.true264
  %cond283 = phi i32 [ %call274, %cond.true264 ], [ %call281, %cond.false275 ]
  %and284 = and i32 %cond283, -256
  %and286 = and i32 %conv224, 255
  %or287 = or i32 %and284, %and286
  tail call void %28(ptr noundef %1, i32 noundef %add248, i32 noundef %or287, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end333

land.lhs.true298:                                 ; preds = %land.lhs.true234
  %35 = ptrtoint ptr %funcs232 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load ptr, ptr %funcs232, align 4
  %arrayidx290462 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %36 = ptrtoint ptr %arrayidx290462 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx290462, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add293463 = add i32 %39, 139
  %tobool302.not = icmp eq ptr %.pr, null
  br i1 %tobool302.not, label %land.lhs.true298.cond.false320_crit_edge, label %land.lhs.true303

land.lhs.true298.cond.false320_crit_edge:         ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false320

land.lhs.true303:                                 ; preds = %land.lhs.true298
  %sriov_rreg307 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %40 = ptrtoint ptr %sriov_rreg307 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_rreg307, align 4
  %tobool308.not = icmp eq ptr %41, null
  br i1 %tobool308.not, label %land.lhs.true303.cond.false320_crit_edge, label %cond.true309

land.lhs.true303.cond.false320_crit_edge:         ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false320

cond.true309:                                     ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #12
  %call319 = tail call i32 %41(ptr noundef %1, i32 noundef %add293463, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end327

cond.false320.sink.split:                         ; preds = %land.lhs.true229.cond.false320.sink.split_crit_edge, %if.end27.cond.false320.sink.split_crit_edge
  %arrayidx290462467 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %42 = ptrtoint ptr %arrayidx290462467 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx290462467, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add293463468 = add i32 %45, 139
  br label %cond.false320

cond.false320:                                    ; preds = %cond.false320.sink.split, %land.lhs.true303.cond.false320_crit_edge, %land.lhs.true298.cond.false320_crit_edge
  %add293466 = phi i32 [ %add293463, %land.lhs.true303.cond.false320_crit_edge ], [ %add293463, %land.lhs.true298.cond.false320_crit_edge ], [ %add293463468, %cond.false320.sink.split ]
  %call326 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add293466, i32 noundef 0) #10
  br label %cond.end327

cond.end327:                                      ; preds = %cond.false320, %cond.true309
  %add293464 = phi i32 [ %add293463, %cond.true309 ], [ %add293466, %cond.false320 ]
  %cond328 = phi i32 [ %call319, %cond.true309 ], [ %call326, %cond.false320 ]
  %and329 = and i32 %cond328, -256
  %and331 = and i32 %conv224, 255
  %or332 = or i32 %and329, %and331
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add293464, i32 noundef %or332, i32 noundef 0) #10
  br label %cond.end333

cond.end333:                                      ; preds = %cond.end327, %cond.end282
  tail call fastcc void @smu_v13_0_set_fan_static_mode(ptr noundef %smu, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %cond.end333, %cond.end.cleanup_crit_edge, %smu_v13_0_auto_fan_control.exit
  %retval.0 = phi i32 [ 0, %cond.end333 ], [ -22, %smu_v13_0_auto_fan_control.exit ], [ -22, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smu_v13_0_set_fan_static_mode(ptr nocapture noundef readonly %smu, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %entry.cond.false77.sink.split_crit_edge, label %land.lhs.true

entry.cond.false77.sink.split_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false77.sink.split

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false77.sink.split_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false77.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false77.sink.split

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true55, label %cond.true

cond.true:                                        ; preds = %land.lhs.true3
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 141
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg, align 4
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %cond.false, label %cond.true28

cond.true28:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %13(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true28
  %cond = phi i32 [ %call, %cond.true28 ], [ %call43, %cond.false ]
  %and44 = and i32 %cond, -256
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %and44, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end88

land.lhs.true55:                                  ; preds = %land.lhs.true3
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx471 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %15 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx471, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add502 = add i32 %18, 141
  %tobool59.not = icmp eq ptr %.pr, null
  br i1 %tobool59.not, label %land.lhs.true55.cond.false77_crit_edge, label %land.lhs.true60

land.lhs.true55.cond.false77_crit_edge:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false77

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %sriov_rreg64 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %19 = ptrtoint ptr %sriov_rreg64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sriov_rreg64, align 4
  %tobool65.not = icmp eq ptr %20, null
  br i1 %tobool65.not, label %land.lhs.true60.cond.false77_crit_edge, label %cond.true66

land.lhs.true60.cond.false77_crit_edge:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false77

cond.true66:                                      ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = tail call i32 %20(ptr noundef %1, i32 noundef %add502, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end84

cond.false77.sink.split:                          ; preds = %land.lhs.true.cond.false77.sink.split_crit_edge, %entry.cond.false77.sink.split_crit_edge
  %arrayidx47111 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %21 = ptrtoint ptr %arrayidx47111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx47111, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add50212 = add i32 %24, 141
  br label %cond.false77

cond.false77:                                     ; preds = %cond.false77.sink.split, %land.lhs.true60.cond.false77_crit_edge, %land.lhs.true55.cond.false77_crit_edge
  %add505 = phi i32 [ %add502, %land.lhs.true60.cond.false77_crit_edge ], [ %add502, %land.lhs.true55.cond.false77_crit_edge ], [ %add50212, %cond.false77.sink.split ]
  %call83 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add505, i32 noundef 0) #10
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false77, %cond.true66
  %add503 = phi i32 [ %add502, %cond.true66 ], [ %add505, %cond.false77 ]
  %cond85 = phi i32 [ %call76, %cond.true66 ], [ %call83, %cond.false77 ]
  %and86 = and i32 %cond85, -256
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add503, i32 noundef %and86, i32 noundef 0) #10
  br label %cond.end88

cond.end88:                                       ; preds = %cond.end84, %cond.end
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt, align 8
  %and91 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %cond.end88.cond.false184.sink.split_crit_edge, label %land.lhs.true93

cond.end88.cond.false184.sink.split_crit_edge:    ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false184.sink.split

land.lhs.true93:                                  ; preds = %cond.end88
  %funcs96 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %27 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs96, align 4
  %tobool97.not = icmp eq ptr %28, null
  br i1 %tobool97.not, label %land.lhs.true93.cond.false184.sink.split_crit_edge, label %land.lhs.true98

land.lhs.true93.cond.false184.sink.split_crit_edge: ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false184.sink.split

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %sriov_wreg102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %sriov_wreg102 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_wreg102, align 4
  %tobool103.not = icmp eq ptr %30, null
  br i1 %tobool103.not, label %land.lhs.true162, label %cond.true104

cond.true104:                                     ; preds = %land.lhs.true98
  %arrayidx110 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %31 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx110, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add113 = add i32 %34, 141
  %sriov_rreg127 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg127 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg127, align 4
  %tobool128.not = icmp eq ptr %36, null
  br i1 %tobool128.not, label %cond.false140, label %cond.true129

cond.true129:                                     ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #12
  %call139 = tail call i32 %36(ptr noundef %1, i32 noundef %add113, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end147

cond.false140:                                    ; preds = %cond.true104
  call void @__sanitizer_cov_trace_pc() #12
  %call146 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add113, i32 noundef 0) #10
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false140, %cond.true129
  %cond148 = phi i32 [ %call139, %cond.true129 ], [ %call146, %cond.false140 ]
  %and149 = and i32 %cond148, -14337
  %shl = shl i32 %mode, 11
  %and150 = and i32 %shl, 14336
  %or151 = or i32 %and149, %and150
  tail call void %30(ptr noundef %1, i32 noundef %add113, i32 noundef %or151, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end197

land.lhs.true162:                                 ; preds = %land.lhs.true98
  %37 = ptrtoint ptr %funcs96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr14 = load ptr, ptr %funcs96, align 4
  %arrayidx1546 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %38 = ptrtoint ptr %arrayidx1546 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx1546, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add1577 = add i32 %41, 141
  %tobool166.not = icmp eq ptr %.pr14, null
  br i1 %tobool166.not, label %land.lhs.true162.cond.false184_crit_edge, label %land.lhs.true167

land.lhs.true162.cond.false184_crit_edge:         ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false184

land.lhs.true167:                                 ; preds = %land.lhs.true162
  %sriov_rreg171 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr14, i32 0, i32 13
  %42 = ptrtoint ptr %sriov_rreg171 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_rreg171, align 4
  %tobool172.not = icmp eq ptr %43, null
  br i1 %tobool172.not, label %land.lhs.true167.cond.false184_crit_edge, label %cond.true173

land.lhs.true167.cond.false184_crit_edge:         ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false184

cond.true173:                                     ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #12
  %call183 = tail call i32 %43(ptr noundef %1, i32 noundef %add1577, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end191

cond.false184.sink.split:                         ; preds = %land.lhs.true93.cond.false184.sink.split_crit_edge, %cond.end88.cond.false184.sink.split_crit_edge
  %arrayidx154615 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %44 = ptrtoint ptr %arrayidx154615 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx154615, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add157716 = add i32 %47, 141
  br label %cond.false184

cond.false184:                                    ; preds = %cond.false184.sink.split, %land.lhs.true167.cond.false184_crit_edge, %land.lhs.true162.cond.false184_crit_edge
  %add15710 = phi i32 [ %add1577, %land.lhs.true167.cond.false184_crit_edge ], [ %add1577, %land.lhs.true162.cond.false184_crit_edge ], [ %add157716, %cond.false184.sink.split ]
  %call190 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add15710, i32 noundef 0) #10
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false184, %cond.true173
  %add1578 = phi i32 [ %add1577, %cond.true173 ], [ %add15710, %cond.false184 ]
  %cond192 = phi i32 [ %call183, %cond.true173 ], [ %call190, %cond.false184 ]
  %and193 = and i32 %cond192, -14337
  %shl194 = shl i32 %mode, 11
  %and195 = and i32 %shl194, 14336
  %or196 = or i32 %and193, %and195
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add1578, i32 noundef %or196, i32 noundef 0) #10
  br label %cond.end197

cond.end197:                                      ; preds = %cond.end191, %cond.end147
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_fan_control_mode(ptr noundef %smu, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %call.i = tail call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb1.cleanup_crit_edge, label %if.end.i

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb1
  %call2.i = tail call i32 @smu_cmn_feature_set_enabled(ptr noundef %smu, i32 noundef 27, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.end.sink.split_crit_edge

if.end.i.do.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call.i9 = tail call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not.i10 = icmp eq i32 %call.i9, 0
  br i1 %tobool.not.i10, label %sw.bb3.cleanup_crit_edge, label %if.end.i13

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i13:                                       ; preds = %sw.bb3
  %call2.i11 = tail call i32 @smu_cmn_feature_set_enabled(ptr noundef %smu, i32 noundef 27, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i11)
  %tobool3.not.i12 = icmp eq i32 %call2.i11, 0
  br i1 %tobool3.not.i12, label %if.end.i13.cleanup_crit_edge, label %if.end.i13.do.end.sink.split_crit_edge

if.end.i13.do.end.sink.split_crit_edge:           ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.sink.split

if.end.i13.cleanup_crit_edge:                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %call = tail call i32 @smu_v13_0_set_fan_speed_percent(ptr noundef %smu, i32 noundef 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.sink.split:                                ; preds = %if.end.i13.do.end.sink.split_crit_edge, %if.end.i.do.end.sink.split_crit_edge
  %.str.75.sink = phi ptr [ @.str.76, %if.end.i.do.end.sink.split_crit_edge ], [ @.str.75, %if.end.i13.do.end.sink.split_crit_edge ]
  %1 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smu, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull %.str.75.sink) #13
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %sw.epilog.do.end_crit_edge
  %5 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %if.end.i13.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %if.end.i13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_fan_speed_rpm(ptr noundef %smu, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %tobool.not = icmp eq i32 %speed, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @smu_cmn_feature_is_supported(ptr noundef %smu, i32 noundef 27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @smu_cmn_feature_set_enabled(ptr noundef %smu, i32 noundef 27, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end4_crit_edge, label %smu_v13_0_auto_fan_control.exit

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

smu_v13_0_auto_fan_control.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.76) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic_funcs, align 4
  %get_xclk = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_xclk, align 4
  %call5 = tail call i32 %9(ptr noundef %1) #10
  %mul6 = mul i32 %call5, 600000
  %mul7 = shl i32 %speed, 3
  %div = udiv i32 %mul6, %mul7
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt, align 8
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end4.cond.false86.sink.split_crit_edge, label %land.lhs.true

if.end4.cond.false86.sink.split_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false86.sink.split

land.lhs.true:                                    ; preds = %if.end4
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.cond.false86.sink.split_crit_edge, label %land.lhs.true10

land.lhs.true.cond.false86.sink.split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false86.sink.split

land.lhs.true10:                                  ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sriov_wreg, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %land.lhs.true64, label %cond.true

cond.true:                                        ; preds = %land.lhs.true10
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add = add i32 %19, 142
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %13, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg, align 4
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %cond.false, label %cond.true35

cond.true35:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call i32 %21(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true35
  %cond = phi i32 [ %call45, %cond.true35 ], [ %call51, %cond.false ]
  %and52 = and i32 %cond, 7
  %shl = shl i32 %div, 3
  %or = or i32 %and52, %shl
  tail call void %15(ptr noundef %1, i32 noundef %add, i32 noundef %or, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end99

land.lhs.true64:                                  ; preds = %land.lhs.true10
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load ptr, ptr %funcs, align 4
  %arrayidx56141 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %23 = ptrtoint ptr %arrayidx56141 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx56141, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add59142 = add i32 %26, 142
  %tobool68.not = icmp eq ptr %.pr, null
  br i1 %tobool68.not, label %land.lhs.true64.cond.false86_crit_edge, label %land.lhs.true69

land.lhs.true64.cond.false86_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false86

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %sriov_rreg73 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %27 = ptrtoint ptr %sriov_rreg73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sriov_rreg73, align 4
  %tobool74.not = icmp eq ptr %28, null
  br i1 %tobool74.not, label %land.lhs.true69.cond.false86_crit_edge, label %cond.true75

land.lhs.true69.cond.false86_crit_edge:           ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false86

cond.true75:                                      ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  %call85 = tail call i32 %28(ptr noundef %1, i32 noundef %add59142, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end93

cond.false86.sink.split:                          ; preds = %land.lhs.true.cond.false86.sink.split_crit_edge, %if.end4.cond.false86.sink.split_crit_edge
  %arrayidx56141146 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 25
  %29 = ptrtoint ptr %arrayidx56141146 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx56141146, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add59142147 = add i32 %32, 142
  br label %cond.false86

cond.false86:                                     ; preds = %cond.false86.sink.split, %land.lhs.true69.cond.false86_crit_edge, %land.lhs.true64.cond.false86_crit_edge
  %add59145 = phi i32 [ %add59142, %land.lhs.true69.cond.false86_crit_edge ], [ %add59142, %land.lhs.true64.cond.false86_crit_edge ], [ %add59142147, %cond.false86.sink.split ]
  %call92 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add59145, i32 noundef 0) #10
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false86, %cond.true75
  %add59143 = phi i32 [ %add59142, %cond.true75 ], [ %add59145, %cond.false86 ]
  %cond94 = phi i32 [ %call85, %cond.true75 ], [ %call92, %cond.false86 ]
  %and95 = and i32 %cond94, 7
  %shl96 = shl i32 %div, 3
  %or98 = or i32 %and95, %shl96
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add59143, i32 noundef %or98, i32 noundef 0) #10
  br label %cond.end99

cond.end99:                                       ; preds = %cond.end93, %cond.end
  tail call fastcc void @smu_v13_0_set_fan_static_mode(ptr noundef %smu, i32 noundef 5)
  br label %cleanup

cleanup:                                          ; preds = %cond.end99, %smu_v13_0_auto_fan_control.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end99 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %smu_v13_0_auto_fan_control.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_xgmi_pstate(ptr noundef %smu, i32 noundef %pstate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pstate)
  %tobool.not = icmp ne i32 %pstate, 0
  %cond = zext i1 %tobool.not to i32
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 78, i32 noundef %cond, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_register_irq_handler(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %irq_source = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 1
  %2 = ptrtoint ptr %irq_source to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %irq_source, align 4
  %funcs = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @smu_v13_0_irq_funcs, ptr %funcs, align 4
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %1, i32 noundef 15, i32 noundef 0, ptr noundef %irq_source) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @amdgpu_irq_add_id(ptr noundef %1, i32 noundef 15, i32 noundef 1, ptr noundef %irq_source) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @amdgpu_irq_add_id(ptr noundef %1, i32 noundef 22, i32 noundef 83, ptr noundef %irq_source) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @amdgpu_irq_add_id(ptr noundef %1, i32 noundef 31, i32 noundef 254, ptr noundef %irq_source) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smu_v13_0_get_max_sustainable_clocks_by_dc(ptr nocapture noundef readonly %smu, ptr noundef writeonly %max_clocks) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %max_clocks, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_sustainable_clocks = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 7
  %0 = ptrtoint ptr %max_sustainable_clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %max_sustainable_clocks, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %dcef_clock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dcef_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dcef_clock, align 4
  %mul = mul i32 %3, 1000
  %dcfClockInKhz = getelementptr inbounds %struct.pp_smu_nv_clock_table, ptr %max_clocks, i32 0, i32 7
  %4 = ptrtoint ptr %dcfClockInKhz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %dcfClockInKhz, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %mul3 = mul i32 %6, 1000
  %7 = ptrtoint ptr %max_clocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul3, ptr %max_clocks, align 4
  %phy_clock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %phy_clock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_clock, align 4
  %mul4 = mul i32 %9, 1000
  %phyClockInKhz = getelementptr inbounds %struct.pp_smu_nv_clock_table, ptr %max_clocks, i32 0, i32 2
  %10 = ptrtoint ptr %phyClockInKhz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul4, ptr %phyClockInKhz, align 4
  %pixel_clock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixel_clock, align 4
  %mul5 = mul i32 %12, 1000
  %pixelClockInKhz = getelementptr inbounds %struct.pp_smu_nv_clock_table, ptr %max_clocks, i32 0, i32 3
  %13 = ptrtoint ptr %pixelClockInKhz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul5, ptr %pixelClockInKhz, align 4
  %uclock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %uclock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uclock, align 4
  %mul6 = mul i32 %15, 1000
  %uClockInKhz = getelementptr inbounds %struct.pp_smu_nv_clock_table, ptr %max_clocks, i32 0, i32 8
  %16 = ptrtoint ptr %uClockInKhz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul6, ptr %uClockInKhz, align 4
  %soc_clock = getelementptr inbounds %struct.smu_13_0_max_sustainable_clocks, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %soc_clock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %soc_clock, align 4
  %mul7 = mul i32 %18, 1000
  %socClockInKhz = getelementptr inbounds %struct.pp_smu_nv_clock_table, ptr %max_clocks, i32 0, i32 6
  %19 = ptrtoint ptr %socClockInKhz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul7, ptr %socClockInKhz, align 4
  %dscClockInKhz = getelementptr inbounds %struct.pp_smu_nv_clock_table, ptr %max_clocks, i32 0, i32 4
  %20 = ptrtoint ptr %dscClockInKhz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dscClockInKhz, align 4
  %dppClockInKhz = getelementptr inbounds %struct.pp_smu_nv_clock_table, ptr %max_clocks, i32 0, i32 1
  %21 = ptrtoint ptr %dppClockInKhz to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dppClockInKhz, align 4
  %fabricClockInKhz = getelementptr inbounds %struct.pp_smu_nv_clock_table, ptr %max_clocks, i32 0, i32 5
  %22 = ptrtoint ptr %fabricClockInKhz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %fabricClockInKhz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_azalia_d3_pme(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 89, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_wait_for_event(ptr noundef %smu, i32 noundef %event, i64 noundef %event_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cond = icmp eq i32 %event, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu_v13_0_wait_for_reset_complete.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu_v13_0_wait_for_event, %if.then.i)) #10
          to label %smu_v13_0_wait_for_reset_complete.exit [label %if.then.i], !srcloc !195

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smu_v13_0_wait_for_reset_complete.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.98) #10
  br label %smu_v13_0_wait_for_reset_complete.exit

smu_v13_0_wait_for_reset_complete.exit:           ; preds = %if.then.i, %sw.bb
  %call3.i = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu, i32 noundef 201, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %smu_v13_0_wait_for_reset_complete.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call3.i, %smu_v13_0_wait_for_reset_complete.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_mode2_reset(ptr noundef %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 53, i32 noundef 2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 500) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_dpm_ultimate_freq(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %min, ptr noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %0 = zext i32 %clk_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %clk_type, label %if.then.sw.epilog_crit_edge [
    i32 14, label %if.then.sw.bb_crit_edge
    i32 7, label %if.then.sw.bb_crit_edge51
    i32 0, label %if.then.sw.bb1_crit_edge
    i32 13, label %if.then.sw.bb1_crit_edge52
    i32 6, label %sw.bb4
  ]

if.then.sw.bb1_crit_edge52:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

if.then.sw.bb1_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

if.then.sw.bb_crit_edge51:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge51
  %uclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 2
  %1 = ptrtoint ptr %uclk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uclk, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then.sw.bb1_crit_edge, %if.then.sw.bb1_crit_edge52
  %gfxclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 1
  %3 = ptrtoint ptr %gfxclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gfxclk, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %socclk = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 14, i32 8, i32 3
  %5 = ptrtoint ptr %socclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %socclk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb, %if.then.sw.epilog_crit_edge
  %clock_limit.0 = phi i32 [ %6, %sw.bb4 ], [ %4, %sw.bb1 ], [ %2, %sw.bb ], [ 0, %if.then.sw.epilog_crit_edge ]
  %tobool.not = icmp eq ptr %min, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then7

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %div = udiv i32 %clock_limit.0, 100
  %7 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %sw.epilog.if.end_crit_edge
  %tobool8.not = icmp eq ptr %max, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %div10 = udiv i32 %clock_limit.0, 100
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div10, ptr %max, align 4
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call13 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %shl = shl i32 %call13, 16
  %tobool16.not = icmp eq ptr %max, null
  br i1 %tobool16.not, label %if.end15.if.end22_crit_edge, label %if.then17

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  %call18 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 37, i32 noundef %shl, ptr noundef nonnull %max) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %min, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 36, i32 noundef %shl, ptr noundef nonnull %min) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ %call25, %if.then24 ], [ 0, %if.end22.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef %clk_type, i32 noundef %min, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %call = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_type)
  %cmp5 = icmp eq i32 %clk_type, 0
  br i1 %cmp5, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %1, i1 noundef zeroext false) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %cmp8.not = icmp eq i32 %max, 0
  br i1 %cmp8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  %shl = shl i32 %call2, 16
  %and = and i32 %max, 65535
  %or = or i32 %shl, %and
  %call10 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 33, i32 noundef %or, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then9.if.end13_crit_edge, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min)
  %cmp14.not = icmp eq i32 %min, 0
  br i1 %cmp14.not, label %if.end13.out_crit_edge, label %if.then15

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %shl16 = shl i32 %call2, 16
  %and17 = and i32 %min, 65535
  %or18 = or i32 %shl16, %and17
  %call19 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 32, i32 noundef %or18, ptr noundef null) #10
  br label %out

out:                                              ; preds = %if.then15, %if.end13.out_crit_edge, %if.then9.out_crit_edge
  %ret.1 = phi i32 [ %call10, %if.then9.out_crit_edge ], [ %call19, %if.then15 ], [ 0, %if.end13.out_crit_edge ]
  br i1 %cmp5, label %if.then25, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then25:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amdgpu_gfx_off_ctrl(ptr noundef %1, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %out.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %ret.1, %if.then25 ], [ %ret.1, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_gfx_off_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_performance_level(ptr noundef %smu, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm_context1 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %dpm_context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpm_context1, align 4
  %gfx_table2 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1
  %2 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %level, label %do.end [
    i32 8, label %sw.bb
    i32 4, label %sw.bb10
    i32 1, label %sw.bb13
    i32 16, label %sw.bb20
    i32 32, label %sw.bb23
    i32 64, label %entry.cleanup_crit_edge
    i32 128, label %sw.bb29
    i32 2, label %entry.cleanup_crit_edge140
    i32 256, label %entry.cleanup_crit_edge141
  ]

entry.cleanup_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %max = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %gfx_table2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfx_table2, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %gfx_table2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gfx_table2, align 4
  %max15 = getelementptr inbounds %struct.smu_13_0_dpm_tables, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %max15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max15, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %standard = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 1
  %11 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %standard, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pstate_table6 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22
  %13 = ptrtoint ptr %pstate_table6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pstate_table6, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %peak = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 2
  %15 = ptrtoint ptr %peak to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peak, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smu, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.54, i32 noundef %level) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb23, %sw.bb20, %sw.bb13, %sw.bb10, %sw.bb
  %sclk_min.0 = phi i32 [ %16, %sw.bb29 ], [ %14, %sw.bb23 ], [ %12, %sw.bb20 ], [ %8, %sw.bb13 ], [ %6, %sw.bb10 ], [ %4, %sw.bb ]
  %sclk_max.0 = phi i32 [ %16, %sw.bb29 ], [ %14, %sw.bb23 ], [ %12, %sw.bb20 ], [ %10, %sw.bb13 ], [ %6, %sw.bb10 ], [ %4, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sclk_min.0)
  %tobool.not = icmp eq i32 %sclk_min.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sclk_max.0)
  %tobool36.not = icmp eq i32 %sclk_max.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  %call = tail call i32 @smu_v13_0_set_soft_freq_limited_range(ptr noundef %smu, i32 noundef 0, i32 noundef %sclk_min.0, i32 noundef %sclk_max.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool37.not = icmp eq i32 %call, 0
  br i1 %tobool37.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %curr = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4
  %21 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sclk_min.0, ptr %curr, align 4
  %max43 = getelementptr inbounds %struct.smu_context, ptr %smu, i32 0, i32 22, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %max43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sclk_max.0, ptr %max43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge140, %entry.cleanup_crit_edge141
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge140 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge141 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_power_source(ptr noundef %smu, i32 noundef %power_src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 4, i32 noundef %power_src) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 50, i32 noundef %call, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_dpm_freq_by_index(ptr noundef %smu, i32 noundef %clk_type, i16 noundef zeroext %level, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %shl = shl i32 %call3, 16
  %conv = zext i16 %level to i32
  %or = or i32 %shl, %conv
  %call7 = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 38, i32 noundef %or, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  %and11 = and i32 %1, 2147483647
  store i32 %and11, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_dpm_level_count(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %value, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call.i, label %if.end2.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end2.i.if.end_crit_edge, label %if.end5.i

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.i:                                        ; preds = %if.end2.i
  %shl.i = shl i32 %call3.i, 16
  %or.i = or i32 %shl.i, 255
  %call7.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 38, i32 noundef %or.i, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.if.end_crit_edge

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  %and11.i = and i32 %1, 2147483647
  store i32 %and11.i, ptr %value, align 4
  br label %if.then

if.then:                                          ; preds = %if.end10.i, %if.end.i.if.then_crit_edge
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end5.i.if.end_crit_edge, %if.end2.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i8 = phi i32 [ 0, %if.then ], [ %call7.i, %if.end5.i.if.end_crit_edge ], [ %call3.i, %if.end2.i.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_set_single_dpm_table(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %single_dpm_table) local_unnamed_addr #0 align 64 {
entry:
  %clk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk) #10
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clk, align 4, !annotation !196
  %count = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %single_dpm_table, i32 0, i32 2
  %tobool.not.i.i = icmp eq ptr %count, null
  br i1 %tobool.not.i.i, label %entry.do.end_crit_edge, label %if.end.i.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.i:                                       ; preds = %entry
  %call.i.i = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call.i.i, label %if.end2.i.i, label %if.end.i.i.smu_v13_0_get_dpm_level_count.exit_crit_edge

if.end.i.i.smu_v13_0_get_dpm_level_count.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %smu_v13_0_get_dpm_level_count.exit

if.end2.i.i:                                      ; preds = %if.end.i.i
  %call3.i.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end2.i.i.do.end_crit_edge, label %if.end5.i.i

if.end2.i.i.do.end_crit_edge:                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end5.i.i:                                      ; preds = %if.end2.i.i
  %shl.i.i = shl i32 %call3.i.i, 16
  %or.i.i = or i32 %shl.i.i, 255
  %call7.i.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 38, i32 noundef %or.i.i, ptr noundef nonnull %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end5.i.i.do.end_crit_edge

if.end5.i.i.do.end_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end10.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  %and11.i.i = and i32 %2, 2147483647
  store i32 %and11.i.i, ptr %count, align 4
  br label %smu_v13_0_get_dpm_level_count.exit

smu_v13_0_get_dpm_level_count.exit:               ; preds = %if.end10.i.i, %if.end.i.i.smu_v13_0_get_dpm_level_count.exit_crit_edge
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp48.not = icmp eq i32 %inc.i, 0
  br i1 %cmp48.not, label %smu_v13_0_get_dpm_level_count.exit.cleanup_crit_edge, label %for.body.lr.ph

smu_v13_0_get_dpm_level_count.exit.cleanup_crit_edge: ; preds = %smu_v13_0_get_dpm_level_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %smu_v13_0_get_dpm_level_count.exit
  %max = getelementptr inbounds %struct.smu_13_0_dpm_table, ptr %single_dpm_table, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %if.end5.i.i.do.end_crit_edge, %if.end2.i.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i8.i.ph = phi i32 [ -22, %entry.do.end_crit_edge ], [ %call3.i.i, %if.end2.i.i.do.end_crit_edge ], [ %call7.i.i, %if.end5.i.i.do.end_crit_edge ]
  %5 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smu, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call.i, label %if.end2.i, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end2.i:                                        ; preds = %for.body
  %call3.i = call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end2.i.do.end7_crit_edge, label %if.end5.i

if.end2.i.do.end7_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.end5.i:                                        ; preds = %if.end2.i
  %shl.i = shl i32 %call3.i, 16
  %conv.i = and i32 %i.049, 65535
  %or.i = or i32 %shl.i, %conv.i
  %call7.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 38, i32 noundef %or.i, ptr noundef nonnull %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.do.end7_crit_edge

if.end5.i.do.end7_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk, align 4
  %and11.i = and i32 %10, 2147483647
  store i32 %and11.i, ptr %clk, align 4
  br label %if.end10

do.end7:                                          ; preds = %if.end5.i.do.end7_crit_edge, %if.end2.i.do.end7_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end2.i.do.end7_crit_edge ], [ %call7.i, %if.end5.i.do.end7_crit_edge ]
  %11 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smu, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end10.i, %for.body.if.end10_crit_edge
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk, align 4
  %arrayidx = getelementptr %struct.smu_13_0_dpm_table, ptr %single_dpm_table, i32 0, i32 3, i32 %i.049
  %value = getelementptr %struct.smu_13_0_dpm_table, ptr %single_dpm_table, i32 0, i32 3, i32 %i.049, i32 1
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %value, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.049)
  %cmp13 = icmp eq i32 %i.049, 0
  br i1 %cmp13, label %if.end10.for.inc.sink.split_crit_edge, label %if.else

if.end10.for.inc.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end10
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 4
  %sub = add i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.049, i32 %sub)
  %cmp17 = icmp eq i32 %i.049, %sub
  br i1 %cmp17, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.end10.for.inc.sink.split_crit_edge
  %single_dpm_table.sink = phi ptr [ %single_dpm_table, %if.end10.for.inc.sink.split_crit_edge ], [ %max, %if.else.for.inc.sink.split_crit_edge ]
  %21 = ptrtoint ptr %single_dpm_table.sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %single_dpm_table.sink, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge
  %inc = add nuw i32 %i.049, 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end7, %do.end, %smu_v13_0_get_dpm_level_count.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i8.i.ph, %do.end ], [ %retval.0.i, %do.end7 ], [ 0, %smu_v13_0_get_dpm_level_count.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_dpm_level_range(ptr noundef %smu, i32 noundef %clk_type, ptr noundef %min_value, ptr noundef %max_value) local_unnamed_addr #0 align 64 {
entry:
  %level_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level_count) #10
  %0 = ptrtoint ptr %level_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %level_count, align 4
  %tobool.not = icmp eq ptr %min_value, null
  %tobool1.not = icmp eq ptr %max_value, null
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.end.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %call.i = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call.i, label %if.end2.i, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end2.i.cleanup_crit_edge, label %if.end5.i

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end2.i
  %shl.i = shl i32 %call3.i, 16
  %call7.i = tail call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 38, i32 noundef %shl.i, ptr noundef nonnull %min_value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %min_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %min_value, align 4
  %and11.i = and i32 %2, 2147483647
  store i32 %and11.i, ptr %min_value, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end10.i, %if.end.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  br i1 %tobool1.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %call.i.i = tail call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call.i.i, label %if.end2.i.i, label %if.then9.if.end.i37_crit_edge

if.then9.if.end.i37_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i37

if.end2.i.i:                                      ; preds = %if.then9
  %call3.i.i = tail call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end2.i.i.cleanup_crit_edge, label %if.end5.i.i

if.end2.i.i.cleanup_crit_edge:                    ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i.i:                                      ; preds = %if.end2.i.i
  %shl.i.i = shl i32 %call3.i.i, 16
  %or.i.i = or i32 %shl.i.i, 255
  %call7.i.i = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 38, i32 noundef %or.i.i, ptr noundef nonnull %level_count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end5.i.i.cleanup_crit_edge

if.end5.i.i.cleanup_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %level_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %level_count, align 4
  %and11.i.i = and i32 %4, 2147483647
  store i32 %and11.i.i, ptr %level_count, align 4
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.end10.i.i, %if.then9.if.end.i37_crit_edge
  %5 = ptrtoint ptr %level_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %level_count, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %level_count, align 4
  %call.i36 = call zeroext i1 @smu_cmn_clk_dpm_is_enabled(ptr noundef %smu, i32 noundef %clk_type) #10
  br i1 %call.i36, label %if.end2.i40, label %if.end.i37.cleanup_crit_edge

if.end.i37.cleanup_crit_edge:                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2.i40:                                      ; preds = %if.end.i37
  %call3.i38 = call i32 @smu_cmn_to_asic_specific_index(ptr noundef %smu, i32 noundef 1, i32 noundef %clk_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i38)
  %cmp.i39 = icmp slt i32 %call3.i38, 0
  br i1 %cmp.i39, label %if.end2.i40.cleanup_crit_edge, label %if.end5.i44

if.end2.i40.cleanup_crit_edge:                    ; preds = %if.end2.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i44:                                      ; preds = %if.end2.i40
  %shl.i41 = shl i32 %call3.i38, 16
  %conv.i = and i32 %6, 65535
  %or.i = or i32 %shl.i41, %conv.i
  %call7.i42 = call i32 @smu_cmn_send_smc_msg_with_param(ptr noundef %smu, i32 noundef 38, i32 noundef %or.i, ptr noundef nonnull %max_value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i42)
  %tobool8.not.i43 = icmp eq i32 %call7.i42, 0
  br i1 %tobool8.not.i43, label %if.end10.i46, label %if.end5.i44.cleanup_crit_edge

if.end5.i44.cleanup_crit_edge:                    ; preds = %if.end5.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i46:                                     ; preds = %if.end5.i44
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %max_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_value, align 4
  %and11.i45 = and i32 %8, 2147483647
  store i32 %and11.i45, ptr %max_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i46, %if.end5.i44.cleanup_crit_edge, %if.end2.i40.cleanup_crit_edge, %if.end.i37.cleanup_crit_edge, %if.end5.i.i.cleanup_crit_edge, %if.end2.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3.i, %if.end2.i.cleanup_crit_edge ], [ %call7.i, %if.end5.i.cleanup_crit_edge ], [ %call3.i38, %if.end2.i40.cleanup_crit_edge ], [ %call7.i42, %if.end5.i44.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call3.i.i, %if.end2.i.i.cleanup_crit_edge ], [ %call7.i.i, %if.end5.i.i.cleanup_crit_edge ], [ 0, %if.end10.i46 ], [ 0, %if.end.i37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level_count) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_current_pcie_link_width_level(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 286524040) #10
  %and = lshr i32 %call, 4
  %shr = and i32 %and, 7
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_current_pcie_link_width(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 286524040) #10
  %and.i = lshr i32 %call.i, 4
  %shr.i = and i32 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i)
  %cmp = icmp eq i32 %shr.i, 7
  %spec.store.select = select i1 %cmp, i32 0, i32 %shr.i
  %arrayidx = getelementptr [7 x i32], ptr @link_width, i32 0, i32 %spec.store.select
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_current_pcie_link_speed_level(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 286524048) #10
  %and = lshr i32 %call, 14
  %shr = and i32 %and, 3
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v13_0_get_current_pcie_link_speed(ptr nocapture noundef readonly %smu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu, align 8
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 286524048) #10
  %and.i = lshr i32 %call.i, 14
  %shr.i = and i32 %and.i, 3
  %arrayidx = getelementptr [4 x i32], ptr @link_speed, i32 0, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_is_supported(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_cmn_feature_set_enabled(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_v13_0_set_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %source, i32 noundef %tyep, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb155
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %1 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %virt, align 8
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cond.false_crit_edge, label %land.lhs.true

sw.bb.cond.false_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %sw.bb
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add = add i32 %10, 11
  %call = tail call i32 %6(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %sw.bb.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add18 = add i32 %14, 11
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add18, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %or22 = or i32 %cond, 50331648
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virt, align 8
  %and25 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %cond.end.cond.false47_crit_edge, label %land.lhs.true27

cond.end.cond.false47_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false47

land.lhs.true27:                                  ; preds = %cond.end
  %funcs30 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %17 = ptrtoint ptr %funcs30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %funcs30, align 4
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false47_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false47_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false47

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sriov_wreg, align 4
  %tobool36.not = icmp eq ptr %20, null
  br i1 %tobool36.not, label %land.lhs.true32.cond.false47_crit_edge, label %cond.true37

land.lhs.true32.cond.false47_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false47

cond.true37:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx43, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add46 = add i32 %24, 11
  tail call void %20(ptr noundef %adev, i32 noundef %add46, i32 noundef %or22, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end53

cond.false47:                                     ; preds = %land.lhs.true32.cond.false47_crit_edge, %land.lhs.true27.cond.false47_crit_edge, %cond.end.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %25 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx49, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add52 = add i32 %28, 11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add52, i32 noundef %or22, i32 noundef 0) #10
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false47, %cond.true37
  %29 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %virt, align 8
  %and56 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %cond.end53.cond.false79_crit_edge, label %land.lhs.true58

cond.end53.cond.false79_crit_edge:                ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false79

land.lhs.true58:                                  ; preds = %cond.end53
  %funcs61 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %31 = ptrtoint ptr %funcs61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs61, align 4
  %tobool62.not = icmp eq ptr %32, null
  br i1 %tobool62.not, label %land.lhs.true58.cond.false79_crit_edge, label %land.lhs.true63

land.lhs.true58.cond.false79_crit_edge:           ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false79

land.lhs.true63:                                  ; preds = %land.lhs.true58
  %sriov_wreg67 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %sriov_wreg67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sriov_wreg67, align 4
  %tobool68.not = icmp eq ptr %34, null
  br i1 %tobool68.not, label %land.lhs.true63.cond.false79_crit_edge, label %cond.true69

land.lhs.true63.cond.false79_crit_edge:           ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false79

cond.true69:                                      ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx75 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %35 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx75, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add78 = add i32 %38, 10
  tail call void %34(ptr noundef %adev, i32 noundef %add78, i32 noundef 0, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end85

cond.false79:                                     ; preds = %land.lhs.true63.cond.false79_crit_edge, %land.lhs.true58.cond.false79_crit_edge, %cond.end53.cond.false79_crit_edge
  %arrayidx81 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %39 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx81, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add84 = add i32 %42, 10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add84, i32 noundef 0, i32 noundef 0) #10
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false79, %cond.true69
  %43 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %virt, align 8
  %and88 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %cond.end85.cond.false112_crit_edge, label %land.lhs.true90

cond.end85.cond.false112_crit_edge:               ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false112

land.lhs.true90:                                  ; preds = %cond.end85
  %funcs93 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %45 = ptrtoint ptr %funcs93 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %funcs93, align 4
  %tobool94.not = icmp eq ptr %46, null
  br i1 %tobool94.not, label %land.lhs.true90.cond.false112_crit_edge, label %land.lhs.true95

land.lhs.true90.cond.false112_crit_edge:          ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false112

land.lhs.true95:                                  ; preds = %land.lhs.true90
  %sriov_rreg99 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %sriov_rreg99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sriov_rreg99, align 4
  %tobool100.not = icmp eq ptr %48, null
  br i1 %tobool100.not, label %land.lhs.true95.cond.false112_crit_edge, label %cond.true101

land.lhs.true95.cond.false112_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false112

cond.true101:                                     ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx107 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %49 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx107, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add110 = add i32 %52, 707
  %call111 = tail call i32 %48(ptr noundef %adev, i32 noundef %add110, i32 noundef 0, i32 noundef 15) #10
  br label %cond.end119

cond.false112:                                    ; preds = %land.lhs.true95.cond.false112_crit_edge, %land.lhs.true90.cond.false112_crit_edge, %cond.end85.cond.false112_crit_edge
  %arrayidx114 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %53 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx114, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add117 = add i32 %56, 707
  %call118 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add117, i32 noundef 0) #10
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false112, %cond.true101
  %cond120 = phi i32 [ %call111, %cond.true101 ], [ %call118, %cond.false112 ]
  %or122 = or i32 %cond120, 1
  %57 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %virt, align 8
  %and125 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %cond.end119.cond.false148_crit_edge, label %land.lhs.true127

cond.end119.cond.false148_crit_edge:              ; preds = %cond.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false148

land.lhs.true127:                                 ; preds = %cond.end119
  %funcs130 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %59 = ptrtoint ptr %funcs130 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %funcs130, align 4
  %tobool131.not = icmp eq ptr %60, null
  br i1 %tobool131.not, label %land.lhs.true127.cond.false148_crit_edge, label %land.lhs.true132

land.lhs.true127.cond.false148_crit_edge:         ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false148

land.lhs.true132:                                 ; preds = %land.lhs.true127
  %sriov_wreg136 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %sriov_wreg136 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sriov_wreg136, align 4
  %tobool137.not = icmp eq ptr %62, null
  br i1 %tobool137.not, label %land.lhs.true132.cond.false148_crit_edge, label %cond.true138

land.lhs.true132.cond.false148_crit_edge:         ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false148

cond.true138:                                     ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx144 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %63 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx144, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add147 = add i32 %66, 707
  tail call void %62(ptr noundef %adev, i32 noundef %add147, i32 noundef %or122, i32 noundef 0, i32 noundef 15) #10
  br label %sw.epilog

cond.false148:                                    ; preds = %land.lhs.true132.cond.false148_crit_edge, %land.lhs.true127.cond.false148_crit_edge, %cond.end119.cond.false148_crit_edge
  %arrayidx150 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %67 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx150, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add153 = add i32 %70, 707
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add153, i32 noundef %or122, i32 noundef 0) #10
  br label %sw.epilog

sw.bb155:                                         ; preds = %entry
  %thermal_range = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 20
  %71 = ptrtoint ptr %thermal_range to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %thermal_range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %72)
  %cmp = icmp slt i32 %72, -999
  %div = sdiv i32 %72, 1000
  %phi.bo577 = shl nsw i32 %div, 8
  %phi.bo578 = and i32 %phi.bo577, 65280
  %cond159 = select i1 %cmp, i32 0, i32 %phi.bo578
  %software_shutdown_temp = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 20, i32 9
  %73 = ptrtoint ptr %software_shutdown_temp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %software_shutdown_temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %74)
  %cmp162 = icmp sgt i32 %74, 255
  %phi.bo = and i32 %74, 255
  %virt167 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %75 = ptrtoint ptr %virt167 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %virt167, align 8
  %and169 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %sw.bb155.cond.false193_crit_edge, label %land.lhs.true171

sw.bb155.cond.false193_crit_edge:                 ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false193

land.lhs.true171:                                 ; preds = %sw.bb155
  %funcs174 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %77 = ptrtoint ptr %funcs174 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %funcs174, align 4
  %tobool175.not = icmp eq ptr %78, null
  br i1 %tobool175.not, label %land.lhs.true171.cond.false193_crit_edge, label %land.lhs.true176

land.lhs.true171.cond.false193_crit_edge:         ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false193

land.lhs.true176:                                 ; preds = %land.lhs.true171
  %sriov_rreg180 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %78, i32 0, i32 13
  %79 = ptrtoint ptr %sriov_rreg180 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sriov_rreg180, align 4
  %tobool181.not = icmp eq ptr %80, null
  br i1 %tobool181.not, label %land.lhs.true176.cond.false193_crit_edge, label %cond.true182

land.lhs.true176.cond.false193_crit_edge:         ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false193

cond.true182:                                     ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx188 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %81 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx188, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %add191 = add i32 %84, 11
  %call192 = tail call i32 %80(ptr noundef %adev, i32 noundef %add191, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end200

cond.false193:                                    ; preds = %land.lhs.true176.cond.false193_crit_edge, %land.lhs.true171.cond.false193_crit_edge, %sw.bb155.cond.false193_crit_edge
  %arrayidx195 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %85 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx195, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add198 = add i32 %88, 11
  %call199 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add198, i32 noundef 0) #10
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false193, %cond.true182
  %cond201 = phi i32 [ %call192, %cond.true182 ], [ %call199, %cond.false193 ]
  %and202 = and i32 %cond201, 150929408
  %phi.bo.op = or i32 %phi.bo, -1342177280
  %or205 = select i1 %cmp162, i32 -1342177025, i32 %phi.bo.op
  %or213 = or i32 %or205, %cond159
  %or218 = or i32 %or213, %and202
  %89 = ptrtoint ptr %virt167 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %virt167, align 8
  %and222 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %cond.end200.cond.false245_crit_edge, label %land.lhs.true224

cond.end200.cond.false245_crit_edge:              ; preds = %cond.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false245

land.lhs.true224:                                 ; preds = %cond.end200
  %funcs227 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %91 = ptrtoint ptr %funcs227 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %funcs227, align 4
  %tobool228.not = icmp eq ptr %92, null
  br i1 %tobool228.not, label %land.lhs.true224.cond.false245_crit_edge, label %land.lhs.true229

land.lhs.true224.cond.false245_crit_edge:         ; preds = %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false245

land.lhs.true229:                                 ; preds = %land.lhs.true224
  %sriov_wreg233 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %92, i32 0, i32 12
  %93 = ptrtoint ptr %sriov_wreg233 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sriov_wreg233, align 4
  %tobool234.not = icmp eq ptr %94, null
  br i1 %tobool234.not, label %land.lhs.true229.cond.false245_crit_edge, label %cond.true235

land.lhs.true229.cond.false245_crit_edge:         ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false245

cond.true235:                                     ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx241 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %95 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx241, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %add244 = add i32 %98, 11
  tail call void %94(ptr noundef %adev, i32 noundef %add244, i32 noundef %or218, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end251

cond.false245:                                    ; preds = %land.lhs.true229.cond.false245_crit_edge, %land.lhs.true224.cond.false245_crit_edge, %cond.end200.cond.false245_crit_edge
  %arrayidx247 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %99 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx247, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  %add250 = add i32 %102, 11
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add250, i32 noundef %or218, i32 noundef 0) #10
  br label %cond.end251

cond.end251:                                      ; preds = %cond.false245, %cond.true235
  %103 = ptrtoint ptr %virt167 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %virt167, align 8
  %and256 = and i32 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %cond.end251.cond.false279_crit_edge, label %land.lhs.true258

cond.end251.cond.false279_crit_edge:              ; preds = %cond.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false279

land.lhs.true258:                                 ; preds = %cond.end251
  %funcs261 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %105 = ptrtoint ptr %funcs261 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %funcs261, align 4
  %tobool262.not = icmp eq ptr %106, null
  br i1 %tobool262.not, label %land.lhs.true258.cond.false279_crit_edge, label %land.lhs.true263

land.lhs.true258.cond.false279_crit_edge:         ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false279

land.lhs.true263:                                 ; preds = %land.lhs.true258
  %sriov_wreg267 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %106, i32 0, i32 12
  %107 = ptrtoint ptr %sriov_wreg267 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sriov_wreg267, align 4
  %tobool268.not = icmp eq ptr %108, null
  br i1 %tobool268.not, label %land.lhs.true263.cond.false279_crit_edge, label %cond.true269

land.lhs.true263.cond.false279_crit_edge:         ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false279

cond.true269:                                     ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx275 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %109 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx275, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add278 = add i32 %112, 10
  tail call void %108(ptr noundef %adev, i32 noundef %add278, i32 noundef 56, i32 noundef 0, i32 noundef 25) #10
  br label %cond.end285

cond.false279:                                    ; preds = %land.lhs.true263.cond.false279_crit_edge, %land.lhs.true258.cond.false279_crit_edge, %cond.end251.cond.false279_crit_edge
  %arrayidx281 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 25
  %113 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx281, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %add284 = add i32 %116, 10
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add284, i32 noundef 56, i32 noundef 0) #10
  br label %cond.end285

cond.end285:                                      ; preds = %cond.false279, %cond.true269
  %117 = ptrtoint ptr %virt167 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %virt167, align 8
  %and288 = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and288)
  %tobool289.not = icmp eq i32 %and288, 0
  br i1 %tobool289.not, label %cond.end285.cond.false312_crit_edge, label %land.lhs.true290

cond.end285.cond.false312_crit_edge:              ; preds = %cond.end285
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false312

land.lhs.true290:                                 ; preds = %cond.end285
  %funcs293 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %119 = ptrtoint ptr %funcs293 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %funcs293, align 4
  %tobool294.not = icmp eq ptr %120, null
  br i1 %tobool294.not, label %land.lhs.true290.cond.false312_crit_edge, label %land.lhs.true295

land.lhs.true290.cond.false312_crit_edge:         ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false312

land.lhs.true295:                                 ; preds = %land.lhs.true290
  %sriov_rreg299 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %120, i32 0, i32 13
  %121 = ptrtoint ptr %sriov_rreg299 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sriov_rreg299, align 4
  %tobool300.not = icmp eq ptr %122, null
  br i1 %tobool300.not, label %land.lhs.true295.cond.false312_crit_edge, label %cond.true301

land.lhs.true295.cond.false312_crit_edge:         ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false312

cond.true301:                                     ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx307 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %123 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx307, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %add310 = add i32 %126, 706
  %call311 = tail call i32 %122(ptr noundef %adev, i32 noundef %add310, i32 noundef 0, i32 noundef 15) #10
  br label %cond.end319

cond.false312:                                    ; preds = %land.lhs.true295.cond.false312_crit_edge, %land.lhs.true290.cond.false312_crit_edge, %cond.end285.cond.false312_crit_edge
  %arrayidx314 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %127 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx314, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %add317 = add i32 %130, 706
  %call318 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add317, i32 noundef 0) #10
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false312, %cond.true301
  %cond320 = phi i32 [ %call311, %cond.true301 ], [ %call318, %cond.false312 ]
  %and321 = and i32 %cond320, -512
  %or322 = or i32 %and321, 254
  %131 = ptrtoint ptr %virt167 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %virt167, align 8
  %and327 = and i32 %132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %cond.end319.cond.false350_crit_edge, label %land.lhs.true329

cond.end319.cond.false350_crit_edge:              ; preds = %cond.end319
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false350

land.lhs.true329:                                 ; preds = %cond.end319
  %funcs332 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %133 = ptrtoint ptr %funcs332 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %funcs332, align 4
  %tobool333.not = icmp eq ptr %134, null
  br i1 %tobool333.not, label %land.lhs.true329.cond.false350_crit_edge, label %land.lhs.true334

land.lhs.true329.cond.false350_crit_edge:         ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false350

land.lhs.true334:                                 ; preds = %land.lhs.true329
  %sriov_wreg338 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %134, i32 0, i32 12
  %135 = ptrtoint ptr %sriov_wreg338 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sriov_wreg338, align 4
  %tobool339.not = icmp eq ptr %136, null
  br i1 %tobool339.not, label %land.lhs.true334.cond.false350_crit_edge, label %cond.true340

land.lhs.true334.cond.false350_crit_edge:         ; preds = %land.lhs.true334
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false350

cond.true340:                                     ; preds = %land.lhs.true334
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx346 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %137 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx346, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  %add349 = add i32 %140, 706
  tail call void %136(ptr noundef %adev, i32 noundef %add349, i32 noundef %or322, i32 noundef 0, i32 noundef 15) #10
  br label %cond.end356

cond.false350:                                    ; preds = %land.lhs.true334.cond.false350_crit_edge, %land.lhs.true329.cond.false350_crit_edge, %cond.end319.cond.false350_crit_edge
  %arrayidx352 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %141 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx352, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %add355 = add i32 %144, 706
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add355, i32 noundef %or322, i32 noundef 0) #10
  br label %cond.end356

cond.end356:                                      ; preds = %cond.false350, %cond.true340
  %145 = ptrtoint ptr %virt167 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %virt167, align 8
  %and359 = and i32 %146, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and359)
  %tobool360.not = icmp eq i32 %and359, 0
  br i1 %tobool360.not, label %cond.end356.cond.false383_crit_edge, label %land.lhs.true361

cond.end356.cond.false383_crit_edge:              ; preds = %cond.end356
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false383

land.lhs.true361:                                 ; preds = %cond.end356
  %funcs364 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %147 = ptrtoint ptr %funcs364 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %funcs364, align 4
  %tobool365.not = icmp eq ptr %148, null
  br i1 %tobool365.not, label %land.lhs.true361.cond.false383_crit_edge, label %land.lhs.true366

land.lhs.true361.cond.false383_crit_edge:         ; preds = %land.lhs.true361
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false383

land.lhs.true366:                                 ; preds = %land.lhs.true361
  %sriov_rreg370 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %148, i32 0, i32 13
  %149 = ptrtoint ptr %sriov_rreg370 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sriov_rreg370, align 4
  %tobool371.not = icmp eq ptr %150, null
  br i1 %tobool371.not, label %land.lhs.true366.cond.false383_crit_edge, label %cond.true372

land.lhs.true366.cond.false383_crit_edge:         ; preds = %land.lhs.true366
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false383

cond.true372:                                     ; preds = %land.lhs.true366
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx378 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %151 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx378, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  %add381 = add i32 %154, 707
  %call382 = tail call i32 %150(ptr noundef %adev, i32 noundef %add381, i32 noundef 0, i32 noundef 15) #10
  br label %cond.end390

cond.false383:                                    ; preds = %land.lhs.true366.cond.false383_crit_edge, %land.lhs.true361.cond.false383_crit_edge, %cond.end356.cond.false383_crit_edge
  %arrayidx385 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %155 = ptrtoint ptr %arrayidx385 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx385, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %add388 = add i32 %158, 707
  %call389 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add388, i32 noundef 0) #10
  br label %cond.end390

cond.end390:                                      ; preds = %cond.false383, %cond.true372
  %cond391 = phi i32 [ %call382, %cond.true372 ], [ %call389, %cond.false383 ]
  %and392 = and i32 %cond391, -2
  %159 = ptrtoint ptr %virt167 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %virt167, align 8
  %and396 = and i32 %160, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and396)
  %tobool397.not = icmp eq i32 %and396, 0
  br i1 %tobool397.not, label %cond.end390.cond.false419_crit_edge, label %land.lhs.true398

cond.end390.cond.false419_crit_edge:              ; preds = %cond.end390
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false419

land.lhs.true398:                                 ; preds = %cond.end390
  %funcs401 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %161 = ptrtoint ptr %funcs401 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %funcs401, align 4
  %tobool402.not = icmp eq ptr %162, null
  br i1 %tobool402.not, label %land.lhs.true398.cond.false419_crit_edge, label %land.lhs.true403

land.lhs.true398.cond.false419_crit_edge:         ; preds = %land.lhs.true398
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false419

land.lhs.true403:                                 ; preds = %land.lhs.true398
  %sriov_wreg407 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %162, i32 0, i32 12
  %163 = ptrtoint ptr %sriov_wreg407 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sriov_wreg407, align 4
  %tobool408.not = icmp eq ptr %164, null
  br i1 %tobool408.not, label %land.lhs.true403.cond.false419_crit_edge, label %cond.true409

land.lhs.true403.cond.false419_crit_edge:         ; preds = %land.lhs.true403
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false419

cond.true409:                                     ; preds = %land.lhs.true403
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx415 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %165 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx415, align 8
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %166, align 4
  %add418 = add i32 %168, 707
  tail call void %164(ptr noundef %adev, i32 noundef %add418, i32 noundef %and392, i32 noundef 0, i32 noundef 15) #10
  br label %sw.epilog

cond.false419:                                    ; preds = %land.lhs.true403.cond.false419_crit_edge, %land.lhs.true398.cond.false419_crit_edge, %cond.end390.cond.false419_crit_edge
  %arrayidx421 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %169 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx421, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  %add424 = add i32 %172, 707
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add424, i32 noundef %and392, i32 noundef 0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false419, %cond.true409, %cond.false148, %cond.true138, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_v13_0_irq_process(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smu2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %client_id3 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %client_id3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id3, align 4
  %src_id4 = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %src_id4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_id4, align 8
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %4 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_data, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 15, label %if.then
    i32 22, label %do.end22
    i32 31, label %if.then30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %3, label %do.end16 [
    i32 0, label %do.end
    i32 1, label %do.end12
  ]

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %9, ptr noundef nonnull @.str.77) #13
  %10 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %11, ptr noundef nonnull @.str.81) #13
  tail call void @orderly_poweroff(i1 noundef zeroext true) #10
  br label %cleanup

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %13, ptr noundef nonnull @.str.84) #13
  br label %cleanup

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %15, ptr noundef nonnull @.str.87, i32 noundef %3) #13
  br label %cleanup

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %17, ptr noundef nonnull @.str.90) #13
  %18 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %19, ptr noundef nonnull @.str.93) #13
  tail call void @orderly_poweroff(i1 noundef zeroext true) #10
  br label %cleanup

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %3)
  %cmp31 = icmp eq i32 %3, 254
  br i1 %cmp31, label %if.then32, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then32:                                        ; preds = %if.then30
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %20 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then32.cond.false_crit_edge, label %land.lhs.true

if.then32.cond.false_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then32
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %tobool33.not = icmp eq ptr %23, null
  br i1 %tobool33.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true34

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true34:                                  ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_rreg, align 4
  %tobool38.not = icmp eq ptr %25, null
  br i1 %tobool38.not, label %land.lhs.true34.cond.false_crit_edge, label %cond.true

land.lhs.true34.cond.false_crit_edge:             ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx43, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add = add i32 %29, 707
  %call = tail call i32 %25(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 15) #10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true34.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then32.cond.false_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx47, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add50 = add i32 %33, 707
  %call51 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50, i32 noundef 0) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call51, %cond.false ]
  %or = or i32 %cond, 256
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt, align 8
  %and55 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %cond.end.cond.false77_crit_edge, label %land.lhs.true57

cond.end.cond.false77_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false77

land.lhs.true57:                                  ; preds = %cond.end
  %funcs60 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %36 = ptrtoint ptr %funcs60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs60, align 4
  %tobool61.not = icmp eq ptr %37, null
  br i1 %tobool61.not, label %land.lhs.true57.cond.false77_crit_edge, label %land.lhs.true62

land.lhs.true57.cond.false77_crit_edge:           ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false77

land.lhs.true62:                                  ; preds = %land.lhs.true57
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_wreg, align 4
  %tobool66.not = icmp eq ptr %39, null
  br i1 %tobool66.not, label %land.lhs.true62.cond.false77_crit_edge, label %cond.true67

land.lhs.true62.cond.false77_crit_edge:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false77

cond.true67:                                      ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx73 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %40 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx73, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add76 = add i32 %43, 707
  tail call void %39(ptr noundef %adev, i32 noundef %add76, i32 noundef %or, i32 noundef 0, i32 noundef 15) #10
  br label %cond.end83

cond.false77:                                     ; preds = %land.lhs.true62.cond.false77_crit_edge, %land.lhs.true57.cond.false77_crit_edge, %cond.end.cond.false77_crit_edge
  %arrayidx79 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 15
  %44 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx79, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add82 = add i32 %47, 707
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add82, i32 noundef %or, i32 noundef 0) #10
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false77, %cond.true67
  %48 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %5, label %cond.end83.cleanup_crit_edge [
    i32 3, label %do.body85
    i32 4, label %do.body97
    i32 7, label %sw.bb116
  ]

cond.end83.cleanup_crit_edge:                     ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body85:                                        ; preds = %cond.end83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu_v13_0_irq_process.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu_v13_0_irq_process, %if.then90)) #10
          to label %do.end93 [label %if.then90], !srcloc !195

if.then90:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smu_v13_0_irq_process.__UNIQUE_ID_ddebug349, ptr noundef %50, ptr noundef nonnull @.str.95) #10
  br label %do.end93

do.end93:                                         ; preds = %if.then90, %do.body85
  %call.i = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu2, i32 noundef 49, ptr noundef null) #10
  br label %cleanup

do.body97:                                        ; preds = %cond.end83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smu_v13_0_irq_process.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smu_v13_0_irq_process, %if.then109)) #10
          to label %do.end113 [label %if.then109], !srcloc !195

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smu_v13_0_irq_process.__UNIQUE_ID_ddebug350, ptr noundef %52, ptr noundef nonnull @.str.96) #10
  br label %do.end113

do.end113:                                        ; preds = %if.then109, %do.body97
  %call.i180 = tail call i32 @smu_cmn_send_smc_msg(ptr noundef %smu2, i32 noundef 49, ptr noundef null) #10
  br label %cleanup

sw.bb116:                                         ; preds = %cond.end83
  %throttle_int_counter = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 50
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %throttle_int_counter, i32 noundef 8) #10
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %throttle_int_counter) #10
  %throttling_logging_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 164
  %call.i.i179 = tail call zeroext i1 @__kasan_check_read(ptr noundef %throttling_logging_enabled, i32 noundef 4) #10
  %53 = ptrtoint ptr %throttling_logging_enabled to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %throttling_logging_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool118.not = icmp eq i32 %54, 0
  br i1 %tobool118.not, label %sw.bb116.cleanup_crit_edge, label %if.end120

sw.bb116.cleanup_crit_edge:                       ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end120:                                        ; preds = %sw.bb116
  %throttling_logging_rs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 165
  %call121 = tail call i32 @___ratelimit(ptr noundef %throttling_logging_rs, ptr noundef nonnull @.str.78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end120.cleanup_crit_edge, label %if.then123

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %throttling_logging_work = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97, i32 49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %55 = load ptr, ptr @system_wq, align 4
  %call.i.i181 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %throttling_logging_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.end120.cleanup_crit_edge, %sw.bb116.cleanup_crit_edge, %do.end113, %do.end93, %cond.end83.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %do.end22, %do.end16, %do.end12, %do.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !142, !143, !145, !147, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !179, !180, !181, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @__UNIQUE_ID_firmware343, !1, !"__UNIQUE_ID_firmware343", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 59, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 92, i32 15}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 95, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @smu_v13_0_init_microcode._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @smu_v13_0_init_microcode._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 100, i32 37}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 124, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 224, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @smu_v13_0_check_fw_version._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @smu_v13_0_check_fw_version._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 232, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @smu_v13_0_check_fw_version.__UNIQUE_ID_ddebug344, !22, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 244, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @smu_v13_0_check_fw_version._entry.12, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @smu_v13_0_check_fw_version._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 248, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @smu_v13_0_check_fw_version._entry.16, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @smu_v13_0_check_fw_version._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 347, i32 3}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @smu_v13_0_setup_pptable._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @smu_v13_0_setup_pptable._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 532, i32 3}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @smu_v13_0_get_vbios_bootup_values._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @smu_v13_0_get_vbios_bootup_values._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 661, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @smu_v13_0_set_min_deep_sleep_dcefclk._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @smu_v13_0_set_min_deep_sleep_dcefclk._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 867, i32 4}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 878, i32 4}
!57 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 889, i32 4}
!61 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 898, i32 4}
!65 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 906, i32 4}
!69 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry.37, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.39, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 914, i32 4}
!73 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @smu_v13_0_init_max_sustainable_clocks._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 948, i32 3}
!77 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @smu_v13_0_get_current_power_limit._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @smu_v13_0_get_current_power_limit._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 963, i32 3}
!82 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @smu_v13_0_set_power_limit._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @smu_v13_0_set_power_limit._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 969, i32 3}
!87 = !{ptr @smu_v13_0_set_power_limit._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @smu_v13_0_set_power_limit._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1044, i32 4}
!91 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @smu_v13_0_display_clock_voltage_request._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @smu_v13_0_display_clock_voltage_request._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1154, i32 3}
!96 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @smu_v13_0_set_fan_control_mode._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @smu_v13_0_set_fan_control_mode._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1672, i32 3}
!101 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @smu_v13_0_set_performance_level._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @smu_v13_0_set_performance_level._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1799, i32 3}
!106 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @smu_v13_0_set_single_dpm_table._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @smu_v13_0_set_single_dpm_table._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1809, i32 4}
!111 = !{ptr @smu_v13_0_set_single_dpm_table._entry.58, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @smu_v13_0_set_single_dpm_table._entry_ptr.60, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 288, i32 2}
!115 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @smu_v13_0_get_pptable_from_vbios._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @smu_v13_0_get_pptable_from_vbios._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 315, i32 2}
!120 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @smu_v13_0_get_pptable_from_firmware._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @smu_v13_0_get_pptable_from_firmware._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 320, i32 3}
!125 = !{ptr @smu_v13_0_get_pptable_from_firmware._entry.65, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @smu_v13_0_get_pptable_from_firmware._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 831, i32 3}
!129 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @smu_v13_0_get_max_sustainable_clock._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @smu_v13_0_get_max_sustainable_clock._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 842, i32 3}
!134 = !{ptr @smu_v13_0_get_max_sustainable_clock._entry.70, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @smu_v13_0_get_max_sustainable_clock._entry_ptr.72, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1083, i32 3}
!138 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @smu_v13_0_auto_fan_control._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @smu_v13_0_auto_fan_control._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.76, !137, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @smu_v13_0_irq_funcs, !144, !"smu_v13_0_irq_funcs", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1350, i32 42}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1291, i32 4}
!147 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @smu_v13_0_irq_process._entry, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @smu_v13_0_irq_process._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1296, i32 4}
!153 = !{ptr @smu_v13_0_irq_process._entry.80, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @smu_v13_0_irq_process._entry_ptr.82, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1300, i32 4}
!157 = !{ptr @smu_v13_0_irq_process._entry.83, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @smu_v13_0_irq_process._entry_ptr.85, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1303, i32 4}
!161 = !{ptr @smu_v13_0_irq_process._entry.86, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @smu_v13_0_irq_process._entry_ptr.88, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1308, i32 3}
!165 = !{ptr @smu_v13_0_irq_process._entry.89, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @smu_v13_0_irq_process._entry_ptr.91, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.93, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1312, i32 3}
!169 = !{ptr @smu_v13_0_irq_process._entry.92, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @smu_v13_0_irq_process._entry_ptr.94, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1323, i32 5}
!173 = !{ptr @smu_v13_0_irq_process.__UNIQUE_ID_ddebug349, !172, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1327, i32 5}
!176 = !{ptr @smu_v13_0_irq_process.__UNIQUE_ID_ddebug350, !175, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!177 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 1437, i32 2}
!179 = !{ptr @.str.98, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @smu_v13_0_wait_for_reset_complete.__UNIQUE_ID_ddebug351, !178, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!181 = !{ptr @link_width, !182, !"link_width", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 73, i32 18}
!183 = !{ptr @link_speed, !184, !"link_speed", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu13/smu_v13_0.c", i32 74, i32 18}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i8 0, i8 2}
!195 = !{i64 2148229741, i64 2148229746, i64 2148229759, i64 2148229803, i64 2148229837, i64 2148229858}
!196 = !{!"auto-init"}
!197 = !{i64 973256, i64 973283, i64 973305, i64 973333}
!198 = !{i64 973664, i64 973691, i64 973724, i64 973745, i64 973772, i64 973798}
