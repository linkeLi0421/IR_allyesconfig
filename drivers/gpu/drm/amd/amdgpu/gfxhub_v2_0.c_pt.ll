; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_gfxhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_vmhub_funcs = type { ptr, ptr }
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
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.108, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gfxhub_v2_0_funcs = dso_local constant { %struct.amdgpu_gfxhub_funcs, [60 x i8] } { %struct.amdgpu_gfxhub_funcs { ptr @gfxhub_v2_0_get_fb_location, ptr @gfxhub_v2_0_get_mc_fb_offset, ptr @gfxhub_v2_0_setup_vm_pt_regs, ptr @gfxhub_v2_0_gart_enable, ptr @gfxhub_v2_0_gart_disable, ptr @gfxhub_v2_0_set_fault_enable_default, ptr @gfxhub_v2_0_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_vmhub_funcs = internal constant { %struct.amdgpu_vmhub_funcs, [24 x i8] } { %struct.amdgpu_vmhub_funcs { ptr @gfxhub_v2_0_print_l2_protection_fault_status, ptr @gfxhub_v2_0_get_invalidate_req }, [24 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: GCVM_L2_PROTECTION_FAULT_STATUS:0x%08X\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"gfxhub_v2_0_print_l2_protection_fault_status\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr = internal global ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry, section ".printk_index", align 4
@gfxhub_v2_0_print_l2_protection_fault_status._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: \09 Faulty UTCL2 client ID: %s (0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.7 = internal global ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@gfxhub_client_ids = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.25, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [56 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: \09 MORE_FAULTS: 0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.11 = internal global ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.9, section ".printk_index", align 4
@gfxhub_v2_0_print_l2_protection_fault_status._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: \09 WALKER_ERROR: 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.14 = internal global ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.12, section ".printk_index", align 4
@gfxhub_v2_0_print_l2_protection_fault_status._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: \09 PERMISSION_FAULTS: 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.17 = internal global ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.15, section ".printk_index", align 4
@gfxhub_v2_0_print_l2_protection_fault_status._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: \09 MAPPING_ERROR: 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.20 = internal global ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.18, section ".printk_index", align 4
@gfxhub_v2_0_print_l2_protection_fault_status._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu: \09 RW: 0x%lx\0A\00", [43 x i8] zeroinitializer }, align 32
@gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.23 = internal global ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CB/DB\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GE1\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GE2\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPF\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPC\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPG\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RLC\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SQC (inst)\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SQC (data)\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SQG\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA0\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA1\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GCR\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA2\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA3\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"gfxhub_v2_0_funcs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 474, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"gfxhub_v2_0_vmhub_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 427, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 82, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 85, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"gfxhub_client_ids\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 34, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 88, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 91, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 94, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 97, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 100, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 35, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 36, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 37, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 38, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 39, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 40, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 41, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 42, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 43, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 44, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 45, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 46, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 48, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 49, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 50, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 51, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 52, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.12, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.15, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.18, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.21, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.5, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.9, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.11, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.14, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.17, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.20, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.23, ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.7, ptr @gfxhub_v2_0_funcs, ptr @gfxhub_v2_0_vmhub_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @gfxhub_client_ids, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_vmhub_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_client_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gfxhub_v2_0_get_fb_location(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 5920
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 5920
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %14 = and i32 %cond, 16777215
  %and19 = zext i32 %14 to i64
  %shl = shl nuw nsw i64 %and19, 24
  ret i64 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gfxhub_v2_0_get_mc_fb_offset(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 5899
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 5899
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %conv = zext i32 %cond to i64
  %shl = shl nuw nsw i64 %conv, 24
  ret i64 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v2_0_setup_vm_pt_regs(ptr noundef %adev, i32 noundef %vmid, i64 noundef %page_table_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 5771
  %ctx_addr_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %10 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %11, %vmid
  %add14 = add i32 %add, %mul
  %conv = trunc i64 %page_table_base to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef %conv, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add20 = add i32 %15, 5771
  %ctx_addr_distance21 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %16 = ptrtoint ptr %ctx_addr_distance21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_addr_distance21, align 4
  %mul22 = mul i32 %17, %vmid
  %add23 = add i32 %add20, %mul22
  %conv25 = trunc i64 %page_table_base to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add23, i32 noundef %conv25, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and28 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end.cond.false56_crit_edge, label %land.lhs.true30

cond.end.cond.false56_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56

land.lhs.true30:                                  ; preds = %cond.end
  %funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs33, align 4
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false56_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false56_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_wreg39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg39, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %land.lhs.true35.cond.false56_crit_edge, label %cond.true41

land.lhs.true35.cond.false56_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56

cond.true41:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 5772
  %ctx_addr_distance51 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %28 = ptrtoint ptr %ctx_addr_distance51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx_addr_distance51, align 4
  %mul52 = mul i32 %29, %vmid
  %add53 = add i32 %add50, %mul52
  %shr = lshr i64 %page_table_base, 32
  %conv55 = trunc i64 %shr to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add53, i32 noundef %conv55, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end68

cond.false56:                                     ; preds = %land.lhs.true35.cond.false56_crit_edge, %land.lhs.true30.cond.false56_crit_edge, %cond.end.cond.false56_crit_edge
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx58, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add61 = add i32 %33, 5772
  %ctx_addr_distance62 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %34 = ptrtoint ptr %ctx_addr_distance62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctx_addr_distance62, align 4
  %mul63 = mul i32 %35, %vmid
  %add64 = add i32 %add61, %mul63
  %shr65 = lshr i64 %page_table_base, 32
  %conv67 = trunc i64 %shr65 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add64, i32 noundef %conv67, i32 noundef 0) #6
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false56, %cond.true41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfxhub_v2_0_gart_enable(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %0 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart.i, align 8
  %call.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef %1) #6
  tail call void @gfxhub_v2_0_setup_vm_pt_regs(ptr noundef %adev, i32 noundef 0, i64 noundef %call.i) #6
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add.i = add i32 %11, 5803
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %12 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gart_start.i, align 8
  %shr.i = lshr i64 %13, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void %7(ptr noundef %adev, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add17.i = add i32 %17, 5803
  %gart_start19.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %18 = ptrtoint ptr %gart_start19.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %gart_start19.i, align 8
  %shr20.i = lshr i64 %19, 12
  %conv21.i = trunc i64 %shr20.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef %conv21.i, i32 noundef 0) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and24.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %cond.end.i.cond.false51.i_crit_edge, label %land.lhs.true26.i

cond.end.i.cond.false51.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

land.lhs.true26.i:                                ; preds = %cond.end.i
  %funcs29.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs29.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs29.i, align 4
  %tobool30.not.i = icmp eq ptr %23, null
  br i1 %tobool30.not.i, label %land.lhs.true26.i.cond.false51.i_crit_edge, label %land.lhs.true31.i

land.lhs.true26.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

land.lhs.true31.i:                                ; preds = %land.lhs.true26.i
  %sriov_wreg35.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg35.i, align 4
  %tobool36.not.i = icmp eq ptr %25, null
  br i1 %tobool36.not.i, label %land.lhs.true31.i.cond.false51.i_crit_edge, label %cond.true37.i

land.lhs.true31.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

cond.true37.i:                                    ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %26 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx43.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add46.i = add i32 %29, 5804
  %gart_start48.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %30 = ptrtoint ptr %gart_start48.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %gart_start48.i, align 8
  %shr49.i = lshr i64 %31, 44
  %conv50.i = trunc i64 %shr49.i to i32
  tail call void %25(ptr noundef %adev, i32 noundef %add46.i, i32 noundef %conv50.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end61.i

cond.false51.i:                                   ; preds = %land.lhs.true31.i.cond.false51.i_crit_edge, %land.lhs.true26.i.cond.false51.i_crit_edge, %cond.end.i.cond.false51.i_crit_edge
  %arrayidx53.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %32 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx53.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add56.i = add i32 %35, 5804
  %gart_start58.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %36 = ptrtoint ptr %gart_start58.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %gart_start58.i, align 8
  %shr59.i = lshr i64 %37, 44
  %conv60.i = trunc i64 %shr59.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add56.i, i32 noundef %conv60.i, i32 noundef 0) #6
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.false51.i, %cond.true37.i
  %38 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %virt.i, align 8
  %and64.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %cond.end61.i.cond.false90.i_crit_edge, label %land.lhs.true66.i

cond.end61.i.cond.false90.i_crit_edge:            ; preds = %cond.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false90.i

land.lhs.true66.i:                                ; preds = %cond.end61.i
  %funcs69.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %40 = ptrtoint ptr %funcs69.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs69.i, align 4
  %tobool70.not.i = icmp eq ptr %41, null
  br i1 %tobool70.not.i, label %land.lhs.true66.i.cond.false90.i_crit_edge, label %land.lhs.true71.i

land.lhs.true66.i.cond.false90.i_crit_edge:       ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false90.i

land.lhs.true71.i:                                ; preds = %land.lhs.true66.i
  %sriov_wreg75.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %sriov_wreg75.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_wreg75.i, align 4
  %tobool76.not.i = icmp eq ptr %43, null
  br i1 %tobool76.not.i, label %land.lhs.true71.i.cond.false90.i_crit_edge, label %cond.true77.i

land.lhs.true71.i.cond.false90.i_crit_edge:       ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false90.i

cond.true77.i:                                    ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx83.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %44 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx83.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add86.i = add i32 %47, 5835
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %48 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %gart_end.i, align 8
  %shr88.i = lshr i64 %49, 12
  %conv89.i = trunc i64 %shr88.i to i32
  tail call void %43(ptr noundef %adev, i32 noundef %add86.i, i32 noundef %conv89.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end100.i

cond.false90.i:                                   ; preds = %land.lhs.true71.i.cond.false90.i_crit_edge, %land.lhs.true66.i.cond.false90.i_crit_edge, %cond.end61.i.cond.false90.i_crit_edge
  %arrayidx92.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %50 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx92.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add95.i = add i32 %53, 5835
  %gart_end97.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %54 = ptrtoint ptr %gart_end97.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gart_end97.i, align 8
  %shr98.i = lshr i64 %55, 12
  %conv99.i = trunc i64 %shr98.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add95.i, i32 noundef %conv99.i, i32 noundef 0) #6
  br label %cond.end100.i

cond.end100.i:                                    ; preds = %cond.false90.i, %cond.true77.i
  %56 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt.i, align 8
  %and103.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %cond.end100.i.cond.false130.i_crit_edge, label %land.lhs.true105.i

cond.end100.i.cond.false130.i_crit_edge:          ; preds = %cond.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false130.i

land.lhs.true105.i:                               ; preds = %cond.end100.i
  %funcs108.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %58 = ptrtoint ptr %funcs108.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs108.i, align 4
  %tobool109.not.i = icmp eq ptr %59, null
  br i1 %tobool109.not.i, label %land.lhs.true105.i.cond.false130.i_crit_edge, label %land.lhs.true110.i

land.lhs.true105.i.cond.false130.i_crit_edge:     ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false130.i

land.lhs.true110.i:                               ; preds = %land.lhs.true105.i
  %sriov_wreg114.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %sriov_wreg114.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_wreg114.i, align 4
  %tobool115.not.i = icmp eq ptr %61, null
  br i1 %tobool115.not.i, label %land.lhs.true110.i.cond.false130.i_crit_edge, label %cond.true116.i

land.lhs.true110.i.cond.false130.i_crit_edge:     ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false130.i

cond.true116.i:                                   ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx122.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %62 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx122.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add125.i = add i32 %65, 5836
  %gart_end127.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %66 = ptrtoint ptr %gart_end127.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %gart_end127.i, align 8
  %shr128.i = lshr i64 %67, 44
  %conv129.i = trunc i64 %shr128.i to i32
  tail call void %61(ptr noundef %adev, i32 noundef %add125.i, i32 noundef %conv129.i, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_0_init_gart_aperture_regs.exit

cond.false130.i:                                  ; preds = %land.lhs.true110.i.cond.false130.i_crit_edge, %land.lhs.true105.i.cond.false130.i_crit_edge, %cond.end100.i.cond.false130.i_crit_edge
  %arrayidx132.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %68 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx132.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add135.i = add i32 %71, 5836
  %gart_end137.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %72 = ptrtoint ptr %gart_end137.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %gart_end137.i, align 8
  %shr138.i = lshr i64 %73, 44
  %conv139.i = trunc i64 %shr138.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add135.i, i32 noundef %conv139.i, i32 noundef 0) #6
  br label %gfxhub_v2_0_init_gart_aperture_regs.exit

gfxhub_v2_0_init_gart_aperture_regs.exit:         ; preds = %cond.false130.i, %cond.true116.i
  %74 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %virt.i, align 8
  %and.i9 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %cond.false.i13, label %gfxhub_v2_0_init_gart_aperture_regs.exit.if.end.i_crit_edge

gfxhub_v2_0_init_gart_aperture_regs.exit.if.end.i_crit_edge: ; preds = %gfxhub_v2_0_init_gart_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cond.false.i13:                                   ; preds = %gfxhub_v2_0_init_gart_aperture_regs.exit
  %arrayidx18.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %76 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx18.i, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %add21.i = add i32 %79, 5924
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21.i, i32 noundef 0, i32 noundef 0) #6
  %80 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %virt.i, align 8
  %and24.i11 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i11)
  %tobool25.not.i12 = icmp eq i32 %and24.i11, 0
  br i1 %tobool25.not.i12, label %cond.false.i13.cond.false47.i_crit_edge, label %land.lhs.true26.i16

cond.false.i13.cond.false47.i_crit_edge:          ; preds = %cond.false.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

land.lhs.true26.i16:                              ; preds = %cond.false.i13
  %funcs29.i14 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %82 = ptrtoint ptr %funcs29.i14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %funcs29.i14, align 4
  %tobool30.not.i15 = icmp eq ptr %83, null
  br i1 %tobool30.not.i15, label %land.lhs.true26.i16.cond.false47.i_crit_edge, label %land.lhs.true31.i19

land.lhs.true26.i16.cond.false47.i_crit_edge:     ; preds = %land.lhs.true26.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

land.lhs.true31.i19:                              ; preds = %land.lhs.true26.i16
  %sriov_wreg35.i17 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %83, i32 0, i32 12
  %84 = ptrtoint ptr %sriov_wreg35.i17 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sriov_wreg35.i17, align 4
  %tobool36.not.i18 = icmp eq ptr %85, null
  br i1 %tobool36.not.i18, label %land.lhs.true31.i19.cond.false47.i_crit_edge, label %cond.true37.i23

land.lhs.true31.i19.cond.false47.i_crit_edge:     ; preds = %land.lhs.true31.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

cond.true37.i23:                                  ; preds = %land.lhs.true31.i19
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx18.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add46.i20 = add i32 %89, 5923
  %agp_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %90 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %agp_start.i, align 8
  %shr.i21 = lshr i64 %91, 24
  %conv.i22 = trunc i64 %shr.i21 to i32
  tail call void %85(ptr noundef %adev, i32 noundef %add46.i20, i32 noundef %conv.i22, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end57.i

cond.false47.i:                                   ; preds = %land.lhs.true31.i19.cond.false47.i_crit_edge, %land.lhs.true26.i16.cond.false47.i_crit_edge, %cond.false.i13.cond.false47.i_crit_edge
  %92 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx18.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %add52.i = add i32 %95, 5923
  %agp_start54.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %96 = ptrtoint ptr %agp_start54.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %agp_start54.i, align 8
  %shr55.i = lshr i64 %97, 24
  %conv56.i = trunc i64 %shr55.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add52.i, i32 noundef %conv56.i, i32 noundef 0) #6
  br label %cond.end57.i

cond.end57.i:                                     ; preds = %cond.false47.i, %cond.true37.i23
  %98 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %virt.i, align 8
  %and60.i = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %cond.end57.i.cond.false86.i_crit_edge, label %land.lhs.true62.i

cond.end57.i.cond.false86.i_crit_edge:            ; preds = %cond.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

land.lhs.true62.i:                                ; preds = %cond.end57.i
  %funcs65.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %100 = ptrtoint ptr %funcs65.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %funcs65.i, align 4
  %tobool66.not.i = icmp eq ptr %101, null
  br i1 %tobool66.not.i, label %land.lhs.true62.i.cond.false86.i_crit_edge, label %land.lhs.true67.i

land.lhs.true62.i.cond.false86.i_crit_edge:       ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

land.lhs.true67.i:                                ; preds = %land.lhs.true62.i
  %sriov_wreg71.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %101, i32 0, i32 12
  %102 = ptrtoint ptr %sriov_wreg71.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sriov_wreg71.i, align 4
  %tobool72.not.i = icmp eq ptr %103, null
  br i1 %tobool72.not.i, label %land.lhs.true67.i.cond.false86.i_crit_edge, label %cond.true73.i

land.lhs.true67.i.cond.false86.i_crit_edge:       ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

cond.true73.i:                                    ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx18.i, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %add82.i = add i32 %107, 5922
  %agp_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %108 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %agp_end.i, align 8
  %shr84.i = lshr i64 %109, 24
  %conv85.i = trunc i64 %shr84.i to i32
  tail call void %103(ptr noundef %adev, i32 noundef %add82.i, i32 noundef %conv85.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end96.i

cond.false86.i:                                   ; preds = %land.lhs.true67.i.cond.false86.i_crit_edge, %land.lhs.true62.i.cond.false86.i_crit_edge, %cond.end57.i.cond.false86.i_crit_edge
  %110 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx18.i, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %add91.i = add i32 %113, 5922
  %agp_end93.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %114 = ptrtoint ptr %agp_end93.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %agp_end93.i, align 8
  %shr94.i = lshr i64 %115, 24
  %conv95.i = trunc i64 %shr94.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add91.i, i32 noundef %conv95.i, i32 noundef 0) #6
  br label %cond.end96.i

cond.end96.i:                                     ; preds = %cond.false86.i, %cond.true73.i
  %116 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %virt.i, align 8
  %and99.i = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %cond.end96.i.cond.false131.i_crit_edge, label %land.lhs.true101.i

cond.end96.i.cond.false131.i_crit_edge:           ; preds = %cond.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

land.lhs.true101.i:                               ; preds = %cond.end96.i
  %funcs104.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %118 = ptrtoint ptr %funcs104.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %funcs104.i, align 4
  %tobool105.not.i = icmp eq ptr %119, null
  br i1 %tobool105.not.i, label %land.lhs.true101.i.cond.false131.i_crit_edge, label %land.lhs.true106.i

land.lhs.true101.i.cond.false131.i_crit_edge:     ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

land.lhs.true106.i:                               ; preds = %land.lhs.true101.i
  %sriov_wreg110.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %sriov_wreg110.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sriov_wreg110.i, align 4
  %tobool111.not.i = icmp eq ptr %121, null
  br i1 %tobool111.not.i, label %land.lhs.true106.i.cond.false131.i_crit_edge, label %cond.true112.i

land.lhs.true106.i.cond.false131.i_crit_edge:     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

cond.true112.i:                                   ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx18.i, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add121.i = add i32 %125, 5925
  %fb_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %126 = ptrtoint ptr %fb_start.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %fb_start.i, align 8
  %agp_start124.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %128 = ptrtoint ptr %agp_start124.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %agp_start124.i, align 8
  %130 = tail call i64 @llvm.umin.i64(i64 %127, i64 %129) #6
  %cond.off18.v.i = lshr i64 %130, 18
  %cond.off18.i = trunc i64 %cond.off18.v.i to i32
  tail call void %121(ptr noundef %adev, i32 noundef %add121.i, i32 noundef %cond.off18.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end152.i

cond.false131.i:                                  ; preds = %land.lhs.true106.i.cond.false131.i_crit_edge, %land.lhs.true101.i.cond.false131.i_crit_edge, %cond.end96.i.cond.false131.i_crit_edge
  %131 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx18.i, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  %add136.i = add i32 %134, 5925
  %fb_start139.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %135 = ptrtoint ptr %fb_start139.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %fb_start139.i, align 8
  %agp_start142.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %137 = ptrtoint ptr %agp_start142.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %agp_start142.i, align 8
  %139 = tail call i64 @llvm.umin.i64(i64 %136, i64 %138) #6
  %cond149.off18.v.i = lshr i64 %139, 18
  %cond149.off18.i = trunc i64 %cond149.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add136.i, i32 noundef %cond149.off18.i, i32 noundef 0) #6
  br label %cond.end152.i

cond.end152.i:                                    ; preds = %cond.false131.i, %cond.true112.i
  %140 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %virt.i, align 8
  %and155.i = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %cond.end152.i.cond.false190.i_crit_edge, label %land.lhs.true157.i

cond.end152.i.cond.false190.i_crit_edge:          ; preds = %cond.end152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false190.i

land.lhs.true157.i:                               ; preds = %cond.end152.i
  %funcs160.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %142 = ptrtoint ptr %funcs160.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %funcs160.i, align 4
  %tobool161.not.i = icmp eq ptr %143, null
  br i1 %tobool161.not.i, label %land.lhs.true157.i.cond.false190.i_crit_edge, label %land.lhs.true162.i

land.lhs.true157.i.cond.false190.i_crit_edge:     ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false190.i

land.lhs.true162.i:                               ; preds = %land.lhs.true157.i
  %sriov_wreg166.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %143, i32 0, i32 12
  %144 = ptrtoint ptr %sriov_wreg166.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %sriov_wreg166.i, align 4
  %tobool167.not.i = icmp eq ptr %145, null
  br i1 %tobool167.not.i, label %land.lhs.true162.i.cond.false190.i_crit_edge, label %cond.true168.i

land.lhs.true162.i.cond.false190.i_crit_edge:     ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false190.i

cond.true168.i:                                   ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx18.i, align 8
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %add177.i = add i32 %149, 5926
  %fb_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %150 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %fb_end.i, align 8
  %agp_end180.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %152 = ptrtoint ptr %agp_end180.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %agp_end180.i, align 8
  %154 = tail call i64 @llvm.umax.i64(i64 %151, i64 %153) #6
  %cond187.off18.v.i = lshr i64 %154, 18
  %cond187.off18.i = trunc i64 %cond187.off18.v.i to i32
  tail call void %145(ptr noundef %adev, i32 noundef %add177.i, i32 noundef %cond187.off18.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end211.i

cond.false190.i:                                  ; preds = %land.lhs.true162.i.cond.false190.i_crit_edge, %land.lhs.true157.i.cond.false190.i_crit_edge, %cond.end152.i.cond.false190.i_crit_edge
  %155 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx18.i, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %add195.i = add i32 %158, 5926
  %fb_end198.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %159 = ptrtoint ptr %fb_end198.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %fb_end198.i, align 8
  %agp_end201.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %161 = ptrtoint ptr %agp_end201.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %agp_end201.i, align 8
  %163 = tail call i64 @llvm.umax.i64(i64 %160, i64 %162) #6
  %cond208.off18.v.i = lshr i64 %163, 18
  %cond208.off18.i = trunc i64 %cond208.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add195.i, i32 noundef %cond208.off18.i, i32 noundef 0) #6
  br label %cond.end211.i

cond.end211.i:                                    ; preds = %cond.false190.i, %cond.true168.i
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 69, i32 2
  %164 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %gpu_addr.i, align 8
  %call.i24 = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %165) #6
  %166 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %virt.i, align 8
  %and214.i = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.i)
  %tobool215.not.i = icmp eq i32 %and214.i, 0
  br i1 %tobool215.not.i, label %cond.end211.i.cond.false239.i_crit_edge, label %land.lhs.true216.i

cond.end211.i.cond.false239.i_crit_edge:          ; preds = %cond.end211.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

land.lhs.true216.i:                               ; preds = %cond.end211.i
  %funcs219.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %168 = ptrtoint ptr %funcs219.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %funcs219.i, align 4
  %tobool220.not.i = icmp eq ptr %169, null
  br i1 %tobool220.not.i, label %land.lhs.true216.i.cond.false239.i_crit_edge, label %land.lhs.true221.i

land.lhs.true216.i.cond.false239.i_crit_edge:     ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

land.lhs.true221.i:                               ; preds = %land.lhs.true216.i
  %sriov_wreg225.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %169, i32 0, i32 12
  %170 = ptrtoint ptr %sriov_wreg225.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %sriov_wreg225.i, align 4
  %tobool226.not.i = icmp eq ptr %171, null
  br i1 %tobool226.not.i, label %land.lhs.true221.i.cond.false239.i_crit_edge, label %cond.true227.i

land.lhs.true221.i.cond.false239.i_crit_edge:     ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

cond.true227.i:                                   ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx18.i, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %add236.i = add i32 %175, 5900
  %shr237.i = lshr i64 %call.i24, 12
  %conv238.i = trunc i64 %shr237.i to i32
  tail call void %171(ptr noundef %adev, i32 noundef %add236.i, i32 noundef %conv238.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end247.i

cond.false239.i:                                  ; preds = %land.lhs.true221.i.cond.false239.i_crit_edge, %land.lhs.true216.i.cond.false239.i_crit_edge, %cond.end211.i.cond.false239.i_crit_edge
  %176 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx18.i, align 8
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %add244.i = add i32 %179, 5900
  %shr245.i = lshr i64 %call.i24, 12
  %conv246.i = trunc i64 %shr245.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add244.i, i32 noundef %conv246.i, i32 noundef 0) #6
  br label %cond.end247.i

cond.end247.i:                                    ; preds = %cond.false239.i, %cond.true227.i
  %180 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %virt.i, align 8
  %and250.i = and i32 %181, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250.i)
  %tobool251.not.i = icmp eq i32 %and250.i, 0
  br i1 %tobool251.not.i, label %cond.end247.i.cond.false275.i_crit_edge, label %land.lhs.true252.i

cond.end247.i.cond.false275.i_crit_edge:          ; preds = %cond.end247.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false275.i

land.lhs.true252.i:                               ; preds = %cond.end247.i
  %funcs255.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %182 = ptrtoint ptr %funcs255.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %funcs255.i, align 4
  %tobool256.not.i = icmp eq ptr %183, null
  br i1 %tobool256.not.i, label %land.lhs.true252.i.cond.false275.i_crit_edge, label %land.lhs.true257.i

land.lhs.true252.i.cond.false275.i_crit_edge:     ; preds = %land.lhs.true252.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false275.i

land.lhs.true257.i:                               ; preds = %land.lhs.true252.i
  %sriov_wreg261.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %183, i32 0, i32 12
  %184 = ptrtoint ptr %sriov_wreg261.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %sriov_wreg261.i, align 4
  %tobool262.not.i = icmp eq ptr %185, null
  br i1 %tobool262.not.i, label %land.lhs.true257.i.cond.false275.i_crit_edge, label %cond.true263.i

land.lhs.true257.i.cond.false275.i_crit_edge:     ; preds = %land.lhs.true257.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false275.i

cond.true263.i:                                   ; preds = %land.lhs.true257.i
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx18.i, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %add272.i = add i32 %189, 5901
  %shr273.i = lshr i64 %call.i24, 44
  %conv274.i = trunc i64 %shr273.i to i32
  tail call void %185(ptr noundef %adev, i32 noundef %add272.i, i32 noundef %conv274.i, i32 noundef 0, i32 noundef 1) #6
  br label %if.end.i

cond.false275.i:                                  ; preds = %land.lhs.true257.i.cond.false275.i_crit_edge, %land.lhs.true252.i.cond.false275.i_crit_edge, %cond.end247.i.cond.false275.i_crit_edge
  %190 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx18.i, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  %add280.i = add i32 %193, 5901
  %shr281.i = lshr i64 %call.i24, 44
  %conv282.i = trunc i64 %shr281.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add280.i, i32 noundef %conv282.i, i32 noundef 0) #6
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false275.i, %cond.true263.i, %gfxhub_v2_0_init_gart_aperture_regs.exit.if.end.i_crit_edge
  %194 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %virt.i, align 8
  %and286.i = and i32 %195, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286.i)
  %tobool287.not.i = icmp eq i32 %and286.i, 0
  br i1 %tobool287.not.i, label %if.end.i.cond.false310.i_crit_edge, label %land.lhs.true288.i

