; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_mmhub_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@mmhub_v2_0_funcs = dso_local constant { %struct.amdgpu_mmhub_funcs, [60 x i8] } { %struct.amdgpu_mmhub_funcs { ptr null, ptr @mmhub_v2_0_init, ptr @mmhub_v2_0_gart_enable, ptr @mmhub_v2_0_set_fault_enable_default, ptr @mmhub_v2_0_gart_disable, ptr @mmhub_v2_0_set_clockgating, ptr @mmhub_v2_0_get_clockgating, ptr @mmhub_v2_0_setup_vm_pt_regs, ptr null }, [60 x i8] zeroinitializer }, align 32
@mmhub_v2_0_vmhub_funcs = internal constant { %struct.amdgpu_vmhub_funcs, [24 x i8] } { %struct.amdgpu_vmhub_funcs { ptr @mmhub_v2_0_print_l2_protection_fault_status, ptr @mmhub_v2_0_get_invalidate_req }, [24 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: MMVM_L2_PROTECTION_FAULT_STATUS:0x%08X\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mmhub_v2_0_print_l2_protection_fault_status\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry_ptr = internal global ptr @mmhub_v2_0_print_l2_protection_fault_status._entry, section ".printk_index", align 4
@mmhub_client_ids_navi1x = internal constant { [19 x [2 x ptr]], [40 x i8] } { [19 x [2 x ptr]] [[2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.24, ptr @.str.24], [2 x ptr] [ptr @.str.25, ptr @.str.26], [2 x ptr] [ptr @.str.27, ptr @.str.25], [2 x ptr] [ptr @.str.28, ptr @.str.29], [2 x ptr] [ptr null, ptr @.str.27], [2 x ptr] [ptr null, ptr @.str.28], [2 x ptr] [ptr null, ptr @.str.30], [2 x ptr] [ptr null, ptr @.str.31], [2 x ptr] [ptr null, ptr @.str.32], [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.33, ptr null], [2 x ptr] [ptr @.str.34, ptr @.str.34], [2 x ptr] [ptr @.str.35, ptr @.str.35], [2 x ptr] [ptr @.str.36, ptr @.str.36], [2 x ptr] [ptr @.str.37, ptr @.str.37], [2 x ptr] [ptr @.str.38, ptr @.str.38]], [40 x i8] zeroinitializer }, align 32
@mmhub_client_ids_sienna_cichlid = internal constant { [44 x [2 x ptr]], [64 x i8] } { [44 x [2 x ptr]] [[2 x ptr] [ptr null, ptr @.str.31], [2 x ptr] [ptr null, ptr @.str.30], [2 x ptr] [ptr null, ptr @.str.29], [2 x ptr] [ptr @.str.24, ptr @.str.24], [2 x ptr] [ptr @.str.25, ptr @.str.25], [2 x ptr] [ptr @.str.27, ptr @.str.27], [2 x ptr] [ptr @.str.28, ptr @.str.28], [2 x ptr] [ptr null, ptr @.str.32], [2 x ptr] [ptr @.str.33, ptr null], [2 x ptr] [ptr @.str.39, ptr @.str.39], [2 x ptr] [ptr @.str.37, ptr @.str.37], [2 x ptr] [ptr null, ptr @.str.40], [2 x ptr] [ptr @.str.41, ptr @.str.41], [2 x ptr] [ptr @.str.42, ptr @.str.42], [2 x ptr] [ptr @.str.34, ptr @.str.34], [2 x ptr] [ptr @.str.35, ptr @.str.35], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.40, ptr null]], [64 x i8] zeroinitializer }, align 32
@mmhub_client_ids_beige_goby = internal constant { [16 x [2 x ptr]], [32 x i8] } { [16 x [2 x ptr]] [[2 x ptr] [ptr null, ptr @.str.31], [2 x ptr] [ptr null, ptr @.str.30], [2 x ptr] [ptr null, ptr @.str.29], [2 x ptr] [ptr @.str.24, ptr @.str.24], [2 x ptr] [ptr @.str.25, ptr @.str.25], [2 x ptr] [ptr @.str.27, ptr @.str.27], [2 x ptr] [ptr @.str.28, ptr @.str.28], [2 x ptr] [ptr null, ptr @.str.32], [2 x ptr] [ptr @.str.33, ptr null], [2 x ptr] [ptr @.str.39, ptr @.str.39], [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.40, ptr @.str.40], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.34, ptr @.str.34], [2 x ptr] [ptr @.str.35, ptr @.str.35]], [32 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: \09 Faulty UTCL2 client ID: %s (0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.7 = internal global ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: \09 MORE_FAULTS: 0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.11 = internal global ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.9, section ".printk_index", align 4
@mmhub_v2_0_print_l2_protection_fault_status._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: \09 WALKER_ERROR: 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.14 = internal global ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.12, section ".printk_index", align 4
@mmhub_v2_0_print_l2_protection_fault_status._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: \09 PERMISSION_FAULTS: 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.17 = internal global ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.15, section ".printk_index", align 4
@mmhub_v2_0_print_l2_protection_fault_status._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: \09 MAPPING_ERROR: 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.20 = internal global ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.18, section ".printk_index", align 4
@mmhub_v2_0_print_l2_protection_fault_status._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 186, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu: \09 RW: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.23 = internal global ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEDMC\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEVGA\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEXFC\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP0\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP1\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEDWB\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBGU1\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBGU0\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XDP\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VMC\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HDP\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OSS\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCNU\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JPEG\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCN\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCNU0\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCN0\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCNU1\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCN1\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 131072, i64 131074, i64 131328, i64 131329, i64 131330]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 131072, i64 131074, i64 131328, i64 131329, i64 131330]
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"mmhub_v2_0_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 720, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"mmhub_v2_0_vmhub_funcs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 516, i32 40 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 153, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"mmhub_client_ids_navi1x\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 40, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant [32 x i8] c"mmhub_client_ids_sienna_cichlid\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 67, i32 20 }
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"mmhub_client_ids_beige_goby\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 97, i32 20 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 172, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 174, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 177, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 180, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 183, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 186, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 41, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 42, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 52, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 43, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 44, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 54, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 57, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 58, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 59, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 45, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 46, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 47, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 48, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 49, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 50, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 73, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 90, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 75, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 76, i32 12 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @mmhub_v2_0_print_l2_protection_fault_status._entry, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.12, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.15, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.18, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.21, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.5, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.9, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.11, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.14, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.17, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.20, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.23, ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.7, ptr @mmhub_v2_0_funcs, ptr @mmhub_v2_0_vmhub_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mmhub_client_ids_navi1x, ptr @mmhub_client_ids_sienna_cichlid, ptr @mmhub_client_ids_beige_goby, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_vmhub_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_print_l2_protection_fault_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_navi1x to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_sienna_cichlid to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_beige_goby to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mmhub_v2_0_init(ptr nocapture noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1
  %arrayidx1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, 1835
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %arrayidx, align 4
  %5 = load i32, ptr %1, align 4
  %add8 = add i32 %5, 1836
  %ctx0_ptb_addr_hi32 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 1
  %6 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add8, ptr %ctx0_ptb_addr_hi32, align 4
  %7 = load i32, ptr %1, align 4
  %add13 = add i32 %7, 1745
  %vm_inv_eng0_sem = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 2
  %8 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add13, ptr %vm_inv_eng0_sem, align 4
  %9 = load i32, ptr %1, align 4
  %add18 = add i32 %9, 1763
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 3
  %10 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18, ptr %vm_inv_eng0_req, align 4
  %11 = load i32, ptr %1, align 4
  %add23 = add i32 %11, 1781
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 4
  %12 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add23, ptr %vm_inv_eng0_ack, align 4
  %13 = load i32, ptr %1, align 4
  %add28 = add i32 %13, 1728
  %vm_context0_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 5
  %14 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add28, ptr %vm_context0_cntl, align 4
  %15 = load i32, ptr %1, align 4
  %add33 = add i32 %15, 1676
  %vm_l2_pro_fault_status = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 6
  %16 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add33, ptr %vm_l2_pro_fault_status, align 4
  %17 = load i32, ptr %1, align 4
  %add38 = add i32 %17, 1672
  %vm_l2_pro_fault_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 7
  %18 = ptrtoint ptr %vm_l2_pro_fault_cntl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add38, ptr %vm_l2_pro_fault_cntl, align 4
  %ctx_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  %19 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ctx_distance, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %20 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %ctx_addr_distance, align 4
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 10
  %21 = ptrtoint ptr %eng_distance to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %eng_distance, align 4
  %eng_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  %22 = ptrtoint ptr %eng_addr_distance to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %eng_addr_distance, align 4
  %vm_cntx_cntl_vm_fault = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 12
  %23 = ptrtoint ptr %vm_cntx_cntl_vm_fault to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2796032, ptr %vm_cntx_cntl_vm_fault, align 4
  %vmhub_funcs = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 13
  %24 = ptrtoint ptr %vmhub_funcs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mmhub_v2_0_vmhub_funcs, ptr %vmhub_funcs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v2_0_gart_enable(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %0 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gart.i, align 8
  %call.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef %1) #6
  tail call void @mmhub_v2_0_setup_vm_pt_regs(ptr noundef %adev, i32 noundef 0, i64 noundef %call.i) #6
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 1867
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool8.not.i = icmp eq ptr %11, null
  br i1 %tobool8.not.i, label %land.lhs.true4.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true4.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %12 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gart_start.i, align 8
  %shr.i = lshr i64 %13, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void %11(ptr noundef %adev, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true4.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %gart_start14.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %14 = ptrtoint ptr %gart_start14.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %gart_start14.i, align 8
  %shr15.i = lshr i64 %15, 12
  %conv16.i = trunc i64 %shr15.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i, i32 noundef %conv16.i, i32 noundef 0) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add23.i = add i32 %19, 1868
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and26.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %cond.end.i.cond.false48.i_crit_edge, label %land.lhs.true28.i

cond.end.i.cond.false48.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

land.lhs.true28.i:                                ; preds = %cond.end.i
  %funcs31.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs31.i, align 4
  %tobool32.not.i = icmp eq ptr %23, null
  br i1 %tobool32.not.i, label %land.lhs.true28.i.cond.false48.i_crit_edge, label %land.lhs.true33.i

land.lhs.true28.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

land.lhs.true33.i:                                ; preds = %land.lhs.true28.i
  %sriov_wreg37.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg37.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg37.i, align 4
  %tobool38.not.i = icmp eq ptr %25, null
  br i1 %tobool38.not.i, label %land.lhs.true33.i.cond.false48.i_crit_edge, label %cond.true39.i

land.lhs.true33.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

cond.true39.i:                                    ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  %gart_start45.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %26 = ptrtoint ptr %gart_start45.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %gart_start45.i, align 8
  %shr46.i = lshr i64 %27, 44
  %conv47.i = trunc i64 %shr46.i to i32
  tail call void %25(ptr noundef %adev, i32 noundef %add23.i, i32 noundef %conv47.i, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end53.i

cond.false48.i:                                   ; preds = %land.lhs.true33.i.cond.false48.i_crit_edge, %land.lhs.true28.i.cond.false48.i_crit_edge, %cond.end.i.cond.false48.i_crit_edge
  %gart_start50.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %28 = ptrtoint ptr %gart_start50.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %gart_start50.i, align 8
  %shr51.i = lshr i64 %29, 44
  %conv52.i = trunc i64 %shr51.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add23.i, i32 noundef %conv52.i, i32 noundef 0) #6
  br label %cond.end53.i

cond.end53.i:                                     ; preds = %cond.false48.i, %cond.true39.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add62.i = add i32 %33, 1899
  %34 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt.i, align 8
  %and65.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %cond.end53.i.cond.false86.i_crit_edge, label %land.lhs.true67.i

cond.end53.i.cond.false86.i_crit_edge:            ; preds = %cond.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

land.lhs.true67.i:                                ; preds = %cond.end53.i
  %funcs70.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %36 = ptrtoint ptr %funcs70.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs70.i, align 4
  %tobool71.not.i = icmp eq ptr %37, null
  br i1 %tobool71.not.i, label %land.lhs.true67.i.cond.false86.i_crit_edge, label %land.lhs.true72.i

land.lhs.true67.i.cond.false86.i_crit_edge:       ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

land.lhs.true72.i:                                ; preds = %land.lhs.true67.i
  %sriov_wreg76.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %sriov_wreg76.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_wreg76.i, align 4
  %tobool77.not.i = icmp eq ptr %39, null
  br i1 %tobool77.not.i, label %land.lhs.true72.i.cond.false86.i_crit_edge, label %cond.true78.i

land.lhs.true72.i.cond.false86.i_crit_edge:       ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

cond.true78.i:                                    ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #8
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %40 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %gart_end.i, align 8
  %shr84.i = lshr i64 %41, 12
  %conv85.i = trunc i64 %shr84.i to i32
  tail call void %39(ptr noundef %adev, i32 noundef %add62.i, i32 noundef %conv85.i, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end91.i

cond.false86.i:                                   ; preds = %land.lhs.true72.i.cond.false86.i_crit_edge, %land.lhs.true67.i.cond.false86.i_crit_edge, %cond.end53.i.cond.false86.i_crit_edge
  %gart_end88.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %42 = ptrtoint ptr %gart_end88.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %gart_end88.i, align 8
  %shr89.i = lshr i64 %43, 12
  %conv90.i = trunc i64 %shr89.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add62.i, i32 noundef %conv90.i, i32 noundef 0) #6
  br label %cond.end91.i

cond.end91.i:                                     ; preds = %cond.false86.i, %cond.true78.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add100.i = add i32 %47, 1900
  %48 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %virt.i, align 8
  %and103.i = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %cond.end91.i.cond.false125.i_crit_edge, label %land.lhs.true105.i

cond.end91.i.cond.false125.i_crit_edge:           ; preds = %cond.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false125.i

land.lhs.true105.i:                               ; preds = %cond.end91.i
  %funcs108.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %50 = ptrtoint ptr %funcs108.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %funcs108.i, align 4
  %tobool109.not.i = icmp eq ptr %51, null
  br i1 %tobool109.not.i, label %land.lhs.true105.i.cond.false125.i_crit_edge, label %land.lhs.true110.i

land.lhs.true105.i.cond.false125.i_crit_edge:     ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false125.i

land.lhs.true110.i:                               ; preds = %land.lhs.true105.i
  %sriov_wreg114.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %sriov_wreg114.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sriov_wreg114.i, align 4
  %tobool115.not.i = icmp eq ptr %53, null
  br i1 %tobool115.not.i, label %land.lhs.true110.i.cond.false125.i_crit_edge, label %cond.true116.i

land.lhs.true110.i.cond.false125.i_crit_edge:     ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false125.i

cond.true116.i:                                   ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #8
  %gart_end122.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %54 = ptrtoint ptr %gart_end122.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gart_end122.i, align 8
  %shr123.i = lshr i64 %55, 44
  %conv124.i = trunc i64 %shr123.i to i32
  tail call void %53(ptr noundef %adev, i32 noundef %add100.i, i32 noundef %conv124.i, i32 noundef 4, i32 noundef 11) #6
  br label %mmhub_v2_0_init_gart_aperture_regs.exit

cond.false125.i:                                  ; preds = %land.lhs.true110.i.cond.false125.i_crit_edge, %land.lhs.true105.i.cond.false125.i_crit_edge, %cond.end91.i.cond.false125.i_crit_edge
  %gart_end127.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %56 = ptrtoint ptr %gart_end127.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %gart_end127.i, align 8
  %shr128.i = lshr i64 %57, 44
  %conv129.i = trunc i64 %shr128.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add100.i, i32 noundef %conv129.i, i32 noundef 0) #6
  br label %mmhub_v2_0_init_gart_aperture_regs.exit

mmhub_v2_0_init_gart_aperture_regs.exit:          ; preds = %cond.false125.i, %cond.true116.i
  %58 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %virt.i, align 8
  %and.i9 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %do.body.i, label %mmhub_v2_0_init_gart_aperture_regs.exit.if.end.i_crit_edge

mmhub_v2_0_init_gart_aperture_regs.exit.if.end.i_crit_edge: ; preds = %mmhub_v2_0_init_gart_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.body.i:                                        ; preds = %mmhub_v2_0_init_gart_aperture_regs.exit
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add.i12 = add i32 %63, 2160
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add.i12, i32 noundef 0, i32 noundef 0) #6
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add23.i13 = add i32 %67, 2159
  %68 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %virt.i, align 8
  %and26.i14 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i14)
  %tobool27.not.i15 = icmp eq i32 %and26.i14, 0
  br i1 %tobool27.not.i15, label %do.body.i.cond.false44.i_crit_edge, label %land.lhs.true28.i18

do.body.i.cond.false44.i_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false44.i

land.lhs.true28.i18:                              ; preds = %do.body.i
  %funcs31.i16 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %70 = ptrtoint ptr %funcs31.i16 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %funcs31.i16, align 4
  %tobool32.not.i17 = icmp eq ptr %71, null
  br i1 %tobool32.not.i17, label %land.lhs.true28.i18.cond.false44.i_crit_edge, label %land.lhs.true33.i21

