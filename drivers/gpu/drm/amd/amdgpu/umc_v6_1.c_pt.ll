; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/umc_v6_1.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/umc_v6_1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_umc_ras_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.110, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.ras_err_data = type { i32, i32, i32, ptr }
%struct.eeprom_table_record = type <{ %union.anon.107, i64, i64, i32, %union.anon.108, i8, i8 }>
%union.anon.107 = type { i64 }
%union.anon.108 = type { i8 }

@umc_v6_1_channel_idx_tbl = dso_local constant { [8 x [4 x i32]], [32 x i8] } { [8 x [4 x i32]] [[4 x i32] [i32 2, i32 18, i32 11, i32 27], [4 x i32] [i32 4, i32 20, i32 13, i32 29], [4 x i32] [i32 1, i32 17, i32 8, i32 24], [4 x i32] [i32 7, i32 23, i32 14, i32 30], [4 x i32] [i32 10, i32 26, i32 3, i32 19], [4 x i32] [i32 12, i32 28, i32 5, i32 21], [4 x i32] [i32 9, i32 25, i32 0, i32 16], [4 x i32] [i32 15, i32 31, i32 6, i32 22]], [32 x i8] zeroinitializer }, align 32
@umc_v6_1_ras_funcs = dso_local constant { %struct.amdgpu_umc_ras_funcs, [32 x i8] } { %struct.amdgpu_umc_ras_funcs { ptr @umc_v6_1_err_cnt_init, ptr @amdgpu_umc_ras_late_init, ptr @amdgpu_umc_ras_fini, ptr @umc_v6_1_query_ras_error_count, ptr @umc_v6_1_query_ras_error_address, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@umc_v6_1_query_ras_error_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014[drm] Fail to disable DF-Cstate.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"umc_v6_1_query_ras_error_count\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/amd/amdgpu/umc_v6_1.c\00", [58 x i8] zeroinitializer }, align 32
@umc_v6_1_query_ras_error_count._entry_ptr = internal global ptr @umc_v6_1_query_ras_error_count._entry, section ".printk_index", align 4
@umc_v6_1_query_ras_error_count._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014[drm] Fail to enable DF-Cstate\0A\00", [62 x i8] zeroinitializer }, align 32
@umc_v6_1_query_ras_error_count._entry_ptr.5 = internal global ptr @umc_v6_1_query_ras_error_count._entry.3, section ".printk_index", align 4
@umc_v6_1_query_ras_error_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"umc_v6_1_query_ras_error_address\00", [63 x i8] zeroinitializer }, align 32
@umc_v6_1_query_ras_error_address._entry_ptr = internal global ptr @umc_v6_1_query_ras_error_address._entry, section ".printk_index", align 4
@umc_v6_1_query_ras_error_address._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.6, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@umc_v6_1_query_ras_error_address._entry_ptr.8 = internal global ptr @umc_v6_1_query_ras_error_address._entry.7, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"umc_v6_1_channel_idx_tbl\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 37, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"umc_v6_1_ras_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 468, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 270, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 287, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 385, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private constant [41 x i8] c"../drivers/gpu/drm/amd/amdgpu/umc_v6_1.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 401, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @umc_v6_1_query_ras_error_address._entry, ptr @umc_v6_1_query_ras_error_address._entry.7, ptr @umc_v6_1_query_ras_error_address._entry_ptr, ptr @umc_v6_1_query_ras_error_address._entry_ptr.8, ptr @umc_v6_1_query_ras_error_count._entry, ptr @umc_v6_1_query_ras_error_count._entry.3, ptr @umc_v6_1_query_ras_error_count._entry_ptr, ptr @umc_v6_1_query_ras_error_count._entry_ptr.5, ptr @umc_v6_1_channel_idx_tbl, ptr @umc_v6_1_ras_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_1_channel_idx_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_1_ras_funcs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_1_query_ras_error_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_1_query_ras_error_count._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_1_query_ras_error_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umc_v6_1_query_ras_error_address._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umc_v6_1_err_cnt_init(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 28
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %4 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i = shl i32 %3, 2
  %mul.i = add i32 %add.i, 13892
  %call.i = tail call i32 %5(ptr noundef %adev, i32 noundef %mul.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i25 = shl i32 %9, 2
  %mul.i26 = add i32 %add.i25, 13892
  %call.i27 = tail call i32 %11(ptr noundef %adev, i32 noundef %mul.i26) #3
  %and.i = and i32 %call.i27, 2147483647
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %12 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %13(ptr noundef %adev, i32 noundef %mul.i26, i32 noundef %and.i) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %umc_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 2
  %14 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp43.not = icmp eq i32 %15, 0
  br i1 %cmp43.not, label %if.end.for.end8_crit_edge, label %for.cond1.preheader.lr.ph

if.end.for.end8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end8

for.cond1.preheader.lr.ph:                        ; preds = %if.end
  %channel_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 3
  %asic_type.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %arrayidx.i30 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27
  %pcie_wreg.i34 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %umc_inst.044 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc7, %for.inc6.for.cond1.preheader_crit_edge ]
  %16 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_inst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp341.not = icmp eq i32 %17, 0
  br i1 %cmp341.not, label %for.cond1.preheader.for.inc6_crit_edge, label %for.body4.lr.ph