if.end.i.cond.false310.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false310.i

land.lhs.true288.i:                               ; preds = %if.end.i
  %funcs291.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %196 = ptrtoint ptr %funcs291.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %funcs291.i, align 4
  %tobool292.not.i = icmp eq ptr %197, null
  br i1 %tobool292.not.i, label %land.lhs.true288.i.cond.false310.i_crit_edge, label %land.lhs.true293.i

land.lhs.true288.i.cond.false310.i_crit_edge:     ; preds = %land.lhs.true288.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false310.i

land.lhs.true293.i:                               ; preds = %land.lhs.true288.i
  %sriov_wreg297.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %197, i32 0, i32 12
  %198 = ptrtoint ptr %sriov_wreg297.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sriov_wreg297.i, align 4
  %tobool298.not.i = icmp eq ptr %199, null
  br i1 %tobool298.not.i, label %land.lhs.true293.i.cond.false310.i_crit_edge, label %cond.true299.i

land.lhs.true293.i.cond.false310.i_crit_edge:     ; preds = %land.lhs.true293.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false310.i

cond.true299.i:                                   ; preds = %land.lhs.true293.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx305.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %200 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx305.i, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  %add308.i = add i32 %203, 5615
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %204 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %dummy_page_addr.i, align 8
  %shr309.i = lshr i32 %205, 12
  tail call void %199(ptr noundef %adev, i32 noundef %add308.i, i32 noundef %shr309.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end318.i

cond.false310.i:                                  ; preds = %land.lhs.true293.i.cond.false310.i_crit_edge, %land.lhs.true288.i.cond.false310.i_crit_edge, %if.end.i.cond.false310.i_crit_edge
  %arrayidx312.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %206 = ptrtoint ptr %arrayidx312.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx312.i, align 8
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %207, align 4
  %add315.i = add i32 %209, 5615
  %dummy_page_addr316.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %210 = ptrtoint ptr %dummy_page_addr316.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %dummy_page_addr316.i, align 8
  %shr317.i = lshr i32 %211, 12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add315.i, i32 noundef %shr317.i, i32 noundef 0) #6
  br label %cond.end318.i