land.lhs.true28.i18.cond.false44.i_crit_edge:     ; preds = %land.lhs.true28.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false44.i

land.lhs.true33.i21:                              ; preds = %land.lhs.true28.i18
  %sriov_wreg37.i19 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %71, i32 0, i32 12
  %72 = ptrtoint ptr %sriov_wreg37.i19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sriov_wreg37.i19, align 4
  %tobool38.not.i20 = icmp eq ptr %73, null
  br i1 %tobool38.not.i20, label %land.lhs.true33.i21.cond.false44.i_crit_edge, label %cond.true39.i24

land.lhs.true33.i21.cond.false44.i_crit_edge:     ; preds = %land.lhs.true33.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false44.i

cond.true39.i24:                                  ; preds = %land.lhs.true33.i21
  call void @__sanitizer_cov_trace_pc() #8
  %agp_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %74 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %agp_start.i, align 8
  %shr.i22 = lshr i64 %75, 24
  %conv.i23 = trunc i64 %shr.i22 to i32
  tail call void %73(ptr noundef %adev, i32 noundef %add23.i13, i32 noundef %conv.i23, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end49.i

cond.false44.i:                                   ; preds = %land.lhs.true33.i21.cond.false44.i_crit_edge, %land.lhs.true28.i18.cond.false44.i_crit_edge, %do.body.i.cond.false44.i_crit_edge
  %agp_start46.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %76 = ptrtoint ptr %agp_start46.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %agp_start46.i, align 8
  %shr47.i = lshr i64 %77, 24
  %conv48.i = trunc i64 %shr47.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add23.i13, i32 noundef %conv48.i, i32 noundef 0) #6
  br label %cond.end49.i

cond.end49.i:                                     ; preds = %cond.false44.i, %cond.true39.i24
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add58.i = add i32 %81, 2158
  %82 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %virt.i, align 8
  %and61.i = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %cond.end49.i.cond.false82.i_crit_edge, label %land.lhs.true63.i

cond.end49.i.cond.false82.i_crit_edge:            ; preds = %cond.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.i

land.lhs.true63.i:                                ; preds = %cond.end49.i
  %funcs66.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %84 = ptrtoint ptr %funcs66.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %funcs66.i, align 4
  %tobool67.not.i = icmp eq ptr %85, null
  br i1 %tobool67.not.i, label %land.lhs.true63.i.cond.false82.i_crit_edge, label %land.lhs.true68.i

land.lhs.true63.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.i

land.lhs.true68.i:                                ; preds = %land.lhs.true63.i
  %sriov_wreg72.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %85, i32 0, i32 12
  %86 = ptrtoint ptr %sriov_wreg72.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sriov_wreg72.i, align 4
  %tobool73.not.i = icmp eq ptr %87, null
  br i1 %tobool73.not.i, label %land.lhs.true68.i.cond.false82.i_crit_edge, label %cond.true74.i

land.lhs.true68.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.i

cond.true74.i:                                    ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #8
  %agp_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %88 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %agp_end.i, align 8
  %shr80.i = lshr i64 %89, 24
  %conv81.i = trunc i64 %shr80.i to i32
  tail call void %87(ptr noundef %adev, i32 noundef %add58.i, i32 noundef %conv81.i, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end87.i

cond.false82.i:                                   ; preds = %land.lhs.true68.i.cond.false82.i_crit_edge, %land.lhs.true63.i.cond.false82.i_crit_edge, %cond.end49.i.cond.false82.i_crit_edge
  %agp_end84.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %90 = ptrtoint ptr %agp_end84.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %agp_end84.i, align 8
  %shr85.i = lshr i64 %91, 24
  %conv86.i = trunc i64 %shr85.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add58.i, i32 noundef %conv86.i, i32 noundef 0) #6
  br label %cond.end87.i

cond.end87.i:                                     ; preds = %cond.false82.i, %cond.true74.i
  %92 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %virt.i, align 8
  %and92.i = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  br i1 %tobool93.not.i, label %cond.end87.i.cond.false125.i26_crit_edge, label %land.lhs.true94.i

cond.end87.i.cond.false125.i26_crit_edge:         ; preds = %cond.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false125.i26

land.lhs.true94.i:                                ; preds = %cond.end87.i
  %funcs97.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %94 = ptrtoint ptr %funcs97.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %funcs97.i, align 4
  %tobool98.not.i = icmp eq ptr %95, null
  br i1 %tobool98.not.i, label %land.lhs.true94.i.cond.false125.i26_crit_edge, label %land.lhs.true99.i

land.lhs.true94.i.cond.false125.i26_crit_edge:    ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false125.i26

land.lhs.true99.i:                                ; preds = %land.lhs.true94.i
  %sriov_wreg103.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %sriov_wreg103.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sriov_wreg103.i, align 4
  %tobool104.not.i25 = icmp eq ptr %97, null
  br i1 %tobool104.not.i25, label %land.lhs.true99.i.cond.false125.i26_crit_edge, label %cond.true105.i

land.lhs.true99.i.cond.false125.i26_crit_edge:    ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false125.i26

cond.true105.i:                                   ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add114.i = add i32 %101, 2161
  %fb_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %102 = ptrtoint ptr %fb_start.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %fb_start.i, align 8
  %agp_start117.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %104 = ptrtoint ptr %agp_start117.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %agp_start117.i, align 8
  %106 = tail call i64 @llvm.umin.i64(i64 %103, i64 %105) #6
  %cond.off18.v.i = lshr i64 %106, 18
  %cond.off18.i = trunc i64 %cond.off18.v.i to i32
  tail call void %97(ptr noundef %adev, i32 noundef %add114.i, i32 noundef %cond.off18.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end146.i

cond.false125.i26:                                ; preds = %land.lhs.true99.i.cond.false125.i26_crit_edge, %land.lhs.true94.i.cond.false125.i26_crit_edge, %cond.end87.i.cond.false125.i26_crit_edge
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %add130.i = add i32 %110, 2161
  %fb_start133.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %111 = ptrtoint ptr %fb_start133.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %fb_start133.i, align 8
  %agp_start136.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %113 = ptrtoint ptr %agp_start136.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %agp_start136.i, align 8
  %115 = tail call i64 @llvm.umin.i64(i64 %112, i64 %114) #6
  %cond143.off18.v.i = lshr i64 %115, 18
  %cond143.off18.i = trunc i64 %cond143.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add130.i, i32 noundef %cond143.off18.i, i32 noundef 0) #6
  br label %cond.end146.i

cond.end146.i:                                    ; preds = %cond.false125.i26, %cond.true105.i
  %116 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %virt.i, align 8
  %and149.i = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %cond.end146.i.cond.false184.i_crit_edge, label %land.lhs.true151.i

cond.end146.i.cond.false184.i_crit_edge:          ; preds = %cond.end146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184.i

land.lhs.true151.i:                               ; preds = %cond.end146.i
  %funcs154.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %118 = ptrtoint ptr %funcs154.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %funcs154.i, align 4
  %tobool155.not.i = icmp eq ptr %119, null
  br i1 %tobool155.not.i, label %land.lhs.true151.i.cond.false184.i_crit_edge, label %land.lhs.true156.i

land.lhs.true151.i.cond.false184.i_crit_edge:     ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184.i

land.lhs.true156.i:                               ; preds = %land.lhs.true151.i
  %sriov_wreg160.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %sriov_wreg160.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sriov_wreg160.i, align 4
  %tobool161.not.i = icmp eq ptr %121, null
  br i1 %tobool161.not.i, label %land.lhs.true156.i.cond.false184.i_crit_edge, label %cond.true162.i

land.lhs.true156.i.cond.false184.i_crit_edge:     ; preds = %land.lhs.true156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184.i

cond.true162.i:                                   ; preds = %land.lhs.true156.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add171.i = add i32 %125, 2162
  %fb_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %126 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %fb_end.i, align 8
  %agp_end174.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %128 = ptrtoint ptr %agp_end174.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %agp_end174.i, align 8
  %130 = tail call i64 @llvm.umax.i64(i64 %127, i64 %129) #6
  %cond181.off18.v.i = lshr i64 %130, 18
  %cond181.off18.i = trunc i64 %cond181.off18.v.i to i32
  tail call void %121(ptr noundef %adev, i32 noundef %add171.i, i32 noundef %cond181.off18.i, i32 noundef 0, i32 noundef 11) #6
  br label %if.end.i

cond.false184.i:                                  ; preds = %land.lhs.true156.i.cond.false184.i_crit_edge, %land.lhs.true151.i.cond.false184.i_crit_edge, %cond.end146.i.cond.false184.i_crit_edge
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  %add189.i = add i32 %134, 2162
  %fb_end192.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %135 = ptrtoint ptr %fb_end192.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %fb_end192.i, align 8
  %agp_end195.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %137 = ptrtoint ptr %agp_end195.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %agp_end195.i, align 8
  %139 = tail call i64 @llvm.umax.i64(i64 %136, i64 %138) #6
  %cond202.off18.v.i = lshr i64 %139, 18
  %cond202.off18.i = trunc i64 %cond202.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add189.i, i32 noundef %cond202.off18.i, i32 noundef 0) #6
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false184.i, %cond.true162.i, %mmhub_v2_0_init_gart_aperture_regs.exit.if.end.i_crit_edge
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 69, i32 2
  %140 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %gpu_addr.i, align 8
  %call.i27 = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %141) #6
  %142 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %virt.i, align 8
  %and208.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i)
  %tobool209.not.i = icmp eq i32 %and208.i, 0
  br i1 %tobool209.not.i, label %if.end.i.cond.false233.i_crit_edge, label %land.lhs.true210.i

if.end.i.cond.false233.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false233.i

land.lhs.true210.i:                               ; preds = %if.end.i
  %funcs213.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %144 = ptrtoint ptr %funcs213.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %funcs213.i, align 4
  %tobool214.not.i = icmp eq ptr %145, null
  br i1 %tobool214.not.i, label %land.lhs.true210.i.cond.false233.i_crit_edge, label %land.lhs.true215.i

land.lhs.true210.i.cond.false233.i_crit_edge:     ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false233.i

land.lhs.true215.i:                               ; preds = %land.lhs.true210.i
  %sriov_wreg219.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %145, i32 0, i32 12
  %146 = ptrtoint ptr %sriov_wreg219.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sriov_wreg219.i, align 4
  %tobool220.not.i = icmp eq ptr %147, null
  br i1 %tobool220.not.i, label %land.lhs.true215.i.cond.false233.i_crit_edge, label %cond.true221.i

land.lhs.true215.i.cond.false233.i_crit_edge:     ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false233.i

cond.true221.i:                                   ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %add230.i = add i32 %151, 2136
  %shr231.i = lshr i64 %call.i27, 12
  %conv232.i = trunc i64 %shr231.i to i32
  tail call void %147(ptr noundef %adev, i32 noundef %add230.i, i32 noundef %conv232.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end241.i

cond.false233.i:                                  ; preds = %land.lhs.true215.i.cond.false233.i_crit_edge, %land.lhs.true210.i.cond.false233.i_crit_edge, %if.end.i.cond.false233.i_crit_edge
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.i, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %add238.i = add i32 %155, 2136
  %shr239.i = lshr i64 %call.i27, 12
  %conv240.i = trunc i64 %shr239.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add238.i, i32 noundef %conv240.i, i32 noundef 0) #6
  br label %cond.end241.i

cond.end241.i:                                    ; preds = %cond.false233.i, %cond.true221.i
  %156 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %virt.i, align 8
  %and244.i = and i32 %157, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244.i)
  %tobool245.not.i = icmp eq i32 %and244.i, 0
  br i1 %tobool245.not.i, label %cond.end241.i.cond.false269.i_crit_edge, label %land.lhs.true246.i

cond.end241.i.cond.false269.i_crit_edge:          ; preds = %cond.end241.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false269.i

land.lhs.true246.i:                               ; preds = %cond.end241.i
  %funcs249.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %158 = ptrtoint ptr %funcs249.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %funcs249.i, align 4
  %tobool250.not.i = icmp eq ptr %159, null
  br i1 %tobool250.not.i, label %land.lhs.true246.i.cond.false269.i_crit_edge, label %land.lhs.true251.i

land.lhs.true246.i.cond.false269.i_crit_edge:     ; preds = %land.lhs.true246.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false269.i

land.lhs.true251.i:                               ; preds = %land.lhs.true246.i
  %sriov_wreg255.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %159, i32 0, i32 12
  %160 = ptrtoint ptr %sriov_wreg255.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %sriov_wreg255.i, align 4
  %tobool256.not.i = icmp eq ptr %161, null
  br i1 %tobool256.not.i, label %land.lhs.true251.i.cond.false269.i_crit_edge, label %cond.true257.i

land.lhs.true251.i.cond.false269.i_crit_edge:     ; preds = %land.lhs.true251.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false269.i

cond.true257.i:                                   ; preds = %land.lhs.true251.i
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  %add266.i = add i32 %165, 2137
  %shr267.i = lshr i64 %call.i27, 44
  %conv268.i = trunc i64 %shr267.i to i32
  tail call void %161(ptr noundef %adev, i32 noundef %add266.i, i32 noundef %conv268.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end277.i

cond.false269.i:                                  ; preds = %land.lhs.true251.i.cond.false269.i_crit_edge, %land.lhs.true246.i.cond.false269.i_crit_edge, %cond.end241.i.cond.false269.i_crit_edge
  %166 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 4
  %add274.i = add i32 %169, 2137
  %shr275.i = lshr i64 %call.i27, 44
  %conv276.i = trunc i64 %shr275.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add274.i, i32 noundef %conv276.i, i32 noundef 0) #6
  br label %cond.end277.i

cond.end277.i:                                    ; preds = %cond.false269.i, %cond.true257.i
  %170 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %virt.i, align 8
  %and280.i = and i32 %171, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280.i)
  %tobool281.not.i = icmp eq i32 %and280.i, 0
  br i1 %tobool281.not.i, label %cond.end277.i.cond.false304.i_crit_edge, label %land.lhs.true282.i

cond.end277.i.cond.false304.i_crit_edge:          ; preds = %cond.end277.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false304.i

land.lhs.true282.i:                               ; preds = %cond.end277.i
  %funcs285.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %172 = ptrtoint ptr %funcs285.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %funcs285.i, align 4
  %tobool286.not.i = icmp eq ptr %173, null
  br i1 %tobool286.not.i, label %land.lhs.true282.i.cond.false304.i_crit_edge, label %land.lhs.true287.i

land.lhs.true282.i.cond.false304.i_crit_edge:     ; preds = %land.lhs.true282.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false304.i

land.lhs.true287.i:                               ; preds = %land.lhs.true282.i
  %sriov_wreg291.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %sriov_wreg291.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sriov_wreg291.i, align 4
  %tobool292.not.i = icmp eq ptr %175, null
  br i1 %tobool292.not.i, label %land.lhs.true287.i.cond.false304.i_crit_edge, label %cond.true293.i

land.lhs.true287.i.cond.false304.i_crit_edge:     ; preds = %land.lhs.true287.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false304.i

cond.true293.i:                                   ; preds = %land.lhs.true287.i
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx.i, align 8
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %add302.i = add i32 %179, 1679
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %180 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dummy_page_addr.i, align 8
  %shr303.i = lshr i32 %181, 12
  tail call void %175(ptr noundef %adev, i32 noundef %add302.i, i32 noundef %shr303.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end312.i

cond.false304.i:                                  ; preds = %land.lhs.true287.i.cond.false304.i_crit_edge, %land.lhs.true282.i.cond.false304.i_crit_edge, %cond.end277.i.cond.false304.i_crit_edge
  %182 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx.i, align 8
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %add309.i = add i32 %185, 1679
  %dummy_page_addr310.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %186 = ptrtoint ptr %dummy_page_addr310.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dummy_page_addr310.i, align 8
  %shr311.i = lshr i32 %187, 12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add309.i, i32 noundef %shr311.i, i32 noundef 0) #6
  br label %cond.end312.i

cond.end312.i:                                    ; preds = %cond.false304.i, %cond.true293.i
  %188 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %virt.i, align 8
  %and315.i = and i32 %189, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315.i)
  %tobool316.not.i = icmp eq i32 %and315.i, 0
  br i1 %tobool316.not.i, label %cond.end312.i.cond.false342.i_crit_edge, label %land.lhs.true317.i

cond.end312.i.cond.false342.i_crit_edge:          ; preds = %cond.end312.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false342.i

land.lhs.true317.i:                               ; preds = %cond.end312.i
  %funcs320.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %190 = ptrtoint ptr %funcs320.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %funcs320.i, align 4
  %tobool321.not.i = icmp eq ptr %191, null
  br i1 %tobool321.not.i, label %land.lhs.true317.i.cond.false342.i_crit_edge, label %land.lhs.true322.i

land.lhs.true317.i.cond.false342.i_crit_edge:     ; preds = %land.lhs.true317.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false342.i

land.lhs.true322.i:                               ; preds = %land.lhs.true317.i
  %sriov_wreg326.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %191, i32 0, i32 12
  %192 = ptrtoint ptr %sriov_wreg326.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sriov_wreg326.i, align 4
  %tobool327.not.i = icmp eq ptr %193, null
  br i1 %tobool327.not.i, label %land.lhs.true322.i.cond.false342.i_crit_edge, label %cond.true328.i