for.cond1.preheader.for.inc6_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc6

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %mul1.i = shl i32 %umc_inst.044, 18
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %ch_inst.042 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4.for.body4_crit_edge ]
  %18 = ptrtoint ptr %channel_offs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_offs.i, align 4
  %mul.i28 = mul i32 %19, %ch_inst.042
  %add.i29 = add i32 %mul.i28, %mul1.i
  %20 = ptrtoint ptr %asic_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %asic_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %21)
  %cmp.i = icmp eq i32 %21, 23
  %22 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i30, align 8
  %ecc_err_cnt_sel_addr.0.in.in.idx.i = zext i1 %cmp.i to i32
  %ecc_err_cnt_sel_addr.0.in.in.i = getelementptr i32, ptr %23, i32 %ecc_err_cnt_sel_addr.0.in.in.idx.i
  %24 = ptrtoint ptr %ecc_err_cnt_sel_addr.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %ecc_err_cnt_sel_addr.0.in.i = load i32, ptr %ecc_err_cnt_sel_addr.0.in.in.i, align 4
  %25 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie_rreg.i, align 8
  %ecc_err_cnt_sel_addr.0.i = add i32 %add.i29, %ecc_err_cnt_sel_addr.0.in.i
  %add18.i = shl i32 %ecc_err_cnt_sel_addr.0.i, 2
  %mul.i32 = add i32 %add18.i, 3456
  %call.i33 = tail call i32 %26(ptr noundef %adev, i32 noundef %mul.i32) #3
  %and19.i = and i32 %call.i33, -12304
  %or20.i = or i32 %and19.i, 4096
  %27 = ptrtoint ptr %pcie_wreg.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcie_wreg.i34, align 4
  tail call void %28(ptr noundef %adev, i32 noundef %mul.i32, i32 noundef %or20.i) #3
  %29 = ptrtoint ptr %pcie_wreg.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcie_wreg.i34, align 4
  %mul25.i = add i32 %add18.i, 3460
  tail call void %30(ptr noundef %adev, i32 noundef %mul25.i, i32 noundef 0) #3
  %or27.i = or i32 %and19.i, 4097
  %31 = ptrtoint ptr %pcie_wreg.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcie_wreg.i34, align 4
  tail call void %32(ptr noundef %adev, i32 noundef %mul.i32, i32 noundef %or27.i) #3
  %33 = ptrtoint ptr %pcie_wreg.i34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcie_wreg.i34, align 4
  tail call void %34(ptr noundef %adev, i32 noundef %mul25.i, i32 noundef 0) #3
  %inc = add nuw i32 %ch_inst.042, 1
  %35 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel_inst_num, align 4
  %cmp3 = icmp ult i32 %inc, %36
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.inc6_crit_edge

for.body4.for.inc6_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc6

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.inc6:                                         ; preds = %for.body4.for.inc6_crit_edge, %for.cond1.preheader.for.inc6_crit_edge
  %inc7 = add nuw i32 %umc_inst.044, 1
  %37 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %umc_inst_num, align 8
  %cmp = icmp ult i32 %inc7, %38
  br i1 %cmp, label %for.inc6.for.cond1.preheader_crit_edge, label %for.inc6.for.end8_crit_edge

for.inc6.for.end8_crit_edge:                      ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end8

for.inc6.for.cond1.preheader_crit_edge:           ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6.for.end8_crit_edge, %if.end.for.end8_crit_edge
  br i1 %tobool.not, label %for.end8.if.end11_crit_edge, label %if.then10