cond.end318.i:                                    ; preds = %cond.false310.i, %cond.true299.i
  %212 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %virt.i, align 8
  %and321.i = and i32 %213, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and321.i)
  %tobool322.not.i = icmp eq i32 %and321.i, 0
  br i1 %tobool322.not.i, label %cond.end318.i.cond.false348.i_crit_edge, label %land.lhs.true323.i

cond.end318.i.cond.false348.i_crit_edge:          ; preds = %cond.end318.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false348.i

land.lhs.true323.i:                               ; preds = %cond.end318.i
  %funcs326.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %214 = ptrtoint ptr %funcs326.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %funcs326.i, align 4
  %tobool327.not.i = icmp eq ptr %215, null
  br i1 %tobool327.not.i, label %land.lhs.true323.i.cond.false348.i_crit_edge, label %land.lhs.true328.i

land.lhs.true323.i.cond.false348.i_crit_edge:     ; preds = %land.lhs.true323.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false348.i

land.lhs.true328.i:                               ; preds = %land.lhs.true323.i
  %sriov_wreg332.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %215, i32 0, i32 12
  %216 = ptrtoint ptr %sriov_wreg332.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %sriov_wreg332.i, align 4
  %tobool333.not.i = icmp eq ptr %217, null
  br i1 %tobool333.not.i, label %land.lhs.true328.i.cond.false348.i_crit_edge, label %cond.true334.i

land.lhs.true328.i.cond.false348.i_crit_edge:     ; preds = %land.lhs.true328.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false348.i

cond.true334.i:                                   ; preds = %land.lhs.true328.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx340.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %218 = ptrtoint ptr %arrayidx340.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx340.i, align 8
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  %add343.i = add i32 %221, 5616
  tail call void %217(ptr noundef %adev, i32 noundef %add343.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end358.i

cond.false348.i:                                  ; preds = %land.lhs.true328.i.cond.false348.i_crit_edge, %land.lhs.true323.i.cond.false348.i_crit_edge, %cond.end318.i.cond.false348.i_crit_edge
  %arrayidx350.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %222 = ptrtoint ptr %arrayidx350.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx350.i, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 4
  %add353.i = add i32 %225, 5616
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add353.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end358.i

cond.end358.i:                                    ; preds = %cond.false348.i, %cond.true334.i
  %226 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %virt.i, align 8
  %and361.i = and i32 %227, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361.i)
  %tobool362.not.i = icmp eq i32 %and361.i, 0
  br i1 %tobool362.not.i, label %cond.end358.i.cond.false451.sink.split.i_crit_edge, label %land.lhs.true363.i

cond.end358.i.cond.false451.sink.split.i_crit_edge: ; preds = %cond.end358.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false451.sink.split.i

land.lhs.true363.i:                               ; preds = %cond.end358.i
  %funcs366.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %228 = ptrtoint ptr %funcs366.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %funcs366.i, align 4
  %tobool367.not.i = icmp eq ptr %229, null
  br i1 %tobool367.not.i, label %land.lhs.true363.i.cond.false451.sink.split.i_crit_edge, label %land.lhs.true368.i

land.lhs.true363.i.cond.false451.sink.split.i_crit_edge: ; preds = %land.lhs.true363.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false451.sink.split.i

land.lhs.true368.i:                               ; preds = %land.lhs.true363.i
  %sriov_wreg372.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %229, i32 0, i32 12
  %230 = ptrtoint ptr %sriov_wreg372.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %sriov_wreg372.i, align 4
  %tobool373.not.i = icmp eq ptr %231, null
  %arrayidx421632.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %232 = ptrtoint ptr %arrayidx421632.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx421632.i, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %233, align 4
  %add424633.i = add i32 %235, 5609
  %sriov_rreg438.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %229, i32 0, i32 13
  %236 = ptrtoint ptr %sriov_rreg438.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %sriov_rreg438.i, align 4
  %tobool439.not.i = icmp eq ptr %237, null
  br i1 %tobool373.not.i, label %land.lhs.true434.i, label %cond.true374.i

cond.true374.i:                                   ; preds = %land.lhs.true368.i
  br i1 %tobool439.not.i, label %cond.false409.i, label %cond.true398.i

cond.true398.i:                                   ; preds = %cond.true374.i
  call void @__sanitizer_cov_trace_pc() #8
  %call408.i = tail call i32 %237(ptr noundef %adev, i32 noundef %add424633.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end416.i

cond.false409.i:                                  ; preds = %cond.true374.i
  call void @__sanitizer_cov_trace_pc() #8
  %call415.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add424633.i, i32 noundef 0) #6
  br label %cond.end416.i

cond.end416.i:                                    ; preds = %cond.false409.i, %cond.true398.i
  %cond417.i = phi i32 [ %call408.i, %cond.true398.i ], [ %call415.i, %cond.false409.i ]
  %or.i = or i32 %cond417.i, 262144
  tail call void %231(ptr noundef %adev, i32 noundef %add424633.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_0_init_system_aperture_regs.exit

land.lhs.true434.i:                               ; preds = %land.lhs.true368.i
  br i1 %tobool439.not.i, label %land.lhs.true434.i.cond.false451.i_crit_edge, label %cond.true440.i

land.lhs.true434.i.cond.false451.i_crit_edge:     ; preds = %land.lhs.true434.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false451.i

cond.true440.i:                                   ; preds = %land.lhs.true434.i
  call void @__sanitizer_cov_trace_pc() #8
  %call450.i = tail call i32 %237(ptr noundef %adev, i32 noundef %add424633.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end458.i

cond.false451.sink.split.i:                       ; preds = %land.lhs.true363.i.cond.false451.sink.split.i_crit_edge, %cond.end358.i.cond.false451.sink.split.i_crit_edge
  %arrayidx421632637.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %238 = ptrtoint ptr %arrayidx421632637.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx421632637.i, align 8
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %239, align 4
  %add424633638.i = add i32 %241, 5609
  br label %cond.false451.i

cond.false451.i:                                  ; preds = %cond.false451.sink.split.i, %land.lhs.true434.i.cond.false451.i_crit_edge
  %add424636.i = phi i32 [ %add424633.i, %land.lhs.true434.i.cond.false451.i_crit_edge ], [ %add424633638.i, %cond.false451.sink.split.i ]
  %call457.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add424636.i, i32 noundef 0) #6
  br label %cond.end458.i

cond.end458.i:                                    ; preds = %cond.false451.i, %cond.true440.i
  %add424634.i = phi i32 [ %add424633.i, %cond.true440.i ], [ %add424636.i, %cond.false451.i ]
  %cond459.i = phi i32 [ %call450.i, %cond.true440.i ], [ %call457.i, %cond.false451.i ]
  %or461.i = or i32 %cond459.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add424634.i, i32 noundef %or461.i, i32 noundef 0) #6
  br label %gfxhub_v2_0_init_system_aperture_regs.exit

gfxhub_v2_0_init_system_aperture_regs.exit:       ; preds = %cond.end458.i, %cond.end416.i
  %242 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %virt.i, align 8
  %and.i26 = and i32 %243, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %gfxhub_v2_0_init_system_aperture_regs.exit.cond.false.i40_crit_edge, label %land.lhs.true.i30

gfxhub_v2_0_init_system_aperture_regs.exit.cond.false.i40_crit_edge: ; preds = %gfxhub_v2_0_init_system_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i40

land.lhs.true.i30:                                ; preds = %gfxhub_v2_0_init_system_aperture_regs.exit
  %funcs.i28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %244 = ptrtoint ptr %funcs.i28 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %funcs.i28, align 4
  %tobool1.not.i29 = icmp eq ptr %245, null
  br i1 %tobool1.not.i29, label %land.lhs.true.i30.cond.false.i40_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i30.cond.false.i40_crit_edge:       ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i40

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i30
  %sriov_rreg.i31 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %245, i32 0, i32 13
  %246 = ptrtoint ptr %sriov_rreg.i31 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %sriov_rreg.i31, align 4
  %tobool6.not.i32 = icmp eq ptr %247, null
  br i1 %tobool6.not.i32, label %land.lhs.true2.i33.cond.false.i40_crit_edge, label %cond.true.i37

land.lhs.true2.i33.cond.false.i40_crit_edge:      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i40

cond.true.i37:                                    ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i34 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %248 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i34, align 8
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %249, align 4
  %add.i35 = add i32 %251, 5927
  %call.i36 = tail call i32 %247(ptr noundef %adev, i32 noundef %add.i35, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i41

cond.false.i40:                                   ; preds = %land.lhs.true2.i33.cond.false.i40_crit_edge, %land.lhs.true.i30.cond.false.i40_crit_edge, %gfxhub_v2_0_init_system_aperture_regs.exit.cond.false.i40_crit_edge
  %arrayidx14.i38 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %252 = ptrtoint ptr %arrayidx14.i38 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx14.i38, align 8
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %253, align 4
  %add17.i39 = add i32 %255, 5927
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i39, i32 noundef 0) #6
  br label %cond.end.i41