land.lhs.true322.i.cond.false342.i_crit_edge:     ; preds = %land.lhs.true322.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false342.i

cond.true328.i:                                   ; preds = %land.lhs.true322.i
  call void @__sanitizer_cov_trace_pc() #8
  %194 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 4
  %add337.i = add i32 %197, 1680
  tail call void %193(ptr noundef %adev, i32 noundef %add337.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end352.i

cond.false342.i:                                  ; preds = %land.lhs.true322.i.cond.false342.i_crit_edge, %land.lhs.true317.i.cond.false342.i_crit_edge, %cond.end312.i.cond.false342.i_crit_edge
  %198 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 4
  %add347.i = add i32 %201, 1680
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add347.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end352.i

cond.end352.i:                                    ; preds = %cond.false342.i, %cond.true328.i
  %202 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %virt.i, align 8
  %and355.i = and i32 %203, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355.i)
  %tobool356.not.i = icmp eq i32 %and355.i, 0
  br i1 %tobool356.not.i, label %cond.end352.i.cond.false378.i_crit_edge, label %land.lhs.true357.i

cond.end352.i.cond.false378.i_crit_edge:          ; preds = %cond.end352.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false378.i

land.lhs.true357.i:                               ; preds = %cond.end352.i
  %funcs360.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %204 = ptrtoint ptr %funcs360.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %funcs360.i, align 4
  %tobool361.not.i = icmp eq ptr %205, null
  br i1 %tobool361.not.i, label %land.lhs.true357.i.cond.false378.i_crit_edge, label %land.lhs.true362.i

land.lhs.true357.i.cond.false378.i_crit_edge:     ; preds = %land.lhs.true357.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false378.i

land.lhs.true362.i:                               ; preds = %land.lhs.true357.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %205, i32 0, i32 13
  %206 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool366.not.i = icmp eq ptr %207, null
  br i1 %tobool366.not.i, label %land.lhs.true362.i.cond.false378.i_crit_edge, label %cond.true367.i

land.lhs.true362.i.cond.false378.i_crit_edge:     ; preds = %land.lhs.true362.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false378.i

cond.true367.i:                                   ; preds = %land.lhs.true362.i
  call void @__sanitizer_cov_trace_pc() #8
  %208 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx.i, align 8
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 4
  %add376.i = add i32 %211, 1673
  %call377.i = tail call i32 %207(ptr noundef %adev, i32 noundef %add376.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end385.i

cond.false378.i:                                  ; preds = %land.lhs.true362.i.cond.false378.i_crit_edge, %land.lhs.true357.i.cond.false378.i_crit_edge, %cond.end352.i.cond.false378.i_crit_edge
  %212 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i, align 8
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %213, align 4
  %add383.i = add i32 %215, 1673
  %call384.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add383.i, i32 noundef 0) #6
  br label %cond.end385.i

cond.end385.i:                                    ; preds = %cond.false378.i, %cond.true367.i
  %cond386.i = phi i32 [ %call377.i, %cond.true367.i ], [ %call384.i, %cond.false378.i ]
  %or.i = or i32 %cond386.i, 262144
  %216 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %virt.i, align 8
  %and390.i = and i32 %217, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390.i)
  %tobool391.not.i = icmp eq i32 %and390.i, 0
  br i1 %tobool391.not.i, label %cond.end385.i.cond.false413.i_crit_edge, label %land.lhs.true392.i

cond.end385.i.cond.false413.i_crit_edge:          ; preds = %cond.end385.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false413.i

land.lhs.true392.i:                               ; preds = %cond.end385.i
  %funcs395.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %218 = ptrtoint ptr %funcs395.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %funcs395.i, align 4
  %tobool396.not.i = icmp eq ptr %219, null
  br i1 %tobool396.not.i, label %land.lhs.true392.i.cond.false413.i_crit_edge, label %land.lhs.true397.i

land.lhs.true392.i.cond.false413.i_crit_edge:     ; preds = %land.lhs.true392.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false413.i

land.lhs.true397.i:                               ; preds = %land.lhs.true392.i
  %sriov_wreg401.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %219, i32 0, i32 12
  %220 = ptrtoint ptr %sriov_wreg401.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %sriov_wreg401.i, align 4
  %tobool402.not.i = icmp eq ptr %221, null
  br i1 %tobool402.not.i, label %land.lhs.true397.i.cond.false413.i_crit_edge, label %cond.true403.i

land.lhs.true397.i.cond.false413.i_crit_edge:     ; preds = %land.lhs.true397.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false413.i

cond.true403.i:                                   ; preds = %land.lhs.true397.i
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx.i, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 4
  %add412.i = add i32 %225, 1673
  tail call void %221(ptr noundef %adev, i32 noundef %add412.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_0_init_system_aperture_regs.exit

cond.false413.i:                                  ; preds = %land.lhs.true397.i.cond.false413.i_crit_edge, %land.lhs.true392.i.cond.false413.i_crit_edge, %cond.end385.i.cond.false413.i_crit_edge
  %226 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx.i, align 8
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %227, align 4
  %add418.i = add i32 %229, 1673
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add418.i, i32 noundef %or.i, i32 noundef 0) #6
  br label %mmhub_v2_0_init_system_aperture_regs.exit

mmhub_v2_0_init_system_aperture_regs.exit:        ; preds = %cond.false413.i, %cond.true403.i
  %230 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %virt.i, align 8
  %and.i29 = and i32 %231, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %mmhub_v2_0_init_system_aperture_regs.exit.cond.false.i38_crit_edge, label %land.lhs.true.i32

mmhub_v2_0_init_system_aperture_regs.exit.cond.false.i38_crit_edge: ; preds = %mmhub_v2_0_init_system_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i38

land.lhs.true.i32:                                ; preds = %mmhub_v2_0_init_system_aperture_regs.exit
  %funcs.i31 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %232 = ptrtoint ptr %funcs.i31 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %funcs.i31, align 4
  %tobool1.not.i = icmp eq ptr %233, null
  br i1 %tobool1.not.i, label %land.lhs.true.i32.cond.false.i38_crit_edge, label %land.lhs.true2.i

land.lhs.true.i32.cond.false.i38_crit_edge:       ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i38

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i32
  %sriov_rreg.i33 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %233, i32 0, i32 13
  %234 = ptrtoint ptr %sriov_rreg.i33 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %sriov_rreg.i33, align 4
  %tobool6.not.i = icmp eq ptr %235, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i38_crit_edge, label %cond.true.i37

land.lhs.true2.i.cond.false.i38_crit_edge:        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i38

cond.true.i37:                                    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  %236 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx.i, align 8
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 4
  %add.i35 = add i32 %239, 2163
  %call.i36 = tail call i32 %235(ptr noundef %adev, i32 noundef %add.i35, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i39

cond.false.i38:                                   ; preds = %land.lhs.true2.i.cond.false.i38_crit_edge, %land.lhs.true.i32.cond.false.i38_crit_edge, %mmhub_v2_0_init_system_aperture_regs.exit.cond.false.i38_crit_edge
  %240 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx.i, align 8
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %241, align 4
  %add17.i = add i32 %243, 2163
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 0) #6
  br label %cond.end.i39

cond.end.i39:                                     ; preds = %cond.false.i38, %cond.true.i37
  %cond.i = phi i32 [ %call.i36, %cond.true.i37 ], [ %call18.i, %cond.false.i38 ]
  %or23.i = and i32 %cond.i, -14458
  %or27.i = or i32 %or23.i, 6233
  %244 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %virt.i, align 8
  %and30.i = and i32 %245, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %cond.end.i39.cond.false52.i_crit_edge, label %land.lhs.true32.i

cond.end.i39.cond.false52.i_crit_edge:            ; preds = %cond.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

land.lhs.true32.i:                                ; preds = %cond.end.i39
  %funcs35.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %246 = ptrtoint ptr %funcs35.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %funcs35.i, align 4
  %tobool36.not.i = icmp eq ptr %247, null
  br i1 %tobool36.not.i, label %land.lhs.true32.i.cond.false52.i_crit_edge, label %land.lhs.true37.i

land.lhs.true32.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

land.lhs.true37.i:                                ; preds = %land.lhs.true32.i
  %sriov_wreg.i40 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %247, i32 0, i32 12
  %248 = ptrtoint ptr %sriov_wreg.i40 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %sriov_wreg.i40, align 4
  %tobool41.not.i = icmp eq ptr %249, null
  br i1 %tobool41.not.i, label %land.lhs.true37.i.cond.false52.i_crit_edge, label %cond.true42.i

land.lhs.true37.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

cond.true42.i:                                    ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  %250 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx.i, align 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 4
  %add51.i = add i32 %253, 2163
  tail call void %249(ptr noundef %adev, i32 noundef %add51.i, i32 noundef %or27.i, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_0_init_tlb_regs.exit

cond.false52.i:                                   ; preds = %land.lhs.true37.i.cond.false52.i_crit_edge, %land.lhs.true32.i.cond.false52.i_crit_edge, %cond.end.i39.cond.false52.i_crit_edge
  %254 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx.i, align 8
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %255, align 4
  %add57.i = add i32 %257, 2163
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add57.i, i32 noundef %or27.i, i32 noundef 0) #6
  br label %mmhub_v2_0_init_tlb_regs.exit

mmhub_v2_0_init_tlb_regs.exit:                    ; preds = %cond.false52.i, %cond.true42.i
  %258 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %virt.i, align 8
  %and.i42 = and i32 %259, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  br i1 %tobool.not.i43, label %cond.false.i45, label %mmhub_v2_0_init_tlb_regs.exit.mmhub_v2_0_init_cache_regs.exit_crit_edge

mmhub_v2_0_init_tlb_regs.exit.mmhub_v2_0_init_cache_regs.exit_crit_edge: ; preds = %mmhub_v2_0_init_tlb_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmhub_v2_0_init_cache_regs.exit

cond.false.i45:                                   ; preds = %mmhub_v2_0_init_tlb_regs.exit
  %260 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i, align 8
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %261, align 4
  %add21.i = add i32 %263, 1664
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21.i, i32 noundef 0) #6
  %or.i44 = and i32 %call22.i, -66849028
  %or33.i = or i32 %or.i44, 526337
  %264 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %virt.i, align 8
  %and38.i = and i32 %265, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %cond.false.i45.cond.false60.i_crit_edge, label %land.lhs.true40.i

cond.false.i45.cond.false60.i_crit_edge:          ; preds = %cond.false.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

land.lhs.true40.i:                                ; preds = %cond.false.i45
  %funcs43.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %266 = ptrtoint ptr %funcs43.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %funcs43.i, align 4
  %tobool44.not.i = icmp eq ptr %267, null
  br i1 %tobool44.not.i, label %land.lhs.true40.i.cond.false60.i_crit_edge, label %land.lhs.true45.i

land.lhs.true40.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

land.lhs.true45.i:                                ; preds = %land.lhs.true40.i
  %sriov_wreg.i46 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %267, i32 0, i32 12
  %268 = ptrtoint ptr %sriov_wreg.i46 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %sriov_wreg.i46, align 4
  %tobool49.not.i = icmp eq ptr %269, null
  br i1 %tobool49.not.i, label %land.lhs.true45.i.cond.false60.i_crit_edge, label %cond.true50.i

land.lhs.true45.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

cond.true50.i:                                    ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  %270 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx.i, align 8
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %271, align 4
  %add59.i = add i32 %273, 1664
  tail call void %269(ptr noundef %adev, i32 noundef %add59.i, i32 noundef %or33.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end66.i

cond.false60.i:                                   ; preds = %land.lhs.true45.i.cond.false60.i_crit_edge, %land.lhs.true40.i.cond.false60.i_crit_edge, %cond.false.i45.cond.false60.i_crit_edge
  %274 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx.i, align 8
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 4
  %add65.i = add i32 %277, 1664
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add65.i, i32 noundef %or33.i, i32 noundef 0) #6
  br label %cond.end66.i

cond.end66.i:                                     ; preds = %cond.false60.i, %cond.true50.i
  %278 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %virt.i, align 8
  %and69.i = and i32 %279, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %cond.end66.i.cond.false93.i_crit_edge, label %land.lhs.true71.i

cond.end66.i.cond.false93.i_crit_edge:            ; preds = %cond.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

land.lhs.true71.i:                                ; preds = %cond.end66.i
  %funcs74.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %280 = ptrtoint ptr %funcs74.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %funcs74.i, align 4
  %tobool75.not.i = icmp eq ptr %281, null
  br i1 %tobool75.not.i, label %land.lhs.true71.i.cond.false93.i_crit_edge, label %land.lhs.true76.i

land.lhs.true71.i.cond.false93.i_crit_edge:       ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

land.lhs.true76.i:                                ; preds = %land.lhs.true71.i
  %sriov_rreg80.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %281, i32 0, i32 13
  %282 = ptrtoint ptr %sriov_rreg80.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %sriov_rreg80.i, align 4
  %tobool81.not.i = icmp eq ptr %283, null
  br i1 %tobool81.not.i, label %land.lhs.true76.i.cond.false93.i_crit_edge, label %cond.true82.i

land.lhs.true76.i.cond.false93.i_crit_edge:       ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

cond.true82.i:                                    ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  %284 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx.i, align 8
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %285, align 4
  %add91.i = add i32 %287, 1665
  %call92.i = tail call i32 %283(ptr noundef %adev, i32 noundef %add91.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end100.i

cond.false93.i:                                   ; preds = %land.lhs.true76.i.cond.false93.i_crit_edge, %land.lhs.true71.i.cond.false93.i_crit_edge, %cond.end66.i.cond.false93.i_crit_edge
  %288 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx.i, align 8
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %289, align 4
  %add98.i = add i32 %291, 1665
  %call99.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add98.i, i32 noundef 0) #6
  br label %cond.end100.i

cond.end100.i:                                    ; preds = %cond.false93.i, %cond.true82.i
  %cond101.i = phi i32 [ %call92.i, %cond.true82.i ], [ %call99.i, %cond.false93.i ]
  %or105.i = or i32 %cond101.i, 3
  %292 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %virt.i, align 8
  %and108.i = and i32 %293, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i47 = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i47, label %cond.end100.i.cond.false131.i_crit_edge, label %land.lhs.true110.i48

cond.end100.i.cond.false131.i_crit_edge:          ; preds = %cond.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

land.lhs.true110.i48:                             ; preds = %cond.end100.i
  %funcs113.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %294 = ptrtoint ptr %funcs113.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %funcs113.i, align 4
  %tobool114.not.i = icmp eq ptr %295, null
  br i1 %tobool114.not.i, label %land.lhs.true110.i48.cond.false131.i_crit_edge, label %land.lhs.true115.i

land.lhs.true110.i48.cond.false131.i_crit_edge:   ; preds = %land.lhs.true110.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

land.lhs.true115.i:                               ; preds = %land.lhs.true110.i48
  %sriov_wreg119.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %295, i32 0, i32 12
  %296 = ptrtoint ptr %sriov_wreg119.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %sriov_wreg119.i, align 4
  %tobool120.not.i = icmp eq ptr %297, null
  br i1 %tobool120.not.i, label %land.lhs.true115.i.cond.false131.i_crit_edge, label %cond.true121.i

land.lhs.true115.i.cond.false131.i_crit_edge:     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

cond.true121.i:                                   ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #8
  %298 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %arrayidx.i, align 8
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %299, align 4
  %add130.i49 = add i32 %301, 1665
  tail call void %297(ptr noundef %adev, i32 noundef %add130.i49, i32 noundef %or105.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end137.i

cond.false131.i:                                  ; preds = %land.lhs.true115.i.cond.false131.i_crit_edge, %land.lhs.true110.i48.cond.false131.i_crit_edge, %cond.end100.i.cond.false131.i_crit_edge
  %302 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i, align 8
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %303, align 4
  %add136.i = add i32 %305, 1665
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add136.i, i32 noundef %or105.i, i32 noundef 0) #6
  br label %cond.end137.i

cond.end137.i:                                    ; preds = %cond.false131.i, %cond.true121.i
  %translate_further.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %306 = ptrtoint ptr %translate_further.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %translate_further.i, align 4, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool138.not.i = icmp eq i8 %307, 0
  %..i = select i1 %tobool138.not.i, i32 -2146238455, i32 -2146140148
  %308 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %virt.i, align 8
  %and151.i = and i32 %309, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %cond.end137.i.cond.false174.i_crit_edge, label %land.lhs.true153.i

cond.end137.i.cond.false174.i_crit_edge:          ; preds = %cond.end137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

land.lhs.true153.i:                               ; preds = %cond.end137.i
  %funcs156.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %310 = ptrtoint ptr %funcs156.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %funcs156.i, align 4
  %tobool157.not.i = icmp eq ptr %311, null
  br i1 %tobool157.not.i, label %land.lhs.true153.i.cond.false174.i_crit_edge, label %land.lhs.true158.i

land.lhs.true153.i.cond.false174.i_crit_edge:     ; preds = %land.lhs.true153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