for.end8.if.end11_crit_edge:                      ; preds = %for.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then10:                                        ; preds = %for.end8
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %43 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i37 = shl i32 %42, 2
  %mul.i38 = add i32 %add.i37, 13892
  %call.i39 = tail call i32 %44(ptr noundef %adev, i32 noundef %mul.i38) #3
  %or.i = or i32 %call.i39, -2147483648
  %pcie_wreg.i40 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %45 = ptrtoint ptr %pcie_wreg.i40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcie_wreg.i40, align 4
  tail call void %46(ptr noundef %adev, i32 noundef %mul.i38, i32 noundef %or.i) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end8.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_umc_ras_late_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_umc_ras_fini(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umc_v6_1_query_ras_error_count(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 28
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %4 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i = shl i32 %3, 2
  %mul.i = add i32 %add.i, 13892
  %call.i = tail call i32 %5(ptr noundef %adev, i32 noundef %mul.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i51 = shl i32 %9, 2
  %mul.i52 = add i32 %add.i51, 13892
  %call.i53 = tail call i32 %11(ptr noundef %adev, i32 noundef %mul.i52) #3
  %and.i = and i32 %call.i53, 2147483647
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %12 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %13(ptr noundef %adev, i32 noundef %mul.i52, i32 noundef %and.i) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %14 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %15)
  %cmp = icmp eq i32 %15, 23
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @amdgpu_dpm_set_df_cstate(ptr noundef %adev, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %do.end

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %if.end5

if.end5:                                          ; preds = %do.end, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %umc_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 2
  %16 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp677.not = icmp eq i32 %17, 0
  br i1 %cmp677.not, label %if.end5.for.end14_crit_edge, label %for.cond7.preheader.lr.ph

if.end5.for.end14_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end14

for.cond7.preheader.lr.ph:                        ; preds = %if.end5
  %channel_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 3
  %ce_count = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 1
  %arrayidx.i56 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27
  %pcie_wreg.i61 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %pcie_rreg64.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 43
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc12.for.cond7.preheader_crit_edge, %for.cond7.preheader.lr.ph
  %umc_inst.078 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc13, %for.inc12.for.cond7.preheader_crit_edge ]
  %18 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_inst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp975.not = icmp eq i32 %19, 0
  br i1 %cmp975.not, label %for.cond7.preheader.for.inc12_crit_edge, label %for.body10.lr.ph

for.cond7.preheader.for.inc12_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc12

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %mul1.i = shl i32 %umc_inst.078, 18
  br label %for.body10

for.body10:                                       ; preds = %umc_v6_1_querry_uncorrectable_error_count.exit.for.body10_crit_edge, %for.body10.lr.ph
  %ch_inst.076 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %umc_v6_1_querry_uncorrectable_error_count.exit.for.body10_crit_edge ]
  %20 = ptrtoint ptr %channel_offs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_offs.i, align 4
  %mul.i54 = mul i32 %21, %ch_inst.076
  %add.i55 = add i32 %mul.i54, %mul1.i
  %22 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %23)
  %cmp.i = icmp eq i32 %23, 23
  %24 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i56, align 8
  %ecc_err_cnt_sel_addr.0.in.in.idx.i = zext i1 %cmp.i to i32
  %ecc_err_cnt_sel_addr.0.in.in.i = getelementptr i32, ptr %25, i32 %ecc_err_cnt_sel_addr.0.in.in.idx.i
  %26 = ptrtoint ptr %ecc_err_cnt_sel_addr.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %ecc_err_cnt_sel_addr.0.in.i = load i32, ptr %ecc_err_cnt_sel_addr.0.in.in.i, align 4
  %27 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcie_rreg.i, align 8
  %ecc_err_cnt_sel_addr.0.i = add i32 %ecc_err_cnt_sel_addr.0.in.i, %add.i55
  %add28.i = shl i32 %ecc_err_cnt_sel_addr.0.i, 2
  %mul.i58 = add i32 %add28.i, 3456
  %call.i59 = tail call i32 %28(ptr noundef %adev, i32 noundef %mul.i58) #3
  %and.i60 = and i32 %call.i59, -16
  %29 = ptrtoint ptr %pcie_wreg.i61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcie_wreg.i61, align 4
  tail call void %30(ptr noundef %adev, i32 noundef %mul.i58, i32 noundef %and.i60) #3
  %31 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcie_rreg.i, align 8
  %mul33.i = add i32 %add28.i, 3460
  %call34.i = tail call i32 %32(ptr noundef %adev, i32 noundef %mul33.i) #3
  %and35.i = and i32 %call34.i, 65535
  %33 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ce_count, align 4
  %add36.i = add i32 %34, %and35.i
  store i32 %add36.i, ptr %ce_count, align 4
  %or38.i = or i32 %and.i60, 1
  %35 = ptrtoint ptr %pcie_wreg.i61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcie_wreg.i61, align 4
  tail call void %36(ptr noundef %adev, i32 noundef %mul.i58, i32 noundef %or38.i) #3
  %37 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcie_rreg.i, align 8
  %call45.i = tail call i32 %38(ptr noundef %adev, i32 noundef %mul33.i) #3
  %and46.i = and i32 %call45.i, 65535
  %39 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ce_count, align 4
  %add49.i = add i32 %40, %and46.i
  store i32 %add49.i, ptr %ce_count, align 4
  %41 = ptrtoint ptr %pcie_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcie_rreg64.i, align 8
  %mul51.i = add i32 %add28.i, 3848
  %call52.i = tail call i64 %42(ptr noundef %adev, i32 noundef %mul51.i) #3
  %43 = and i64 %call52.i, -9223301668106469376
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223301668110204928, i64 %43)
  %.not.i = icmp eq i64 %43, -9223301668110204928
  br i1 %.not.i, label %if.then63.i, label %for.body10.umc_v6_1_query_correctable_error_count.exit_crit_edge