cond.end.i41:                                     ; preds = %cond.false.i40, %cond.true.i37
  %cond.i = phi i32 [ %call.i36, %cond.true.i37 ], [ %call18.i, %cond.false.i40 ]
  %or23.i = and i32 %cond.i, -14458
  %or27.i = or i32 %or23.i, 6233
  %256 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %virt.i, align 8
  %and30.i = and i32 %257, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %cond.end.i41.cond.false52.i_crit_edge, label %land.lhs.true32.i

cond.end.i41.cond.false52.i_crit_edge:            ; preds = %cond.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

land.lhs.true32.i:                                ; preds = %cond.end.i41
  %funcs35.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %258 = ptrtoint ptr %funcs35.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %funcs35.i, align 4
  %tobool36.not.i42 = icmp eq ptr %259, null
  br i1 %tobool36.not.i42, label %land.lhs.true32.i.cond.false52.i_crit_edge, label %land.lhs.true37.i

land.lhs.true32.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

land.lhs.true37.i:                                ; preds = %land.lhs.true32.i
  %sriov_wreg.i43 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %259, i32 0, i32 12
  %260 = ptrtoint ptr %sriov_wreg.i43 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sriov_wreg.i43, align 4
  %tobool41.not.i = icmp eq ptr %261, null
  br i1 %tobool41.not.i, label %land.lhs.true37.i.cond.false52.i_crit_edge, label %cond.true42.i

land.lhs.true37.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

cond.true42.i:                                    ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx48.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %262 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx48.i, align 8
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %263, align 4
  %add51.i = add i32 %265, 5927
  tail call void %261(ptr noundef %adev, i32 noundef %add51.i, i32 noundef %or27.i, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_0_init_tlb_regs.exit

cond.false52.i:                                   ; preds = %land.lhs.true37.i.cond.false52.i_crit_edge, %land.lhs.true32.i.cond.false52.i_crit_edge, %cond.end.i41.cond.false52.i_crit_edge
  %arrayidx54.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %266 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx54.i, align 8
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %267, align 4
  %add57.i = add i32 %269, 5927
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add57.i, i32 noundef %or27.i, i32 noundef 0) #6
  br label %gfxhub_v2_0_init_tlb_regs.exit

gfxhub_v2_0_init_tlb_regs.exit:                   ; preds = %cond.false52.i, %cond.true42.i
  %270 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %virt.i, align 8
  %and.i45 = and i32 %271, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool.not.i46, label %cond.false.i50, label %gfxhub_v2_0_init_tlb_regs.exit.gfxhub_v2_0_init_cache_regs.exit_crit_edge

gfxhub_v2_0_init_tlb_regs.exit.gfxhub_v2_0_init_cache_regs.exit_crit_edge: ; preds = %gfxhub_v2_0_init_tlb_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %gfxhub_v2_0_init_cache_regs.exit

cond.false.i50:                                   ; preds = %gfxhub_v2_0_init_tlb_regs.exit
  %arrayidx18.i47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %272 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx18.i47, align 8
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %273, align 4
  %add21.i48 = add i32 %275, 5600
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21.i48, i32 noundef 0) #6
  %or.i49 = and i32 %call22.i, -66849028
  %or33.i = or i32 %or.i49, 526337
  %276 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %virt.i, align 8
  %and38.i = and i32 %277, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %cond.false.i50.cond.false60.i_crit_edge, label %land.lhs.true40.i

cond.false.i50.cond.false60.i_crit_edge:          ; preds = %cond.false.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

land.lhs.true40.i:                                ; preds = %cond.false.i50
  %funcs43.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %278 = ptrtoint ptr %funcs43.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %funcs43.i, align 4
  %tobool44.not.i = icmp eq ptr %279, null
  br i1 %tobool44.not.i, label %land.lhs.true40.i.cond.false60.i_crit_edge, label %land.lhs.true45.i

land.lhs.true40.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

land.lhs.true45.i:                                ; preds = %land.lhs.true40.i
  %sriov_wreg.i51 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %279, i32 0, i32 12
  %280 = ptrtoint ptr %sriov_wreg.i51 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %sriov_wreg.i51, align 4
  %tobool49.not.i = icmp eq ptr %281, null
  br i1 %tobool49.not.i, label %land.lhs.true45.i.cond.false60.i_crit_edge, label %cond.true50.i

land.lhs.true45.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

cond.true50.i:                                    ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  %282 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx18.i47, align 8
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %283, align 4
  %add59.i = add i32 %285, 5600
  tail call void %281(ptr noundef %adev, i32 noundef %add59.i, i32 noundef %or33.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end66.i

cond.false60.i:                                   ; preds = %land.lhs.true45.i.cond.false60.i_crit_edge, %land.lhs.true40.i.cond.false60.i_crit_edge, %cond.false.i50.cond.false60.i_crit_edge
  %286 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx18.i47, align 8
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %287, align 4
  %add65.i = add i32 %289, 5600
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add65.i, i32 noundef %or33.i, i32 noundef 0) #6
  br label %cond.end66.i

cond.end66.i:                                     ; preds = %cond.false60.i, %cond.true50.i
  %290 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %virt.i, align 8
  %and69.i = and i32 %291, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i52 = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i52, label %cond.end66.i.cond.false93.i_crit_edge, label %land.lhs.true71.i53

cond.end66.i.cond.false93.i_crit_edge:            ; preds = %cond.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

land.lhs.true71.i53:                              ; preds = %cond.end66.i
  %funcs74.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %292 = ptrtoint ptr %funcs74.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %funcs74.i, align 4
  %tobool75.not.i = icmp eq ptr %293, null
  br i1 %tobool75.not.i, label %land.lhs.true71.i53.cond.false93.i_crit_edge, label %land.lhs.true76.i

land.lhs.true71.i53.cond.false93.i_crit_edge:     ; preds = %land.lhs.true71.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

land.lhs.true76.i:                                ; preds = %land.lhs.true71.i53
  %sriov_rreg80.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %293, i32 0, i32 13
  %294 = ptrtoint ptr %sriov_rreg80.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %sriov_rreg80.i, align 4
  %tobool81.not.i = icmp eq ptr %295, null
  br i1 %tobool81.not.i, label %land.lhs.true76.i.cond.false93.i_crit_edge, label %cond.true82.i

land.lhs.true76.i.cond.false93.i_crit_edge:       ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

cond.true82.i:                                    ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  %296 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx18.i47, align 8
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %297, align 4
  %add91.i54 = add i32 %299, 5601
  %call92.i = tail call i32 %295(ptr noundef %adev, i32 noundef %add91.i54, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end100.i56

cond.false93.i:                                   ; preds = %land.lhs.true76.i.cond.false93.i_crit_edge, %land.lhs.true71.i53.cond.false93.i_crit_edge, %cond.end66.i.cond.false93.i_crit_edge
  %300 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx18.i47, align 8
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %301, align 4
  %add98.i = add i32 %303, 5601
  %call99.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add98.i, i32 noundef 0) #6
  br label %cond.end100.i56

cond.end100.i56:                                  ; preds = %cond.false93.i, %cond.true82.i
  %cond101.i = phi i32 [ %call92.i, %cond.true82.i ], [ %call99.i, %cond.false93.i ]
  %or105.i = or i32 %cond101.i, 3
  %304 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %virt.i, align 8
  %and108.i = and i32 %305, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i55 = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i55, label %cond.end100.i56.cond.false131.i59_crit_edge, label %land.lhs.true110.i57

cond.end100.i56.cond.false131.i59_crit_edge:      ; preds = %cond.end100.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i59

land.lhs.true110.i57:                             ; preds = %cond.end100.i56
  %funcs113.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %306 = ptrtoint ptr %funcs113.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %funcs113.i, align 4
  %tobool114.not.i = icmp eq ptr %307, null
  br i1 %tobool114.not.i, label %land.lhs.true110.i57.cond.false131.i59_crit_edge, label %land.lhs.true115.i

land.lhs.true110.i57.cond.false131.i59_crit_edge: ; preds = %land.lhs.true110.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i59

land.lhs.true115.i:                               ; preds = %land.lhs.true110.i57
  %sriov_wreg119.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %307, i32 0, i32 12
  %308 = ptrtoint ptr %sriov_wreg119.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %sriov_wreg119.i, align 4
  %tobool120.not.i = icmp eq ptr %309, null
  br i1 %tobool120.not.i, label %land.lhs.true115.i.cond.false131.i59_crit_edge, label %cond.true121.i

land.lhs.true115.i.cond.false131.i59_crit_edge:   ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i59

cond.true121.i:                                   ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #8
  %310 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx18.i47, align 8
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %311, align 4
  %add130.i = add i32 %313, 5601
  tail call void %309(ptr noundef %adev, i32 noundef %add130.i, i32 noundef %or105.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end137.i

cond.false131.i59:                                ; preds = %land.lhs.true115.i.cond.false131.i59_crit_edge, %land.lhs.true110.i57.cond.false131.i59_crit_edge, %cond.end100.i56.cond.false131.i59_crit_edge
  %314 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx18.i47, align 8
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %315, align 4
  %add136.i58 = add i32 %317, 5601
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add136.i58, i32 noundef %or105.i, i32 noundef 0) #6
  br label %cond.end137.i

cond.end137.i:                                    ; preds = %cond.false131.i59, %cond.true121.i
  %translate_further.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %318 = ptrtoint ptr %translate_further.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %translate_further.i, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool138.not.i = icmp eq i8 %319, 0
  %..i = select i1 %tobool138.not.i, i32 -2146238455, i32 -2146140148
  %320 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %virt.i, align 8
  %and151.i = and i32 %321, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %cond.end137.i.cond.false174.i_crit_edge, label %land.lhs.true153.i

cond.end137.i.cond.false174.i_crit_edge:          ; preds = %cond.end137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

land.lhs.true153.i:                               ; preds = %cond.end137.i
  %funcs156.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %322 = ptrtoint ptr %funcs156.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %funcs156.i, align 4
  %tobool157.not.i = icmp eq ptr %323, null
  br i1 %tobool157.not.i, label %land.lhs.true153.i.cond.false174.i_crit_edge, label %land.lhs.true158.i

land.lhs.true153.i.cond.false174.i_crit_edge:     ; preds = %land.lhs.true153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

land.lhs.true158.i:                               ; preds = %land.lhs.true153.i
  %sriov_wreg162.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %323, i32 0, i32 12
  %324 = ptrtoint ptr %sriov_wreg162.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %sriov_wreg162.i, align 4
  %tobool163.not.i = icmp eq ptr %325, null
  br i1 %tobool163.not.i, label %land.lhs.true158.i.cond.false174.i_crit_edge, label %cond.true164.i

land.lhs.true158.i.cond.false174.i_crit_edge:     ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

cond.true164.i:                                   ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #8
  %326 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %arrayidx18.i47, align 8
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %327, align 4
  %add173.i = add i32 %329, 5602
  tail call void %325(ptr noundef %adev, i32 noundef %add173.i, i32 noundef %..i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end180.i

cond.false174.i:                                  ; preds = %land.lhs.true158.i.cond.false174.i_crit_edge, %land.lhs.true153.i.cond.false174.i_crit_edge, %cond.end137.i.cond.false174.i_crit_edge
  %330 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx18.i47, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %331, align 4
  %add179.i = add i32 %333, 5602
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add179.i, i32 noundef %..i, i32 noundef 0) #6
  br label %cond.end180.i

cond.end180.i:                                    ; preds = %cond.false174.i, %cond.true164.i
  %334 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %virt.i, align 8
  %and187.i = and i32 %335, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i)
  %tobool188.not.i = icmp eq i32 %and187.i, 0
  br i1 %tobool188.not.i, label %cond.end180.i.cond.false210.i_crit_edge, label %land.lhs.true189.i

cond.end180.i.cond.false210.i_crit_edge:          ; preds = %cond.end180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

land.lhs.true189.i:                               ; preds = %cond.end180.i
  %funcs192.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %336 = ptrtoint ptr %funcs192.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %funcs192.i, align 4
  %tobool193.not.i = icmp eq ptr %337, null
  br i1 %tobool193.not.i, label %land.lhs.true189.i.cond.false210.i_crit_edge, label %land.lhs.true194.i

land.lhs.true189.i.cond.false210.i_crit_edge:     ; preds = %land.lhs.true189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

land.lhs.true194.i:                               ; preds = %land.lhs.true189.i
  %sriov_wreg198.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %337, i32 0, i32 12
  %338 = ptrtoint ptr %sriov_wreg198.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %sriov_wreg198.i, align 4
  %tobool199.not.i = icmp eq ptr %339, null
  br i1 %tobool199.not.i, label %land.lhs.true194.i.cond.false210.i_crit_edge, label %cond.true200.i