land.lhs.true158.i:                               ; preds = %land.lhs.true153.i
  %sriov_wreg162.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %311, i32 0, i32 12
  %312 = ptrtoint ptr %sriov_wreg162.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %sriov_wreg162.i, align 4
  %tobool163.not.i = icmp eq ptr %313, null
  br i1 %tobool163.not.i, label %land.lhs.true158.i.cond.false174.i_crit_edge, label %cond.true164.i

land.lhs.true158.i.cond.false174.i_crit_edge:     ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

cond.true164.i:                                   ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #8
  %314 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx.i, align 8
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %315, align 4
  %add173.i = add i32 %317, 1666
  tail call void %313(ptr noundef %adev, i32 noundef %add173.i, i32 noundef %..i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end180.i

cond.false174.i:                                  ; preds = %land.lhs.true158.i.cond.false174.i_crit_edge, %land.lhs.true153.i.cond.false174.i_crit_edge, %cond.end137.i.cond.false174.i_crit_edge
  %318 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %arrayidx.i, align 8
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %319, align 4
  %add179.i = add i32 %321, 1666
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add179.i, i32 noundef %..i, i32 noundef 0) #6
  br label %cond.end180.i

cond.end180.i:                                    ; preds = %cond.false174.i, %cond.true164.i
  %322 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %virt.i, align 8
  %and187.i = and i32 %323, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i)
  %tobool188.not.i = icmp eq i32 %and187.i, 0
  br i1 %tobool188.not.i, label %cond.end180.i.cond.false210.i_crit_edge, label %land.lhs.true189.i

cond.end180.i.cond.false210.i_crit_edge:          ; preds = %cond.end180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

land.lhs.true189.i:                               ; preds = %cond.end180.i
  %funcs192.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %324 = ptrtoint ptr %funcs192.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %funcs192.i, align 4
  %tobool193.not.i = icmp eq ptr %325, null
  br i1 %tobool193.not.i, label %land.lhs.true189.i.cond.false210.i_crit_edge, label %land.lhs.true194.i

land.lhs.true189.i.cond.false210.i_crit_edge:     ; preds = %land.lhs.true189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

land.lhs.true194.i:                               ; preds = %land.lhs.true189.i
  %sriov_wreg198.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %325, i32 0, i32 12
  %326 = ptrtoint ptr %sriov_wreg198.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %sriov_wreg198.i, align 4
  %tobool199.not.i = icmp eq ptr %327, null
  br i1 %tobool199.not.i, label %land.lhs.true194.i.cond.false210.i_crit_edge, label %cond.true200.i

land.lhs.true194.i.cond.false210.i_crit_edge:     ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

cond.true200.i:                                   ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #8
  %328 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %arrayidx.i, align 8
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %329, align 4
  %add209.i = add i32 %331, 1688
  tail call void %327(ptr noundef %adev, i32 noundef %add209.i, i32 noundef 1, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end216.i

cond.false210.i:                                  ; preds = %land.lhs.true194.i.cond.false210.i_crit_edge, %land.lhs.true189.i.cond.false210.i_crit_edge, %cond.end180.i.cond.false210.i_crit_edge
  %332 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %arrayidx.i, align 8
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %333, align 4
  %add215.i = add i32 %335, 1688
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add215.i, i32 noundef 1, i32 noundef 0) #6
  br label %cond.end216.i

cond.end216.i:                                    ; preds = %cond.false210.i, %cond.true200.i
  %336 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %virt.i, align 8
  %and221.i = and i32 %337, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i)
  %tobool222.not.i = icmp eq i32 %and221.i, 0
  br i1 %tobool222.not.i, label %cond.end216.i.cond.false244.i_crit_edge, label %land.lhs.true223.i

cond.end216.i.cond.false244.i_crit_edge:          ; preds = %cond.end216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

land.lhs.true223.i:                               ; preds = %cond.end216.i
  %funcs226.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %338 = ptrtoint ptr %funcs226.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %funcs226.i, align 4
  %tobool227.not.i = icmp eq ptr %339, null
  br i1 %tobool227.not.i, label %land.lhs.true223.i.cond.false244.i_crit_edge, label %land.lhs.true228.i

land.lhs.true223.i.cond.false244.i_crit_edge:     ; preds = %land.lhs.true223.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

land.lhs.true228.i:                               ; preds = %land.lhs.true223.i
  %sriov_wreg232.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %339, i32 0, i32 12
  %340 = ptrtoint ptr %sriov_wreg232.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %sriov_wreg232.i, align 4
  %tobool233.not.i = icmp eq ptr %341, null
  br i1 %tobool233.not.i, label %land.lhs.true228.i.cond.false244.i_crit_edge, label %cond.true234.i

land.lhs.true228.i.cond.false244.i_crit_edge:     ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

cond.true234.i:                                   ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx240.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %342 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %arrayidx240.i, align 8
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %343, align 4
  %add243.i = add i32 %345, 1697
  tail call void %341(ptr noundef %adev, i32 noundef %add243.i, i32 noundef 16352, i32 noundef 0, i32 noundef 1) #6
  br label %mmhub_v2_0_init_cache_regs.exit

cond.false244.i:                                  ; preds = %land.lhs.true228.i.cond.false244.i_crit_edge, %land.lhs.true223.i.cond.false244.i_crit_edge, %cond.end216.i.cond.false244.i_crit_edge
  %arrayidx246.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %346 = ptrtoint ptr %arrayidx246.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx246.i, align 8
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %347, align 4
  %add249.i = add i32 %349, 1697
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add249.i, i32 noundef 16352, i32 noundef 0) #6
  br label %mmhub_v2_0_init_cache_regs.exit

mmhub_v2_0_init_cache_regs.exit:                  ; preds = %cond.false244.i, %cond.true234.i, %mmhub_v2_0_init_tlb_regs.exit.mmhub_v2_0_init_cache_regs.exit_crit_edge
  %350 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %virt.i, align 8
  %and.i51 = and i32 %351, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %mmhub_v2_0_init_cache_regs.exit.cond.false.i66_crit_edge, label %land.lhs.true.i55

mmhub_v2_0_init_cache_regs.exit.cond.false.i66_crit_edge: ; preds = %mmhub_v2_0_init_cache_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i66

land.lhs.true.i55:                                ; preds = %mmhub_v2_0_init_cache_regs.exit
  %funcs.i53 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %352 = ptrtoint ptr %funcs.i53 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %funcs.i53, align 4
  %tobool1.not.i54 = icmp eq ptr %353, null
  br i1 %tobool1.not.i54, label %land.lhs.true.i55.cond.false.i66_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i55.cond.false.i66_crit_edge:       ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i66

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i55
  %sriov_rreg.i56 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %353, i32 0, i32 13
  %354 = ptrtoint ptr %sriov_rreg.i56 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %sriov_rreg.i56, align 4
  %tobool6.not.i57 = icmp eq ptr %355, null
  br i1 %tobool6.not.i57, label %land.lhs.true2.i58.cond.false.i66_crit_edge, label %cond.true.i62

land.lhs.true2.i58.cond.false.i66_crit_edge:      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i66

cond.true.i62:                                    ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #8
  %356 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %arrayidx.i, align 8
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %357, align 4
  %add.i60 = add i32 %359, 1728
  %call.i61 = tail call i32 %355(ptr noundef %adev, i32 noundef %add.i60, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i70

cond.false.i66:                                   ; preds = %land.lhs.true2.i58.cond.false.i66_crit_edge, %land.lhs.true.i55.cond.false.i66_crit_edge, %mmhub_v2_0_init_cache_regs.exit.cond.false.i66_crit_edge
  %360 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx.i, align 8
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %361, align 4
  %add17.i64 = add i32 %363, 1728
  %call18.i65 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i64, i32 noundef 0) #6
  br label %cond.end.i70

cond.end.i70:                                     ; preds = %cond.false.i66, %cond.true.i62
  %cond.i67 = phi i32 [ %call.i61, %cond.true.i62 ], [ %call18.i65, %cond.false.i66 ]
  %or.i68 = and i32 %cond.i67, -136
  %and20.i = or i32 %or.i68, 1
  %364 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx.i, align 8
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %365, align 4
  %add28.i = add i32 %367, 1728
  %368 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %virt.i, align 8
  %and31.i = and i32 %369, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i69 = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i69, label %cond.end.i70.cond.false48.i73_crit_edge, label %land.lhs.true33.i71

cond.end.i70.cond.false48.i73_crit_edge:          ; preds = %cond.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i73

land.lhs.true33.i71:                              ; preds = %cond.end.i70
  %funcs36.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %370 = ptrtoint ptr %funcs36.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %funcs36.i, align 4
  %tobool37.not.i = icmp eq ptr %371, null
  br i1 %tobool37.not.i, label %land.lhs.true33.i71.cond.false48.i73_crit_edge, label %land.lhs.true38.i

land.lhs.true33.i71.cond.false48.i73_crit_edge:   ; preds = %land.lhs.true33.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i73

land.lhs.true38.i:                                ; preds = %land.lhs.true33.i71
  %sriov_wreg.i72 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %371, i32 0, i32 12
  %372 = ptrtoint ptr %sriov_wreg.i72 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %sriov_wreg.i72, align 4
  %tobool42.not.i = icmp eq ptr %373, null
  br i1 %tobool42.not.i, label %land.lhs.true38.i.cond.false48.i73_crit_edge, label %cond.true43.i

land.lhs.true38.i.cond.false48.i73_crit_edge:     ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i73

cond.true43.i:                                    ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %373(ptr noundef %adev, i32 noundef %add28.i, i32 noundef %and20.i, i32 noundef 4, i32 noundef 11) #6
  br label %mmhub_v2_0_enable_system_domain.exit

cond.false48.i73:                                 ; preds = %land.lhs.true38.i.cond.false48.i73_crit_edge, %land.lhs.true33.i71.cond.false48.i73_crit_edge, %cond.end.i70.cond.false48.i73_crit_edge
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add28.i, i32 noundef %and20.i, i32 noundef 0) #6
  br label %mmhub_v2_0_enable_system_domain.exit

mmhub_v2_0_enable_system_domain.exit:             ; preds = %cond.false48.i73, %cond.true43.i
  %374 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %virt.i, align 8
  %and.i76 = and i32 %375, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool.not.i77 = icmp eq i32 %and.i76, 0
  br i1 %tobool.not.i77, label %cond.false.i80, label %mmhub_v2_0_enable_system_domain.exit.mmhub_v2_0_disable_identity_aperture.exit_crit_edge

mmhub_v2_0_enable_system_domain.exit.mmhub_v2_0_disable_identity_aperture.exit_crit_edge: ; preds = %mmhub_v2_0_enable_system_domain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmhub_v2_0_disable_identity_aperture.exit

cond.false.i80:                                   ; preds = %mmhub_v2_0_enable_system_domain.exit
  %376 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %arrayidx.i, align 8
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %377, align 4
  %add21.i79 = add i32 %379, 1682
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21.i79, i32 noundef -1, i32 noundef 0) #6
  %380 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %virt.i, align 8
  %and24.i = and i32 %381, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %cond.false.i80.cond.false47.i_crit_edge, label %land.lhs.true26.i

cond.false.i80.cond.false47.i_crit_edge:          ; preds = %cond.false.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

land.lhs.true26.i:                                ; preds = %cond.false.i80
  %funcs29.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %382 = ptrtoint ptr %funcs29.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %funcs29.i, align 4
  %tobool30.not.i = icmp eq ptr %383, null
  br i1 %tobool30.not.i, label %land.lhs.true26.i.cond.false47.i_crit_edge, label %land.lhs.true31.i

land.lhs.true26.i.cond.false47.i_crit_edge:       ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

land.lhs.true31.i:                                ; preds = %land.lhs.true26.i
  %sriov_wreg35.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %383, i32 0, i32 12
  %384 = ptrtoint ptr %sriov_wreg35.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %sriov_wreg35.i, align 4
  %tobool36.not.i81 = icmp eq ptr %385, null
  br i1 %tobool36.not.i81, label %land.lhs.true31.i.cond.false47.i_crit_edge, label %cond.true37.i

land.lhs.true31.i.cond.false47.i_crit_edge:       ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

cond.true37.i:                                    ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  %386 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx.i, align 8
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %387, align 4
  %add46.i = add i32 %389, 1683
  tail call void %385(ptr noundef %adev, i32 noundef %add46.i, i32 noundef 15, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end53.i82

cond.false47.i:                                   ; preds = %land.lhs.true31.i.cond.false47.i_crit_edge, %land.lhs.true26.i.cond.false47.i_crit_edge, %cond.false.i80.cond.false47.i_crit_edge
  %390 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %arrayidx.i, align 8
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %391, align 4
  %add52.i = add i32 %393, 1683
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add52.i, i32 noundef 15, i32 noundef 0) #6
  br label %cond.end53.i82

cond.end53.i82:                                   ; preds = %cond.false47.i, %cond.true37.i
  %394 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %virt.i, align 8
  %and56.i = and i32 %395, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %cond.end53.i82.cond.false79.i_crit_edge, label %land.lhs.true58.i

cond.end53.i82.cond.false79.i_crit_edge:          ; preds = %cond.end53.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79.i

land.lhs.true58.i:                                ; preds = %cond.end53.i82
  %funcs61.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %396 = ptrtoint ptr %funcs61.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %funcs61.i, align 4
  %tobool62.not.i83 = icmp eq ptr %397, null
  br i1 %tobool62.not.i83, label %land.lhs.true58.i.cond.false79.i_crit_edge, label %land.lhs.true63.i84

land.lhs.true58.i.cond.false79.i_crit_edge:       ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79.i

land.lhs.true63.i84:                              ; preds = %land.lhs.true58.i
  %sriov_wreg67.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %397, i32 0, i32 12
  %398 = ptrtoint ptr %sriov_wreg67.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %sriov_wreg67.i, align 4
  %tobool68.not.i = icmp eq ptr %399, null
  br i1 %tobool68.not.i, label %land.lhs.true63.i84.cond.false79.i_crit_edge, label %cond.true69.i

land.lhs.true63.i84.cond.false79.i_crit_edge:     ; preds = %land.lhs.true63.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79.i