for.body10.umc_v6_1_query_correctable_error_count.exit_crit_edge: ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_1_query_correctable_error_count.exit

if.then63.i:                                      ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %ce_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ce_count, align 4
  %add64.i = add i32 %45, 1
  store i32 %add64.i, ptr %ce_count, align 4
  br label %umc_v6_1_query_correctable_error_count.exit

umc_v6_1_query_correctable_error_count.exit:      ; preds = %if.then63.i, %for.body10.umc_v6_1_query_correctable_error_count.exit_crit_edge
  %46 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %47)
  %cmp.i63 = icmp eq i32 %47, 23
  %48 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i56, align 8
  %mc_umc_status_addr.0.in.in.idx.i = zext i1 %cmp.i63 to i32
  %mc_umc_status_addr.0.in.in.i = getelementptr i32, ptr %49, i32 %mc_umc_status_addr.0.in.in.idx.i
  %50 = ptrtoint ptr %mc_umc_status_addr.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %mc_umc_status_addr.0.in.i = load i32, ptr %mc_umc_status_addr.0.in.in.i, align 4
  %51 = ptrtoint ptr %pcie_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcie_rreg64.i, align 8
  %mc_umc_status_addr.0.i = add i32 %add.i55, 962
  %add8.i = add i32 %mc_umc_status_addr.0.i, %mc_umc_status_addr.0.in.i
  %mul.i66 = shl i32 %add8.i, 2
  %call.i67 = tail call i64 %52(ptr noundef %adev, i32 noundef %mul.i66) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i67)
  %cmp9.i = icmp sgt i64 %call.i67, -1
  %53 = and i64 %call.i67, 2486039770866647040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %54 = icmp eq i64 %53, 0
  %or.cond.i = or i1 %cmp9.i, %54
  br i1 %or.cond.i, label %umc_v6_1_query_correctable_error_count.exit.umc_v6_1_querry_uncorrectable_error_count.exit_crit_edge, label %if.then28.i

umc_v6_1_query_correctable_error_count.exit.umc_v6_1_querry_uncorrectable_error_count.exit_crit_edge: ; preds = %umc_v6_1_query_correctable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_1_querry_uncorrectable_error_count.exit

if.then28.i:                                      ; preds = %umc_v6_1_query_correctable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %ras_error_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ras_error_status, align 4
  %add29.i = add i32 %56, 1
  store i32 %add29.i, ptr %ras_error_status, align 4
  br label %umc_v6_1_querry_uncorrectable_error_count.exit

umc_v6_1_querry_uncorrectable_error_count.exit:   ; preds = %if.then28.i, %umc_v6_1_query_correctable_error_count.exit.umc_v6_1_querry_uncorrectable_error_count.exit_crit_edge
  %inc = add nuw i32 %ch_inst.076, 1
  %57 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %channel_inst_num, align 4
  %cmp9 = icmp ult i32 %inc, %58
  br i1 %cmp9, label %umc_v6_1_querry_uncorrectable_error_count.exit.for.body10_crit_edge, label %umc_v6_1_querry_uncorrectable_error_count.exit.for.inc12_crit_edge

umc_v6_1_querry_uncorrectable_error_count.exit.for.inc12_crit_edge: ; preds = %umc_v6_1_querry_uncorrectable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc12

umc_v6_1_querry_uncorrectable_error_count.exit.for.body10_crit_edge: ; preds = %umc_v6_1_querry_uncorrectable_error_count.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body10

for.inc12:                                        ; preds = %umc_v6_1_querry_uncorrectable_error_count.exit.for.inc12_crit_edge, %for.cond7.preheader.for.inc12_crit_edge
  %inc13 = add nuw i32 %umc_inst.078, 1
  %59 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %umc_inst_num, align 8
  %cmp6 = icmp ult i32 %inc13, %60
  br i1 %cmp6, label %for.inc12.for.cond7.preheader_crit_edge, label %for.inc12.for.end14_crit_edge

for.inc12.for.end14_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end14

for.inc12.for.cond7.preheader_crit_edge:          ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond7.preheader

for.end14:                                        ; preds = %for.inc12.for.end14_crit_edge, %if.end5.for.end14_crit_edge
  %61 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %62)
  %cmp16 = icmp eq i32 %62, 23
  br i1 %cmp16, label %land.lhs.true17, label %for.end14.if.end26_crit_edge

for.end14.if.end26_crit_edge:                     ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