land.lhs.true194.i.cond.false210.i_crit_edge:     ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

cond.true200.i:                                   ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #8
  %340 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx18.i47, align 8
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %341, align 4
  %add209.i = add i32 %343, 5624
  tail call void %339(ptr noundef %adev, i32 noundef %add209.i, i32 noundef 1, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end216.i

cond.false210.i:                                  ; preds = %land.lhs.true194.i.cond.false210.i_crit_edge, %land.lhs.true189.i.cond.false210.i_crit_edge, %cond.end180.i.cond.false210.i_crit_edge
  %344 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx18.i47, align 8
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %345, align 4
  %add215.i = add i32 %347, 5624
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add215.i, i32 noundef 1, i32 noundef 0) #6
  br label %cond.end216.i

cond.end216.i:                                    ; preds = %cond.false210.i, %cond.true200.i
  %348 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %virt.i, align 8
  %and221.i = and i32 %349, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i)
  %tobool222.not.i = icmp eq i32 %and221.i, 0
  br i1 %tobool222.not.i, label %cond.end216.i.cond.false244.i_crit_edge, label %land.lhs.true223.i

cond.end216.i.cond.false244.i_crit_edge:          ; preds = %cond.end216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

land.lhs.true223.i:                               ; preds = %cond.end216.i
  %funcs226.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %350 = ptrtoint ptr %funcs226.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %funcs226.i, align 4
  %tobool227.not.i = icmp eq ptr %351, null
  br i1 %tobool227.not.i, label %land.lhs.true223.i.cond.false244.i_crit_edge, label %land.lhs.true228.i

land.lhs.true223.i.cond.false244.i_crit_edge:     ; preds = %land.lhs.true223.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

land.lhs.true228.i:                               ; preds = %land.lhs.true223.i
  %sriov_wreg232.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %351, i32 0, i32 12
  %352 = ptrtoint ptr %sriov_wreg232.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %sriov_wreg232.i, align 4
  %tobool233.not.i = icmp eq ptr %353, null
  br i1 %tobool233.not.i, label %land.lhs.true228.i.cond.false244.i_crit_edge, label %cond.true234.i

land.lhs.true228.i.cond.false244.i_crit_edge:     ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

cond.true234.i:                                   ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #8
  %354 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx18.i47, align 8
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %355, align 4
  %add243.i = add i32 %357, 5633
  tail call void %353(ptr noundef %adev, i32 noundef %add243.i, i32 noundef 16352, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_0_init_cache_regs.exit

cond.false244.i:                                  ; preds = %land.lhs.true228.i.cond.false244.i_crit_edge, %land.lhs.true223.i.cond.false244.i_crit_edge, %cond.end216.i.cond.false244.i_crit_edge
  %358 = ptrtoint ptr %arrayidx18.i47 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %arrayidx18.i47, align 8
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %359, align 4
  %add249.i = add i32 %361, 5633
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add249.i, i32 noundef 16352, i32 noundef 0) #6
  br label %gfxhub_v2_0_init_cache_regs.exit

gfxhub_v2_0_init_cache_regs.exit:                 ; preds = %cond.false244.i, %cond.true234.i, %gfxhub_v2_0_init_tlb_regs.exit.gfxhub_v2_0_init_cache_regs.exit_crit_edge
  %362 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %virt.i, align 8
  %and.i61 = and i32 %363, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62, label %gfxhub_v2_0_init_cache_regs.exit.cond.false.i76_crit_edge, label %land.lhs.true.i65

gfxhub_v2_0_init_cache_regs.exit.cond.false.i76_crit_edge: ; preds = %gfxhub_v2_0_init_cache_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i76

land.lhs.true.i65:                                ; preds = %gfxhub_v2_0_init_cache_regs.exit
  %funcs.i63 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %364 = ptrtoint ptr %funcs.i63 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %funcs.i63, align 4
  %tobool1.not.i64 = icmp eq ptr %365, null
  br i1 %tobool1.not.i64, label %land.lhs.true.i65.cond.false.i76_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i65.cond.false.i76_crit_edge:       ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i76

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i65
  %sriov_rreg.i66 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %365, i32 0, i32 13
  %366 = ptrtoint ptr %sriov_rreg.i66 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %sriov_rreg.i66, align 4
  %tobool6.not.i67 = icmp eq ptr %367, null
  br i1 %tobool6.not.i67, label %land.lhs.true2.i68.cond.false.i76_crit_edge, label %cond.true.i72

land.lhs.true2.i68.cond.false.i76_crit_edge:      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i76

cond.true.i72:                                    ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i69 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %368 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx.i69, align 8
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %369, align 4
  %add.i70 = add i32 %371, 5664
  %call.i71 = tail call i32 %367(ptr noundef %adev, i32 noundef %add.i70, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i79

cond.false.i76:                                   ; preds = %land.lhs.true2.i68.cond.false.i76_crit_edge, %land.lhs.true.i65.cond.false.i76_crit_edge, %gfxhub_v2_0_init_cache_regs.exit.cond.false.i76_crit_edge
  %arrayidx14.i73 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %372 = ptrtoint ptr %arrayidx14.i73 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %arrayidx14.i73, align 8
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %373, align 4
  %add17.i74 = add i32 %375, 5664
  %call18.i75 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i74, i32 noundef 0) #6
  br label %cond.end.i79

cond.end.i79:                                     ; preds = %cond.false.i76, %cond.true.i72
  %cond.i77 = phi i32 [ %call.i71, %cond.true.i72 ], [ %call18.i75, %cond.false.i76 ]
  %or.i78 = and i32 %cond.i77, -136
  %and20.i = or i32 %or.i78, 1
  %376 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %virt.i, align 8
  %and26.i = and i32 %377, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %cond.end.i79.cond.false48.i_crit_edge, label %land.lhs.true28.i

cond.end.i79.cond.false48.i_crit_edge:            ; preds = %cond.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

land.lhs.true28.i:                                ; preds = %cond.end.i79
  %funcs31.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %378 = ptrtoint ptr %funcs31.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %funcs31.i, align 4
  %tobool32.not.i = icmp eq ptr %379, null
  br i1 %tobool32.not.i, label %land.lhs.true28.i.cond.false48.i_crit_edge, label %land.lhs.true33.i

land.lhs.true28.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

land.lhs.true33.i:                                ; preds = %land.lhs.true28.i
  %sriov_wreg.i80 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %379, i32 0, i32 12
  %380 = ptrtoint ptr %sriov_wreg.i80 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %sriov_wreg.i80, align 4
  %tobool37.not.i = icmp eq ptr %381, null
  br i1 %tobool37.not.i, label %land.lhs.true33.i.cond.false48.i_crit_edge, label %cond.true38.i

land.lhs.true33.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

cond.true38.i:                                    ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %382 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %arrayidx44.i, align 8
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %383, align 4
  %add47.i = add i32 %385, 5664
  tail call void %381(ptr noundef %adev, i32 noundef %add47.i, i32 noundef %and20.i, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_0_enable_system_domain.exit

cond.false48.i:                                   ; preds = %land.lhs.true33.i.cond.false48.i_crit_edge, %land.lhs.true28.i.cond.false48.i_crit_edge, %cond.end.i79.cond.false48.i_crit_edge
  %arrayidx50.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %386 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx50.i, align 8
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %387, align 4
  %add53.i = add i32 %389, 5664
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53.i, i32 noundef %and20.i, i32 noundef 0) #6
  br label %gfxhub_v2_0_enable_system_domain.exit

gfxhub_v2_0_enable_system_domain.exit:            ; preds = %cond.false48.i, %cond.true38.i
  %390 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %virt.i, align 8
  %and.i82 = and i32 %391, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i83, label %gfxhub_v2_0_enable_system_domain.exit.cond.false.i95_crit_edge, label %land.lhs.true.i86

gfxhub_v2_0_enable_system_domain.exit.cond.false.i95_crit_edge: ; preds = %gfxhub_v2_0_enable_system_domain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i95

land.lhs.true.i86:                                ; preds = %gfxhub_v2_0_enable_system_domain.exit
  %funcs.i84 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %392 = ptrtoint ptr %funcs.i84 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %funcs.i84, align 4
  %tobool1.not.i85 = icmp eq ptr %393, null
  br i1 %tobool1.not.i85, label %land.lhs.true.i86.cond.false.i95_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i86.cond.false.i95_crit_edge:       ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i95

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i86
  %sriov_wreg.i87 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %393, i32 0, i32 12
  %394 = ptrtoint ptr %sriov_wreg.i87 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %sriov_wreg.i87, align 4
  %tobool6.not.i88 = icmp eq ptr %395, null
  br i1 %tobool6.not.i88, label %land.lhs.true2.i89.cond.false.i95_crit_edge, label %cond.true.i92

land.lhs.true2.i89.cond.false.i95_crit_edge:      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i95

cond.true.i92:                                    ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i90 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %396 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %arrayidx.i90, align 8
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %397, align 4
  %add.i91 = add i32 %399, 5618
  tail call void %395(ptr noundef %adev, i32 noundef %add.i91, i32 noundef -1, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i97

cond.false.i95:                                   ; preds = %land.lhs.true2.i89.cond.false.i95_crit_edge, %land.lhs.true.i86.cond.false.i95_crit_edge, %gfxhub_v2_0_enable_system_domain.exit.cond.false.i95_crit_edge
  %arrayidx14.i93 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %400 = ptrtoint ptr %arrayidx14.i93 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %arrayidx14.i93, align 8
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %401, align 4
  %add17.i94 = add i32 %403, 5618
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i94, i32 noundef -1, i32 noundef 0) #6
  br label %cond.end.i97

cond.end.i97:                                     ; preds = %cond.false.i95, %cond.true.i92
  %404 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %virt.i, align 8
  %and20.i96 = and i32 %405, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i96)
  %tobool21.not.i = icmp eq i32 %and20.i96, 0
  br i1 %tobool21.not.i, label %cond.end.i97.cond.false43.i_crit_edge, label %land.lhs.true22.i

cond.end.i97.cond.false43.i_crit_edge:            ; preds = %cond.end.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i

land.lhs.true22.i:                                ; preds = %cond.end.i97
  %funcs25.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %406 = ptrtoint ptr %funcs25.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %funcs25.i, align 4
  %tobool26.not.i = icmp eq ptr %407, null
  br i1 %tobool26.not.i, label %land.lhs.true22.i.cond.false43.i_crit_edge, label %land.lhs.true27.i

land.lhs.true22.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %sriov_wreg31.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %407, i32 0, i32 12
  %408 = ptrtoint ptr %sriov_wreg31.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %sriov_wreg31.i, align 4
  %tobool32.not.i98 = icmp eq ptr %409, null
  br i1 %tobool32.not.i98, label %land.lhs.true27.i.cond.false43.i_crit_edge, label %cond.true33.i

land.lhs.true27.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i

cond.true33.i:                                    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx39.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %410 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %arrayidx39.i, align 8
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %411, align 4
  %add42.i = add i32 %413, 5619
  tail call void %409(ptr noundef %adev, i32 noundef %add42.i, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end49.i

cond.false43.i:                                   ; preds = %land.lhs.true27.i.cond.false43.i_crit_edge, %land.lhs.true22.i.cond.false43.i_crit_edge, %cond.end.i97.cond.false43.i_crit_edge
  %arrayidx45.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %414 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %arrayidx45.i, align 8
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %415, align 4
  %add48.i = add i32 %417, 5619
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48.i, i32 noundef 15, i32 noundef 0) #6
  br label %cond.end49.i

cond.end49.i:                                     ; preds = %cond.false43.i, %cond.true33.i
  %418 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %virt.i, align 8
  %and52.i = and i32 %419, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cond.end49.i.cond.false75.i_crit_edge, label %land.lhs.true54.i

cond.end49.i.cond.false75.i_crit_edge:            ; preds = %cond.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true54.i:                                ; preds = %cond.end49.i
  %funcs57.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %420 = ptrtoint ptr %funcs57.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %funcs57.i, align 4
  %tobool58.not.i = icmp eq ptr %421, null
  br i1 %tobool58.not.i, label %land.lhs.true54.i.cond.false75.i_crit_edge, label %land.lhs.true59.i

land.lhs.true54.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true59.i:                                ; preds = %land.lhs.true54.i
  %sriov_wreg63.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %421, i32 0, i32 12
  %422 = ptrtoint ptr %sriov_wreg63.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %sriov_wreg63.i, align 4
  %tobool64.not.i = icmp eq ptr %423, null
  br i1 %tobool64.not.i, label %land.lhs.true59.i.cond.false75.i_crit_edge, label %cond.true65.i

land.lhs.true59.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