cond.true69.i:                                    ; preds = %land.lhs.true63.i84
  call void @__sanitizer_cov_trace_pc() #8
  %400 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %arrayidx.i, align 8
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %401, align 4
  %add78.i = add i32 %403, 1684
  tail call void %399(ptr noundef %adev, i32 noundef %add78.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end85.i

cond.false79.i:                                   ; preds = %land.lhs.true63.i84.cond.false79.i_crit_edge, %land.lhs.true58.i.cond.false79.i_crit_edge, %cond.end53.i82.cond.false79.i_crit_edge
  %404 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %arrayidx.i, align 8
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %405, align 4
  %add84.i = add i32 %407, 1684
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add84.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end85.i

cond.end85.i:                                     ; preds = %cond.false79.i, %cond.true69.i
  %408 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %virt.i, align 8
  %and88.i = and i32 %409, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %cond.end85.i.cond.false111.i_crit_edge, label %land.lhs.true90.i

cond.end85.i.cond.false111.i_crit_edge:           ; preds = %cond.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111.i

land.lhs.true90.i:                                ; preds = %cond.end85.i
  %funcs93.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %410 = ptrtoint ptr %funcs93.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %funcs93.i, align 4
  %tobool94.not.i = icmp eq ptr %411, null
  br i1 %tobool94.not.i, label %land.lhs.true90.i.cond.false111.i_crit_edge, label %land.lhs.true95.i

land.lhs.true90.i.cond.false111.i_crit_edge:      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111.i

land.lhs.true95.i:                                ; preds = %land.lhs.true90.i
  %sriov_wreg99.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %411, i32 0, i32 12
  %412 = ptrtoint ptr %sriov_wreg99.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %sriov_wreg99.i, align 4
  %tobool100.not.i = icmp eq ptr %413, null
  br i1 %tobool100.not.i, label %land.lhs.true95.i.cond.false111.i_crit_edge, label %cond.true101.i

land.lhs.true95.i.cond.false111.i_crit_edge:      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111.i

cond.true101.i:                                   ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #8
  %414 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %arrayidx.i, align 8
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %415, align 4
  %add110.i = add i32 %417, 1685
  tail call void %413(ptr noundef %adev, i32 noundef %add110.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end117.i

cond.false111.i:                                  ; preds = %land.lhs.true95.i.cond.false111.i_crit_edge, %land.lhs.true90.i.cond.false111.i_crit_edge, %cond.end85.i.cond.false111.i_crit_edge
  %418 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %arrayidx.i, align 8
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %419, align 4
  %add116.i = add i32 %421, 1685
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add116.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end117.i

cond.end117.i:                                    ; preds = %cond.false111.i, %cond.true101.i
  %422 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %virt.i, align 8
  %and120.i = and i32 %423, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %cond.end117.i.cond.false143.i_crit_edge, label %land.lhs.true122.i

cond.end117.i.cond.false143.i_crit_edge:          ; preds = %cond.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false143.i

land.lhs.true122.i:                               ; preds = %cond.end117.i
  %funcs125.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %424 = ptrtoint ptr %funcs125.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %funcs125.i, align 4
  %tobool126.not.i = icmp eq ptr %425, null
  br i1 %tobool126.not.i, label %land.lhs.true122.i.cond.false143.i_crit_edge, label %land.lhs.true127.i

land.lhs.true122.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false143.i

land.lhs.true127.i:                               ; preds = %land.lhs.true122.i
  %sriov_wreg131.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %425, i32 0, i32 12
  %426 = ptrtoint ptr %sriov_wreg131.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %sriov_wreg131.i, align 4
  %tobool132.not.i = icmp eq ptr %427, null
  br i1 %tobool132.not.i, label %land.lhs.true127.i.cond.false143.i_crit_edge, label %cond.true133.i

land.lhs.true127.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false143.i

cond.true133.i:                                   ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #8
  %428 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx.i, align 8
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 4
  %add142.i = add i32 %431, 1686
  tail call void %427(ptr noundef %adev, i32 noundef %add142.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end149.i

cond.false143.i:                                  ; preds = %land.lhs.true127.i.cond.false143.i_crit_edge, %land.lhs.true122.i.cond.false143.i_crit_edge, %cond.end117.i.cond.false143.i_crit_edge
  %432 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %arrayidx.i, align 8
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %433, align 4
  %add148.i = add i32 %435, 1686
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add148.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end149.i

cond.end149.i:                                    ; preds = %cond.false143.i, %cond.true133.i
  %436 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %virt.i, align 8
  %and152.i = and i32 %437, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %cond.end149.i.cond.false175.i_crit_edge, label %land.lhs.true154.i

cond.end149.i.cond.false175.i_crit_edge:          ; preds = %cond.end149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false175.i

land.lhs.true154.i:                               ; preds = %cond.end149.i
  %funcs157.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %438 = ptrtoint ptr %funcs157.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %funcs157.i, align 4
  %tobool158.not.i = icmp eq ptr %439, null
  br i1 %tobool158.not.i, label %land.lhs.true154.i.cond.false175.i_crit_edge, label %land.lhs.true159.i

land.lhs.true154.i.cond.false175.i_crit_edge:     ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false175.i

land.lhs.true159.i:                               ; preds = %land.lhs.true154.i
  %sriov_wreg163.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %439, i32 0, i32 12
  %440 = ptrtoint ptr %sriov_wreg163.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %sriov_wreg163.i, align 4
  %tobool164.not.i = icmp eq ptr %441, null
  br i1 %tobool164.not.i, label %land.lhs.true159.i.cond.false175.i_crit_edge, label %cond.true165.i

land.lhs.true159.i.cond.false175.i_crit_edge:     ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false175.i

cond.true165.i:                                   ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #8
  %442 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %arrayidx.i, align 8
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %443, align 4
  %add174.i = add i32 %445, 1687
  tail call void %441(ptr noundef %adev, i32 noundef %add174.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_0_disable_identity_aperture.exit

cond.false175.i:                                  ; preds = %land.lhs.true159.i.cond.false175.i_crit_edge, %land.lhs.true154.i.cond.false175.i_crit_edge, %cond.end149.i.cond.false175.i_crit_edge
  %446 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %arrayidx.i, align 8
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %447, align 4
  %add180.i = add i32 %449, 1687
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add180.i, i32 noundef 0, i32 noundef 0) #6
  br label %mmhub_v2_0_disable_identity_aperture.exit

mmhub_v2_0_disable_identity_aperture.exit:        ; preds = %cond.false175.i, %cond.true165.i, %mmhub_v2_0_enable_system_domain.exit.mmhub_v2_0_disable_identity_aperture.exit_crit_edge
  %funcs.i86 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %num_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %noretry.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  %ctx_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  %ctx_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mmhub_v2_0_disable_identity_aperture.exit
  %i.0355.i = phi i32 [ 0, %mmhub_v2_0_disable_identity_aperture.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %450 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %virt.i, align 8
  %and.i87 = and i32 %451, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %for.body.i.cond.false.i97_crit_edge, label %land.lhs.true.i90

for.body.i.cond.false.i97_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i97

land.lhs.true.i90:                                ; preds = %for.body.i
  %452 = ptrtoint ptr %funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %funcs.i86, align 4
  %tobool1.not.i89 = icmp eq ptr %453, null
  br i1 %tobool1.not.i89, label %land.lhs.true.i90.cond.false.i97_crit_edge, label %land.lhs.true2.i93

land.lhs.true.i90.cond.false.i97_crit_edge:       ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i97

land.lhs.true2.i93:                               ; preds = %land.lhs.true.i90
  %sriov_rreg.i91 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %453, i32 0, i32 13
  %454 = ptrtoint ptr %sriov_rreg.i91 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %sriov_rreg.i91, align 4
  %tobool6.not.i92 = icmp eq ptr %455, null
  br i1 %tobool6.not.i92, label %land.lhs.true2.i93.cond.false.i97_crit_edge, label %cond.true.i96

land.lhs.true2.i93.cond.false.i97_crit_edge:      ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i97

cond.true.i96:                                    ; preds = %land.lhs.true2.i93
  call void @__sanitizer_cov_trace_pc() #8
  %456 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %arrayidx.i, align 8
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %457, align 4
  %add.i94 = add nuw nsw i32 %i.0355.i, 1729
  %add14.i = add i32 %add.i94, %459
  %call.i95 = tail call i32 %455(ptr noundef %adev, i32 noundef %add14.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i101

cond.false.i97:                                   ; preds = %land.lhs.true2.i93.cond.false.i97_crit_edge, %land.lhs.true.i90.cond.false.i97_crit_edge, %for.body.i.cond.false.i97_crit_edge
  %460 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %arrayidx.i, align 8
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %461, align 4
  %add19.i = add nuw nsw i32 %i.0355.i, 1729
  %add20.i = add i32 %add19.i, %463
  %call21.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i, i32 noundef 0) #6
  br label %cond.end.i101

cond.end.i101:                                    ; preds = %cond.false.i97, %cond.true.i96
  %cond.i98 = phi i32 [ %call.i95, %cond.true.i96 ], [ %call21.i, %cond.false.i97 ]
  %or.i99 = and i32 %cond.i98, -5592320
  %464 = ptrtoint ptr %num_level.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %num_level.i, align 8
  %shl.i = shl i32 %465, 1
  %and24.i100 = and i32 %shl.i, 6
  %466 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %block_size.i, align 4
  %sub.i = shl i32 %467, 3
  %shl42.i = add i32 %sub.i, 56
  %and43.i = and i32 %shl42.i, 120
  %468 = ptrtoint ptr %noretry.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %noretry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %469)
  %tobool46.not.i = icmp eq i32 %469, 0
  %shl47.i = select i1 %tobool46.not.i, i32 128, i32 0
  %and23.i = or i32 %or.i99, %and24.i100
  %or39.i = or i32 %and23.i, %and43.i
  %or44.i = or i32 %or39.i, %shl47.i
  %or49.i = or i32 %or44.i, 5592065
  %470 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %virt.i, align 8
  %and52.i = and i32 %471, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cond.end.i101.cond.false75.i_crit_edge, label %land.lhs.true54.i

cond.end.i101.cond.false75.i_crit_edge:           ; preds = %cond.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true54.i:                                ; preds = %cond.end.i101
  %472 = ptrtoint ptr %funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %funcs.i86, align 4
  %tobool58.not.i = icmp eq ptr %473, null
  br i1 %tobool58.not.i, label %land.lhs.true54.i.cond.false75.i_crit_edge, label %land.lhs.true59.i

land.lhs.true54.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true59.i:                                ; preds = %land.lhs.true54.i
  %sriov_wreg.i102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %473, i32 0, i32 12
  %474 = ptrtoint ptr %sriov_wreg.i102 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %sriov_wreg.i102, align 4
  %tobool63.not.i = icmp eq ptr %475, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i.cond.false75.i_crit_edge, label %cond.true64.i

land.lhs.true59.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

cond.true64.i:                                    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  %476 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %arrayidx.i, align 8
  %478 = ptrtoint ptr %477 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %477, align 4
  %add73.i = add i32 %479, 1729
  %480 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %ctx_distance.i, align 4
  %mul.i = mul i32 %481, %i.0355.i
  %add74.i = add i32 %add73.i, %mul.i
  tail call void %475(ptr noundef %adev, i32 noundef %add74.i, i32 noundef %or49.i, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end84.i

cond.false75.i:                                   ; preds = %land.lhs.true59.i.cond.false75.i_crit_edge, %land.lhs.true54.i.cond.false75.i_crit_edge, %cond.end.i101.cond.false75.i_crit_edge
  %482 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %arrayidx.i, align 8
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %483, align 4
  %add80.i = add i32 %485, 1729
  %486 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %ctx_distance.i, align 4
  %mul82.i = mul i32 %487, %i.0355.i
  %add83.i = add i32 %add80.i, %mul82.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add83.i, i32 noundef %or49.i, i32 noundef 0) #6
  br label %cond.end84.i

cond.end84.i:                                     ; preds = %cond.false75.i, %cond.true64.i
  %488 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %virt.i, align 8
  %and87.i = and i32 %489, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %cond.end84.i.cond.false112.i_crit_edge, label %land.lhs.true89.i

cond.end84.i.cond.false112.i_crit_edge:           ; preds = %cond.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

land.lhs.true89.i:                                ; preds = %cond.end84.i
  %490 = ptrtoint ptr %funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %funcs.i86, align 4
  %tobool93.not.i103 = icmp eq ptr %491, null
  br i1 %tobool93.not.i103, label %land.lhs.true89.i.cond.false112.i_crit_edge, label %land.lhs.true94.i104

land.lhs.true89.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

land.lhs.true94.i104:                             ; preds = %land.lhs.true89.i
  %sriov_wreg98.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %491, i32 0, i32 12
  %492 = ptrtoint ptr %sriov_wreg98.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %sriov_wreg98.i, align 4
  %tobool99.not.i = icmp eq ptr %493, null
  br i1 %tobool99.not.i, label %land.lhs.true94.i104.cond.false112.i_crit_edge, label %cond.true100.i

land.lhs.true94.i104.cond.false112.i_crit_edge:   ; preds = %land.lhs.true94.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

cond.true100.i:                                   ; preds = %land.lhs.true94.i104
  call void @__sanitizer_cov_trace_pc() #8
  %494 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %arrayidx.i, align 8
  %496 = ptrtoint ptr %495 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %495, align 4
  %add109.i = add i32 %497, 1869
  %498 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul110.i = mul i32 %499, %i.0355.i
  %add111.i = add i32 %add109.i, %mul110.i
  tail call void %493(ptr noundef %adev, i32 noundef %add111.i, i32 noundef 0, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end121.i

cond.false112.i:                                  ; preds = %land.lhs.true94.i104.cond.false112.i_crit_edge, %land.lhs.true89.i.cond.false112.i_crit_edge, %cond.end84.i.cond.false112.i_crit_edge
  %500 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %arrayidx.i, align 8
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %501, align 4
  %add117.i = add i32 %503, 1869
  %504 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul119.i = mul i32 %505, %i.0355.i
  %add120.i = add i32 %add117.i, %mul119.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add120.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end121.i

cond.end121.i:                                    ; preds = %cond.false112.i, %cond.true100.i
  %506 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %virt.i, align 8
  %and124.i = and i32 %507, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  br i1 %tobool125.not.i, label %cond.end121.i.cond.false150.i_crit_edge, label %land.lhs.true126.i

cond.end121.i.cond.false150.i_crit_edge:          ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

land.lhs.true126.i:                               ; preds = %cond.end121.i
  %508 = ptrtoint ptr %funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %funcs.i86, align 4
  %tobool130.not.i = icmp eq ptr %509, null
  br i1 %tobool130.not.i, label %land.lhs.true126.i.cond.false150.i_crit_edge, label %land.lhs.true131.i

land.lhs.true126.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

land.lhs.true131.i:                               ; preds = %land.lhs.true126.i
  %sriov_wreg135.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %509, i32 0, i32 12
  %510 = ptrtoint ptr %sriov_wreg135.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %sriov_wreg135.i, align 4
  %tobool136.not.i = icmp eq ptr %511, null
  br i1 %tobool136.not.i, label %land.lhs.true131.i.cond.false150.i_crit_edge, label %cond.true137.i

land.lhs.true131.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

cond.true137.i:                                   ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  %512 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %arrayidx.i, align 8
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %513, align 4
  %add146.i = add i32 %515, 1870
  %516 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul148.i = mul i32 %517, %i.0355.i
  %add149.i = add i32 %add146.i, %mul148.i
  tail call void %511(ptr noundef %adev, i32 noundef %add149.i, i32 noundef 0, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end159.i

cond.false150.i:                                  ; preds = %land.lhs.true131.i.cond.false150.i_crit_edge, %land.lhs.true126.i.cond.false150.i_crit_edge, %cond.end121.i.cond.false150.i_crit_edge
  %518 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %arrayidx.i, align 8
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %519, align 4
  %add155.i = add i32 %521, 1870
  %522 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul157.i = mul i32 %523, %i.0355.i
  %add158.i = add i32 %add155.i, %mul157.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add158.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end159.i

cond.end159.i:                                    ; preds = %cond.false150.i, %cond.true137.i
  %524 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %virt.i, align 8
  %and162.i = and i32 %525, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %tobool163.not.i105 = icmp eq i32 %and162.i, 0
  br i1 %tobool163.not.i105, label %cond.end159.i.cond.false191.i_crit_edge, label %land.lhs.true164.i

cond.end159.i.cond.false191.i_crit_edge:          ; preds = %cond.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

land.lhs.true164.i:                               ; preds = %cond.end159.i
  %526 = ptrtoint ptr %funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %funcs.i86, align 4
  %tobool168.not.i = icmp eq ptr %527, null
  br i1 %tobool168.not.i, label %land.lhs.true164.i.cond.false191.i_crit_edge, label %land.lhs.true169.i

land.lhs.true164.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

land.lhs.true169.i:                               ; preds = %land.lhs.true164.i
  %sriov_wreg173.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %527, i32 0, i32 12
  %528 = ptrtoint ptr %sriov_wreg173.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %sriov_wreg173.i, align 4
  %tobool174.not.i = icmp eq ptr %529, null
  br i1 %tobool174.not.i, label %land.lhs.true169.i.cond.false191.i_crit_edge, label %cond.true175.i

land.lhs.true169.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

cond.true175.i:                                   ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  %530 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %arrayidx.i, align 8
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %531, align 4
  %add184.i = add i32 %533, 1901
  %534 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul186.i = mul i32 %535, %i.0355.i
  %add187.i = add i32 %add184.i, %mul186.i
  %536 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %536)
  %537 = load i64, ptr %max_pfn.i, align 8
  %538 = trunc i64 %537 to i32
  %conv.i106 = add i32 %538, -1
  tail call void %529(ptr noundef %adev, i32 noundef %add187.i, i32 noundef %conv.i106, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end205.i

cond.false191.i:                                  ; preds = %land.lhs.true169.i.cond.false191.i_crit_edge, %land.lhs.true164.i.cond.false191.i_crit_edge, %cond.end159.i.cond.false191.i_crit_edge
  %539 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %arrayidx.i, align 8
  %541 = ptrtoint ptr %540 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %540, align 4
  %add196.i = add i32 %542, 1901
  %543 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul198.i = mul i32 %544, %i.0355.i
  %add199.i = add i32 %add196.i, %mul198.i
  %545 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %545)
  %546 = load i64, ptr %max_pfn.i, align 8
  %547 = trunc i64 %546 to i32
  %conv204.i = add i32 %547, -1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add199.i, i32 noundef %conv204.i, i32 noundef 0) #6
  br label %cond.end205.i

cond.end205.i:                                    ; preds = %cond.false191.i, %cond.true175.i
  %548 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %virt.i, align 8
  %and208.i107 = and i32 %549, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i107)
  %tobool209.not.i108 = icmp eq i32 %and208.i107, 0
  br i1 %tobool209.not.i108, label %cond.end205.i.cond.false239.i_crit_edge, label %land.lhs.true210.i110

cond.end205.i.cond.false239.i_crit_edge:          ; preds = %cond.end205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

land.lhs.true210.i110:                            ; preds = %cond.end205.i
  %550 = ptrtoint ptr %funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %funcs.i86, align 4
  %tobool214.not.i109 = icmp eq ptr %551, null
  br i1 %tobool214.not.i109, label %land.lhs.true210.i110.cond.false239.i_crit_edge, label %land.lhs.true215.i113

land.lhs.true210.i110.cond.false239.i_crit_edge:  ; preds = %land.lhs.true210.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

land.lhs.true215.i113:                            ; preds = %land.lhs.true210.i110
  %sriov_wreg219.i111 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %551, i32 0, i32 12
  %552 = ptrtoint ptr %sriov_wreg219.i111 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %sriov_wreg219.i111, align 4
  %tobool220.not.i112 = icmp eq ptr %553, null
  br i1 %tobool220.not.i112, label %land.lhs.true215.i113.cond.false239.i_crit_edge, label %cond.true221.i116

land.lhs.true215.i113.cond.false239.i_crit_edge:  ; preds = %land.lhs.true215.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

cond.true221.i116:                                ; preds = %land.lhs.true215.i113
  call void @__sanitizer_cov_trace_pc() #8
  %554 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx.i, align 8
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %555, align 4
  %add230.i114 = add i32 %557, 1902
  %558 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul232.i = mul i32 %559, %i.0355.i
  %add233.i = add i32 %add230.i114, %mul232.i
  %560 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %560)
  %561 = load i64, ptr %max_pfn.i, align 8
  %sub236.i = add i64 %561, -1
  %shr.i115 = lshr i64 %sub236.i, 32
  %conv238.i = trunc i64 %shr.i115 to i32
  tail call void %553(ptr noundef %adev, i32 noundef %add233.i, i32 noundef %conv238.i, i32 noundef 4, i32 noundef 11) #6
  br label %for.inc.i

cond.false239.i:                                  ; preds = %land.lhs.true215.i113.cond.false239.i_crit_edge, %land.lhs.true210.i110.cond.false239.i_crit_edge, %cond.end205.i.cond.false239.i_crit_edge
  %562 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %arrayidx.i, align 8
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %563, align 4
  %add244.i = add i32 %565, 1902
  %566 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul246.i = mul i32 %567, %i.0355.i
  %add247.i = add i32 %add244.i, %mul246.i
  %568 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %568)
  %569 = load i64, ptr %max_pfn.i, align 8
  %sub250.i = add i64 %569, -1
  %shr251.i = lshr i64 %sub250.i, 32
  %conv253.i = trunc i64 %shr251.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add247.i, i32 noundef %conv253.i, i32 noundef 0) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false239.i, %cond.true221.i116
  %inc.i = add nuw nsw i32 %i.0355.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %mmhub_v2_0_setup_vmid_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