land.lhs.true17:                                  ; preds = %for.end14
  %call18 = tail call i32 @amdgpu_dpm_set_df_cstate(ptr noundef %adev, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end26_crit_edge, label %do.end23

land.lhs.true17.if.end26_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

do.end23:                                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %land.lhs.true17.if.end26_crit_edge, %for.end14.if.end26_crit_edge
  br i1 %tobool.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %67 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i70 = shl i32 %66, 2
  %mul.i71 = add i32 %add.i70, 13892
  %call.i72 = tail call i32 %68(ptr noundef %adev, i32 noundef %mul.i71) #3
  %or.i = or i32 %call.i72, -2147483648
  %pcie_wreg.i73 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %69 = ptrtoint ptr %pcie_wreg.i73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcie_wreg.i73, align 4
  tail call void %70(ptr noundef %adev, i32 noundef %mul.i71, i32 noundef %or.i) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %75 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i.i = shl i32 %74, 2
  %mul.i.i = add i32 %add.i.i, 13892
  %call.i.i = tail call i32 %76(ptr noundef %adev, i32 noundef %mul.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end29.if.end.i_crit_edge, label %if.then.i

if.end29.if.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %81 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i25.i = shl i32 %80, 2
  %mul.i26.i = add i32 %add.i25.i, 13892
  %call.i27.i = tail call i32 %82(ptr noundef %adev, i32 noundef %mul.i26.i) #3
  %and.i.i = and i32 %call.i27.i, 2147483647
  %pcie_wreg.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %83 = ptrtoint ptr %pcie_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcie_wreg.i.i, align 4
  tail call void %84(ptr noundef %adev, i32 noundef %mul.i26.i, i32 noundef %and.i.i) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end29.if.end.i_crit_edge
  %85 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp44.not.i = icmp eq i32 %86, 0
  br i1 %cmp44.not.i, label %if.end.i.for.end8.i_crit_edge, label %for.cond1.preheader.lr.ph.i

if.end.i.for.end8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end8.i

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end.i
  %channel_inst_num.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_offs.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 3
  %arrayidx.i30.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27
  %pcie_wreg.i35.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc6.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %umc_inst.045.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc7.i, %for.inc6.i.for.cond1.preheader.i_crit_edge ]
  %87 = ptrtoint ptr %channel_inst_num.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %channel_inst_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp342.not.i = icmp eq i32 %88, 0
  br i1 %cmp342.not.i, label %for.cond1.preheader.i.for.inc6.i_crit_edge, label %for.body4.lr.ph.i

for.cond1.preheader.i.for.inc6.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc6.i

for.body4.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %mul1.i.i = shl i32 %umc_inst.045.i, 18
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %ch_inst.043.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %89 = ptrtoint ptr %channel_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %channel_offs.i.i, align 4
  %mul.i28.i = mul i32 %90, %ch_inst.043.i
  %add.i29.i = add i32 %mul.i28.i, %mul1.i.i
  %91 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %92)
  %cmp.i.i = icmp eq i32 %92, 23
  %93 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i30.i, align 8
  %ecc_err_cnt_addr.0.in.in.idx.i.i = zext i1 %cmp.i.i to i32
  %ecc_err_cnt_addr.0.in.in.i.i = getelementptr i32, ptr %94, i32 %ecc_err_cnt_addr.0.in.in.idx.i.i
  %95 = ptrtoint ptr %ecc_err_cnt_addr.0.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %ecc_err_cnt_addr.0.in.i.i = load i32, ptr %ecc_err_cnt_addr.0.in.in.i.i, align 4
  %96 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pcie_rreg.i, align 8
  %ecc_err_cnt_sel_addr.0.i.i = add i32 %add.i29.i, %ecc_err_cnt_addr.0.in.i.i
  %add18.i.i = shl i32 %ecc_err_cnt_sel_addr.0.i.i, 2
  %mul.i32.i = add i32 %add18.i.i, 3456
  %call.i33.i = tail call i32 %97(ptr noundef %adev, i32 noundef %mul.i32.i) #3
  %and.i34.i = and i32 %call.i33.i, -16
  %98 = ptrtoint ptr %pcie_wreg.i35.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pcie_wreg.i35.i, align 4
  tail call void %99(ptr noundef %adev, i32 noundef %mul.i32.i, i32 noundef %and.i34.i) #3
  %100 = ptrtoint ptr %pcie_wreg.i35.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pcie_wreg.i35.i, align 4
  %mul23.i.i = add i32 %add18.i.i, 3460
  tail call void %101(ptr noundef %adev, i32 noundef %mul23.i.i, i32 noundef 0) #3
  %102 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pcie_rreg.i, align 8
  %call27.i.i = tail call i32 %103(ptr noundef %adev, i32 noundef %mul.i32.i) #3
  %and28.i.i = and i32 %call27.i.i, -16
  %or29.i.i = or i32 %and28.i.i, 1
  %104 = ptrtoint ptr %pcie_wreg.i35.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcie_wreg.i35.i, align 4
  tail call void %105(ptr noundef %adev, i32 noundef %mul.i32.i, i32 noundef %or29.i.i) #3
  %106 = ptrtoint ptr %pcie_wreg.i35.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pcie_wreg.i35.i, align 4
  tail call void %107(ptr noundef %adev, i32 noundef %mul23.i.i, i32 noundef 0) #3
  %inc.i = add nuw i32 %ch_inst.043.i, 1
  %108 = ptrtoint ptr %channel_inst_num.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %channel_inst_num.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %109
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.inc6.i_crit_edge