cond.true65.i:                                    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx71.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %424 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %arrayidx71.i, align 8
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %425, align 4
  %add74.i = add i32 %427, 5620
  tail call void %423(ptr noundef %adev, i32 noundef %add74.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end81.i

cond.false75.i:                                   ; preds = %land.lhs.true59.i.cond.false75.i_crit_edge, %land.lhs.true54.i.cond.false75.i_crit_edge, %cond.end49.i.cond.false75.i_crit_edge
  %arrayidx77.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %428 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx77.i, align 8
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 4
  %add80.i = add i32 %431, 5620
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add80.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end81.i

cond.end81.i:                                     ; preds = %cond.false75.i, %cond.true65.i
  %432 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %virt.i, align 8
  %and84.i = and i32 %433, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %cond.end81.i.cond.false107.i_crit_edge, label %land.lhs.true86.i

cond.end81.i.cond.false107.i_crit_edge:           ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false107.i

land.lhs.true86.i:                                ; preds = %cond.end81.i
  %funcs89.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %434 = ptrtoint ptr %funcs89.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %funcs89.i, align 4
  %tobool90.not.i = icmp eq ptr %435, null
  br i1 %tobool90.not.i, label %land.lhs.true86.i.cond.false107.i_crit_edge, label %land.lhs.true91.i

land.lhs.true86.i.cond.false107.i_crit_edge:      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false107.i

land.lhs.true91.i:                                ; preds = %land.lhs.true86.i
  %sriov_wreg95.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %435, i32 0, i32 12
  %436 = ptrtoint ptr %sriov_wreg95.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %sriov_wreg95.i, align 4
  %tobool96.not.i = icmp eq ptr %437, null
  br i1 %tobool96.not.i, label %land.lhs.true91.i.cond.false107.i_crit_edge, label %cond.true97.i

land.lhs.true91.i.cond.false107.i_crit_edge:      ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false107.i

cond.true97.i:                                    ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx103.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %438 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx103.i, align 8
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %439, align 4
  %add106.i = add i32 %441, 5621
  tail call void %437(ptr noundef %adev, i32 noundef %add106.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end113.i

cond.false107.i:                                  ; preds = %land.lhs.true91.i.cond.false107.i_crit_edge, %land.lhs.true86.i.cond.false107.i_crit_edge, %cond.end81.i.cond.false107.i_crit_edge
  %arrayidx109.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %442 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %arrayidx109.i, align 8
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %443, align 4
  %add112.i = add i32 %445, 5621
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add112.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end113.i

cond.end113.i:                                    ; preds = %cond.false107.i, %cond.true97.i
  %446 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %virt.i, align 8
  %and116.i = and i32 %447, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %cond.end113.i.cond.false139.i_crit_edge, label %land.lhs.true118.i

cond.end113.i.cond.false139.i_crit_edge:          ; preds = %cond.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false139.i

land.lhs.true118.i:                               ; preds = %cond.end113.i
  %funcs121.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %448 = ptrtoint ptr %funcs121.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %funcs121.i, align 4
  %tobool122.not.i = icmp eq ptr %449, null
  br i1 %tobool122.not.i, label %land.lhs.true118.i.cond.false139.i_crit_edge, label %land.lhs.true123.i

land.lhs.true118.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false139.i

land.lhs.true123.i:                               ; preds = %land.lhs.true118.i
  %sriov_wreg127.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %449, i32 0, i32 12
  %450 = ptrtoint ptr %sriov_wreg127.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %sriov_wreg127.i, align 4
  %tobool128.not.i = icmp eq ptr %451, null
  br i1 %tobool128.not.i, label %land.lhs.true123.i.cond.false139.i_crit_edge, label %cond.true129.i

land.lhs.true123.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false139.i

cond.true129.i:                                   ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx135.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %452 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %arrayidx135.i, align 8
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %453, align 4
  %add138.i = add i32 %455, 5622
  tail call void %451(ptr noundef %adev, i32 noundef %add138.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end145.i

cond.false139.i:                                  ; preds = %land.lhs.true123.i.cond.false139.i_crit_edge, %land.lhs.true118.i.cond.false139.i_crit_edge, %cond.end113.i.cond.false139.i_crit_edge
  %arrayidx141.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %456 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %arrayidx141.i, align 8
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %457, align 4
  %add144.i = add i32 %459, 5622
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add144.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end145.i

cond.end145.i:                                    ; preds = %cond.false139.i, %cond.true129.i
  %460 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %virt.i, align 8
  %and148.i = and i32 %461, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %cond.end145.i.cond.false171.i_crit_edge, label %land.lhs.true150.i

cond.end145.i.cond.false171.i_crit_edge:          ; preds = %cond.end145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false171.i

land.lhs.true150.i:                               ; preds = %cond.end145.i
  %funcs153.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %462 = ptrtoint ptr %funcs153.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %funcs153.i, align 4
  %tobool154.not.i = icmp eq ptr %463, null
  br i1 %tobool154.not.i, label %land.lhs.true150.i.cond.false171.i_crit_edge, label %land.lhs.true155.i

land.lhs.true150.i.cond.false171.i_crit_edge:     ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false171.i

land.lhs.true155.i:                               ; preds = %land.lhs.true150.i
  %sriov_wreg159.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %463, i32 0, i32 12
  %464 = ptrtoint ptr %sriov_wreg159.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %sriov_wreg159.i, align 4
  %tobool160.not.i = icmp eq ptr %465, null
  br i1 %tobool160.not.i, label %land.lhs.true155.i.cond.false171.i_crit_edge, label %cond.true161.i

land.lhs.true155.i.cond.false171.i_crit_edge:     ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false171.i

cond.true161.i:                                   ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx167.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %466 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %arrayidx167.i, align 8
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %467, align 4
  %add170.i = add i32 %469, 5623
  tail call void %465(ptr noundef %adev, i32 noundef %add170.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_0_disable_identity_aperture.exit

cond.false171.i:                                  ; preds = %land.lhs.true155.i.cond.false171.i_crit_edge, %land.lhs.true150.i.cond.false171.i_crit_edge, %cond.end145.i.cond.false171.i_crit_edge
  %arrayidx173.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %470 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %arrayidx173.i, align 8
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %471, align 4
  %add176.i = add i32 %473, 5623
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add176.i, i32 noundef 0, i32 noundef 0) #6
  br label %gfxhub_v2_0_disable_identity_aperture.exit

gfxhub_v2_0_disable_identity_aperture.exit:       ; preds = %cond.false171.i, %cond.true161.i
  %funcs.i100 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %num_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %noretry.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  %ctx_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 8
  %ctx_addr_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %gfxhub_v2_0_disable_identity_aperture.exit
  %i.0355.i = phi i32 [ 0, %gfxhub_v2_0_disable_identity_aperture.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %474 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %virt.i, align 8
  %and.i101 = and i32 %475, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i102 = icmp eq i32 %and.i101, 0
  br i1 %tobool.not.i102, label %for.body.i.cond.false.i111_crit_edge, label %land.lhs.true.i104

for.body.i.cond.false.i111_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i111

land.lhs.true.i104:                               ; preds = %for.body.i
  %476 = ptrtoint ptr %funcs.i100 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %funcs.i100, align 4
  %tobool1.not.i103 = icmp eq ptr %477, null
  br i1 %tobool1.not.i103, label %land.lhs.true.i104.cond.false.i111_crit_edge, label %land.lhs.true2.i107

land.lhs.true.i104.cond.false.i111_crit_edge:     ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i111

land.lhs.true2.i107:                              ; preds = %land.lhs.true.i104
  %sriov_rreg.i105 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %477, i32 0, i32 13
  %478 = ptrtoint ptr %sriov_rreg.i105 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %sriov_rreg.i105, align 4
  %tobool6.not.i106 = icmp eq ptr %479, null
  br i1 %tobool6.not.i106, label %land.lhs.true2.i107.cond.false.i111_crit_edge, label %cond.true.i110

land.lhs.true2.i107.cond.false.i111_crit_edge:    ; preds = %land.lhs.true2.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i111

cond.true.i110:                                   ; preds = %land.lhs.true2.i107
  call void @__sanitizer_cov_trace_pc() #8
  %480 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %arrayidx11.i, align 8
  %482 = ptrtoint ptr %481 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %481, align 4
  %add.i108 = add nuw nsw i32 %i.0355.i, 5665
  %add14.i = add i32 %add.i108, %483
  %call.i109 = tail call i32 %479(ptr noundef %adev, i32 noundef %add14.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i117

cond.false.i111:                                  ; preds = %land.lhs.true2.i107.cond.false.i111_crit_edge, %land.lhs.true.i104.cond.false.i111_crit_edge, %for.body.i.cond.false.i111_crit_edge
  %484 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %arrayidx11.i, align 8
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %485, align 4
  %add19.i = add nuw nsw i32 %i.0355.i, 5665
  %add20.i = add i32 %add19.i, %487
  %call21.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i, i32 noundef 0) #6
  br label %cond.end.i117

cond.end.i117:                                    ; preds = %cond.false.i111, %cond.true.i110
  %cond.i112 = phi i32 [ %call.i109, %cond.true.i110 ], [ %call21.i, %cond.false.i111 ]
  %or.i113 = and i32 %cond.i112, -5592320
  %488 = ptrtoint ptr %num_level.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %num_level.i, align 8
  %shl.i = shl i32 %489, 1
  %and24.i114 = and i32 %shl.i, 6
  %490 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %block_size.i, align 4
  %sub.i = shl i32 %491, 3
  %shl42.i = add i32 %sub.i, 56
  %and43.i = and i32 %shl42.i, 120
  %492 = ptrtoint ptr %noretry.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %noretry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %493)
  %tobool46.not.i = icmp eq i32 %493, 0
  %shl47.i = select i1 %tobool46.not.i, i32 128, i32 0
  %and23.i = or i32 %or.i113, %and24.i114
  %or39.i = or i32 %and23.i, %and43.i
  %or44.i = or i32 %or39.i, %shl47.i
  %or49.i = or i32 %or44.i, 5592065
  %494 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %virt.i, align 8
  %and52.i115 = and i32 %495, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i115)
  %tobool53.not.i116 = icmp eq i32 %and52.i115, 0
  br i1 %tobool53.not.i116, label %cond.end.i117.cond.false75.i124_crit_edge, label %land.lhs.true54.i119

cond.end.i117.cond.false75.i124_crit_edge:        ; preds = %cond.end.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i124

land.lhs.true54.i119:                             ; preds = %cond.end.i117
  %496 = ptrtoint ptr %funcs.i100 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %funcs.i100, align 4
  %tobool58.not.i118 = icmp eq ptr %497, null
  br i1 %tobool58.not.i118, label %land.lhs.true54.i119.cond.false75.i124_crit_edge, label %land.lhs.true59.i121

land.lhs.true54.i119.cond.false75.i124_crit_edge: ; preds = %land.lhs.true54.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i124

land.lhs.true59.i121:                             ; preds = %land.lhs.true54.i119
  %sriov_wreg.i120 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %497, i32 0, i32 12
  %498 = ptrtoint ptr %sriov_wreg.i120 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %sriov_wreg.i120, align 4
  %tobool63.not.i = icmp eq ptr %499, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i121.cond.false75.i124_crit_edge, label %cond.true64.i

land.lhs.true59.i121.cond.false75.i124_crit_edge: ; preds = %land.lhs.true59.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i124

cond.true64.i:                                    ; preds = %land.lhs.true59.i121
  call void @__sanitizer_cov_trace_pc() #8
  %500 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %arrayidx11.i, align 8
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %501, align 4
  %add73.i = add i32 %503, 5665
  %504 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %ctx_distance.i, align 4
  %mul.i = mul i32 %505, %i.0355.i
  %add74.i122 = add i32 %add73.i, %mul.i
  tail call void %499(ptr noundef %adev, i32 noundef %add74.i122, i32 noundef %or49.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end84.i

cond.false75.i124:                                ; preds = %land.lhs.true59.i121.cond.false75.i124_crit_edge, %land.lhs.true54.i119.cond.false75.i124_crit_edge, %cond.end.i117.cond.false75.i124_crit_edge
  %506 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %arrayidx11.i, align 8
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %507, align 4
  %add80.i123 = add i32 %509, 5665
  %510 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %ctx_distance.i, align 4
  %mul82.i = mul i32 %511, %i.0355.i
  %add83.i = add i32 %add80.i123, %mul82.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add83.i, i32 noundef %or49.i, i32 noundef 0) #6
  br label %cond.end84.i

cond.end84.i:                                     ; preds = %cond.false75.i124, %cond.true64.i
  %512 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %virt.i, align 8
  %and87.i = and i32 %513, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %cond.end84.i.cond.false112.i_crit_edge, label %land.lhs.true89.i

cond.end84.i.cond.false112.i_crit_edge:           ; preds = %cond.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

land.lhs.true89.i:                                ; preds = %cond.end84.i
  %514 = ptrtoint ptr %funcs.i100 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %funcs.i100, align 4
  %tobool93.not.i = icmp eq ptr %515, null
  br i1 %tobool93.not.i, label %land.lhs.true89.i.cond.false112.i_crit_edge, label %land.lhs.true94.i

land.lhs.true89.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

land.lhs.true94.i:                                ; preds = %land.lhs.true89.i
  %sriov_wreg98.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %515, i32 0, i32 12
  %516 = ptrtoint ptr %sriov_wreg98.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %sriov_wreg98.i, align 4
  %tobool99.not.i = icmp eq ptr %517, null
  br i1 %tobool99.not.i, label %land.lhs.true94.i.cond.false112.i_crit_edge, label %cond.true100.i

land.lhs.true94.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

cond.true100.i:                                   ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #8
  %518 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %arrayidx11.i, align 8
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %519, align 4
  %add109.i = add i32 %521, 5805
  %522 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul110.i = mul i32 %523, %i.0355.i
  %add111.i = add i32 %add109.i, %mul110.i
  tail call void %517(ptr noundef %adev, i32 noundef %add111.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end121.i

cond.false112.i:                                  ; preds = %land.lhs.true94.i.cond.false112.i_crit_edge, %land.lhs.true89.i.cond.false112.i_crit_edge, %cond.end84.i.cond.false112.i_crit_edge
  %524 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %arrayidx11.i, align 8
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %525, align 4
  %add117.i = add i32 %527, 5805
  %528 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul119.i = mul i32 %529, %i.0355.i
  %add120.i = add i32 %add117.i, %mul119.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add120.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end121.i

cond.end121.i:                                    ; preds = %cond.false112.i, %cond.true100.i
  %530 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %virt.i, align 8
  %and124.i = and i32 %531, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  br i1 %tobool125.not.i, label %cond.end121.i.cond.false150.i_crit_edge, label %land.lhs.true126.i

cond.end121.i.cond.false150.i_crit_edge:          ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

land.lhs.true126.i:                               ; preds = %cond.end121.i
  %532 = ptrtoint ptr %funcs.i100 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %funcs.i100, align 4
  %tobool130.not.i = icmp eq ptr %533, null
  br i1 %tobool130.not.i, label %land.lhs.true126.i.cond.false150.i_crit_edge, label %land.lhs.true131.i

land.lhs.true126.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

land.lhs.true131.i:                               ; preds = %land.lhs.true126.i
  %sriov_wreg135.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %533, i32 0, i32 12
  %534 = ptrtoint ptr %sriov_wreg135.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %sriov_wreg135.i, align 4
  %tobool136.not.i = icmp eq ptr %535, null
  br i1 %tobool136.not.i, label %land.lhs.true131.i.cond.false150.i_crit_edge, label %cond.true137.i

land.lhs.true131.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

cond.true137.i:                                   ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  %536 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %arrayidx11.i, align 8
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %537, align 4
  %add146.i = add i32 %539, 5806
  %540 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul148.i = mul i32 %541, %i.0355.i
  %add149.i = add i32 %add146.i, %mul148.i
  tail call void %535(ptr noundef %adev, i32 noundef %add149.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end159.i

cond.false150.i:                                  ; preds = %land.lhs.true131.i.cond.false150.i_crit_edge, %land.lhs.true126.i.cond.false150.i_crit_edge, %cond.end121.i.cond.false150.i_crit_edge
  %542 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %arrayidx11.i, align 8
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %543, align 4
  %add155.i = add i32 %545, 5806
  %546 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul157.i = mul i32 %547, %i.0355.i
  %add158.i = add i32 %add155.i, %mul157.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add158.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end159.i

cond.end159.i:                                    ; preds = %cond.false150.i, %cond.true137.i
  %548 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %virt.i, align 8
  %and162.i = and i32 %549, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %tobool163.not.i125 = icmp eq i32 %and162.i, 0
  br i1 %tobool163.not.i125, label %cond.end159.i.cond.false191.i_crit_edge, label %land.lhs.true164.i

cond.end159.i.cond.false191.i_crit_edge:          ; preds = %cond.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

land.lhs.true164.i:                               ; preds = %cond.end159.i
  %550 = ptrtoint ptr %funcs.i100 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %funcs.i100, align 4
  %tobool168.not.i = icmp eq ptr %551, null
  br i1 %tobool168.not.i, label %land.lhs.true164.i.cond.false191.i_crit_edge, label %land.lhs.true169.i

land.lhs.true164.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

land.lhs.true169.i:                               ; preds = %land.lhs.true164.i
  %sriov_wreg173.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %551, i32 0, i32 12
  %552 = ptrtoint ptr %sriov_wreg173.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %sriov_wreg173.i, align 4
  %tobool174.not.i = icmp eq ptr %553, null
  br i1 %tobool174.not.i, label %land.lhs.true169.i.cond.false191.i_crit_edge, label %cond.true175.i

land.lhs.true169.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

cond.true175.i:                                   ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  %554 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx11.i, align 8
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %555, align 4
  %add184.i = add i32 %557, 5837
  %558 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul186.i = mul i32 %559, %i.0355.i
  %add187.i = add i32 %add184.i, %mul186.i
  %560 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %560)
  %561 = load i64, ptr %max_pfn.i, align 8
  %562 = trunc i64 %561 to i32
  %conv.i126 = add i32 %562, -1
  tail call void %553(ptr noundef %adev, i32 noundef %add187.i, i32 noundef %conv.i126, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end205.i

cond.false191.i:                                  ; preds = %land.lhs.true169.i.cond.false191.i_crit_edge, %land.lhs.true164.i.cond.false191.i_crit_edge, %cond.end159.i.cond.false191.i_crit_edge
  %563 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %arrayidx11.i, align 8
  %565 = ptrtoint ptr %564 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %564, align 4
  %add196.i = add i32 %566, 5837
  %567 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul198.i = mul i32 %568, %i.0355.i
  %add199.i = add i32 %add196.i, %mul198.i
  %569 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %569)
  %570 = load i64, ptr %max_pfn.i, align 8
  %571 = trunc i64 %570 to i32
  %conv204.i = add i32 %571, -1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add199.i, i32 noundef %conv204.i, i32 noundef 0) #6
  br label %cond.end205.i

cond.end205.i:                                    ; preds = %cond.false191.i, %cond.true175.i
  %572 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %virt.i, align 8
  %and208.i = and i32 %573, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i)
  %tobool209.not.i = icmp eq i32 %and208.i, 0
  br i1 %tobool209.not.i, label %cond.end205.i.cond.false239.i131_crit_edge, label %land.lhs.true210.i

cond.end205.i.cond.false239.i131_crit_edge:       ; preds = %cond.end205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i131

land.lhs.true210.i:                               ; preds = %cond.end205.i
  %574 = ptrtoint ptr %funcs.i100 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %funcs.i100, align 4
  %tobool214.not.i = icmp eq ptr %575, null
  br i1 %tobool214.not.i, label %land.lhs.true210.i.cond.false239.i131_crit_edge, label %land.lhs.true215.i

land.lhs.true210.i.cond.false239.i131_crit_edge:  ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i131

land.lhs.true215.i:                               ; preds = %land.lhs.true210.i
  %sriov_wreg219.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %575, i32 0, i32 12
  %576 = ptrtoint ptr %sriov_wreg219.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %sriov_wreg219.i, align 4
  %tobool220.not.i127 = icmp eq ptr %577, null
  br i1 %tobool220.not.i127, label %land.lhs.true215.i.cond.false239.i131_crit_edge, label %cond.true221.i

land.lhs.true215.i.cond.false239.i131_crit_edge:  ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i131

cond.true221.i:                                   ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #8
  %578 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %arrayidx11.i, align 8
  %580 = ptrtoint ptr %579 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %579, align 4
  %add230.i = add i32 %581, 5838
  %582 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul232.i = mul i32 %583, %i.0355.i
  %add233.i = add i32 %add230.i, %mul232.i
  %584 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %584)
  %585 = load i64, ptr %max_pfn.i, align 8
  %sub236.i = add i64 %585, -1
  %shr.i128 = lshr i64 %sub236.i, 32
  %conv238.i129 = trunc i64 %shr.i128 to i32
  tail call void %577(ptr noundef %adev, i32 noundef %add233.i, i32 noundef %conv238.i129, i32 noundef 0, i32 noundef 1) #6
  br label %for.inc.i