mmhub_v2_0_setup_vmid_config.exit:                ; preds = %for.inc.i
  %eng_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  br label %for.body.i122

for.body.i122:                                    ; preds = %for.inc.i141.for.body.i122_crit_edge, %mmhub_v2_0_setup_vmid_config.exit
  %i.088.i = phi i32 [ 0, %mmhub_v2_0_setup_vmid_config.exit ], [ %inc.i139, %for.inc.i141.for.body.i122_crit_edge ]
  %570 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %virt.i, align 8
  %and.i120 = and i32 %571, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.not.i121 = icmp eq i32 %and.i120, 0
  br i1 %tobool.not.i121, label %for.body.i122.cond.false.i133_crit_edge, label %land.lhs.true.i124

for.body.i122.cond.false.i133_crit_edge:          ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i133

land.lhs.true.i124:                               ; preds = %for.body.i122
  %572 = ptrtoint ptr %funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %funcs.i86, align 4
  %tobool1.not.i123 = icmp eq ptr %573, null
  br i1 %tobool1.not.i123, label %land.lhs.true.i124.cond.false.i133_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i124.cond.false.i133_crit_edge:     ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i133

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i124
  %sriov_wreg.i125 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %573, i32 0, i32 12
  %574 = ptrtoint ptr %sriov_wreg.i125 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %sriov_wreg.i125, align 4
  %tobool6.not.i126 = icmp eq ptr %575, null
  br i1 %tobool6.not.i126, label %land.lhs.true2.i127.cond.false.i133_crit_edge, label %cond.true.i131

land.lhs.true2.i127.cond.false.i133_crit_edge:    ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i133

cond.true.i131:                                   ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #8
  %576 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %arrayidx.i, align 8
  %578 = ptrtoint ptr %577 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %577, align 4
  %add.i128 = add i32 %579, 1799
  %580 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %eng_addr_distance.i, align 4
  %mul.i129 = mul i32 %581, %i.088.i
  %add14.i130 = add i32 %add.i128, %mul.i129
  tail call void %575(ptr noundef %adev, i32 noundef %add14.i130, i32 noundef -1, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end.i134

cond.false.i133:                                  ; preds = %land.lhs.true2.i127.cond.false.i133_crit_edge, %land.lhs.true.i124.cond.false.i133_crit_edge, %for.body.i122.cond.false.i133_crit_edge
  %582 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %arrayidx.i, align 8
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %583, align 4
  %add19.i132 = add i32 %585, 1799
  %586 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %eng_addr_distance.i, align 4
  %mul21.i = mul i32 %587, %i.088.i
  %add22.i = add i32 %add19.i132, %mul21.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22.i, i32 noundef -1, i32 noundef 0) #6
  br label %cond.end.i134

cond.end.i134:                                    ; preds = %cond.false.i133, %cond.true.i131
  %588 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %virt.i, align 8
  %and25.i = and i32 %589, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %cond.end.i134.cond.false51.i_crit_edge, label %land.lhs.true27.i

cond.end.i134.cond.false51.i_crit_edge:           ; preds = %cond.end.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

land.lhs.true27.i:                                ; preds = %cond.end.i134
  %590 = ptrtoint ptr %funcs.i86 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %funcs.i86, align 4
  %tobool31.not.i135 = icmp eq ptr %591, null
  br i1 %tobool31.not.i135, label %land.lhs.true27.i.cond.false51.i_crit_edge, label %land.lhs.true32.i137

land.lhs.true27.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

land.lhs.true32.i137:                             ; preds = %land.lhs.true27.i
  %sriov_wreg36.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %591, i32 0, i32 12
  %592 = ptrtoint ptr %sriov_wreg36.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %sriov_wreg36.i, align 4
  %tobool37.not.i136 = icmp eq ptr %593, null
  br i1 %tobool37.not.i136, label %land.lhs.true32.i137.cond.false51.i_crit_edge, label %cond.true38.i

land.lhs.true32.i137.cond.false51.i_crit_edge:    ; preds = %land.lhs.true32.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

cond.true38.i:                                    ; preds = %land.lhs.true32.i137
  call void @__sanitizer_cov_trace_pc() #8
  %594 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %arrayidx.i, align 8
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %595, align 4
  %add47.i = add i32 %597, 1800
  %598 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %eng_addr_distance.i, align 4
  %mul49.i = mul i32 %599, %i.088.i
  %add50.i = add i32 %add47.i, %mul49.i
  tail call void %593(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 31, i32 noundef 4, i32 noundef 11) #6
  br label %for.inc.i141

cond.false51.i:                                   ; preds = %land.lhs.true32.i137.cond.false51.i_crit_edge, %land.lhs.true27.i.cond.false51.i_crit_edge, %cond.end.i134.cond.false51.i_crit_edge
  %600 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %arrayidx.i, align 8
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %601, align 4
  %add56.i = add i32 %603, 1800
  %604 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %eng_addr_distance.i, align 4
  %mul58.i = mul i32 %605, %i.088.i
  %add59.i138 = add i32 %add56.i, %mul58.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i138, i32 noundef 31, i32 noundef 0) #6
  br label %for.inc.i141

for.inc.i141:                                     ; preds = %cond.false51.i, %cond.true38.i
  %inc.i139 = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i140 = icmp eq i32 %inc.i139, 18
  br i1 %exitcond.not.i140, label %mmhub_v2_0_program_invalidation.exit, label %for.inc.i141.for.body.i122_crit_edge

for.inc.i141.for.body.i122_crit_edge:             ; preds = %for.inc.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i122

mmhub_v2_0_program_invalidation.exit:             ; preds = %for.inc.i141
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v2_0_set_fault_enable_default(ptr noundef %adev, i1 noundef zeroext %value) #1 align 64 {
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
  br i1 %tobool.not, label %cond.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %entry
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %2 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx18, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add21 = add i32 %5, 1672
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21, i32 noundef 0) #6
  %and23 = and i32 %call22, -8189
  %and80 = select i1 %value, i32 8188, i32 0
  %or85 = or i32 %and80, %and23
  %or91 = or i32 %or85, -1073741824
  %tmp.0 = select i1 %value, i32 %or85, i32 %or91
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and95 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %cond.false.cond.false117_crit_edge, label %land.lhs.true97

cond.false.cond.false117_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false117

land.lhs.true97:                                  ; preds = %cond.false
  %funcs100 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs100 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs100, align 4
  %tobool101.not = icmp eq ptr %9, null
  br i1 %tobool101.not, label %land.lhs.true97.cond.false117_crit_edge, label %land.lhs.true102

land.lhs.true97.cond.false117_crit_edge:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false117

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_wreg, align 4
  %tobool106.not = icmp eq ptr %11, null
  br i1 %tobool106.not, label %land.lhs.true102.cond.false117_crit_edge, label %cond.true107

land.lhs.true102.cond.false117_crit_edge:         ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false117

cond.true107:                                     ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add116 = add i32 %15, 1672
  tail call void %11(ptr noundef %adev, i32 noundef %add116, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 11) #6
  br label %cleanup

cond.false117:                                    ; preds = %land.lhs.true102.cond.false117_crit_edge, %land.lhs.true97.cond.false117_crit_edge, %cond.false.cond.false117_crit_edge
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add122 = add i32 %19, 1672
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add122, i32 noundef %tmp.0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.false117, %cond.true107, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v2_0_gart_disable(ptr noundef %adev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %ctx_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0260 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
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
  %add = add i32 %9, 1728
  %10 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_distance, align 4
  %mul = mul i32 %11, %i.0260
  %add14 = add i32 %add, %mul
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef 0, i32 noundef 4, i32 noundef 11) #6
  br label %for.inc

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19 = add i32 %15, 1728
  %16 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctx_distance, align 4
  %mul21 = mul i32 %17, %i.0260
  %add22 = add i32 %add19, %mul21
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %cond.true
  %inc = add nuw nsw i32 %i.0260, 1
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
  %add46 = add i32 %27, 2163
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add46, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true32.cond.false47_crit_edge, %land.lhs.true27.cond.false47_crit_edge, %for.end.cond.false47_crit_edge
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add52 = add i32 %31, 2163
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
  %add82 = add i32 %41, 2163
  tail call void %37(ptr noundef %adev, i32 noundef %add82, i32 noundef %and56, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end89

cond.false83:                                     ; preds = %land.lhs.true67.cond.false83_crit_edge, %land.lhs.true62.cond.false83_crit_edge, %cond.end54.cond.false83_crit_edge
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx11, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add88 = add i32 %45, 2163
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add88, i32 noundef %and56, i32 noundef 0) #6
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false83, %cond.true73
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and92 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %cond.end89.cond.false116_crit_edge, label %land.lhs.true94

cond.end89.cond.false116_crit_edge:               ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false116

land.lhs.true94:                                  ; preds = %cond.end89
  %48 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs, align 4
  %tobool98.not = icmp eq ptr %49, null
  br i1 %tobool98.not, label %land.lhs.true94.cond.false116_crit_edge, label %land.lhs.true99

land.lhs.true94.cond.false116_crit_edge:          ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false116

land.lhs.true99:                                  ; preds = %land.lhs.true94
  %sriov_rreg103 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %sriov_rreg103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sriov_rreg103, align 4
  %tobool104.not = icmp eq ptr %51, null
  br i1 %tobool104.not, label %land.lhs.true99.cond.false116_crit_edge, label %cond.true105

land.lhs.true99.cond.false116_crit_edge:          ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false116

cond.true105:                                     ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx11, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add114 = add i32 %55, 1664
  %call115 = tail call i32 %51(ptr noundef %adev, i32 noundef %add114, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end123

cond.false116:                                    ; preds = %land.lhs.true99.cond.false116_crit_edge, %land.lhs.true94.cond.false116_crit_edge, %cond.end89.cond.false116_crit_edge
  %56 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx11, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add121 = add i32 %59, 1664
  %call122 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add121, i32 noundef 0) #6
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false116, %cond.true105
  %cond124 = phi i32 [ %call115, %cond.true105 ], [ %call122, %cond.false116 ]
  %and125 = and i32 %cond124, -2
  %60 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %virt, align 8
  %and129 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %cond.end123.cond.false152_crit_edge, label %land.lhs.true131

cond.end123.cond.false152_crit_edge:              ; preds = %cond.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false152

land.lhs.true131:                                 ; preds = %cond.end123
  %62 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs, align 4
  %tobool135.not = icmp eq ptr %63, null
  br i1 %tobool135.not, label %land.lhs.true131.cond.false152_crit_edge, label %land.lhs.true136

land.lhs.true131.cond.false152_crit_edge:         ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false152

land.lhs.true136:                                 ; preds = %land.lhs.true131
  %sriov_wreg140 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %sriov_wreg140 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sriov_wreg140, align 4
  %tobool141.not = icmp eq ptr %65, null
  br i1 %tobool141.not, label %land.lhs.true136.cond.false152_crit_edge, label %cond.true142

land.lhs.true136.cond.false152_crit_edge:         ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false152

cond.true142:                                     ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx11, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add151 = add i32 %69, 1664
  tail call void %65(ptr noundef %adev, i32 noundef %add151, i32 noundef %and125, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end158

cond.false152:                                    ; preds = %land.lhs.true136.cond.false152_crit_edge, %land.lhs.true131.cond.false152_crit_edge, %cond.end123.cond.false152_crit_edge
  %70 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx11, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add157 = add i32 %73, 1664
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add157, i32 noundef %and125, i32 noundef 0) #6
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false152, %cond.true142
  %74 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %virt, align 8
  %and161 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %cond.end158.cond.false184_crit_edge, label %land.lhs.true163

cond.end158.cond.false184_crit_edge:              ; preds = %cond.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184

land.lhs.true163:                                 ; preds = %cond.end158
  %76 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %funcs, align 4
  %tobool167.not = icmp eq ptr %77, null
  br i1 %tobool167.not, label %land.lhs.true163.cond.false184_crit_edge, label %land.lhs.true168

land.lhs.true163.cond.false184_crit_edge:         ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184

land.lhs.true168:                                 ; preds = %land.lhs.true163
  %sriov_wreg172 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %sriov_wreg172 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sriov_wreg172, align 4
  %tobool173.not = icmp eq ptr %79, null
  br i1 %tobool173.not, label %land.lhs.true168.cond.false184_crit_edge, label %cond.true174

land.lhs.true168.cond.false184_crit_edge:         ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184

cond.true174:                                     ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx11, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add183 = add i32 %83, 1666
  tail call void %79(ptr noundef %adev, i32 noundef %add183, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end190

cond.false184:                                    ; preds = %land.lhs.true168.cond.false184_crit_edge, %land.lhs.true163.cond.false184_crit_edge, %cond.end158.cond.false184_crit_edge
  %84 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx11, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  %add189 = add i32 %87, 1666
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add189, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false184, %cond.true174
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v2_0_set_clockgating(ptr noundef %adev, i32 noundef %state) #1 align 64 {
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
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 131072, label %if.end.sw.bb_crit_edge
    i32 131074, label %if.end.sw.bb_crit_edge54
    i32 131328, label %if.end.sw.bb_crit_edge55
    i32 131329, label %if.end.sw.bb_crit_edge56
    i32 131330, label %if.end.sw.bb_crit_edge57
  ]

if.end.sw.bb_crit_edge57:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge56:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge55:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge54:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge54, %if.end.sw.bb_crit_edge55, %if.end.sw.bb_crit_edge56, %if.end.sw.bb_crit_edge57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %5 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cg_flags.i, align 8
  %and.i = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge, label %if.end.i

sw.bb.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmhub_v2_0_update_medium_grain_clock_gating.exit

if.end.i:                                         ; preds = %sw.bb
  %.off.i = add nsw i32 %3, -131328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %arrayidx18.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %7 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx18.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  br i1 %switch.i, label %cond.end.i, label %cond.end91.i

cond.end.i:                                       ; preds = %if.end.i
  %add21.i = add i32 %10, 1613
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21.i, i32 noundef 0) #6
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %virt, align 8
  %and25.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %cond.end.i.cond.false49.i_crit_edge, label %land.lhs.true27.i

cond.end.i.cond.false49.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49.i

land.lhs.true27.i:                                ; preds = %cond.end.i
  %funcs30.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %13 = ptrtoint ptr %funcs30.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs30.i, align 4
  %tobool31.not.i = icmp eq ptr %14, null
  br i1 %tobool31.not.i, label %land.lhs.true27.i.cond.false49.i_crit_edge, label %land.lhs.true32.i

land.lhs.true27.i.cond.false49.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49.i

land.lhs.true32.i:                                ; preds = %land.lhs.true27.i
  %sriov_rreg36.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %sriov_rreg36.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sriov_rreg36.i, align 4
  %tobool37.not.i = icmp eq ptr %16, null
  br i1 %tobool37.not.i, label %land.lhs.true32.i.cond.false49.i_crit_edge, label %cond.true38.i

land.lhs.true32.i.cond.false49.i_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49.i

cond.true38.i:                                    ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add47.i = add i32 %20, 112
  %call48.i = tail call i32 %16(ptr noundef %adev, i32 noundef %add47.i, i32 noundef 0, i32 noundef 11) #6
  br label %sw.epilog.i

cond.false49.i:                                   ; preds = %land.lhs.true32.i.cond.false49.i_crit_edge, %land.lhs.true27.i.cond.false49.i_crit_edge, %cond.end.i.cond.false49.i_crit_edge
  %21 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx18.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add54.i = add i32 %24, 112
  %call55.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add54.i, i32 noundef 0) #6
  br label %sw.epilog.i