for.body4.i.for.inc6.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc6.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4.i

for.inc6.i:                                       ; preds = %for.body4.i.for.inc6.i_crit_edge, %for.cond1.preheader.i.for.inc6.i_crit_edge
  %inc7.i = add nuw i32 %umc_inst.045.i, 1
  %110 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %umc_inst_num, align 8
  %cmp.i74 = icmp ult i32 %inc7.i, %111
  br i1 %cmp.i74, label %for.inc6.i.for.cond1.preheader.i_crit_edge, label %for.inc6.i.for.end8.i_crit_edge

for.inc6.i.for.end8.i_crit_edge:                  ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end8.i

for.inc6.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader.i

for.end8.i:                                       ; preds = %for.inc6.i.for.end8.i_crit_edge, %if.end.i.for.end8.i_crit_edge
  br i1 %tobool.not.i, label %for.end8.i.umc_v6_1_clear_error_count.exit_crit_edge, label %if.then10.i

for.end8.i.umc_v6_1_clear_error_count.exit_crit_edge: ; preds = %for.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_1_clear_error_count.exit

if.then10.i:                                      ; preds = %for.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %116 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i38.i = shl i32 %115, 2
  %mul.i39.i = add i32 %add.i38.i, 13892
  %call.i40.i = tail call i32 %117(ptr noundef %adev, i32 noundef %mul.i39.i) #3
  %or.i.i = or i32 %call.i40.i, -2147483648
  %pcie_wreg.i41.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %118 = ptrtoint ptr %pcie_wreg.i41.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcie_wreg.i41.i, align 4
  tail call void %119(ptr noundef %adev, i32 noundef %mul.i39.i, i32 noundef %or.i.i) #3
  br label %umc_v6_1_clear_error_count.exit

umc_v6_1_clear_error_count.exit:                  ; preds = %if.then10.i, %for.end8.i.umc_v6_1_clear_error_count.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umc_v6_1_query_ras_error_address(ptr noundef %adev, ptr nocapture noundef %ras_error_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 28
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 39
  %4 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i = shl i32 %3, 2
  %mul.i = add i32 %add.i, 13892
  %call.i = tail call i32 %5(ptr noundef %adev, i32 noundef %mul.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i49 = shl i32 %9, 2
  %mul.i50 = add i32 %add.i49, 13892
  %call.i51 = tail call i32 %11(ptr noundef %adev, i32 noundef %mul.i50) #3
  %and.i = and i32 %call.i51, 2147483647
  %pcie_wreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %12 = ptrtoint ptr %pcie_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie_wreg.i, align 4
  tail call void %13(ptr noundef %adev, i32 noundef %mul.i50, i32 noundef %and.i) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %14 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %15)
  %cmp = icmp eq i32 %15, 23
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @amdgpu_dpm_set_df_cstate(ptr noundef %adev, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %do.end

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %if.end5

if.end5:                                          ; preds = %do.end, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %umc_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 2
  %16 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %umc_inst_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp667.not = icmp eq i32 %17, 0
  br i1 %cmp667.not, label %if.end5.for.end14_crit_edge, label %for.cond7.preheader.lr.ph

if.end5.for.end14_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end14

for.cond7.preheader.lr.ph:                        ; preds = %if.end5
  %channel_inst_num = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 1
  %channel_offs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 3
  %channel_idx_tbl.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 116, i32 4
  %arrayidx2.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 27
  %pcie_rreg64.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 43
  %err_addr28.i = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 3
  %err_addr_cnt.i = getelementptr inbounds %struct.ras_err_data, ptr %ras_error_status, i32 0, i32 2
  %pcie_wreg6477.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 44
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc12.for.cond7.preheader_crit_edge, %for.cond7.preheader.lr.ph
  %umc_inst.068 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc13, %for.inc12.for.cond7.preheader_crit_edge ]
  %18 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_inst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp965.not = icmp eq i32 %19, 0
  br i1 %cmp965.not, label %for.cond7.preheader.for.inc12_crit_edge, label %for.body10.lr.ph

for.cond7.preheader.for.inc12_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc12

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %mul1.i = shl i32 %umc_inst.068, 18
  %conv73.i = trunc i32 %umc_inst.068 to i8
  br label %for.body10

for.body10:                                       ; preds = %umc_v6_1_query_error_address.exit.for.body10_crit_edge, %for.body10.lr.ph
  %20 = phi i32 [ %19, %for.body10.lr.ph ], [ %56, %umc_v6_1_query_error_address.exit.for.body10_crit_edge ]
  %ch_inst.066 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %umc_v6_1_query_error_address.exit.for.body10_crit_edge ]
  %21 = ptrtoint ptr %channel_offs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel_offs.i, align 4
  %mul.i52 = mul i32 %22, %ch_inst.066
  %add.i53 = add i32 %mul.i52, %mul1.i
  %23 = ptrtoint ptr %channel_idx_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel_idx_tbl.i, align 8
  %mul.i54 = mul i32 %20, %umc_inst.068
  %add.i55 = add i32 %mul.i54, %ch_inst.066
  %arrayidx.i56 = getelementptr i32, ptr %24, i32 %add.i55
  %25 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i56, align 4
  %27 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %28)
  %cmp.i = icmp eq i32 %28, 23
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx2.i, align 8
  %mc_umc_status_addr.0.in.in.idx.i = zext i1 %cmp.i to i32
  %mc_umc_status_addr.0.in.in.i = getelementptr i32, ptr %30, i32 %mc_umc_status_addr.0.in.in.idx.i
  %31 = ptrtoint ptr %mc_umc_status_addr.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %mc_umc_status_addr.0.in.i = load i32, ptr %mc_umc_status_addr.0.in.in.i, align 4
  %32 = ptrtoint ptr %pcie_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcie_rreg64.i, align 8
  %mc_umc_status_addr.0.i = add i32 %add.i53, %mc_umc_status_addr.0.in.i
  %add22.i = shl i32 %mc_umc_status_addr.0.i, 2
  %mul23.i = add i32 %add22.i, 3848
  %call.i57 = tail call i64 %33(ptr noundef %adev, i32 noundef %mul23.i) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i57)
  %cmp24.i = icmp eq i64 %call.i57, 0
  br i1 %cmp24.i, label %for.body10.umc_v6_1_query_error_address.exit_crit_edge, label %if.end27.i