cond.false239.i131:                               ; preds = %land.lhs.true215.i.cond.false239.i131_crit_edge, %land.lhs.true210.i.cond.false239.i131_crit_edge, %cond.end205.i.cond.false239.i131_crit_edge
  %586 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %arrayidx11.i, align 8
  %588 = ptrtoint ptr %587 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %587, align 4
  %add244.i130 = add i32 %589, 5838
  %590 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul246.i = mul i32 %591, %i.0355.i
  %add247.i = add i32 %add244.i130, %mul246.i
  %592 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %592)
  %593 = load i64, ptr %max_pfn.i, align 8
  %sub250.i = add i64 %593, -1
  %shr251.i = lshr i64 %sub250.i, 32
  %conv253.i = trunc i64 %shr251.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add247.i, i32 noundef %conv253.i, i32 noundef 0) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false239.i131, %cond.true221.i
  %inc.i = add nuw nsw i32 %i.0355.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %gfxhub_v2_0_setup_vmid_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

gfxhub_v2_0_setup_vmid_config.exit:               ; preds = %for.inc.i
  %eng_addr_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 11
  br label %for.body.i137

for.body.i137:                                    ; preds = %for.inc.i162.for.body.i137_crit_edge, %gfxhub_v2_0_setup_vmid_config.exit
  %i.088.i = phi i32 [ 0, %gfxhub_v2_0_setup_vmid_config.exit ], [ %inc.i160, %for.inc.i162.for.body.i137_crit_edge ]
  %594 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %virt.i, align 8
  %and.i135 = and i32 %595, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool.not.i136 = icmp eq i32 %and.i135, 0
  br i1 %tobool.not.i136, label %for.body.i137.cond.false.i148_crit_edge, label %land.lhs.true.i139

for.body.i137.cond.false.i148_crit_edge:          ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i148

land.lhs.true.i139:                               ; preds = %for.body.i137
  %596 = ptrtoint ptr %funcs.i100 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %funcs.i100, align 4
  %tobool1.not.i138 = icmp eq ptr %597, null
  br i1 %tobool1.not.i138, label %land.lhs.true.i139.cond.false.i148_crit_edge, label %land.lhs.true2.i142

land.lhs.true.i139.cond.false.i148_crit_edge:     ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i148

land.lhs.true2.i142:                              ; preds = %land.lhs.true.i139
  %sriov_wreg.i140 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %597, i32 0, i32 12
  %598 = ptrtoint ptr %sriov_wreg.i140 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %sriov_wreg.i140, align 4
  %tobool6.not.i141 = icmp eq ptr %599, null
  br i1 %tobool6.not.i141, label %land.lhs.true2.i142.cond.false.i148_crit_edge, label %cond.true.i146

land.lhs.true2.i142.cond.false.i148_crit_edge:    ; preds = %land.lhs.true2.i142
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i148

cond.true.i146:                                   ; preds = %land.lhs.true2.i142
  call void @__sanitizer_cov_trace_pc() #8
  %600 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %arrayidx11.i, align 8
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %601, align 4
  %add.i143 = add i32 %603, 5735
  %604 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %eng_addr_distance.i, align 4
  %mul.i144 = mul i32 %605, %i.088.i
  %add14.i145 = add i32 %add.i143, %mul.i144
  tail call void %599(ptr noundef %adev, i32 noundef %add14.i145, i32 noundef -1, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i150

cond.false.i148:                                  ; preds = %land.lhs.true2.i142.cond.false.i148_crit_edge, %land.lhs.true.i139.cond.false.i148_crit_edge, %for.body.i137.cond.false.i148_crit_edge
  %606 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %arrayidx11.i, align 8
  %608 = ptrtoint ptr %607 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %607, align 4
  %add19.i147 = add i32 %609, 5735
  %610 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %eng_addr_distance.i, align 4
  %mul21.i = mul i32 %611, %i.088.i
  %add22.i = add i32 %add19.i147, %mul21.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22.i, i32 noundef -1, i32 noundef 0) #6
  br label %cond.end.i150

cond.end.i150:                                    ; preds = %cond.false.i148, %cond.true.i146
  %612 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %virt.i, align 8
  %and25.i = and i32 %613, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i149 = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i149, label %cond.end.i150.cond.false51.i159_crit_edge, label %land.lhs.true27.i152

cond.end.i150.cond.false51.i159_crit_edge:        ; preds = %cond.end.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i159

land.lhs.true27.i152:                             ; preds = %cond.end.i150
  %614 = ptrtoint ptr %funcs.i100 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %funcs.i100, align 4
  %tobool31.not.i151 = icmp eq ptr %615, null
  br i1 %tobool31.not.i151, label %land.lhs.true27.i152.cond.false51.i159_crit_edge, label %land.lhs.true32.i154

land.lhs.true27.i152.cond.false51.i159_crit_edge: ; preds = %land.lhs.true27.i152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i159

land.lhs.true32.i154:                             ; preds = %land.lhs.true27.i152
  %sriov_wreg36.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %615, i32 0, i32 12
  %616 = ptrtoint ptr %sriov_wreg36.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %sriov_wreg36.i, align 4
  %tobool37.not.i153 = icmp eq ptr %617, null
  br i1 %tobool37.not.i153, label %land.lhs.true32.i154.cond.false51.i159_crit_edge, label %cond.true38.i156