cond.end91.i:                                     ; preds = %if.end.i
  %add89.i = add i32 %10, 1610
  %call90.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add89.i, i32 noundef 0) #6
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %virt, align 8
  %and95.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %cond.end91.i.cond.false119.i_crit_edge, label %land.lhs.true97.i

cond.end91.i.cond.false119.i_crit_edge:           ; preds = %cond.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false119.i

land.lhs.true97.i:                                ; preds = %cond.end91.i
  %funcs100.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %27 = ptrtoint ptr %funcs100.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs100.i, align 4
  %tobool101.not.i = icmp eq ptr %28, null
  br i1 %tobool101.not.i, label %land.lhs.true97.i.cond.false119.i_crit_edge, label %land.lhs.true102.i

land.lhs.true97.i.cond.false119.i_crit_edge:      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false119.i

land.lhs.true102.i:                               ; preds = %land.lhs.true97.i
  %sriov_rreg106.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %sriov_rreg106.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sriov_rreg106.i, align 4
  %tobool107.not.i = icmp eq ptr %30, null
  br i1 %tobool107.not.i, label %land.lhs.true102.i.cond.false119.i_crit_edge, label %cond.true108.i

land.lhs.true102.i.cond.false119.i_crit_edge:     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false119.i

cond.true108.i:                                   ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx18.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add117.i = add i32 %34, 113
  %call118.i = tail call i32 %30(ptr noundef %adev, i32 noundef %add117.i, i32 noundef 0, i32 noundef 11) #6
  br label %sw.epilog.i

cond.false119.i:                                  ; preds = %land.lhs.true102.i.cond.false119.i_crit_edge, %land.lhs.true97.i.cond.false119.i_crit_edge, %cond.end91.i.cond.false119.i_crit_edge
  %35 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx18.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add124.i = add i32 %38, 113
  %call125.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add124.i, i32 noundef 0) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cond.false119.i, %cond.true108.i, %cond.false49.i, %cond.true38.i
  %data.0.i = phi i32 [ %call22.i, %cond.false49.i ], [ %call22.i, %cond.true38.i ], [ %call90.i, %cond.false119.i ], [ %call90.i, %cond.true108.i ]
  %data1.0.i = phi i32 [ %call55.i, %cond.false49.i ], [ %call48.i, %cond.true38.i ], [ %call125.i, %cond.false119.i ], [ %call118.i, %cond.true108.i ]
  %and130.i = and i32 %data1.0.i, -253
  %and131.i = and i32 %data.0.i, -262145
  %masksel.i = select i1 %cmp, i32 262144, i32 0
  %data.1.i = or i32 %and131.i, %masksel.i
  %masksel380.i = select i1 %cmp, i32 0, i32 252
  %data1.1.i = or i32 %and130.i, %masksel380.i
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %.off378.i = add i32 %40, -131328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off378.i)
  %switch379.i = icmp ult i32 %.off378.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %data.0.i, i32 %data.1.i)
  %cmp.not.i = icmp eq i32 %data.0.i, %data.1.i
  br i1 %switch379.i, label %sw.bb137.i, label %sw.default206.i

sw.bb137.i:                                       ; preds = %sw.epilog.i
  br i1 %cmp.not.i, label %sw.bb137.i.if.end170.i_crit_edge, label %if.then138.i

sw.bb137.i.if.end170.i_crit_edge:                 ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170.i

if.then138.i:                                     ; preds = %sw.bb137.i
  %41 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %virt, align 8
  %and141.i = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i)
  %tobool142.not.i = icmp eq i32 %and141.i, 0
  br i1 %tobool142.not.i, label %if.then138.i.cond.false163.i_crit_edge, label %land.lhs.true143.i

if.then138.i.cond.false163.i_crit_edge:           ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false163.i

land.lhs.true143.i:                               ; preds = %if.then138.i
  %funcs146.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %43 = ptrtoint ptr %funcs146.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %funcs146.i, align 4
  %tobool147.not.i = icmp eq ptr %44, null
  br i1 %tobool147.not.i, label %land.lhs.true143.i.cond.false163.i_crit_edge, label %land.lhs.true148.i

land.lhs.true143.i.cond.false163.i_crit_edge:     ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false163.i

land.lhs.true148.i:                               ; preds = %land.lhs.true143.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool152.not.i = icmp eq ptr %46, null
  br i1 %tobool152.not.i, label %land.lhs.true148.i.cond.false163.i_crit_edge, label %cond.true153.i

land.lhs.true148.i.cond.false163.i_crit_edge:     ; preds = %land.lhs.true148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false163.i

cond.true153.i:                                   ; preds = %land.lhs.true148.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx159.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %47 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx159.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add162.i = add i32 %50, 1613
  tail call void %46(ptr noundef %adev, i32 noundef %add162.i, i32 noundef %data.1.i, i32 noundef 0, i32 noundef 11) #6
  br label %if.end170.i

cond.false163.i:                                  ; preds = %land.lhs.true148.i.cond.false163.i_crit_edge, %land.lhs.true143.i.cond.false163.i_crit_edge, %if.then138.i.cond.false163.i_crit_edge
  %arrayidx165.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %51 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx165.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add168.i = add i32 %54, 1613
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add168.i, i32 noundef %data.1.i, i32 noundef 0) #6
  br label %if.end170.i

if.end170.i:                                      ; preds = %cond.false163.i, %cond.true153.i, %sw.bb137.i.if.end170.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %data1.0.i, i32 %data1.1.i)
  %cmp171.not.i = icmp eq i32 %data1.0.i, %data1.1.i
  br i1 %cmp171.not.i, label %if.end170.i.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge, label %if.then172.i

if.end170.i.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmhub_v2_0_update_medium_grain_clock_gating.exit

if.then172.i:                                     ; preds = %if.end170.i
  %55 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %virt, align 8
  %and175.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.not.i, label %if.then172.i.cond.false198.i_crit_edge, label %land.lhs.true177.i

if.then172.i.cond.false198.i_crit_edge:           ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false198.i

land.lhs.true177.i:                               ; preds = %if.then172.i
  %funcs180.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %57 = ptrtoint ptr %funcs180.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %funcs180.i, align 4
  %tobool181.not.i = icmp eq ptr %58, null
  br i1 %tobool181.not.i, label %land.lhs.true177.i.cond.false198.i_crit_edge, label %land.lhs.true182.i

land.lhs.true177.i.cond.false198.i_crit_edge:     ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false198.i

land.lhs.true182.i:                               ; preds = %land.lhs.true177.i
  %sriov_wreg186.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %sriov_wreg186.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sriov_wreg186.i, align 4
  %tobool187.not.i = icmp eq ptr %60, null
  br i1 %tobool187.not.i, label %land.lhs.true182.i.cond.false198.i_crit_edge, label %cond.true188.i

land.lhs.true182.i.cond.false198.i_crit_edge:     ; preds = %land.lhs.true182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false198.i

cond.true188.i:                                   ; preds = %land.lhs.true182.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx194.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %61 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx194.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %add197.i = add i32 %64, 112
  tail call void %60(ptr noundef %adev, i32 noundef %add197.i, i32 noundef %data1.1.i, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_0_update_medium_grain_clock_gating.exit

cond.false198.i:                                  ; preds = %land.lhs.true182.i.cond.false198.i_crit_edge, %land.lhs.true177.i.cond.false198.i_crit_edge, %if.then172.i.cond.false198.i_crit_edge
  %arrayidx200.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %65 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx200.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add203.i = add i32 %68, 112
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add203.i, i32 noundef %data1.1.i, i32 noundef 0) #6
  br label %mmhub_v2_0_update_medium_grain_clock_gating.exit

sw.default206.i:                                  ; preds = %sw.epilog.i
  br i1 %cmp.not.i, label %sw.default206.i.if.end241.i_crit_edge, label %if.then208.i

sw.default206.i.if.end241.i_crit_edge:            ; preds = %sw.default206.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241.i

if.then208.i:                                     ; preds = %sw.default206.i
  %69 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virt, align 8
  %and211.i = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i)
  %tobool212.not.i = icmp eq i32 %and211.i, 0
  br i1 %tobool212.not.i, label %if.then208.i.cond.false234.i_crit_edge, label %land.lhs.true213.i

if.then208.i.cond.false234.i_crit_edge:           ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false234.i

land.lhs.true213.i:                               ; preds = %if.then208.i
  %funcs216.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %71 = ptrtoint ptr %funcs216.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %funcs216.i, align 4
  %tobool217.not.i = icmp eq ptr %72, null
  br i1 %tobool217.not.i, label %land.lhs.true213.i.cond.false234.i_crit_edge, label %land.lhs.true218.i

land.lhs.true213.i.cond.false234.i_crit_edge:     ; preds = %land.lhs.true213.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false234.i

land.lhs.true218.i:                               ; preds = %land.lhs.true213.i
  %sriov_wreg222.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %sriov_wreg222.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sriov_wreg222.i, align 4
  %tobool223.not.i = icmp eq ptr %74, null
  br i1 %tobool223.not.i, label %land.lhs.true218.i.cond.false234.i_crit_edge, label %cond.true224.i

land.lhs.true218.i.cond.false234.i_crit_edge:     ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false234.i

cond.true224.i:                                   ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx230.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %75 = ptrtoint ptr %arrayidx230.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx230.i, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add233.i = add i32 %78, 1610
  tail call void %74(ptr noundef %adev, i32 noundef %add233.i, i32 noundef %data.1.i, i32 noundef 0, i32 noundef 11) #6
  br label %if.end241.i

cond.false234.i:                                  ; preds = %land.lhs.true218.i.cond.false234.i_crit_edge, %land.lhs.true213.i.cond.false234.i_crit_edge, %if.then208.i.cond.false234.i_crit_edge
  %arrayidx236.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %79 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx236.i, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add239.i = add i32 %82, 1610
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add239.i, i32 noundef %data.1.i, i32 noundef 0) #6
  br label %if.end241.i

if.end241.i:                                      ; preds = %cond.false234.i, %cond.true224.i, %sw.default206.i.if.end241.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %data1.0.i, i32 %data1.1.i)
  %cmp242.not.i = icmp eq i32 %data1.0.i, %data1.1.i
  br i1 %cmp242.not.i, label %if.end241.i.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge, label %if.then243.i

if.end241.i.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmhub_v2_0_update_medium_grain_clock_gating.exit

if.then243.i:                                     ; preds = %if.end241.i
  %83 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %virt, align 8
  %and246.i = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246.i)
  %tobool247.not.i = icmp eq i32 %and246.i, 0
  br i1 %tobool247.not.i, label %if.then243.i.cond.false269.i_crit_edge, label %land.lhs.true248.i

if.then243.i.cond.false269.i_crit_edge:           ; preds = %if.then243.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false269.i

land.lhs.true248.i:                               ; preds = %if.then243.i
  %funcs251.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %85 = ptrtoint ptr %funcs251.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %funcs251.i, align 4
  %tobool252.not.i = icmp eq ptr %86, null
  br i1 %tobool252.not.i, label %land.lhs.true248.i.cond.false269.i_crit_edge, label %land.lhs.true253.i

land.lhs.true248.i.cond.false269.i_crit_edge:     ; preds = %land.lhs.true248.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false269.i

land.lhs.true253.i:                               ; preds = %land.lhs.true248.i
  %sriov_wreg257.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %86, i32 0, i32 12
  %87 = ptrtoint ptr %sriov_wreg257.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sriov_wreg257.i, align 4
  %tobool258.not.i = icmp eq ptr %88, null
  br i1 %tobool258.not.i, label %land.lhs.true253.i.cond.false269.i_crit_edge, label %cond.true259.i

land.lhs.true253.i.cond.false269.i_crit_edge:     ; preds = %land.lhs.true253.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false269.i

cond.true259.i:                                   ; preds = %land.lhs.true253.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx265.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %89 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx265.i, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %add268.i = add i32 %92, 113
  tail call void %88(ptr noundef %adev, i32 noundef %add268.i, i32 noundef %data1.1.i, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_0_update_medium_grain_clock_gating.exit

cond.false269.i:                                  ; preds = %land.lhs.true253.i.cond.false269.i_crit_edge, %land.lhs.true248.i.cond.false269.i_crit_edge, %if.then243.i.cond.false269.i_crit_edge
  %arrayidx271.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %93 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx271.i, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %add274.i = add i32 %96, 113
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add274.i, i32 noundef %data1.1.i, i32 noundef 0) #6
  br label %mmhub_v2_0_update_medium_grain_clock_gating.exit

mmhub_v2_0_update_medium_grain_clock_gating.exit: ; preds = %cond.false269.i, %cond.true259.i, %if.end241.i.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge, %cond.false198.i, %cond.true188.i, %if.end170.i.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge, %sw.bb.mmhub_v2_0_update_medium_grain_clock_gating.exit_crit_edge
  %97 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cg_flags.i, align 8
  %and.i8 = and i32 %98, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %mmhub_v2_0_update_medium_grain_clock_gating.exit.return_crit_edge, label %if.end.i16

mmhub_v2_0_update_medium_grain_clock_gating.exit.return_crit_edge: ; preds = %mmhub_v2_0_update_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i16:                                       ; preds = %mmhub_v2_0_update_medium_grain_clock_gating.exit
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx, align 4
  %.off.i11 = add i32 %100, -131328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i11)
  %switch.i12 = icmp ult i32 %.off.i11, 3
  %101 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %virt, align 8
  %and2.i14 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i14)
  %tobool3.not.i15 = icmp eq i32 %and2.i14, 0
  br i1 %switch.i12, label %sw.bb.i17, label %sw.default.i32

sw.bb.i17:                                        ; preds = %if.end.i16
  br i1 %tobool3.not.i15, label %sw.bb.i17.cond.false.i31_crit_edge, label %land.lhs.true.i20

sw.bb.i17.cond.false.i31_crit_edge:               ; preds = %sw.bb.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i31

land.lhs.true.i20:                                ; preds = %sw.bb.i17
  %funcs.i18 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %103 = ptrtoint ptr %funcs.i18 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %funcs.i18, align 4
  %tobool4.not.i19 = icmp eq ptr %104, null
  br i1 %tobool4.not.i19, label %land.lhs.true.i20.cond.false.i31_crit_edge, label %land.lhs.true5.i23

land.lhs.true.i20.cond.false.i31_crit_edge:       ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i31

land.lhs.true5.i23:                               ; preds = %land.lhs.true.i20
  %sriov_rreg.i21 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %104, i32 0, i32 13
  %105 = ptrtoint ptr %sriov_rreg.i21 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sriov_rreg.i21, align 4
  %tobool9.not.i22 = icmp eq ptr %106, null
  br i1 %tobool9.not.i22, label %land.lhs.true5.i23.cond.false.i31_crit_edge, label %cond.true.i27

land.lhs.true5.i23.cond.false.i31_crit_edge:      ; preds = %land.lhs.true5.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i31

cond.true.i27:                                    ; preds = %land.lhs.true5.i23
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx14.i24 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %107 = ptrtoint ptr %arrayidx14.i24 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx14.i24, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %add.i25 = add i32 %110, 1613
  %call.i26 = tail call i32 %106(ptr noundef %adev, i32 noundef %add.i25, i32 noundef 0, i32 noundef 11) #6
  br label %sw.epilog.i51

cond.false.i31:                                   ; preds = %land.lhs.true5.i23.cond.false.i31_crit_edge, %land.lhs.true.i20.cond.false.i31_crit_edge, %sw.bb.i17.cond.false.i31_crit_edge
  %arrayidx18.i28 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %111 = ptrtoint ptr %arrayidx18.i28 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx18.i28, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %add21.i29 = add i32 %114, 1613
  %call22.i30 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21.i29, i32 noundef 0) #6
  br label %sw.epilog.i51

sw.default.i32:                                   ; preds = %if.end.i16
  br i1 %tobool3.not.i15, label %sw.default.i32.cond.false49.i46_crit_edge, label %land.lhs.true27.i35

sw.default.i32.cond.false49.i46_crit_edge:        ; preds = %sw.default.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49.i46

land.lhs.true27.i35:                              ; preds = %sw.default.i32
  %funcs30.i33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %115 = ptrtoint ptr %funcs30.i33 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %funcs30.i33, align 4
  %tobool31.not.i34 = icmp eq ptr %116, null
  br i1 %tobool31.not.i34, label %land.lhs.true27.i35.cond.false49.i46_crit_edge, label %land.lhs.true32.i38

land.lhs.true27.i35.cond.false49.i46_crit_edge:   ; preds = %land.lhs.true27.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49.i46

land.lhs.true32.i38:                              ; preds = %land.lhs.true27.i35
  %sriov_rreg36.i36 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %sriov_rreg36.i36 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sriov_rreg36.i36, align 4
  %tobool37.not.i37 = icmp eq ptr %118, null
  br i1 %tobool37.not.i37, label %land.lhs.true32.i38.cond.false49.i46_crit_edge, label %cond.true38.i42

land.lhs.true32.i38.cond.false49.i46_crit_edge:   ; preds = %land.lhs.true32.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49.i46

cond.true38.i42:                                  ; preds = %land.lhs.true32.i38
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44.i39 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %119 = ptrtoint ptr %arrayidx44.i39 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx44.i39, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %add47.i40 = add i32 %122, 1610
  %call48.i41 = tail call i32 %118(ptr noundef %adev, i32 noundef %add47.i40, i32 noundef 0, i32 noundef 11) #6
  br label %sw.epilog.i51