for.body10.umc_v6_1_query_error_address.exit_crit_edge: ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %umc_v6_1_query_error_address.exit

if.end27.i:                                       ; preds = %for.body10
  %34 = ptrtoint ptr %err_addr28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %err_addr28.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end27.i.cleanup.sink.split.i_crit_edge, label %if.end32.i

if.end27.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.end32.i:                                       ; preds = %if.end27.i
  %36 = ptrtoint ptr %err_addr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %err_addr_cnt.i, align 4
  %arrayidx34.i = getelementptr %struct.eeprom_table_record, ptr %35, i32 %37
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call.i57)
  %cmp35.i = icmp sgt i64 %call.i57, -1
  %38 = and i64 %call.i57, 105553116266496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %39 = icmp eq i64 %38, 0
  %or.cond.i = or i1 %cmp35.i, %39
  br i1 %or.cond.i, label %if.end32.i.cleanup.sink.split.i_crit_edge, label %if.then45.i

if.end32.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.then45.i:                                      ; preds = %if.end32.i
  %40 = and i64 %call.i57, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp39.not.i = icmp eq i64 %40, 0
  %41 = ptrtoint ptr %pcie_rreg64.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcie_rreg64.i, align 8
  %mul49.i = add i32 %add22.i, 3856
  %call51.i = tail call i64 %42(ptr noundef %adev, i32 noundef %mul49.i) #3
  br i1 %cmp39.not.i, label %if.then45.i.cleanup.sink.split.i_crit_edge, label %if.then68.i

if.then45.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.then68.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #5
  %and55.i = and i64 %call51.i, 72057594037927935
  %and52.i = lshr i64 %call51.i, 56
  %sh_prom.i = and i64 %and52.i, 63
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %and57.i = and i64 %and55.i, %notmask.i
  %and58.i = shl nuw nsw i64 %and57.i, 5
  %shl59.i = and i64 %and58.i, 2305843009213685760
  %shl60.i = shl i32 %26, 8
  %conv61.i = zext i32 %shl60.i to i64
  %or.i = or i64 %shl59.i, %conv61.i
  %43 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %and57.i, ptr %arrayidx34.i, align 1
  %shr69.i = lshr i64 %or.i, 12
  %retired_page70.i = getelementptr %struct.eeprom_table_record, ptr %35, i32 %37, i32 1
  %44 = ptrtoint ptr %retired_page70.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %shr69.i, ptr %retired_page70.i, align 1
  %call71.i = tail call i64 @ktime_get_real_seconds() #3
  %ts.i = getelementptr %struct.eeprom_table_record, ptr %35, i32 %37, i32 2
  %45 = ptrtoint ptr %ts.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %call71.i, ptr %ts.i, align 1
  %err_type.i = getelementptr %struct.eeprom_table_record, ptr %35, i32 %37, i32 3
  %46 = ptrtoint ptr %err_type.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 2, ptr %err_type.i, align 1
  %47 = getelementptr %struct.eeprom_table_record, ptr %35, i32 %37, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %47, align 1
  %conv72.i = trunc i32 %26 to i8
  %mem_channel.i = getelementptr %struct.eeprom_table_record, ptr %35, i32 %37, i32 5
  %49 = ptrtoint ptr %mem_channel.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv72.i, ptr %mem_channel.i, align 1
  %mcumc_id.i = getelementptr %struct.eeprom_table_record, ptr %35, i32 %37, i32 6
  %50 = ptrtoint ptr %mcumc_id.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv73.i, ptr %mcumc_id.i, align 1
  %51 = ptrtoint ptr %err_addr_cnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err_addr_cnt.i, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %err_addr_cnt.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then68.i, %if.then45.i.cleanup.sink.split.i_crit_edge, %if.end32.i.cleanup.sink.split.i_crit_edge, %if.end27.i.cleanup.sink.split.i_crit_edge
  %53 = ptrtoint ptr %pcie_wreg6477.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcie_wreg6477.i, align 4
  tail call void %54(ptr noundef %adev, i32 noundef %mul23.i, i64 noundef 0) #3
  br label %umc_v6_1_query_error_address.exit