land.lhs.true32.i154.cond.false51.i159_crit_edge: ; preds = %land.lhs.true32.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i159

cond.true38.i156:                                 ; preds = %land.lhs.true32.i154
  call void @__sanitizer_cov_trace_pc() #8
  %618 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %arrayidx11.i, align 8
  %620 = ptrtoint ptr %619 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %619, align 4
  %add47.i155 = add i32 %621, 5736
  %622 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %eng_addr_distance.i, align 4
  %mul49.i = mul i32 %623, %i.088.i
  %add50.i = add i32 %add47.i155, %mul49.i
  tail call void %617(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 31, i32 noundef 0, i32 noundef 1) #6
  br label %for.inc.i162

cond.false51.i159:                                ; preds = %land.lhs.true32.i154.cond.false51.i159_crit_edge, %land.lhs.true27.i152.cond.false51.i159_crit_edge, %cond.end.i150.cond.false51.i159_crit_edge
  %624 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %arrayidx11.i, align 8
  %626 = ptrtoint ptr %625 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %625, align 4
  %add56.i157 = add i32 %627, 5736
  %628 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %eng_addr_distance.i, align 4
  %mul58.i = mul i32 %629, %i.088.i
  %add59.i158 = add i32 %add56.i157, %mul58.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i158, i32 noundef 31, i32 noundef 0) #6
  br label %for.inc.i162

for.inc.i162:                                     ; preds = %cond.false51.i159, %cond.true38.i156
  %inc.i160 = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i161 = icmp eq i32 %inc.i160, 18
  br i1 %exitcond.not.i161, label %gfxhub_v2_0_program_invalidation.exit, label %for.inc.i162.for.body.i137_crit_edge

for.inc.i162.for.body.i137_crit_edge:             ; preds = %for.inc.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i137

gfxhub_v2_0_program_invalidation.exit:            ; preds = %for.inc.i162
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v2_0_gart_disable(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %ctx_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0308 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cond.false_crit_edge, label %land.lhs.true

for.body.cond.false_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 5664
  %10 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_distance, align 4
  %mul = mul i32 %11, %i.0308
  %add14 = add i32 %add, %mul
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %for.inc

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19 = add i32 %15, 5664
  %16 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_distance, align 4
  %mul21 = mul i32 %17, %i.0308
  %add22 = add i32 %add19, %mul21
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true
  %inc = add nuw nsw i32 %i.0308, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and25 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.end.cond.false47_crit_edge, label %land.lhs.true27

for.end.cond.false47_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true27:                                  ; preds = %for.end
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false47_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false47_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_rreg, align 4
  %tobool36.not = icmp eq ptr %23, null
  br i1 %tobool36.not, label %land.lhs.true32.cond.false47_crit_edge, label %cond.true37

land.lhs.true32.cond.false47_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47

cond.true37:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx11, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add46 = add i32 %27, 5927
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add46, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true32.cond.false47_crit_edge, %land.lhs.true27.cond.false47_crit_edge, %for.end.cond.false47_crit_edge
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add52 = add i32 %31, 5927
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add52, i32 noundef 0) #6
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false47, %cond.true37
  %cond = phi i32 [ %call, %cond.true37 ], [ %call53, %cond.false47 ]
  %and56 = and i32 %cond, -66
  %32 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %virt, align 8
  %and60 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %cond.end54.cond.false83_crit_edge, label %land.lhs.true62

cond.end54.cond.false83_crit_edge:                ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false83

land.lhs.true62:                                  ; preds = %cond.end54
  %34 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs, align 4
  %tobool66.not = icmp eq ptr %35, null
  br i1 %tobool66.not, label %land.lhs.true62.cond.false83_crit_edge, label %land.lhs.true67

land.lhs.true62.cond.false83_crit_edge:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false83

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %sriov_wreg71 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %sriov_wreg71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sriov_wreg71, align 4
  %tobool72.not = icmp eq ptr %37, null
  br i1 %tobool72.not, label %land.lhs.true67.cond.false83_crit_edge, label %cond.true73

land.lhs.true67.cond.false83_crit_edge:           ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false83

cond.true73:                                      ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx11, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add82 = add i32 %41, 5927
  tail call void %37(ptr noundef %adev, i32 noundef %add82, i32 noundef %and56, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end89

cond.false83:                                     ; preds = %land.lhs.true67.cond.false83_crit_edge, %land.lhs.true62.cond.false83_crit_edge, %cond.end54.cond.false83_crit_edge
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx11, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add88 = add i32 %45, 5927
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add88, i32 noundef %and56, i32 noundef 0) #6
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false83, %cond.true73
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and92 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %cond.end195, label %cond.end89.if.end_crit_edge

cond.end89.if.end_crit_edge:                      ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cond.end195:                                      ; preds = %cond.end89
  %48 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx11, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add161 = add i32 %51, 5600
  %call194 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add161, i32 noundef 0) #6
  %and197 = and i32 %call194, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add161, i32 noundef %and197, i32 noundef 0) #6
  %52 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %virt, align 8
  %and202 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %cond.end195.cond.false225_crit_edge, label %land.lhs.true204

cond.end195.cond.false225_crit_edge:              ; preds = %cond.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false225

land.lhs.true204:                                 ; preds = %cond.end195
  %54 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %funcs, align 4
  %tobool208.not = icmp eq ptr %55, null
  br i1 %tobool208.not, label %land.lhs.true204.cond.false225_crit_edge, label %land.lhs.true209

land.lhs.true204.cond.false225_crit_edge:         ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false225

land.lhs.true209:                                 ; preds = %land.lhs.true204
  %sriov_wreg213 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %sriov_wreg213 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sriov_wreg213, align 4
  %tobool214.not = icmp eq ptr %57, null
  br i1 %tobool214.not, label %land.lhs.true209.cond.false225_crit_edge, label %cond.true215

land.lhs.true209.cond.false225_crit_edge:         ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false225

cond.true215:                                     ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx11, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add224 = add i32 %61, 5602
  tail call void %57(ptr noundef %adev, i32 noundef %add224, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %if.end

cond.false225:                                    ; preds = %land.lhs.true209.cond.false225_crit_edge, %land.lhs.true204.cond.false225_crit_edge, %cond.end195.cond.false225_crit_edge
  %62 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx11, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add230 = add i32 %65, 5602
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add230, i32 noundef 0, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %cond.false225, %cond.true215, %cond.end89.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v2_0_set_fault_enable_default(ptr noundef %adev, i1 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 5608
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, 5608
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = and i32 %cond, -8189
  %and76 = select i1 %value, i32 8188, i32 0
  %or81 = or i32 %and76, %and19
  %or86 = or i32 %or81, -1073741824
  %spec.select = select i1 %value, i32 %or81, i32 %or86
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and89 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %cond.end.cond.false111_crit_edge, label %land.lhs.true91

cond.end.cond.false111_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111

land.lhs.true91:                                  ; preds = %cond.end
  %funcs94 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs94 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs94, align 4
  %tobool95.not = icmp eq ptr %17, null
  br i1 %tobool95.not, label %land.lhs.true91.cond.false111_crit_edge, label %land.lhs.true96

land.lhs.true91.cond.false111_crit_edge:          ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111

land.lhs.true96:                                  ; preds = %land.lhs.true91
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg, align 4
  %tobool100.not = icmp eq ptr %19, null
  br i1 %tobool100.not, label %land.lhs.true96.cond.false111_crit_edge, label %cond.true101

land.lhs.true96.cond.false111_crit_edge:          ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111

cond.true101:                                     ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx107 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %20 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx107, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add110 = add i32 %23, 5608
  tail call void %19(ptr noundef %adev, i32 noundef %add110, i32 noundef %spec.select, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end117

cond.false111:                                    ; preds = %land.lhs.true96.cond.false111_crit_edge, %land.lhs.true91.cond.false111_crit_edge, %cond.end.cond.false111_crit_edge
  %arrayidx113 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx113, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add116 = add i32 %27, 5608
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add116, i32 noundef %spec.select, i32 noundef 0) #6
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false111, %cond.true101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gfxhub_v2_0_init(ptr nocapture noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vmhub = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66
  %arrayidx1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 5771
  %4 = ptrtoint ptr %vmhub to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %vmhub, align 4
  %5 = load i32, ptr %1, align 4
  %add8 = add i32 %5, 5772
  %ctx0_ptb_addr_hi32 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 1
  %6 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add8, ptr %ctx0_ptb_addr_hi32, align 4
  %7 = load i32, ptr %1, align 4
  %add13 = add i32 %7, 5681
  %vm_inv_eng0_sem = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 2
  %8 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add13, ptr %vm_inv_eng0_sem, align 4
  %9 = load i32, ptr %1, align 4
  %add18 = add i32 %9, 5699
  %vm_inv_eng0_req = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 3
  %10 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18, ptr %vm_inv_eng0_req, align 4
  %11 = load i32, ptr %1, align 4
  %add23 = add i32 %11, 5717
  %vm_inv_eng0_ack = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 4
  %12 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add23, ptr %vm_inv_eng0_ack, align 4
  %13 = load i32, ptr %1, align 4
  %add28 = add i32 %13, 5664
  %vm_context0_cntl = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 5
  %14 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add28, ptr %vm_context0_cntl, align 4
  %15 = load i32, ptr %1, align 4
  %add33 = add i32 %15, 5612
  %vm_l2_pro_fault_status = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 6
  %16 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add33, ptr %vm_l2_pro_fault_status, align 4
  %17 = load i32, ptr %1, align 4
  %add38 = add i32 %17, 5608
  %vm_l2_pro_fault_cntl = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 7
  %18 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add38, ptr %vm_l2_pro_fault_cntl, align 4
  %ctx_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 8
  %19 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ctx_distance, align 4
  %ctx_addr_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %20 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %ctx_addr_distance, align 4
  %eng_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 10
  %21 = ptrtoint ptr %eng_distance to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %eng_distance, align 4
  %eng_addr_distance = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 11
  %22 = ptrtoint ptr %eng_addr_distance to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %eng_addr_distance, align 4
  %vm_cntx_cntl_vm_fault = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 12
  %23 = ptrtoint ptr %vm_cntx_cntl_vm_fault to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2796032, ptr %vm_cntx_cntl_vm_fault, align 4
  %vmhub_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 13
  %24 = ptrtoint ptr %vmhub_funcs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gfxhub_v2_0_vmhub_funcs, ptr %vmhub_funcs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_vram_mc2pa(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v2_0_print_l2_protection_fault_status(ptr nocapture noundef readonly %adev, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %status, 9
  %shr = and i32 %and, 511
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %status) #9
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %shr)
  %cmp = icmp ugt i32 %shr, 17
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [18 x ptr], ptr @gfxhub_client_ids, i32 0, i32 %shr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.false ], [ @.str.8, %entry.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef %cond, i32 noundef %shr) #9
  %6 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev, align 8
  %and9 = and i32 %status, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef %and9) #9
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 8
  %and15 = lshr i32 %status, 1
  %shr16 = and i32 %and15, 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %shr16) #9
  %10 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev, align 8
  %and21 = lshr i32 %status, 4
  %shr22 = and i32 %and21, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %shr22) #9
  %12 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev, align 8
  %and27 = lshr i32 %status, 8
  %shr28 = and i32 %and27, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef %shr28) #9
  %14 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adev, align 8
  %and33 = lshr i32 %status, 18
  %shr34 = and i32 %and33, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %shr34) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gfxhub_v2_0_get_invalidate_req(i32 noundef %vmid, i32 noundef %flush_type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %vmid
  %and2 = and i32 %shl, 65535
  %shl4 = shl i32 %flush_type, 16
  %and5 = and i32 %shl4, 458752
  %or6 = or i32 %and2, %and5
  %or16 = or i32 %or6, 16252928
  ret i32 %or16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @gfxhub_v2_0_funcs, !1, !"gfxhub_v2_0_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 474, i32 34}
!2 = !{ptr @gfxhub_v2_0_vmhub_funcs, !3, !"gfxhub_v2_0_vmhub_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 427, i32 40}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 82, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 85, i32 2}
!14 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 88, i32 2}
!19 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 91, i32 2}
!23 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 94, i32 2}
!27 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 97, i32 2}
!31 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 100, i32 2}
!35 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gfxhub_v2_0_print_l2_protection_fault_status._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 35, i32 2}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 36, i32 2}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 37, i32 2}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 38, i32 2}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 39, i32 2}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 40, i32 2}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 41, i32 2}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 42, i32 2}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 43, i32 2}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 44, i32 2}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 45, i32 2}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 46, i32 2}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 48, i32 2}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 49, i32 2}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 50, i32 2}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 51, i32 2}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 52, i32 2}
!71 = !{ptr @gfxhub_client_ids, !72, !"gfxhub_client_ids", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_0.c", i32 34, i32 20}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