cond.false49.i46:                                 ; preds = %land.lhs.true32.i38.cond.false49.i46_crit_edge, %land.lhs.true27.i35.cond.false49.i46_crit_edge, %sw.default.i32.cond.false49.i46_crit_edge
  %arrayidx51.i43 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %123 = ptrtoint ptr %arrayidx51.i43 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx51.i43, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %add54.i44 = add i32 %126, 1610
  %call55.i45 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add54.i44, i32 noundef 0) #6
  br label %sw.epilog.i51

sw.epilog.i51:                                    ; preds = %cond.false49.i46, %cond.true38.i42, %cond.false.i31, %cond.true.i27
  %data.0.i47 = phi i32 [ %call.i26, %cond.true.i27 ], [ %call22.i30, %cond.false.i31 ], [ %call48.i41, %cond.true38.i42 ], [ %call55.i45, %cond.false49.i46 ]
  %and60.i = and i32 %data.0.i47, -524289
  %masksel.i48 = select i1 %cmp, i32 524288, i32 0
  %data.1.i49 = or i32 %and60.i, %masksel.i48
  call void @__sanitizer_cov_trace_cmp4(i32 %data.0.i47, i32 %data.1.i49)
  %cmp.not.i50 = icmp eq i32 %data.0.i47, %data.1.i49
  br i1 %cmp.not.i50, label %sw.epilog.i51.return_crit_edge, label %if.then62.i

sw.epilog.i51.return_crit_edge:                   ; preds = %sw.epilog.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then62.i:                                      ; preds = %sw.epilog.i51
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx, align 4
  %.off181.i = add i32 %128, -131328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off181.i)
  %switch182.i = icmp ult i32 %.off181.i, 3
  %129 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %virt, align 8
  %and69.i = and i32 %130, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %switch182.i, label %sw.bb66.i, label %sw.default98.i

sw.bb66.i:                                        ; preds = %if.then62.i
  br i1 %tobool70.not.i, label %sw.bb66.i.cond.false91.i_crit_edge, label %land.lhs.true71.i

sw.bb66.i.cond.false91.i_crit_edge:               ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false91.i

land.lhs.true71.i:                                ; preds = %sw.bb66.i
  %funcs74.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %131 = ptrtoint ptr %funcs74.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %funcs74.i, align 4
  %tobool75.not.i = icmp eq ptr %132, null
  br i1 %tobool75.not.i, label %land.lhs.true71.i.cond.false91.i_crit_edge, label %land.lhs.true76.i

land.lhs.true71.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false91.i

land.lhs.true76.i:                                ; preds = %land.lhs.true71.i
  %sriov_wreg.i52 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %132, i32 0, i32 12
  %133 = ptrtoint ptr %sriov_wreg.i52 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sriov_wreg.i52, align 4
  %tobool80.not.i = icmp eq ptr %134, null
  br i1 %tobool80.not.i, label %land.lhs.true76.i.cond.false91.i_crit_edge, label %cond.true81.i

land.lhs.true76.i.cond.false91.i_crit_edge:       ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false91.i

cond.true81.i:                                    ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx87.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %135 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx87.i, align 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %add90.i = add i32 %138, 1613
  tail call void %134(ptr noundef %adev, i32 noundef %add90.i, i32 noundef %data.1.i49, i32 noundef 0, i32 noundef 11) #6
  br label %return

cond.false91.i:                                   ; preds = %land.lhs.true76.i.cond.false91.i_crit_edge, %land.lhs.true71.i.cond.false91.i_crit_edge, %sw.bb66.i.cond.false91.i_crit_edge
  %arrayidx93.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %139 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx93.i, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 4
  %add96.i = add i32 %142, 1613
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add96.i, i32 noundef %data.1.i49, i32 noundef 0) #6
  br label %return

sw.default98.i:                                   ; preds = %if.then62.i
  br i1 %tobool70.not.i, label %sw.default98.i.cond.false124.i_crit_edge, label %land.lhs.true103.i

sw.default98.i.cond.false124.i_crit_edge:         ; preds = %sw.default98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false124.i

land.lhs.true103.i:                               ; preds = %sw.default98.i
  %funcs106.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %143 = ptrtoint ptr %funcs106.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %funcs106.i, align 4
  %tobool107.not.i53 = icmp eq ptr %144, null
  br i1 %tobool107.not.i53, label %land.lhs.true103.i.cond.false124.i_crit_edge, label %land.lhs.true108.i

land.lhs.true103.i.cond.false124.i_crit_edge:     ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false124.i

land.lhs.true108.i:                               ; preds = %land.lhs.true103.i
  %sriov_wreg112.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %144, i32 0, i32 12
  %145 = ptrtoint ptr %sriov_wreg112.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %sriov_wreg112.i, align 4
  %tobool113.not.i = icmp eq ptr %146, null
  br i1 %tobool113.not.i, label %land.lhs.true108.i.cond.false124.i_crit_edge, label %cond.true114.i

land.lhs.true108.i.cond.false124.i_crit_edge:     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false124.i

cond.true114.i:                                   ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx120.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %147 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx120.i, align 8
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  %add123.i = add i32 %150, 1610
  tail call void %146(ptr noundef %adev, i32 noundef %add123.i, i32 noundef %data.1.i49, i32 noundef 0, i32 noundef 11) #6
  br label %return

cond.false124.i:                                  ; preds = %land.lhs.true108.i.cond.false124.i_crit_edge, %land.lhs.true103.i.cond.false124.i_crit_edge, %sw.default98.i.cond.false124.i_crit_edge
  %arrayidx126.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %151 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx126.i, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 4
  %add129.i = add i32 %154, 1610
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add129.i, i32 noundef %data.1.i49, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %cond.false124.i, %cond.true114.i, %cond.false91.i, %cond.true81.i, %sw.epilog.i51.return_crit_edge, %mmhub_v2_0_update_medium_grain_clock_gating.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v2_0_get_clockgating(ptr noundef %adev, ptr nocapture noundef %flags) #1 align 64 {
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %4, -131328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt, align 8
  %and4 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  br i1 %tobool5.not, label %sw.bb.cond.false_crit_edge, label %land.lhs.true

sw.bb.cond.false_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %sw.bb
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %7 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %funcs, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true7

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sriov_rreg, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %land.lhs.true7.cond.false_crit_edge, label %cond.true

land.lhs.true7.cond.false_crit_edge:              ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx16, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add = add i32 %14, 1613
  %call = tail call i32 %10(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true7.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %sw.bb.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx20, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add23 = add i32 %18, 1613
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add23, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call24, %cond.false ]
  %19 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virt, align 8
  %and27 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %cond.end.cond.false51_crit_edge, label %land.lhs.true29

cond.end.cond.false51_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51

land.lhs.true29:                                  ; preds = %cond.end
  %funcs32 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %21 = ptrtoint ptr %funcs32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs32, align 4
  %tobool33.not = icmp eq ptr %22, null
  br i1 %tobool33.not, label %land.lhs.true29.cond.false51_crit_edge, label %land.lhs.true34

land.lhs.true29.cond.false51_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %sriov_rreg38 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %sriov_rreg38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sriov_rreg38, align 4
  %tobool39.not = icmp eq ptr %24, null
  br i1 %tobool39.not, label %land.lhs.true34.cond.false51_crit_edge, label %cond.true40

land.lhs.true34.cond.false51_crit_edge:           ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51

cond.true40:                                      ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx46 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx46, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add49 = add i32 %28, 112
  %call50 = tail call i32 %24(ptr noundef %adev, i32 noundef %add49, i32 noundef 0, i32 noundef 11) #6
  br label %sw.epilog

cond.false51:                                     ; preds = %land.lhs.true34.cond.false51_crit_edge, %land.lhs.true29.cond.false51_crit_edge, %cond.end.cond.false51_crit_edge
  %arrayidx53 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx53, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add56 = add i32 %32, 112
  %call57 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add56, i32 noundef 0) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br i1 %tobool5.not, label %sw.default.cond.false86_crit_edge, label %land.lhs.true64

sw.default.cond.false86_crit_edge:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86

land.lhs.true64:                                  ; preds = %sw.default
  %funcs67 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs67, align 4
  %tobool68.not = icmp eq ptr %34, null
  br i1 %tobool68.not, label %land.lhs.true64.cond.false86_crit_edge, label %land.lhs.true69

land.lhs.true64.cond.false86_crit_edge:           ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %sriov_rreg73 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg73, align 4
  %tobool74.not = icmp eq ptr %36, null
  br i1 %tobool74.not, label %land.lhs.true69.cond.false86_crit_edge, label %cond.true75

land.lhs.true69.cond.false86_crit_edge:           ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86

cond.true75:                                      ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx81 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %37 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx81, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add84 = add i32 %40, 1610
  %call85 = tail call i32 %36(ptr noundef %adev, i32 noundef %add84, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end93

cond.false86:                                     ; preds = %land.lhs.true69.cond.false86_crit_edge, %land.lhs.true64.cond.false86_crit_edge, %sw.default.cond.false86_crit_edge
  %arrayidx88 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %41 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx88, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add91 = add i32 %44, 1610
  %call92 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add91, i32 noundef 0) #6
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false86, %cond.true75
  %cond94 = phi i32 [ %call85, %cond.true75 ], [ %call92, %cond.false86 ]
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and97 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %cond.end93.cond.false121_crit_edge, label %land.lhs.true99

cond.end93.cond.false121_crit_edge:               ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false121

land.lhs.true99:                                  ; preds = %cond.end93
  %funcs102 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %47 = ptrtoint ptr %funcs102 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs102, align 4
  %tobool103.not = icmp eq ptr %48, null
  br i1 %tobool103.not, label %land.lhs.true99.cond.false121_crit_edge, label %land.lhs.true104

land.lhs.true99.cond.false121_crit_edge:          ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false121

land.lhs.true104:                                 ; preds = %land.lhs.true99
  %sriov_rreg108 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %sriov_rreg108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_rreg108, align 4
  %tobool109.not = icmp eq ptr %50, null
  br i1 %tobool109.not, label %land.lhs.true104.cond.false121_crit_edge, label %cond.true110

land.lhs.true104.cond.false121_crit_edge:         ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false121

cond.true110:                                     ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx116 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %51 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx116, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add119 = add i32 %54, 113
  %call120 = tail call i32 %50(ptr noundef %adev, i32 noundef %add119, i32 noundef 0, i32 noundef 11) #6
  br label %sw.epilog

cond.false121:                                    ; preds = %land.lhs.true104.cond.false121_crit_edge, %land.lhs.true99.cond.false121_crit_edge, %cond.end93.cond.false121_crit_edge
  %arrayidx123 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %55 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx123, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add126 = add i32 %58, 113
  %call127 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add126, i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false121, %cond.true110, %cond.false51, %cond.true40
  %data.0 = phi i32 [ %cond, %cond.false51 ], [ %cond, %cond.true40 ], [ %cond94, %cond.false121 ], [ %cond94, %cond.true110 ]
  %data1.0 = phi i32 [ %call57, %cond.false51 ], [ %call50, %cond.true40 ], [ %call127, %cond.false121 ], [ %call120, %cond.true110 ]
  %and130 = and i32 %data.0, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp ne i32 %and130, 0
  %and133 = and i32 %data1.0, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  %or.cond = select i1 %tobool131.not, i1 %tobool134.not, i1 false
  br i1 %or.cond, label %if.then135, label %sw.epilog.if.end136_crit_edge

sw.epilog.if.end136_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then135:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %or = or i32 %60, 512
  store i32 %or, ptr %flags, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %sw.epilog.if.end136_crit_edge
  %and137 = and i32 %data.0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end141_crit_edge, label %if.then139

if.end136.if.end141_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %or140 = or i32 %62, 256
  store i32 %or140, ptr %flags, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end136.if.end141_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v2_0_setup_vm_pt_regs(ptr noundef %adev, i32 noundef %vmid, i64 noundef %page_table_base) #1 align 64 {
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
  %arrayidx11 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx11, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 1835
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %10 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %11, %vmid
  %add14 = add i32 %add, %mul
  %conv = trunc i64 %page_table_base to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef %conv, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add20 = add i32 %15, 1835
  %ctx_addr_distance21 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
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
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 1836
  %ctx_addr_distance51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %28 = ptrtoint ptr %ctx_addr_distance51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx_addr_distance51, align 4
  %mul52 = mul i32 %29, %vmid
  %add53 = add i32 %add50, %mul52
  %shr = lshr i64 %page_table_base, 32
  %conv55 = trunc i64 %shr to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add53, i32 noundef %conv55, i32 noundef 4, i32 noundef 11) #6
  br label %cond.end68

cond.false56:                                     ; preds = %land.lhs.true35.cond.false56_crit_edge, %land.lhs.true30.cond.false56_crit_edge, %cond.end.cond.false56_crit_edge
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx58, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add61 = add i32 %33, 1836
  %ctx_addr_distance62 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
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
define internal void @mmhub_v2_0_print_l2_protection_fault_status(ptr nocapture noundef readonly %adev, i32 noundef %status) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %status, 9
  %shr = and i32 %and, 511
  %and1 = lshr i32 %status, 18
  %shr2 = and i32 %and1, 1
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %status) #9
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %3, label %entry.do.end14_crit_edge [
    i32 131072, label %entry.sw.bb_crit_edge
    i32 131074, label %entry.sw.bb_crit_edge64
    i32 131328, label %entry.sw.bb6_crit_edge
    i32 131329, label %entry.sw.bb6_crit_edge65
    i32 131330, label %sw.bb9
  ]

entry.sw.bb6_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

entry.sw.bb_crit_edge64:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge64
  %arrayidx5 = getelementptr [19 x [2 x ptr]], ptr @mmhub_client_ids_navi1x, i32 0, i32 %shr, i32 %shr2
  br label %do.end14.sink.split

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge65
  %arrayidx8 = getelementptr [44 x [2 x ptr]], ptr @mmhub_client_ids_sienna_cichlid, i32 0, i32 %shr, i32 %shr2
  br label %do.end14.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11 = getelementptr [16 x [2 x ptr]], ptr @mmhub_client_ids_beige_goby, i32 0, i32 %shr, i32 %shr2
  br label %do.end14.sink.split

do.end14.sink.split:                              ; preds = %sw.bb9, %sw.bb6, %sw.bb
  %arrayidx5.sink = phi ptr [ %arrayidx5, %sw.bb ], [ %arrayidx8, %sw.bb6 ], [ %arrayidx11, %sw.bb9 ]
  %5 = ptrtoint ptr %arrayidx5.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5.sink, align 4
  br label %do.end14

do.end14:                                         ; preds = %do.end14.sink.split, %entry.do.end14_crit_edge
  %mmhub_cid.0 = phi ptr [ null, %entry.do.end14_crit_edge ], [ %6, %do.end14.sink.split ]
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  %tobool.not = icmp eq ptr %mmhub_cid.0, null
  %spec.select = select i1 %tobool.not, ptr @.str.8, ptr %mmhub_cid.0
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %spec.select, i32 noundef %shr) #9
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  %and20 = and i32 %status, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %and20) #9
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  %and26 = lshr i32 %status, 1
  %shr27 = and i32 %and26, 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef %shr27) #9
  %13 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adev, align 8
  %and32 = lshr i32 %status, 4
  %shr33 = and i32 %and32, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16, i32 noundef %shr33) #9
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  %and38 = lshr i32 %status, 8
  %shr39 = and i32 %and38, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %shr39) #9
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.22, i32 noundef %shr2) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmhub_v2_0_get_invalidate_req(i32 noundef %vmid, i32 noundef %flush_type) #2 align 64 {
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
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_vram_mc2pa(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @mmhub_v2_0_funcs, !1, !"mmhub_v2_0_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 720, i32 33}
!2 = !{ptr @mmhub_v2_0_vmhub_funcs, !3, !"mmhub_v2_0_vmhub_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 516, i32 40}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 153, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 172, i32 2}
!14 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 174, i32 2}
!19 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 177, i32 2}
!23 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 180, i32 2}
!27 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 183, i32 2}
!31 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 186, i32 2}
!35 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mmhub_v2_0_print_l2_protection_fault_status._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 41, i32 11}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 42, i32 11}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 52, i32 11}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 43, i32 11}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 44, i32 11}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 54, i32 11}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 57, i32 11}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 58, i32 12}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 59, i32 12}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 45, i32 12}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 46, i32 12}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 47, i32 12}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 48, i32 12}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 49, i32 12}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 50, i32 12}
!67 = !{ptr @mmhub_client_ids_navi1x, !68, !"mmhub_client_ids_navi1x", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 40, i32 20}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 73, i32 11}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 90, i32 12}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 75, i32 12}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 76, i32 12}
!77 = !{ptr @mmhub_client_ids_sienna_cichlid, !78, !"mmhub_client_ids_sienna_cichlid", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 67, i32 20}
!79 = !{ptr @mmhub_client_ids_beige_goby, !80, !"mmhub_client_ids_beige_goby", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_0.c", i32 97, i32 20}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