umc_v6_1_query_error_address.exit:                ; preds = %cleanup.sink.split.i, %for.body10.umc_v6_1_query_error_address.exit_crit_edge
  %inc = add nuw i32 %ch_inst.066, 1
  %55 = ptrtoint ptr %channel_inst_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel_inst_num, align 4
  %cmp9 = icmp ult i32 %inc, %56
  br i1 %cmp9, label %umc_v6_1_query_error_address.exit.for.body10_crit_edge, label %umc_v6_1_query_error_address.exit.for.inc12_crit_edge

umc_v6_1_query_error_address.exit.for.inc12_crit_edge: ; preds = %umc_v6_1_query_error_address.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc12

umc_v6_1_query_error_address.exit.for.body10_crit_edge: ; preds = %umc_v6_1_query_error_address.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body10

for.inc12:                                        ; preds = %umc_v6_1_query_error_address.exit.for.inc12_crit_edge, %for.cond7.preheader.for.inc12_crit_edge
  %inc13 = add nuw i32 %umc_inst.068, 1
  %57 = ptrtoint ptr %umc_inst_num to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %umc_inst_num, align 8
  %cmp6 = icmp ult i32 %inc13, %58
  br i1 %cmp6, label %for.inc12.for.cond7.preheader_crit_edge, label %for.inc12.for.end14_crit_edge

for.inc12.for.end14_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end14

for.inc12.for.cond7.preheader_crit_edge:          ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond7.preheader

for.end14:                                        ; preds = %for.inc12.for.end14_crit_edge, %if.end5.for.end14_crit_edge
  %59 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %60)
  %cmp16 = icmp eq i32 %60, 23
  br i1 %cmp16, label %land.lhs.true17, label %for.end14.if.end26_crit_edge

for.end14.if.end26_crit_edge:                     ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

land.lhs.true17:                                  ; preds = %for.end14
  %call18 = tail call i32 @amdgpu_dpm_set_df_cstate(ptr noundef %adev, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end26_crit_edge, label %do.end23

land.lhs.true17.if.end26_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

do.end23:                                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %land.lhs.true17.if.end26_crit_edge, %for.end14.if.end26_crit_edge
  br i1 %tobool.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcie_rreg.i, align 8
  %add.i60 = shl i32 %64, 2
  %mul.i61 = add i32 %add.i60, 13892
  %call.i62 = tail call i32 %66(ptr noundef %adev, i32 noundef %mul.i61) #3
  %or.i63 = or i32 %call.i62, -2147483648
  %pcie_wreg.i64 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 40
  %67 = ptrtoint ptr %pcie_wreg.i64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcie_wreg.i64, align 4
  tail call void %68(ptr noundef %adev, i32 noundef %mul.i61, i32 noundef %or.i63) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_set_df_cstate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @umc_v6_1_channel_idx_tbl, !1, !"umc_v6_1_channel_idx_tbl", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_1.c", i32 37, i32 2}
!2 = !{ptr @umc_v6_1_ras_funcs, !3, !"umc_v6_1_ras_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_1.c", i32 468, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_1.c", i32 270, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @umc_v6_1_query_ras_error_count._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @umc_v6_1_query_ras_error_count._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_1.c", i32 287, i32 3}
!12 = !{ptr @umc_v6_1_query_ras_error_count._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @umc_v6_1_query_ras_error_count._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_1.c", i32 385, i32 3}
!16 = !{ptr @umc_v6_1_query_ras_error_address._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @umc_v6_1_query_ras_error_address._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @umc_v6_1_query_ras_error_address._entry.7, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/umc_v6_1.c", i32 401, i32 3}
!20 = !{ptr @umc_v6_1_query_ras_error_address._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
