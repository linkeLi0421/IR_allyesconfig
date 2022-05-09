; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c"
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

@gfxhub_v2_1_funcs = dso_local constant { %struct.amdgpu_gfxhub_funcs, [60 x i8] } { %struct.amdgpu_gfxhub_funcs { ptr @gfxhub_v2_1_get_fb_location, ptr @gfxhub_v2_1_get_mc_fb_offset, ptr @gfxhub_v2_1_setup_vm_pt_regs, ptr @gfxhub_v2_1_gart_enable, ptr @gfxhub_v2_1_gart_disable, ptr @gfxhub_v2_1_set_fault_enable_default, ptr @gfxhub_v2_1_init, ptr @gfxhub_v2_1_get_xgmi_info, ptr @gfxhub_v2_1_utcl2_harvest }, [60 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_vmhub_funcs = internal constant { %struct.amdgpu_vmhub_funcs, [24 x i8] } { %struct.amdgpu_vmhub_funcs { ptr @gfxhub_v2_1_print_l2_protection_fault_status, ptr @gfxhub_v2_1_get_invalidate_req }, [24 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: GCVM_L2_PROTECTION_FAULT_STATUS:0x%08X\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"gfxhub_v2_1_print_l2_protection_fault_status\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr = internal global ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry, section ".printk_index", align 4
@gfxhub_v2_1_print_l2_protection_fault_status._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: \09 Faulty UTCL2 client ID: %s (0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.7 = internal global ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@gfxhub_client_ids = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.25, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [56 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: \09 MORE_FAULTS: 0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.11 = internal global ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.9, section ".printk_index", align 4
@gfxhub_v2_1_print_l2_protection_fault_status._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: \09 WALKER_ERROR: 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.14 = internal global ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.12, section ".printk_index", align 4
@gfxhub_v2_1_print_l2_protection_fault_status._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: \09 PERMISSION_FAULTS: 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.17 = internal global ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.15, section ".printk_index", align 4
@gfxhub_v2_1_print_l2_protection_fault_status._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: \09 MAPPING_ERROR: 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.20 = internal global ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.18, section ".printk_index", align 4
@gfxhub_v2_1_print_l2_protection_fault_status._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu: \09 RW: 0x%lx\0A\00", [43 x i8] zeroinitializer }, align 32
@gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.23 = internal global ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.21, section ".printk_index", align 4
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
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 656129, i64 656131]
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"gfxhub_v2_1_funcs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 577, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"gfxhub_v2_1_vmhub_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 453, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 85, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 88, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"gfxhub_client_ids\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 37, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 91, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 94, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 97, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 100, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 103, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 38, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 39, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 40, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 41, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 42, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 43, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 44, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 45, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 46, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 47, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 48, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 49, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 51, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 52, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 53, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 54, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 55, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.12, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.15, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.18, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.21, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.5, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.9, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.11, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.14, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.17, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.20, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.23, ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.7, ptr @gfxhub_v2_1_funcs, ptr @gfxhub_v2_1_vmhub_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @gfxhub_client_ids, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_vmhub_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_client_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gfxhub_v2_1_get_fb_location(ptr noundef %adev) #0 align 64 {
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
  %add = add i32 %9, 5884
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
  %add17 = add i32 %13, 5884
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
define internal i64 @gfxhub_v2_1_get_mc_fb_offset(ptr noundef %adev) #0 align 64 {
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
  %add = add i32 %9, 5863
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
  %add17 = add i32 %13, 5863
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %conv = zext i32 %cond to i64
  %shl = shl nuw nsw i64 %conv, 24
  ret i64 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v2_1_setup_vm_pt_regs(ptr noundef %adev, i32 noundef %vmid, i64 noundef %page_table_base) #0 align 64 {
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
  %add = add i32 %9, 5735
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
  %add20 = add i32 %15, 5735
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
  %add50 = add i32 %27, 5736
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
  %add61 = add i32 %33, 5736
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
define internal i32 @gfxhub_v2_1_gart_enable(ptr noundef %adev) #0 align 64 {
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 5884
  %vram_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %10 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vram_start, align 8
  %shr = lshr i64 %11, 24
  %conv = trunc i64 %shr to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add21 = add i32 %15, 5884
  %vram_start23 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %16 = ptrtoint ptr %vram_start23 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vram_start23, align 8
  %shr24 = lshr i64 %17, 24
  %conv25 = trunc i64 %shr24 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21, i32 noundef %conv25, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and28 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end.cond.false54_crit_edge, label %land.lhs.true30

cond.end.cond.false54_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false54

land.lhs.true30:                                  ; preds = %cond.end
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 4
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false54_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false54_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false54

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_wreg39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg39, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %land.lhs.true35.cond.false54_crit_edge, label %cond.true41

land.lhs.true35.cond.false54_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false54

cond.true41:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add50 = add i32 %27, 5885
  %vram_end = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 11
  %28 = ptrtoint ptr %vram_end to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vram_end, align 8
  %shr52 = lshr i64 %29, 24
  %conv53 = trunc i64 %shr52 to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add50, i32 noundef %conv53, i32 noundef 0, i32 noundef 1) #6
  br label %if.end

cond.false54:                                     ; preds = %land.lhs.true35.cond.false54_crit_edge, %land.lhs.true30.cond.false54_crit_edge, %cond.end.cond.false54_crit_edge
  %arrayidx56 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx56, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add59 = add i32 %33, 5885
  %vram_end61 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 11
  %34 = ptrtoint ptr %vram_end61 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %vram_end61, align 8
  %shr62 = lshr i64 %35, 24
  %conv63 = trunc i64 %shr62 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59, i32 noundef %conv63, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %cond.false54, %cond.true41, %entry.if.end_crit_edge
  %gart.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 63
  %36 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gart.i, align 8
  %call.i = tail call i64 @amdgpu_gmc_pd_addr(ptr noundef %37) #6
  tail call void @gfxhub_v2_1_setup_vm_pt_regs(ptr noundef %adev, i32 noundef 0, i64 noundef %call.i) #6
  %38 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %virt, align 8
  %and.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cond.false.i_crit_edge, label %land.lhs.true.i

if.end.cond.false.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %40 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool6.not.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add.i = add i32 %47, 5767
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %48 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %gart_start.i, align 8
  %shr.i = lshr i64 %49, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void %43(ptr noundef %adev, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end.cond.false.i_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %50 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx14.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add17.i = add i32 %53, 5767
  %gart_start19.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %54 = ptrtoint ptr %gart_start19.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %gart_start19.i, align 8
  %shr20.i = lshr i64 %55, 12
  %conv21.i = trunc i64 %shr20.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef %conv21.i, i32 noundef 0) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %56 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt, align 8
  %and24.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %cond.end.i.cond.false51.i_crit_edge, label %land.lhs.true26.i

cond.end.i.cond.false51.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

land.lhs.true26.i:                                ; preds = %cond.end.i
  %funcs29.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %58 = ptrtoint ptr %funcs29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs29.i, align 4
  %tobool30.not.i = icmp eq ptr %59, null
  br i1 %tobool30.not.i, label %land.lhs.true26.i.cond.false51.i_crit_edge, label %land.lhs.true31.i

land.lhs.true26.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

land.lhs.true31.i:                                ; preds = %land.lhs.true26.i
  %sriov_wreg35.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %sriov_wreg35.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_wreg35.i, align 4
  %tobool36.not.i = icmp eq ptr %61, null
  br i1 %tobool36.not.i, label %land.lhs.true31.i.cond.false51.i_crit_edge, label %cond.true37.i

land.lhs.true31.i.cond.false51.i_crit_edge:       ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i

cond.true37.i:                                    ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %62 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx43.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add46.i = add i32 %65, 5768
  %gart_start48.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %66 = ptrtoint ptr %gart_start48.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %gart_start48.i, align 8
  %shr49.i = lshr i64 %67, 44
  %conv50.i = trunc i64 %shr49.i to i32
  tail call void %61(ptr noundef %adev, i32 noundef %add46.i, i32 noundef %conv50.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end61.i

cond.false51.i:                                   ; preds = %land.lhs.true31.i.cond.false51.i_crit_edge, %land.lhs.true26.i.cond.false51.i_crit_edge, %cond.end.i.cond.false51.i_crit_edge
  %arrayidx53.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %68 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx53.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add56.i = add i32 %71, 5768
  %gart_start58.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %72 = ptrtoint ptr %gart_start58.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %gart_start58.i, align 8
  %shr59.i = lshr i64 %73, 44
  %conv60.i = trunc i64 %shr59.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add56.i, i32 noundef %conv60.i, i32 noundef 0) #6
  br label %cond.end61.i

cond.end61.i:                                     ; preds = %cond.false51.i, %cond.true37.i
  %74 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %virt, align 8
  %and64.i = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %cond.end61.i.cond.false90.i_crit_edge, label %land.lhs.true66.i

cond.end61.i.cond.false90.i_crit_edge:            ; preds = %cond.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false90.i

land.lhs.true66.i:                                ; preds = %cond.end61.i
  %funcs69.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %76 = ptrtoint ptr %funcs69.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %funcs69.i, align 4
  %tobool70.not.i = icmp eq ptr %77, null
  br i1 %tobool70.not.i, label %land.lhs.true66.i.cond.false90.i_crit_edge, label %land.lhs.true71.i

land.lhs.true66.i.cond.false90.i_crit_edge:       ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false90.i

land.lhs.true71.i:                                ; preds = %land.lhs.true66.i
  %sriov_wreg75.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %sriov_wreg75.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sriov_wreg75.i, align 4
  %tobool76.not.i = icmp eq ptr %79, null
  br i1 %tobool76.not.i, label %land.lhs.true71.i.cond.false90.i_crit_edge, label %cond.true77.i

land.lhs.true71.i.cond.false90.i_crit_edge:       ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false90.i

cond.true77.i:                                    ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx83.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %80 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx83.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add86.i = add i32 %83, 5799
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %84 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gart_end.i, align 8
  %shr88.i = lshr i64 %85, 12
  %conv89.i = trunc i64 %shr88.i to i32
  tail call void %79(ptr noundef %adev, i32 noundef %add86.i, i32 noundef %conv89.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end100.i

cond.false90.i:                                   ; preds = %land.lhs.true71.i.cond.false90.i_crit_edge, %land.lhs.true66.i.cond.false90.i_crit_edge, %cond.end61.i.cond.false90.i_crit_edge
  %arrayidx92.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %86 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx92.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %add95.i = add i32 %89, 5799
  %gart_end97.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %90 = ptrtoint ptr %gart_end97.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %gart_end97.i, align 8
  %shr98.i = lshr i64 %91, 12
  %conv99.i = trunc i64 %shr98.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add95.i, i32 noundef %conv99.i, i32 noundef 0) #6
  br label %cond.end100.i

cond.end100.i:                                    ; preds = %cond.false90.i, %cond.true77.i
  %92 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %virt, align 8
  %and103.i = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %cond.end100.i.cond.false130.i_crit_edge, label %land.lhs.true105.i

cond.end100.i.cond.false130.i_crit_edge:          ; preds = %cond.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false130.i

land.lhs.true105.i:                               ; preds = %cond.end100.i
  %funcs108.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %94 = ptrtoint ptr %funcs108.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %funcs108.i, align 4
  %tobool109.not.i = icmp eq ptr %95, null
  br i1 %tobool109.not.i, label %land.lhs.true105.i.cond.false130.i_crit_edge, label %land.lhs.true110.i

land.lhs.true105.i.cond.false130.i_crit_edge:     ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false130.i

land.lhs.true110.i:                               ; preds = %land.lhs.true105.i
  %sriov_wreg114.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %sriov_wreg114.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sriov_wreg114.i, align 4
  %tobool115.not.i = icmp eq ptr %97, null
  br i1 %tobool115.not.i, label %land.lhs.true110.i.cond.false130.i_crit_edge, label %cond.true116.i

land.lhs.true110.i.cond.false130.i_crit_edge:     ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false130.i

cond.true116.i:                                   ; preds = %land.lhs.true110.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx122.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %98 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx122.i, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add125.i = add i32 %101, 5800
  %gart_end127.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %102 = ptrtoint ptr %gart_end127.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %gart_end127.i, align 8
  %shr128.i = lshr i64 %103, 44
  %conv129.i = trunc i64 %shr128.i to i32
  tail call void %97(ptr noundef %adev, i32 noundef %add125.i, i32 noundef %conv129.i, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_1_init_gart_aperture_regs.exit

cond.false130.i:                                  ; preds = %land.lhs.true110.i.cond.false130.i_crit_edge, %land.lhs.true105.i.cond.false130.i_crit_edge, %cond.end100.i.cond.false130.i_crit_edge
  %arrayidx132.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %104 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx132.i, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %add135.i = add i32 %107, 5800
  %gart_end137.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %108 = ptrtoint ptr %gart_end137.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %gart_end137.i, align 8
  %shr138.i = lshr i64 %109, 44
  %conv139.i = trunc i64 %shr138.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add135.i, i32 noundef %conv139.i, i32 noundef 0) #6
  br label %gfxhub_v2_1_init_gart_aperture_regs.exit

gfxhub_v2_1_init_gart_aperture_regs.exit:         ; preds = %cond.false130.i, %cond.true116.i
  %110 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %virt, align 8
  %and.i97 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i98 = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i98, label %gfxhub_v2_1_init_gart_aperture_regs.exit.cond.false.i110_crit_edge, label %land.lhs.true.i101

gfxhub_v2_1_init_gart_aperture_regs.exit.cond.false.i110_crit_edge: ; preds = %gfxhub_v2_1_init_gart_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i110

land.lhs.true.i101:                               ; preds = %gfxhub_v2_1_init_gart_aperture_regs.exit
  %funcs.i99 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %112 = ptrtoint ptr %funcs.i99 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %funcs.i99, align 4
  %tobool1.not.i100 = icmp eq ptr %113, null
  br i1 %tobool1.not.i100, label %land.lhs.true.i101.cond.false.i110_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i101.cond.false.i110_crit_edge:     ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i110

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i101
  %sriov_wreg.i102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %sriov_wreg.i102 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sriov_wreg.i102, align 4
  %tobool6.not.i103 = icmp eq ptr %115, null
  br i1 %tobool6.not.i103, label %land.lhs.true2.i104.cond.false.i110_crit_edge, label %cond.true.i107

land.lhs.true2.i104.cond.false.i110_crit_edge:    ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i110

cond.true.i107:                                   ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i105 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %116 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i105, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %add.i106 = add i32 %119, 5888
  tail call void %115(ptr noundef %adev, i32 noundef %add.i106, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i111

cond.false.i110:                                  ; preds = %land.lhs.true2.i104.cond.false.i110_crit_edge, %land.lhs.true.i101.cond.false.i110_crit_edge, %gfxhub_v2_1_init_gart_aperture_regs.exit.cond.false.i110_crit_edge
  %arrayidx14.i108 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %120 = ptrtoint ptr %arrayidx14.i108 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx14.i108, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 4
  %add17.i109 = add i32 %123, 5888
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i109, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end.i111

cond.end.i111:                                    ; preds = %cond.false.i110, %cond.true.i107
  %124 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %virt, align 8
  %and20.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.end.i111.cond.false43.i_crit_edge, label %land.lhs.true22.i

cond.end.i111.cond.false43.i_crit_edge:           ; preds = %cond.end.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i

land.lhs.true22.i:                                ; preds = %cond.end.i111
  %funcs25.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %126 = ptrtoint ptr %funcs25.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %funcs25.i, align 4
  %tobool26.not.i = icmp eq ptr %127, null
  br i1 %tobool26.not.i, label %land.lhs.true22.i.cond.false43.i_crit_edge, label %land.lhs.true27.i

land.lhs.true22.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i

land.lhs.true27.i:                                ; preds = %land.lhs.true22.i
  %sriov_wreg31.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %127, i32 0, i32 12
  %128 = ptrtoint ptr %sriov_wreg31.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sriov_wreg31.i, align 4
  %tobool32.not.i = icmp eq ptr %129, null
  br i1 %tobool32.not.i, label %land.lhs.true27.i.cond.false43.i_crit_edge, label %cond.true33.i

land.lhs.true27.i.cond.false43.i_crit_edge:       ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i

cond.true33.i:                                    ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx39.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %130 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx39.i, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %add42.i = add i32 %133, 5887
  %agp_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %134 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %agp_start.i, align 8
  %shr.i112 = lshr i64 %135, 24
  %conv.i113 = trunc i64 %shr.i112 to i32
  tail call void %129(ptr noundef %adev, i32 noundef %add42.i, i32 noundef %conv.i113, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end53.i

cond.false43.i:                                   ; preds = %land.lhs.true27.i.cond.false43.i_crit_edge, %land.lhs.true22.i.cond.false43.i_crit_edge, %cond.end.i111.cond.false43.i_crit_edge
  %arrayidx45.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %136 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx45.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %add48.i = add i32 %139, 5887
  %agp_start50.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %140 = ptrtoint ptr %agp_start50.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %agp_start50.i, align 8
  %shr51.i = lshr i64 %141, 24
  %conv52.i = trunc i64 %shr51.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48.i, i32 noundef %conv52.i, i32 noundef 0) #6
  br label %cond.end53.i

cond.end53.i:                                     ; preds = %cond.false43.i, %cond.true33.i
  %142 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %virt, align 8
  %and56.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %cond.end53.i.cond.false82.i_crit_edge, label %land.lhs.true58.i

cond.end53.i.cond.false82.i_crit_edge:            ; preds = %cond.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.i

land.lhs.true58.i:                                ; preds = %cond.end53.i
  %funcs61.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %144 = ptrtoint ptr %funcs61.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %funcs61.i, align 4
  %tobool62.not.i = icmp eq ptr %145, null
  br i1 %tobool62.not.i, label %land.lhs.true58.i.cond.false82.i_crit_edge, label %land.lhs.true63.i

land.lhs.true58.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.i

land.lhs.true63.i:                                ; preds = %land.lhs.true58.i
  %sriov_wreg67.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %145, i32 0, i32 12
  %146 = ptrtoint ptr %sriov_wreg67.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sriov_wreg67.i, align 4
  %tobool68.not.i = icmp eq ptr %147, null
  br i1 %tobool68.not.i, label %land.lhs.true63.i.cond.false82.i_crit_edge, label %cond.true69.i

land.lhs.true63.i.cond.false82.i_crit_edge:       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false82.i

cond.true69.i:                                    ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx75.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %148 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx75.i, align 8
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %add78.i = add i32 %151, 5886
  %agp_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %152 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %agp_end.i, align 8
  %shr80.i = lshr i64 %153, 24
  %conv81.i = trunc i64 %shr80.i to i32
  tail call void %147(ptr noundef %adev, i32 noundef %add78.i, i32 noundef %conv81.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end92.i

cond.false82.i:                                   ; preds = %land.lhs.true63.i.cond.false82.i_crit_edge, %land.lhs.true58.i.cond.false82.i_crit_edge, %cond.end53.i.cond.false82.i_crit_edge
  %arrayidx84.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %154 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx84.i, align 8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %add87.i = add i32 %157, 5886
  %agp_end89.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %158 = ptrtoint ptr %agp_end89.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %agp_end89.i, align 8
  %shr90.i = lshr i64 %159, 24
  %conv91.i = trunc i64 %shr90.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add87.i, i32 noundef %conv91.i, i32 noundef 0) #6
  br label %cond.end92.i

cond.end92.i:                                     ; preds = %cond.false82.i, %cond.true69.i
  %160 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %virt, align 8
  %and95.i = and i32 %161, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %cond.end92.i.cond.false127.i_crit_edge, label %land.lhs.true97.i

cond.end92.i.cond.false127.i_crit_edge:           ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false127.i

land.lhs.true97.i:                                ; preds = %cond.end92.i
  %funcs100.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %162 = ptrtoint ptr %funcs100.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %funcs100.i, align 4
  %tobool101.not.i = icmp eq ptr %163, null
  br i1 %tobool101.not.i, label %land.lhs.true97.i.cond.false127.i_crit_edge, label %land.lhs.true102.i

land.lhs.true97.i.cond.false127.i_crit_edge:      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false127.i

land.lhs.true102.i:                               ; preds = %land.lhs.true97.i
  %sriov_wreg106.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %163, i32 0, i32 12
  %164 = ptrtoint ptr %sriov_wreg106.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sriov_wreg106.i, align 4
  %tobool107.not.i = icmp eq ptr %165, null
  br i1 %tobool107.not.i, label %land.lhs.true102.i.cond.false127.i_crit_edge, label %cond.true108.i

land.lhs.true102.i.cond.false127.i_crit_edge:     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false127.i

cond.true108.i:                                   ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx114.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %166 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx114.i, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 4
  %add117.i = add i32 %169, 5889
  %fb_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %170 = ptrtoint ptr %fb_start.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %fb_start.i, align 8
  %agp_start120.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %172 = ptrtoint ptr %agp_start120.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %agp_start120.i, align 8
  %174 = tail call i64 @llvm.umin.i64(i64 %171, i64 %173) #6
  %cond.off18.v.i = lshr i64 %174, 18
  %cond.off18.i = trunc i64 %cond.off18.v.i to i32
  tail call void %165(ptr noundef %adev, i32 noundef %add117.i, i32 noundef %cond.off18.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end148.i

cond.false127.i:                                  ; preds = %land.lhs.true102.i.cond.false127.i_crit_edge, %land.lhs.true97.i.cond.false127.i_crit_edge, %cond.end92.i.cond.false127.i_crit_edge
  %arrayidx129.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %175 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx129.i, align 8
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %176, align 4
  %add132.i = add i32 %178, 5889
  %fb_start135.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %179 = ptrtoint ptr %fb_start135.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %fb_start135.i, align 8
  %agp_start138.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %181 = ptrtoint ptr %agp_start138.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %agp_start138.i, align 8
  %183 = tail call i64 @llvm.umin.i64(i64 %180, i64 %182) #6
  %cond145.off18.v.i = lshr i64 %183, 18
  %cond145.off18.i = trunc i64 %cond145.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add132.i, i32 noundef %cond145.off18.i, i32 noundef 0) #6
  br label %cond.end148.i

cond.end148.i:                                    ; preds = %cond.false127.i, %cond.true108.i
  %184 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %virt, align 8
  %and151.i = and i32 %185, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %cond.end148.i.cond.false186.i_crit_edge, label %land.lhs.true153.i

cond.end148.i.cond.false186.i_crit_edge:          ; preds = %cond.end148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false186.i

land.lhs.true153.i:                               ; preds = %cond.end148.i
  %funcs156.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %186 = ptrtoint ptr %funcs156.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %funcs156.i, align 4
  %tobool157.not.i = icmp eq ptr %187, null
  br i1 %tobool157.not.i, label %land.lhs.true153.i.cond.false186.i_crit_edge, label %land.lhs.true158.i

land.lhs.true153.i.cond.false186.i_crit_edge:     ; preds = %land.lhs.true153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false186.i

land.lhs.true158.i:                               ; preds = %land.lhs.true153.i
  %sriov_wreg162.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %187, i32 0, i32 12
  %188 = ptrtoint ptr %sriov_wreg162.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sriov_wreg162.i, align 4
  %tobool163.not.i = icmp eq ptr %189, null
  br i1 %tobool163.not.i, label %land.lhs.true158.i.cond.false186.i_crit_edge, label %cond.true164.i

land.lhs.true158.i.cond.false186.i_crit_edge:     ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false186.i

cond.true164.i:                                   ; preds = %land.lhs.true158.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx170.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %190 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx170.i, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  %add173.i = add i32 %193, 5890
  %fb_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %194 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %fb_end.i, align 8
  %agp_end176.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %196 = ptrtoint ptr %agp_end176.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %agp_end176.i, align 8
  %198 = tail call i64 @llvm.umax.i64(i64 %195, i64 %197) #6
  %cond183.off18.v.i = lshr i64 %198, 18
  %cond183.off18.i = trunc i64 %cond183.off18.v.i to i32
  tail call void %189(ptr noundef %adev, i32 noundef %add173.i, i32 noundef %cond183.off18.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end207.i

cond.false186.i:                                  ; preds = %land.lhs.true158.i.cond.false186.i_crit_edge, %land.lhs.true153.i.cond.false186.i_crit_edge, %cond.end148.i.cond.false186.i_crit_edge
  %arrayidx188.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %199 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx188.i, align 8
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  %add191.i = add i32 %202, 5890
  %fb_end194.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %203 = ptrtoint ptr %fb_end194.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %fb_end194.i, align 8
  %agp_end197.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %205 = ptrtoint ptr %agp_end197.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %agp_end197.i, align 8
  %207 = tail call i64 @llvm.umax.i64(i64 %204, i64 %206) #6
  %cond204.off18.v.i = lshr i64 %207, 18
  %cond204.off18.i = trunc i64 %cond204.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add191.i, i32 noundef %cond204.off18.i, i32 noundef 0) #6
  br label %cond.end207.i

cond.end207.i:                                    ; preds = %cond.false186.i, %cond.true164.i
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 69, i32 2
  %208 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %gpu_addr.i, align 8
  %call.i114 = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %209) #6
  %210 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %virt, align 8
  %and210.i = and i32 %211, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210.i)
  %tobool211.not.i = icmp eq i32 %and210.i, 0
  br i1 %tobool211.not.i, label %cond.end207.i.cond.false235.i_crit_edge, label %land.lhs.true212.i

cond.end207.i.cond.false235.i_crit_edge:          ; preds = %cond.end207.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false235.i

land.lhs.true212.i:                               ; preds = %cond.end207.i
  %funcs215.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %212 = ptrtoint ptr %funcs215.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %funcs215.i, align 4
  %tobool216.not.i = icmp eq ptr %213, null
  br i1 %tobool216.not.i, label %land.lhs.true212.i.cond.false235.i_crit_edge, label %land.lhs.true217.i

land.lhs.true212.i.cond.false235.i_crit_edge:     ; preds = %land.lhs.true212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false235.i

land.lhs.true217.i:                               ; preds = %land.lhs.true212.i
  %sriov_wreg221.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %213, i32 0, i32 12
  %214 = ptrtoint ptr %sriov_wreg221.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %sriov_wreg221.i, align 4
  %tobool222.not.i = icmp eq ptr %215, null
  br i1 %tobool222.not.i, label %land.lhs.true217.i.cond.false235.i_crit_edge, label %cond.true223.i

land.lhs.true217.i.cond.false235.i_crit_edge:     ; preds = %land.lhs.true217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false235.i

cond.true223.i:                                   ; preds = %land.lhs.true217.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx229.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %216 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx229.i, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 4
  %add232.i = add i32 %219, 5864
  %shr233.i = lshr i64 %call.i114, 12
  %conv234.i = trunc i64 %shr233.i to i32
  tail call void %215(ptr noundef %adev, i32 noundef %add232.i, i32 noundef %conv234.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end243.i

cond.false235.i:                                  ; preds = %land.lhs.true217.i.cond.false235.i_crit_edge, %land.lhs.true212.i.cond.false235.i_crit_edge, %cond.end207.i.cond.false235.i_crit_edge
  %arrayidx237.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %220 = ptrtoint ptr %arrayidx237.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx237.i, align 8
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %221, align 4
  %add240.i = add i32 %223, 5864
  %shr241.i = lshr i64 %call.i114, 12
  %conv242.i = trunc i64 %shr241.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add240.i, i32 noundef %conv242.i, i32 noundef 0) #6
  br label %cond.end243.i

cond.end243.i:                                    ; preds = %cond.false235.i, %cond.true223.i
  %224 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %virt, align 8
  %and246.i = and i32 %225, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246.i)
  %tobool247.not.i = icmp eq i32 %and246.i, 0
  br i1 %tobool247.not.i, label %cond.end243.i.cond.false271.i_crit_edge, label %land.lhs.true248.i

cond.end243.i.cond.false271.i_crit_edge:          ; preds = %cond.end243.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false271.i

land.lhs.true248.i:                               ; preds = %cond.end243.i
  %funcs251.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %226 = ptrtoint ptr %funcs251.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %funcs251.i, align 4
  %tobool252.not.i = icmp eq ptr %227, null
  br i1 %tobool252.not.i, label %land.lhs.true248.i.cond.false271.i_crit_edge, label %land.lhs.true253.i

land.lhs.true248.i.cond.false271.i_crit_edge:     ; preds = %land.lhs.true248.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false271.i

land.lhs.true253.i:                               ; preds = %land.lhs.true248.i
  %sriov_wreg257.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %227, i32 0, i32 12
  %228 = ptrtoint ptr %sriov_wreg257.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %sriov_wreg257.i, align 4
  %tobool258.not.i = icmp eq ptr %229, null
  br i1 %tobool258.not.i, label %land.lhs.true253.i.cond.false271.i_crit_edge, label %cond.true259.i

land.lhs.true253.i.cond.false271.i_crit_edge:     ; preds = %land.lhs.true253.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false271.i

cond.true259.i:                                   ; preds = %land.lhs.true253.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx265.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %230 = ptrtoint ptr %arrayidx265.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx265.i, align 8
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 4
  %add268.i = add i32 %233, 5865
  %shr269.i = lshr i64 %call.i114, 44
  %conv270.i = trunc i64 %shr269.i to i32
  tail call void %229(ptr noundef %adev, i32 noundef %add268.i, i32 noundef %conv270.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end279.i

cond.false271.i:                                  ; preds = %land.lhs.true253.i.cond.false271.i_crit_edge, %land.lhs.true248.i.cond.false271.i_crit_edge, %cond.end243.i.cond.false271.i_crit_edge
  %arrayidx273.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %234 = ptrtoint ptr %arrayidx273.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx273.i, align 8
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 4
  %add276.i = add i32 %237, 5865
  %shr277.i = lshr i64 %call.i114, 44
  %conv278.i = trunc i64 %shr277.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add276.i, i32 noundef %conv278.i, i32 noundef 0) #6
  br label %cond.end279.i

cond.end279.i:                                    ; preds = %cond.false271.i, %cond.true259.i
  %238 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %virt, align 8
  %and282.i = and i32 %239, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282.i)
  %tobool283.not.i = icmp eq i32 %and282.i, 0
  br i1 %tobool283.not.i, label %cond.end279.i.cond.false306.i_crit_edge, label %land.lhs.true284.i

cond.end279.i.cond.false306.i_crit_edge:          ; preds = %cond.end279.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false306.i

land.lhs.true284.i:                               ; preds = %cond.end279.i
  %funcs287.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %240 = ptrtoint ptr %funcs287.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %funcs287.i, align 4
  %tobool288.not.i = icmp eq ptr %241, null
  br i1 %tobool288.not.i, label %land.lhs.true284.i.cond.false306.i_crit_edge, label %land.lhs.true289.i

land.lhs.true284.i.cond.false306.i_crit_edge:     ; preds = %land.lhs.true284.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false306.i

land.lhs.true289.i:                               ; preds = %land.lhs.true284.i
  %sriov_wreg293.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %241, i32 0, i32 12
  %242 = ptrtoint ptr %sriov_wreg293.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %sriov_wreg293.i, align 4
  %tobool294.not.i = icmp eq ptr %243, null
  br i1 %tobool294.not.i, label %land.lhs.true289.i.cond.false306.i_crit_edge, label %cond.true295.i

land.lhs.true289.i.cond.false306.i_crit_edge:     ; preds = %land.lhs.true289.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false306.i

cond.true295.i:                                   ; preds = %land.lhs.true289.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx301.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %244 = ptrtoint ptr %arrayidx301.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx301.i, align 8
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %245, align 4
  %add304.i = add i32 %247, 5579
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %248 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %dummy_page_addr.i, align 8
  %shr305.i = lshr i32 %249, 12
  tail call void %243(ptr noundef %adev, i32 noundef %add304.i, i32 noundef %shr305.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end314.i

cond.false306.i:                                  ; preds = %land.lhs.true289.i.cond.false306.i_crit_edge, %land.lhs.true284.i.cond.false306.i_crit_edge, %cond.end279.i.cond.false306.i_crit_edge
  %arrayidx308.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %250 = ptrtoint ptr %arrayidx308.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx308.i, align 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 4
  %add311.i = add i32 %253, 5579
  %dummy_page_addr312.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %254 = ptrtoint ptr %dummy_page_addr312.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %dummy_page_addr312.i, align 8
  %shr313.i = lshr i32 %255, 12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add311.i, i32 noundef %shr313.i, i32 noundef 0) #6
  br label %cond.end314.i

cond.end314.i:                                    ; preds = %cond.false306.i, %cond.true295.i
  %256 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %virt, align 8
  %and317.i = and i32 %257, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317.i)
  %tobool318.not.i = icmp eq i32 %and317.i, 0
  br i1 %tobool318.not.i, label %cond.end314.i.cond.false344.i_crit_edge, label %land.lhs.true319.i

cond.end314.i.cond.false344.i_crit_edge:          ; preds = %cond.end314.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false344.i

land.lhs.true319.i:                               ; preds = %cond.end314.i
  %funcs322.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %258 = ptrtoint ptr %funcs322.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %funcs322.i, align 4
  %tobool323.not.i = icmp eq ptr %259, null
  br i1 %tobool323.not.i, label %land.lhs.true319.i.cond.false344.i_crit_edge, label %land.lhs.true324.i

land.lhs.true319.i.cond.false344.i_crit_edge:     ; preds = %land.lhs.true319.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false344.i

land.lhs.true324.i:                               ; preds = %land.lhs.true319.i
  %sriov_wreg328.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %259, i32 0, i32 12
  %260 = ptrtoint ptr %sriov_wreg328.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sriov_wreg328.i, align 4
  %tobool329.not.i = icmp eq ptr %261, null
  br i1 %tobool329.not.i, label %land.lhs.true324.i.cond.false344.i_crit_edge, label %cond.true330.i

land.lhs.true324.i.cond.false344.i_crit_edge:     ; preds = %land.lhs.true324.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false344.i

cond.true330.i:                                   ; preds = %land.lhs.true324.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx336.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %262 = ptrtoint ptr %arrayidx336.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx336.i, align 8
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %263, align 4
  %add339.i = add i32 %265, 5580
  tail call void %261(ptr noundef %adev, i32 noundef %add339.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end354.i

cond.false344.i:                                  ; preds = %land.lhs.true324.i.cond.false344.i_crit_edge, %land.lhs.true319.i.cond.false344.i_crit_edge, %cond.end314.i.cond.false344.i_crit_edge
  %arrayidx346.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %266 = ptrtoint ptr %arrayidx346.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx346.i, align 8
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %267, align 4
  %add349.i = add i32 %269, 5580
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add349.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end354.i

cond.end354.i:                                    ; preds = %cond.false344.i, %cond.true330.i
  %270 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %virt, align 8
  %and357.i = and i32 %271, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357.i)
  %tobool358.not.i = icmp eq i32 %and357.i, 0
  br i1 %tobool358.not.i, label %cond.end354.i.cond.false447.sink.split.i_crit_edge, label %land.lhs.true359.i

cond.end354.i.cond.false447.sink.split.i_crit_edge: ; preds = %cond.end354.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false447.sink.split.i

land.lhs.true359.i:                               ; preds = %cond.end354.i
  %funcs362.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %272 = ptrtoint ptr %funcs362.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %funcs362.i, align 4
  %tobool363.not.i = icmp eq ptr %273, null
  br i1 %tobool363.not.i, label %land.lhs.true359.i.cond.false447.sink.split.i_crit_edge, label %land.lhs.true364.i

land.lhs.true359.i.cond.false447.sink.split.i_crit_edge: ; preds = %land.lhs.true359.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false447.sink.split.i

land.lhs.true364.i:                               ; preds = %land.lhs.true359.i
  %sriov_wreg368.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %273, i32 0, i32 12
  %274 = ptrtoint ptr %sriov_wreg368.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %sriov_wreg368.i, align 4
  %tobool369.not.i = icmp eq ptr %275, null
  %arrayidx417627.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %276 = ptrtoint ptr %arrayidx417627.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx417627.i, align 8
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %277, align 4
  %add420628.i = add i32 %279, 5573
  %sriov_rreg434.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %273, i32 0, i32 13
  %280 = ptrtoint ptr %sriov_rreg434.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %sriov_rreg434.i, align 4
  %tobool435.not.i = icmp eq ptr %281, null
  br i1 %tobool369.not.i, label %land.lhs.true430.i, label %cond.true370.i

cond.true370.i:                                   ; preds = %land.lhs.true364.i
  br i1 %tobool435.not.i, label %cond.false405.i, label %cond.true394.i

cond.true394.i:                                   ; preds = %cond.true370.i
  call void @__sanitizer_cov_trace_pc() #8
  %call404.i = tail call i32 %281(ptr noundef %adev, i32 noundef %add420628.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end412.i

cond.false405.i:                                  ; preds = %cond.true370.i
  call void @__sanitizer_cov_trace_pc() #8
  %call411.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add420628.i, i32 noundef 0) #6
  br label %cond.end412.i

cond.end412.i:                                    ; preds = %cond.false405.i, %cond.true394.i
  %cond413.i = phi i32 [ %call404.i, %cond.true394.i ], [ %call411.i, %cond.false405.i ]
  %or.i = or i32 %cond413.i, 262144
  tail call void %275(ptr noundef %adev, i32 noundef %add420628.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_1_init_system_aperture_regs.exit

land.lhs.true430.i:                               ; preds = %land.lhs.true364.i
  br i1 %tobool435.not.i, label %land.lhs.true430.i.cond.false447.i_crit_edge, label %cond.true436.i

land.lhs.true430.i.cond.false447.i_crit_edge:     ; preds = %land.lhs.true430.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false447.i

cond.true436.i:                                   ; preds = %land.lhs.true430.i
  call void @__sanitizer_cov_trace_pc() #8
  %call446.i = tail call i32 %281(ptr noundef %adev, i32 noundef %add420628.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end454.i

cond.false447.sink.split.i:                       ; preds = %land.lhs.true359.i.cond.false447.sink.split.i_crit_edge, %cond.end354.i.cond.false447.sink.split.i_crit_edge
  %arrayidx417627632.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %282 = ptrtoint ptr %arrayidx417627632.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx417627632.i, align 8
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %283, align 4
  %add420628633.i = add i32 %285, 5573
  br label %cond.false447.i

cond.false447.i:                                  ; preds = %cond.false447.sink.split.i, %land.lhs.true430.i.cond.false447.i_crit_edge
  %add420631.i = phi i32 [ %add420628.i, %land.lhs.true430.i.cond.false447.i_crit_edge ], [ %add420628633.i, %cond.false447.sink.split.i ]
  %call453.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add420631.i, i32 noundef 0) #6
  br label %cond.end454.i

cond.end454.i:                                    ; preds = %cond.false447.i, %cond.true436.i
  %add420629.i = phi i32 [ %add420628.i, %cond.true436.i ], [ %add420631.i, %cond.false447.i ]
  %cond455.i = phi i32 [ %call446.i, %cond.true436.i ], [ %call453.i, %cond.false447.i ]
  %or457.i = or i32 %cond455.i, 262144
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add420629.i, i32 noundef %or457.i, i32 noundef 0) #6
  br label %gfxhub_v2_1_init_system_aperture_regs.exit

gfxhub_v2_1_init_system_aperture_regs.exit:       ; preds = %cond.end454.i, %cond.end412.i
  %286 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %virt, align 8
  %and.i116 = and i32 %287, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i117 = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i117, label %gfxhub_v2_1_init_system_aperture_regs.exit.cond.false.i130_crit_edge, label %land.lhs.true.i120

gfxhub_v2_1_init_system_aperture_regs.exit.cond.false.i130_crit_edge: ; preds = %gfxhub_v2_1_init_system_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i130

land.lhs.true.i120:                               ; preds = %gfxhub_v2_1_init_system_aperture_regs.exit
  %funcs.i118 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %288 = ptrtoint ptr %funcs.i118 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %funcs.i118, align 4
  %tobool1.not.i119 = icmp eq ptr %289, null
  br i1 %tobool1.not.i119, label %land.lhs.true.i120.cond.false.i130_crit_edge, label %land.lhs.true2.i123

land.lhs.true.i120.cond.false.i130_crit_edge:     ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i130

land.lhs.true2.i123:                              ; preds = %land.lhs.true.i120
  %sriov_rreg.i121 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %289, i32 0, i32 13
  %290 = ptrtoint ptr %sriov_rreg.i121 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %sriov_rreg.i121, align 4
  %tobool6.not.i122 = icmp eq ptr %291, null
  br i1 %tobool6.not.i122, label %land.lhs.true2.i123.cond.false.i130_crit_edge, label %cond.true.i127

land.lhs.true2.i123.cond.false.i130_crit_edge:    ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i130

cond.true.i127:                                   ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i124 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %292 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx.i124, align 8
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %293, align 4
  %add.i125 = add i32 %295, 5891
  %call.i126 = tail call i32 %291(ptr noundef %adev, i32 noundef %add.i125, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i131

cond.false.i130:                                  ; preds = %land.lhs.true2.i123.cond.false.i130_crit_edge, %land.lhs.true.i120.cond.false.i130_crit_edge, %gfxhub_v2_1_init_system_aperture_regs.exit.cond.false.i130_crit_edge
  %arrayidx14.i128 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %296 = ptrtoint ptr %arrayidx14.i128 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx14.i128, align 8
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %297, align 4
  %add17.i129 = add i32 %299, 5891
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i129, i32 noundef 0) #6
  br label %cond.end.i131

cond.end.i131:                                    ; preds = %cond.false.i130, %cond.true.i127
  %cond.i = phi i32 [ %call.i126, %cond.true.i127 ], [ %call18.i, %cond.false.i130 ]
  %or23.i = and i32 %cond.i, -14458
  %or27.i = or i32 %or23.i, 6233
  %300 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %virt, align 8
  %and30.i = and i32 %301, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %cond.end.i131.cond.false52.i_crit_edge, label %land.lhs.true32.i

cond.end.i131.cond.false52.i_crit_edge:           ; preds = %cond.end.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

land.lhs.true32.i:                                ; preds = %cond.end.i131
  %funcs35.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %302 = ptrtoint ptr %funcs35.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %funcs35.i, align 4
  %tobool36.not.i132 = icmp eq ptr %303, null
  br i1 %tobool36.not.i132, label %land.lhs.true32.i.cond.false52.i_crit_edge, label %land.lhs.true37.i

land.lhs.true32.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

land.lhs.true37.i:                                ; preds = %land.lhs.true32.i
  %sriov_wreg.i133 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %303, i32 0, i32 12
  %304 = ptrtoint ptr %sriov_wreg.i133 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %sriov_wreg.i133, align 4
  %tobool41.not.i = icmp eq ptr %305, null
  br i1 %tobool41.not.i, label %land.lhs.true37.i.cond.false52.i_crit_edge, label %cond.true42.i

land.lhs.true37.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

cond.true42.i:                                    ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx48.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %306 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx48.i, align 8
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %307, align 4
  %add51.i = add i32 %309, 5891
  tail call void %305(ptr noundef %adev, i32 noundef %add51.i, i32 noundef %or27.i, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_1_init_tlb_regs.exit

cond.false52.i:                                   ; preds = %land.lhs.true37.i.cond.false52.i_crit_edge, %land.lhs.true32.i.cond.false52.i_crit_edge, %cond.end.i131.cond.false52.i_crit_edge
  %arrayidx54.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %310 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx54.i, align 8
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %311, align 4
  %add57.i = add i32 %313, 5891
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add57.i, i32 noundef %or27.i, i32 noundef 0) #6
  br label %gfxhub_v2_1_init_tlb_regs.exit

gfxhub_v2_1_init_tlb_regs.exit:                   ; preds = %cond.false52.i, %cond.true42.i
  %314 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %virt, align 8
  %and.i135 = and i32 %315, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool.not.i136 = icmp eq i32 %and.i135, 0
  br i1 %tobool.not.i136, label %cond.false.i138, label %gfxhub_v2_1_init_tlb_regs.exit.gfxhub_v2_1_init_cache_regs.exit_crit_edge

gfxhub_v2_1_init_tlb_regs.exit.gfxhub_v2_1_init_cache_regs.exit_crit_edge: ; preds = %gfxhub_v2_1_init_tlb_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %gfxhub_v2_1_init_cache_regs.exit

cond.false.i138:                                  ; preds = %gfxhub_v2_1_init_tlb_regs.exit
  %arrayidx18.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %316 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx18.i, align 8
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %317, align 4
  %add21.i = add i32 %319, 5564
  %call22.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21.i, i32 noundef 0) #6
  %or.i137 = and i32 %call22.i, -66849028
  %or33.i = or i32 %or.i137, 526337
  %320 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %virt, align 8
  %and38.i = and i32 %321, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %cond.false.i138.cond.false60.i_crit_edge, label %land.lhs.true40.i

cond.false.i138.cond.false60.i_crit_edge:         ; preds = %cond.false.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

land.lhs.true40.i:                                ; preds = %cond.false.i138
  %funcs43.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %322 = ptrtoint ptr %funcs43.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %funcs43.i, align 4
  %tobool44.not.i = icmp eq ptr %323, null
  br i1 %tobool44.not.i, label %land.lhs.true40.i.cond.false60.i_crit_edge, label %land.lhs.true45.i

land.lhs.true40.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

land.lhs.true45.i:                                ; preds = %land.lhs.true40.i
  %sriov_wreg.i139 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %323, i32 0, i32 12
  %324 = ptrtoint ptr %sriov_wreg.i139 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %sriov_wreg.i139, align 4
  %tobool49.not.i = icmp eq ptr %325, null
  br i1 %tobool49.not.i, label %land.lhs.true45.i.cond.false60.i_crit_edge, label %cond.true50.i

land.lhs.true45.i.cond.false60.i_crit_edge:       ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false60.i

cond.true50.i:                                    ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  %326 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %arrayidx18.i, align 8
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %327, align 4
  %add59.i = add i32 %329, 5564
  tail call void %325(ptr noundef %adev, i32 noundef %add59.i, i32 noundef %or33.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end66.i

cond.false60.i:                                   ; preds = %land.lhs.true45.i.cond.false60.i_crit_edge, %land.lhs.true40.i.cond.false60.i_crit_edge, %cond.false.i138.cond.false60.i_crit_edge
  %330 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx18.i, align 8
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %331, align 4
  %add65.i = add i32 %333, 5564
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add65.i, i32 noundef %or33.i, i32 noundef 0) #6
  br label %cond.end66.i

cond.end66.i:                                     ; preds = %cond.false60.i, %cond.true50.i
  %334 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %virt, align 8
  %and69.i = and i32 %335, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i140 = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i140, label %cond.end66.i.cond.false93.i_crit_edge, label %land.lhs.true71.i141

cond.end66.i.cond.false93.i_crit_edge:            ; preds = %cond.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

land.lhs.true71.i141:                             ; preds = %cond.end66.i
  %funcs74.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %336 = ptrtoint ptr %funcs74.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %funcs74.i, align 4
  %tobool75.not.i = icmp eq ptr %337, null
  br i1 %tobool75.not.i, label %land.lhs.true71.i141.cond.false93.i_crit_edge, label %land.lhs.true76.i

land.lhs.true71.i141.cond.false93.i_crit_edge:    ; preds = %land.lhs.true71.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

land.lhs.true76.i:                                ; preds = %land.lhs.true71.i141
  %sriov_rreg80.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %337, i32 0, i32 13
  %338 = ptrtoint ptr %sriov_rreg80.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %sriov_rreg80.i, align 4
  %tobool81.not.i = icmp eq ptr %339, null
  br i1 %tobool81.not.i, label %land.lhs.true76.i.cond.false93.i_crit_edge, label %cond.true82.i

land.lhs.true76.i.cond.false93.i_crit_edge:       ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false93.i

cond.true82.i:                                    ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  %340 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %arrayidx18.i, align 8
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %341, align 4
  %add91.i = add i32 %343, 5565
  %call92.i = tail call i32 %339(ptr noundef %adev, i32 noundef %add91.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end100.i143

cond.false93.i:                                   ; preds = %land.lhs.true76.i.cond.false93.i_crit_edge, %land.lhs.true71.i141.cond.false93.i_crit_edge, %cond.end66.i.cond.false93.i_crit_edge
  %344 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %arrayidx18.i, align 8
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %345, align 4
  %add98.i = add i32 %347, 5565
  %call99.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add98.i, i32 noundef 0) #6
  br label %cond.end100.i143

cond.end100.i143:                                 ; preds = %cond.false93.i, %cond.true82.i
  %cond101.i = phi i32 [ %call92.i, %cond.true82.i ], [ %call99.i, %cond.false93.i ]
  %or105.i = or i32 %cond101.i, 3
  %348 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %virt, align 8
  %and108.i = and i32 %349, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i142 = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i142, label %cond.end100.i143.cond.false131.i_crit_edge, label %land.lhs.true110.i144

cond.end100.i143.cond.false131.i_crit_edge:       ; preds = %cond.end100.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

land.lhs.true110.i144:                            ; preds = %cond.end100.i143
  %funcs113.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %350 = ptrtoint ptr %funcs113.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %funcs113.i, align 4
  %tobool114.not.i = icmp eq ptr %351, null
  br i1 %tobool114.not.i, label %land.lhs.true110.i144.cond.false131.i_crit_edge, label %land.lhs.true115.i

land.lhs.true110.i144.cond.false131.i_crit_edge:  ; preds = %land.lhs.true110.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

land.lhs.true115.i:                               ; preds = %land.lhs.true110.i144
  %sriov_wreg119.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %351, i32 0, i32 12
  %352 = ptrtoint ptr %sriov_wreg119.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %sriov_wreg119.i, align 4
  %tobool120.not.i = icmp eq ptr %353, null
  br i1 %tobool120.not.i, label %land.lhs.true115.i.cond.false131.i_crit_edge, label %cond.true121.i

land.lhs.true115.i.cond.false131.i_crit_edge:     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false131.i

cond.true121.i:                                   ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #8
  %354 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx18.i, align 8
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %355, align 4
  %add130.i = add i32 %357, 5565
  tail call void %353(ptr noundef %adev, i32 noundef %add130.i, i32 noundef %or105.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end137.i

cond.false131.i:                                  ; preds = %land.lhs.true115.i.cond.false131.i_crit_edge, %land.lhs.true110.i144.cond.false131.i_crit_edge, %cond.end100.i143.cond.false131.i_crit_edge
  %358 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %arrayidx18.i, align 8
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %359, align 4
  %add136.i = add i32 %361, 5565
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add136.i, i32 noundef %or105.i, i32 noundef 0) #6
  br label %cond.end137.i

cond.end137.i:                                    ; preds = %cond.false131.i, %cond.true121.i
  %translate_further.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %362 = ptrtoint ptr %translate_further.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %translate_further.i, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %tobool138.not.i = icmp eq i8 %363, 0
  %..i = select i1 %tobool138.not.i, i32 -2146238455, i32 -2146140148
  %364 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %virt, align 8
  %and151.i145 = and i32 %365, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i145)
  %tobool152.not.i146 = icmp eq i32 %and151.i145, 0
  br i1 %tobool152.not.i146, label %cond.end137.i.cond.false174.i_crit_edge, label %land.lhs.true153.i149

cond.end137.i.cond.false174.i_crit_edge:          ; preds = %cond.end137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

land.lhs.true153.i149:                            ; preds = %cond.end137.i
  %funcs156.i147 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %366 = ptrtoint ptr %funcs156.i147 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %funcs156.i147, align 4
  %tobool157.not.i148 = icmp eq ptr %367, null
  br i1 %tobool157.not.i148, label %land.lhs.true153.i149.cond.false174.i_crit_edge, label %land.lhs.true158.i152

land.lhs.true153.i149.cond.false174.i_crit_edge:  ; preds = %land.lhs.true153.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

land.lhs.true158.i152:                            ; preds = %land.lhs.true153.i149
  %sriov_wreg162.i150 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %367, i32 0, i32 12
  %368 = ptrtoint ptr %sriov_wreg162.i150 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %sriov_wreg162.i150, align 4
  %tobool163.not.i151 = icmp eq ptr %369, null
  br i1 %tobool163.not.i151, label %land.lhs.true158.i152.cond.false174.i_crit_edge, label %cond.true164.i154

land.lhs.true158.i152.cond.false174.i_crit_edge:  ; preds = %land.lhs.true158.i152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false174.i

cond.true164.i154:                                ; preds = %land.lhs.true158.i152
  call void @__sanitizer_cov_trace_pc() #8
  %370 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx18.i, align 8
  %372 = ptrtoint ptr %371 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %371, align 4
  %add173.i153 = add i32 %373, 5566
  tail call void %369(ptr noundef %adev, i32 noundef %add173.i153, i32 noundef %..i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end180.i

cond.false174.i:                                  ; preds = %land.lhs.true158.i152.cond.false174.i_crit_edge, %land.lhs.true153.i149.cond.false174.i_crit_edge, %cond.end137.i.cond.false174.i_crit_edge
  %374 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %arrayidx18.i, align 8
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %375, align 4
  %add179.i = add i32 %377, 5566
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add179.i, i32 noundef %..i, i32 noundef 0) #6
  br label %cond.end180.i

cond.end180.i:                                    ; preds = %cond.false174.i, %cond.true164.i154
  %378 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %virt, align 8
  %and187.i = and i32 %379, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i)
  %tobool188.not.i = icmp eq i32 %and187.i, 0
  br i1 %tobool188.not.i, label %cond.end180.i.cond.false210.i_crit_edge, label %land.lhs.true189.i

cond.end180.i.cond.false210.i_crit_edge:          ; preds = %cond.end180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

land.lhs.true189.i:                               ; preds = %cond.end180.i
  %funcs192.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %380 = ptrtoint ptr %funcs192.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %funcs192.i, align 4
  %tobool193.not.i = icmp eq ptr %381, null
  br i1 %tobool193.not.i, label %land.lhs.true189.i.cond.false210.i_crit_edge, label %land.lhs.true194.i

land.lhs.true189.i.cond.false210.i_crit_edge:     ; preds = %land.lhs.true189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

land.lhs.true194.i:                               ; preds = %land.lhs.true189.i
  %sriov_wreg198.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %381, i32 0, i32 12
  %382 = ptrtoint ptr %sriov_wreg198.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %sriov_wreg198.i, align 4
  %tobool199.not.i = icmp eq ptr %383, null
  br i1 %tobool199.not.i, label %land.lhs.true194.i.cond.false210.i_crit_edge, label %cond.true200.i

land.lhs.true194.i.cond.false210.i_crit_edge:     ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false210.i

cond.true200.i:                                   ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #8
  %384 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %arrayidx18.i, align 8
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %385, align 4
  %add209.i = add i32 %387, 5588
  tail call void %383(ptr noundef %adev, i32 noundef %add209.i, i32 noundef 1, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end216.i

cond.false210.i:                                  ; preds = %land.lhs.true194.i.cond.false210.i_crit_edge, %land.lhs.true189.i.cond.false210.i_crit_edge, %cond.end180.i.cond.false210.i_crit_edge
  %388 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %arrayidx18.i, align 8
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %389, align 4
  %add215.i = add i32 %391, 5588
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add215.i, i32 noundef 1, i32 noundef 0) #6
  br label %cond.end216.i

cond.end216.i:                                    ; preds = %cond.false210.i, %cond.true200.i
  %392 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %virt, align 8
  %and221.i = and i32 %393, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i)
  %tobool222.not.i155 = icmp eq i32 %and221.i, 0
  br i1 %tobool222.not.i155, label %cond.end216.i.cond.false244.i_crit_edge, label %land.lhs.true223.i

cond.end216.i.cond.false244.i_crit_edge:          ; preds = %cond.end216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

land.lhs.true223.i:                               ; preds = %cond.end216.i
  %funcs226.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %394 = ptrtoint ptr %funcs226.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %funcs226.i, align 4
  %tobool227.not.i = icmp eq ptr %395, null
  br i1 %tobool227.not.i, label %land.lhs.true223.i.cond.false244.i_crit_edge, label %land.lhs.true228.i

land.lhs.true223.i.cond.false244.i_crit_edge:     ; preds = %land.lhs.true223.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

land.lhs.true228.i:                               ; preds = %land.lhs.true223.i
  %sriov_wreg232.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %395, i32 0, i32 12
  %396 = ptrtoint ptr %sriov_wreg232.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %sriov_wreg232.i, align 4
  %tobool233.not.i = icmp eq ptr %397, null
  br i1 %tobool233.not.i, label %land.lhs.true228.i.cond.false244.i_crit_edge, label %cond.true234.i

land.lhs.true228.i.cond.false244.i_crit_edge:     ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false244.i

cond.true234.i:                                   ; preds = %land.lhs.true228.i
  call void @__sanitizer_cov_trace_pc() #8
  %398 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %arrayidx18.i, align 8
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %399, align 4
  %add243.i = add i32 %401, 5596
  tail call void %397(ptr noundef %adev, i32 noundef %add243.i, i32 noundef 16352, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_1_init_cache_regs.exit

cond.false244.i:                                  ; preds = %land.lhs.true228.i.cond.false244.i_crit_edge, %land.lhs.true223.i.cond.false244.i_crit_edge, %cond.end216.i.cond.false244.i_crit_edge
  %402 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %arrayidx18.i, align 8
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %403, align 4
  %add249.i = add i32 %405, 5596
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add249.i, i32 noundef 16352, i32 noundef 0) #6
  br label %gfxhub_v2_1_init_cache_regs.exit

gfxhub_v2_1_init_cache_regs.exit:                 ; preds = %cond.false244.i, %cond.true234.i, %gfxhub_v2_1_init_tlb_regs.exit.gfxhub_v2_1_init_cache_regs.exit_crit_edge
  %406 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %virt, align 8
  %and.i157 = and i32 %407, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %tobool.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool.not.i158, label %gfxhub_v2_1_init_cache_regs.exit.cond.false.i172_crit_edge, label %land.lhs.true.i161

gfxhub_v2_1_init_cache_regs.exit.cond.false.i172_crit_edge: ; preds = %gfxhub_v2_1_init_cache_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i172

land.lhs.true.i161:                               ; preds = %gfxhub_v2_1_init_cache_regs.exit
  %funcs.i159 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %408 = ptrtoint ptr %funcs.i159 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %funcs.i159, align 4
  %tobool1.not.i160 = icmp eq ptr %409, null
  br i1 %tobool1.not.i160, label %land.lhs.true.i161.cond.false.i172_crit_edge, label %land.lhs.true2.i164

land.lhs.true.i161.cond.false.i172_crit_edge:     ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i172

land.lhs.true2.i164:                              ; preds = %land.lhs.true.i161
  %sriov_rreg.i162 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %409, i32 0, i32 13
  %410 = ptrtoint ptr %sriov_rreg.i162 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %sriov_rreg.i162, align 4
  %tobool6.not.i163 = icmp eq ptr %411, null
  br i1 %tobool6.not.i163, label %land.lhs.true2.i164.cond.false.i172_crit_edge, label %cond.true.i168

land.lhs.true2.i164.cond.false.i172_crit_edge:    ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i172

cond.true.i168:                                   ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i165 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %412 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %arrayidx.i165, align 8
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %413, align 4
  %add.i166 = add i32 %415, 5628
  %call.i167 = tail call i32 %411(ptr noundef %adev, i32 noundef %add.i166, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i176

cond.false.i172:                                  ; preds = %land.lhs.true2.i164.cond.false.i172_crit_edge, %land.lhs.true.i161.cond.false.i172_crit_edge, %gfxhub_v2_1_init_cache_regs.exit.cond.false.i172_crit_edge
  %arrayidx14.i169 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %416 = ptrtoint ptr %arrayidx14.i169 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %arrayidx14.i169, align 8
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %417, align 4
  %add17.i170 = add i32 %419, 5628
  %call18.i171 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i170, i32 noundef 0) #6
  br label %cond.end.i176

cond.end.i176:                                    ; preds = %cond.false.i172, %cond.true.i168
  %cond.i173 = phi i32 [ %call.i167, %cond.true.i168 ], [ %call18.i171, %cond.false.i172 ]
  %or.i174 = and i32 %cond.i173, -136
  %and20.i175 = or i32 %or.i174, 1
  %420 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %virt, align 8
  %and26.i = and i32 %421, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %cond.end.i176.cond.false48.i_crit_edge, label %land.lhs.true28.i

cond.end.i176.cond.false48.i_crit_edge:           ; preds = %cond.end.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

land.lhs.true28.i:                                ; preds = %cond.end.i176
  %funcs31.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %422 = ptrtoint ptr %funcs31.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %funcs31.i, align 4
  %tobool32.not.i177 = icmp eq ptr %423, null
  br i1 %tobool32.not.i177, label %land.lhs.true28.i.cond.false48.i_crit_edge, label %land.lhs.true33.i

land.lhs.true28.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

land.lhs.true33.i:                                ; preds = %land.lhs.true28.i
  %sriov_wreg.i178 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %423, i32 0, i32 12
  %424 = ptrtoint ptr %sriov_wreg.i178 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %sriov_wreg.i178, align 4
  %tobool37.not.i = icmp eq ptr %425, null
  br i1 %tobool37.not.i, label %land.lhs.true33.i.cond.false48.i_crit_edge, label %cond.true38.i

land.lhs.true33.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

cond.true38.i:                                    ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %426 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %arrayidx44.i, align 8
  %428 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %427, align 4
  %add47.i = add i32 %429, 5628
  tail call void %425(ptr noundef %adev, i32 noundef %add47.i, i32 noundef %and20.i175, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_1_enable_system_domain.exit

cond.false48.i:                                   ; preds = %land.lhs.true33.i.cond.false48.i_crit_edge, %land.lhs.true28.i.cond.false48.i_crit_edge, %cond.end.i176.cond.false48.i_crit_edge
  %arrayidx50.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %430 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %arrayidx50.i, align 8
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %431, align 4
  %add53.i = add i32 %433, 5628
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53.i, i32 noundef %and20.i175, i32 noundef 0) #6
  br label %gfxhub_v2_1_enable_system_domain.exit

gfxhub_v2_1_enable_system_domain.exit:            ; preds = %cond.false48.i, %cond.true38.i
  %434 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %virt, align 8
  %and.i180 = and i32 %435, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.not.i181 = icmp eq i32 %and.i180, 0
  br i1 %tobool.not.i181, label %cond.false.i186, label %gfxhub_v2_1_enable_system_domain.exit.gfxhub_v2_1_disable_identity_aperture.exit_crit_edge

gfxhub_v2_1_enable_system_domain.exit.gfxhub_v2_1_disable_identity_aperture.exit_crit_edge: ; preds = %gfxhub_v2_1_enable_system_domain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %gfxhub_v2_1_disable_identity_aperture.exit

cond.false.i186:                                  ; preds = %gfxhub_v2_1_enable_system_domain.exit
  %arrayidx18.i182 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %436 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx18.i182, align 8
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %437, align 4
  %add21.i183 = add i32 %439, 5582
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add21.i183, i32 noundef -1, i32 noundef 0) #6
  %440 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %virt, align 8
  %and24.i184 = and i32 %441, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i184)
  %tobool25.not.i185 = icmp eq i32 %and24.i184, 0
  br i1 %tobool25.not.i185, label %cond.false.i186.cond.false47.i_crit_edge, label %land.lhs.true26.i189

cond.false.i186.cond.false47.i_crit_edge:         ; preds = %cond.false.i186
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

land.lhs.true26.i189:                             ; preds = %cond.false.i186
  %funcs29.i187 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %442 = ptrtoint ptr %funcs29.i187 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %funcs29.i187, align 4
  %tobool30.not.i188 = icmp eq ptr %443, null
  br i1 %tobool30.not.i188, label %land.lhs.true26.i189.cond.false47.i_crit_edge, label %land.lhs.true31.i192

land.lhs.true26.i189.cond.false47.i_crit_edge:    ; preds = %land.lhs.true26.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

land.lhs.true31.i192:                             ; preds = %land.lhs.true26.i189
  %sriov_wreg35.i190 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %443, i32 0, i32 12
  %444 = ptrtoint ptr %sriov_wreg35.i190 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %sriov_wreg35.i190, align 4
  %tobool36.not.i191 = icmp eq ptr %445, null
  br i1 %tobool36.not.i191, label %land.lhs.true31.i192.cond.false47.i_crit_edge, label %cond.true37.i194

land.lhs.true31.i192.cond.false47.i_crit_edge:    ; preds = %land.lhs.true31.i192
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false47.i

cond.true37.i194:                                 ; preds = %land.lhs.true31.i192
  call void @__sanitizer_cov_trace_pc() #8
  %446 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %arrayidx18.i182, align 8
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %447, align 4
  %add46.i193 = add i32 %449, 5583
  tail call void %445(ptr noundef %adev, i32 noundef %add46.i193, i32 noundef 15, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end53.i197

cond.false47.i:                                   ; preds = %land.lhs.true31.i192.cond.false47.i_crit_edge, %land.lhs.true26.i189.cond.false47.i_crit_edge, %cond.false.i186.cond.false47.i_crit_edge
  %450 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %arrayidx18.i182, align 8
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %451, align 4
  %add52.i = add i32 %453, 5583
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add52.i, i32 noundef 15, i32 noundef 0) #6
  br label %cond.end53.i197

cond.end53.i197:                                  ; preds = %cond.false47.i, %cond.true37.i194
  %454 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %virt, align 8
  %and56.i195 = and i32 %455, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i195)
  %tobool57.not.i196 = icmp eq i32 %and56.i195, 0
  br i1 %tobool57.not.i196, label %cond.end53.i197.cond.false79.i_crit_edge, label %land.lhs.true58.i200

cond.end53.i197.cond.false79.i_crit_edge:         ; preds = %cond.end53.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79.i

land.lhs.true58.i200:                             ; preds = %cond.end53.i197
  %funcs61.i198 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %456 = ptrtoint ptr %funcs61.i198 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %funcs61.i198, align 4
  %tobool62.not.i199 = icmp eq ptr %457, null
  br i1 %tobool62.not.i199, label %land.lhs.true58.i200.cond.false79.i_crit_edge, label %land.lhs.true63.i203

land.lhs.true58.i200.cond.false79.i_crit_edge:    ; preds = %land.lhs.true58.i200
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79.i

land.lhs.true63.i203:                             ; preds = %land.lhs.true58.i200
  %sriov_wreg67.i201 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %457, i32 0, i32 12
  %458 = ptrtoint ptr %sriov_wreg67.i201 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %sriov_wreg67.i201, align 4
  %tobool68.not.i202 = icmp eq ptr %459, null
  br i1 %tobool68.not.i202, label %land.lhs.true63.i203.cond.false79.i_crit_edge, label %cond.true69.i205

land.lhs.true63.i203.cond.false79.i_crit_edge:    ; preds = %land.lhs.true63.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false79.i

cond.true69.i205:                                 ; preds = %land.lhs.true63.i203
  call void @__sanitizer_cov_trace_pc() #8
  %460 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %arrayidx18.i182, align 8
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %461, align 4
  %add78.i204 = add i32 %463, 5584
  tail call void %459(ptr noundef %adev, i32 noundef %add78.i204, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end85.i

cond.false79.i:                                   ; preds = %land.lhs.true63.i203.cond.false79.i_crit_edge, %land.lhs.true58.i200.cond.false79.i_crit_edge, %cond.end53.i197.cond.false79.i_crit_edge
  %464 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx18.i182, align 8
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %465, align 4
  %add84.i = add i32 %467, 5584
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add84.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end85.i

cond.end85.i:                                     ; preds = %cond.false79.i, %cond.true69.i205
  %468 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %virt, align 8
  %and88.i = and i32 %469, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %cond.end85.i.cond.false111.i_crit_edge, label %land.lhs.true90.i

cond.end85.i.cond.false111.i_crit_edge:           ; preds = %cond.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111.i

land.lhs.true90.i:                                ; preds = %cond.end85.i
  %funcs93.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %470 = ptrtoint ptr %funcs93.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %funcs93.i, align 4
  %tobool94.not.i = icmp eq ptr %471, null
  br i1 %tobool94.not.i, label %land.lhs.true90.i.cond.false111.i_crit_edge, label %land.lhs.true95.i

land.lhs.true90.i.cond.false111.i_crit_edge:      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111.i

land.lhs.true95.i:                                ; preds = %land.lhs.true90.i
  %sriov_wreg99.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %471, i32 0, i32 12
  %472 = ptrtoint ptr %sriov_wreg99.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %sriov_wreg99.i, align 4
  %tobool100.not.i = icmp eq ptr %473, null
  br i1 %tobool100.not.i, label %land.lhs.true95.i.cond.false111.i_crit_edge, label %cond.true101.i

land.lhs.true95.i.cond.false111.i_crit_edge:      ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false111.i

cond.true101.i:                                   ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #8
  %474 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %arrayidx18.i182, align 8
  %476 = ptrtoint ptr %475 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %475, align 4
  %add110.i = add i32 %477, 5585
  tail call void %473(ptr noundef %adev, i32 noundef %add110.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end117.i

cond.false111.i:                                  ; preds = %land.lhs.true95.i.cond.false111.i_crit_edge, %land.lhs.true90.i.cond.false111.i_crit_edge, %cond.end85.i.cond.false111.i_crit_edge
  %478 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %arrayidx18.i182, align 8
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %479, align 4
  %add116.i = add i32 %481, 5585
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add116.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end117.i

cond.end117.i:                                    ; preds = %cond.false111.i, %cond.true101.i
  %482 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %virt, align 8
  %and120.i = and i32 %483, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %cond.end117.i.cond.false143.i_crit_edge, label %land.lhs.true122.i

cond.end117.i.cond.false143.i_crit_edge:          ; preds = %cond.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false143.i

land.lhs.true122.i:                               ; preds = %cond.end117.i
  %funcs125.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %484 = ptrtoint ptr %funcs125.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %funcs125.i, align 4
  %tobool126.not.i = icmp eq ptr %485, null
  br i1 %tobool126.not.i, label %land.lhs.true122.i.cond.false143.i_crit_edge, label %land.lhs.true127.i

land.lhs.true122.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false143.i

land.lhs.true127.i:                               ; preds = %land.lhs.true122.i
  %sriov_wreg131.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %485, i32 0, i32 12
  %486 = ptrtoint ptr %sriov_wreg131.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %sriov_wreg131.i, align 4
  %tobool132.not.i = icmp eq ptr %487, null
  br i1 %tobool132.not.i, label %land.lhs.true127.i.cond.false143.i_crit_edge, label %cond.true133.i

land.lhs.true127.i.cond.false143.i_crit_edge:     ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false143.i

cond.true133.i:                                   ; preds = %land.lhs.true127.i
  call void @__sanitizer_cov_trace_pc() #8
  %488 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %arrayidx18.i182, align 8
  %490 = ptrtoint ptr %489 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %489, align 4
  %add142.i = add i32 %491, 5586
  tail call void %487(ptr noundef %adev, i32 noundef %add142.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end149.i

cond.false143.i:                                  ; preds = %land.lhs.true127.i.cond.false143.i_crit_edge, %land.lhs.true122.i.cond.false143.i_crit_edge, %cond.end117.i.cond.false143.i_crit_edge
  %492 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %arrayidx18.i182, align 8
  %494 = ptrtoint ptr %493 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %493, align 4
  %add148.i = add i32 %495, 5586
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add148.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end149.i

cond.end149.i:                                    ; preds = %cond.false143.i, %cond.true133.i
  %496 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %virt, align 8
  %and152.i = and i32 %497, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %cond.end149.i.cond.false175.i_crit_edge, label %land.lhs.true154.i

cond.end149.i.cond.false175.i_crit_edge:          ; preds = %cond.end149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false175.i

land.lhs.true154.i:                               ; preds = %cond.end149.i
  %funcs157.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %498 = ptrtoint ptr %funcs157.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %funcs157.i, align 4
  %tobool158.not.i = icmp eq ptr %499, null
  br i1 %tobool158.not.i, label %land.lhs.true154.i.cond.false175.i_crit_edge, label %land.lhs.true159.i

land.lhs.true154.i.cond.false175.i_crit_edge:     ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false175.i

land.lhs.true159.i:                               ; preds = %land.lhs.true154.i
  %sriov_wreg163.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %499, i32 0, i32 12
  %500 = ptrtoint ptr %sriov_wreg163.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %sriov_wreg163.i, align 4
  %tobool164.not.i = icmp eq ptr %501, null
  br i1 %tobool164.not.i, label %land.lhs.true159.i.cond.false175.i_crit_edge, label %cond.true165.i

land.lhs.true159.i.cond.false175.i_crit_edge:     ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false175.i

cond.true165.i:                                   ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #8
  %502 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %arrayidx18.i182, align 8
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %503, align 4
  %add174.i = add i32 %505, 5587
  tail call void %501(ptr noundef %adev, i32 noundef %add174.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %gfxhub_v2_1_disable_identity_aperture.exit

cond.false175.i:                                  ; preds = %land.lhs.true159.i.cond.false175.i_crit_edge, %land.lhs.true154.i.cond.false175.i_crit_edge, %cond.end149.i.cond.false175.i_crit_edge
  %506 = ptrtoint ptr %arrayidx18.i182 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %arrayidx18.i182, align 8
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %507, align 4
  %add180.i = add i32 %509, 5587
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add180.i, i32 noundef 0, i32 noundef 0) #6
  br label %gfxhub_v2_1_disable_identity_aperture.exit

gfxhub_v2_1_disable_identity_aperture.exit:       ; preds = %cond.false175.i, %cond.true165.i, %gfxhub_v2_1_enable_system_domain.exit.gfxhub_v2_1_disable_identity_aperture.exit_crit_edge
  %funcs.i207 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %num_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %noretry.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  %ctx_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 8
  %ctx_addr_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %gfxhub_v2_1_disable_identity_aperture.exit
  %i.0355.i = phi i32 [ 0, %gfxhub_v2_1_disable_identity_aperture.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %510 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %virt, align 8
  %and.i208 = and i32 %511, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i208)
  %tobool.not.i209 = icmp eq i32 %and.i208, 0
  br i1 %tobool.not.i209, label %for.body.i.cond.false.i218_crit_edge, label %land.lhs.true.i211

for.body.i.cond.false.i218_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i218

land.lhs.true.i211:                               ; preds = %for.body.i
  %512 = ptrtoint ptr %funcs.i207 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %funcs.i207, align 4
  %tobool1.not.i210 = icmp eq ptr %513, null
  br i1 %tobool1.not.i210, label %land.lhs.true.i211.cond.false.i218_crit_edge, label %land.lhs.true2.i214

land.lhs.true.i211.cond.false.i218_crit_edge:     ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i218

land.lhs.true2.i214:                              ; preds = %land.lhs.true.i211
  %sriov_rreg.i212 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %513, i32 0, i32 13
  %514 = ptrtoint ptr %sriov_rreg.i212 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %sriov_rreg.i212, align 4
  %tobool6.not.i213 = icmp eq ptr %515, null
  br i1 %tobool6.not.i213, label %land.lhs.true2.i214.cond.false.i218_crit_edge, label %cond.true.i217

land.lhs.true2.i214.cond.false.i218_crit_edge:    ; preds = %land.lhs.true2.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i218

cond.true.i217:                                   ; preds = %land.lhs.true2.i214
  call void @__sanitizer_cov_trace_pc() #8
  %516 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %arrayidx11.i, align 8
  %518 = ptrtoint ptr %517 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %517, align 4
  %add.i215 = add nuw nsw i32 %i.0355.i, 5629
  %add14.i = add i32 %add.i215, %519
  %call.i216 = tail call i32 %515(ptr noundef %adev, i32 noundef %add14.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i222

cond.false.i218:                                  ; preds = %land.lhs.true2.i214.cond.false.i218_crit_edge, %land.lhs.true.i211.cond.false.i218_crit_edge, %for.body.i.cond.false.i218_crit_edge
  %520 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %arrayidx11.i, align 8
  %522 = ptrtoint ptr %521 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %521, align 4
  %add19.i = add nuw nsw i32 %i.0355.i, 5629
  %add20.i = add i32 %add19.i, %523
  %call21.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i, i32 noundef 0) #6
  br label %cond.end.i222

cond.end.i222:                                    ; preds = %cond.false.i218, %cond.true.i217
  %cond.i219 = phi i32 [ %call.i216, %cond.true.i217 ], [ %call21.i, %cond.false.i218 ]
  %or.i220 = and i32 %cond.i219, -5592320
  %524 = ptrtoint ptr %num_level.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %num_level.i, align 8
  %shl.i = shl i32 %525, 1
  %and24.i221 = and i32 %shl.i, 6
  %526 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %block_size.i, align 4
  %sub.i = shl i32 %527, 3
  %shl42.i = add i32 %sub.i, 56
  %and43.i = and i32 %shl42.i, 120
  %528 = ptrtoint ptr %noretry.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %noretry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %529)
  %tobool46.not.i = icmp eq i32 %529, 0
  %shl47.i = select i1 %tobool46.not.i, i32 128, i32 0
  %and23.i = or i32 %or.i220, %and24.i221
  %or39.i = or i32 %and23.i, %and43.i
  %or44.i = or i32 %or39.i, %shl47.i
  %or49.i = or i32 %or44.i, 5592065
  %530 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %virt, align 8
  %and52.i = and i32 %531, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cond.end.i222.cond.false75.i_crit_edge, label %land.lhs.true54.i

cond.end.i222.cond.false75.i_crit_edge:           ; preds = %cond.end.i222
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true54.i:                                ; preds = %cond.end.i222
  %532 = ptrtoint ptr %funcs.i207 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %funcs.i207, align 4
  %tobool58.not.i = icmp eq ptr %533, null
  br i1 %tobool58.not.i, label %land.lhs.true54.i.cond.false75.i_crit_edge, label %land.lhs.true59.i

land.lhs.true54.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true59.i:                                ; preds = %land.lhs.true54.i
  %sriov_wreg.i223 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %533, i32 0, i32 12
  %534 = ptrtoint ptr %sriov_wreg.i223 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %sriov_wreg.i223, align 4
  %tobool63.not.i = icmp eq ptr %535, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i.cond.false75.i_crit_edge, label %cond.true64.i

land.lhs.true59.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

cond.true64.i:                                    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  %536 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %arrayidx11.i, align 8
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %537, align 4
  %add73.i = add i32 %539, 5629
  %540 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %ctx_distance.i, align 4
  %mul.i = mul i32 %541, %i.0355.i
  %add74.i = add i32 %add73.i, %mul.i
  tail call void %535(ptr noundef %adev, i32 noundef %add74.i, i32 noundef %or49.i, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end84.i

cond.false75.i:                                   ; preds = %land.lhs.true59.i.cond.false75.i_crit_edge, %land.lhs.true54.i.cond.false75.i_crit_edge, %cond.end.i222.cond.false75.i_crit_edge
  %542 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %arrayidx11.i, align 8
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %543, align 4
  %add80.i = add i32 %545, 5629
  %546 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %ctx_distance.i, align 4
  %mul82.i = mul i32 %547, %i.0355.i
  %add83.i = add i32 %add80.i, %mul82.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add83.i, i32 noundef %or49.i, i32 noundef 0) #6
  br label %cond.end84.i

cond.end84.i:                                     ; preds = %cond.false75.i, %cond.true64.i
  %548 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %virt, align 8
  %and87.i = and i32 %549, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %cond.end84.i.cond.false112.i_crit_edge, label %land.lhs.true89.i

cond.end84.i.cond.false112.i_crit_edge:           ; preds = %cond.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

land.lhs.true89.i:                                ; preds = %cond.end84.i
  %550 = ptrtoint ptr %funcs.i207 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %funcs.i207, align 4
  %tobool93.not.i = icmp eq ptr %551, null
  br i1 %tobool93.not.i, label %land.lhs.true89.i.cond.false112.i_crit_edge, label %land.lhs.true94.i

land.lhs.true89.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

land.lhs.true94.i:                                ; preds = %land.lhs.true89.i
  %sriov_wreg98.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %551, i32 0, i32 12
  %552 = ptrtoint ptr %sriov_wreg98.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %sriov_wreg98.i, align 4
  %tobool99.not.i = icmp eq ptr %553, null
  br i1 %tobool99.not.i, label %land.lhs.true94.i.cond.false112.i_crit_edge, label %cond.true100.i

land.lhs.true94.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

cond.true100.i:                                   ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #8
  %554 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx11.i, align 8
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %555, align 4
  %add109.i = add i32 %557, 5769
  %558 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul110.i = mul i32 %559, %i.0355.i
  %add111.i = add i32 %add109.i, %mul110.i
  tail call void %553(ptr noundef %adev, i32 noundef %add111.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end121.i

cond.false112.i:                                  ; preds = %land.lhs.true94.i.cond.false112.i_crit_edge, %land.lhs.true89.i.cond.false112.i_crit_edge, %cond.end84.i.cond.false112.i_crit_edge
  %560 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %arrayidx11.i, align 8
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %561, align 4
  %add117.i224 = add i32 %563, 5769
  %564 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul119.i = mul i32 %565, %i.0355.i
  %add120.i = add i32 %add117.i224, %mul119.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add120.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end121.i

cond.end121.i:                                    ; preds = %cond.false112.i, %cond.true100.i
  %566 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %virt, align 8
  %and124.i = and i32 %567, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  br i1 %tobool125.not.i, label %cond.end121.i.cond.false150.i_crit_edge, label %land.lhs.true126.i

cond.end121.i.cond.false150.i_crit_edge:          ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

land.lhs.true126.i:                               ; preds = %cond.end121.i
  %568 = ptrtoint ptr %funcs.i207 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %funcs.i207, align 4
  %tobool130.not.i = icmp eq ptr %569, null
  br i1 %tobool130.not.i, label %land.lhs.true126.i.cond.false150.i_crit_edge, label %land.lhs.true131.i

land.lhs.true126.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

land.lhs.true131.i:                               ; preds = %land.lhs.true126.i
  %sriov_wreg135.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %569, i32 0, i32 12
  %570 = ptrtoint ptr %sriov_wreg135.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %sriov_wreg135.i, align 4
  %tobool136.not.i = icmp eq ptr %571, null
  br i1 %tobool136.not.i, label %land.lhs.true131.i.cond.false150.i_crit_edge, label %cond.true137.i

land.lhs.true131.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

cond.true137.i:                                   ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  %572 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %arrayidx11.i, align 8
  %574 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %573, align 4
  %add146.i = add i32 %575, 5770
  %576 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul148.i = mul i32 %577, %i.0355.i
  %add149.i = add i32 %add146.i, %mul148.i
  tail call void %571(ptr noundef %adev, i32 noundef %add149.i, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end159.i

cond.false150.i:                                  ; preds = %land.lhs.true131.i.cond.false150.i_crit_edge, %land.lhs.true126.i.cond.false150.i_crit_edge, %cond.end121.i.cond.false150.i_crit_edge
  %578 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %arrayidx11.i, align 8
  %580 = ptrtoint ptr %579 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %579, align 4
  %add155.i = add i32 %581, 5770
  %582 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul157.i = mul i32 %583, %i.0355.i
  %add158.i = add i32 %add155.i, %mul157.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add158.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end159.i

cond.end159.i:                                    ; preds = %cond.false150.i, %cond.true137.i
  %584 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %virt, align 8
  %and162.i = and i32 %585, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %tobool163.not.i225 = icmp eq i32 %and162.i, 0
  br i1 %tobool163.not.i225, label %cond.end159.i.cond.false191.i_crit_edge, label %land.lhs.true164.i

cond.end159.i.cond.false191.i_crit_edge:          ; preds = %cond.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

land.lhs.true164.i:                               ; preds = %cond.end159.i
  %586 = ptrtoint ptr %funcs.i207 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %funcs.i207, align 4
  %tobool168.not.i = icmp eq ptr %587, null
  br i1 %tobool168.not.i, label %land.lhs.true164.i.cond.false191.i_crit_edge, label %land.lhs.true169.i

land.lhs.true164.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

land.lhs.true169.i:                               ; preds = %land.lhs.true164.i
  %sriov_wreg173.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %587, i32 0, i32 12
  %588 = ptrtoint ptr %sriov_wreg173.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %sriov_wreg173.i, align 4
  %tobool174.not.i = icmp eq ptr %589, null
  br i1 %tobool174.not.i, label %land.lhs.true169.i.cond.false191.i_crit_edge, label %cond.true175.i

land.lhs.true169.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

cond.true175.i:                                   ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  %590 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %arrayidx11.i, align 8
  %592 = ptrtoint ptr %591 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %591, align 4
  %add184.i = add i32 %593, 5801
  %594 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul186.i = mul i32 %595, %i.0355.i
  %add187.i = add i32 %add184.i, %mul186.i
  %596 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %596)
  %597 = load i64, ptr %max_pfn.i, align 8
  %598 = trunc i64 %597 to i32
  %conv.i226 = add i32 %598, -1
  tail call void %589(ptr noundef %adev, i32 noundef %add187.i, i32 noundef %conv.i226, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end205.i

cond.false191.i:                                  ; preds = %land.lhs.true169.i.cond.false191.i_crit_edge, %land.lhs.true164.i.cond.false191.i_crit_edge, %cond.end159.i.cond.false191.i_crit_edge
  %599 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %arrayidx11.i, align 8
  %601 = ptrtoint ptr %600 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %600, align 4
  %add196.i = add i32 %602, 5801
  %603 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul198.i = mul i32 %604, %i.0355.i
  %add199.i = add i32 %add196.i, %mul198.i
  %605 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %605)
  %606 = load i64, ptr %max_pfn.i, align 8
  %607 = trunc i64 %606 to i32
  %conv204.i = add i32 %607, -1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add199.i, i32 noundef %conv204.i, i32 noundef 0) #6
  br label %cond.end205.i

cond.end205.i:                                    ; preds = %cond.false191.i, %cond.true175.i
  %608 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %virt, align 8
  %and208.i = and i32 %609, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i)
  %tobool209.not.i = icmp eq i32 %and208.i, 0
  br i1 %tobool209.not.i, label %cond.end205.i.cond.false239.i_crit_edge, label %land.lhs.true210.i

cond.end205.i.cond.false239.i_crit_edge:          ; preds = %cond.end205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

land.lhs.true210.i:                               ; preds = %cond.end205.i
  %610 = ptrtoint ptr %funcs.i207 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %funcs.i207, align 4
  %tobool214.not.i = icmp eq ptr %611, null
  br i1 %tobool214.not.i, label %land.lhs.true210.i.cond.false239.i_crit_edge, label %land.lhs.true215.i

land.lhs.true210.i.cond.false239.i_crit_edge:     ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

land.lhs.true215.i:                               ; preds = %land.lhs.true210.i
  %sriov_wreg219.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %611, i32 0, i32 12
  %612 = ptrtoint ptr %sriov_wreg219.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %sriov_wreg219.i, align 4
  %tobool220.not.i = icmp eq ptr %613, null
  br i1 %tobool220.not.i, label %land.lhs.true215.i.cond.false239.i_crit_edge, label %cond.true221.i

land.lhs.true215.i.cond.false239.i_crit_edge:     ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

cond.true221.i:                                   ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #8
  %614 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %arrayidx11.i, align 8
  %616 = ptrtoint ptr %615 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %615, align 4
  %add230.i = add i32 %617, 5802
  %618 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul232.i = mul i32 %619, %i.0355.i
  %add233.i = add i32 %add230.i, %mul232.i
  %620 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %620)
  %621 = load i64, ptr %max_pfn.i, align 8
  %sub236.i = add i64 %621, -1
  %shr.i227 = lshr i64 %sub236.i, 32
  %conv238.i = trunc i64 %shr.i227 to i32
  tail call void %613(ptr noundef %adev, i32 noundef %add233.i, i32 noundef %conv238.i, i32 noundef 0, i32 noundef 1) #6
  br label %for.inc.i

cond.false239.i:                                  ; preds = %land.lhs.true215.i.cond.false239.i_crit_edge, %land.lhs.true210.i.cond.false239.i_crit_edge, %cond.end205.i.cond.false239.i_crit_edge
  %622 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %arrayidx11.i, align 8
  %624 = ptrtoint ptr %623 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %623, align 4
  %add244.i = add i32 %625, 5802
  %626 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul246.i = mul i32 %627, %i.0355.i
  %add247.i = add i32 %add244.i, %mul246.i
  %628 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %628)
  %629 = load i64, ptr %max_pfn.i, align 8
  %sub250.i = add i64 %629, -1
  %shr251.i = lshr i64 %sub250.i, 32
  %conv253.i = trunc i64 %shr251.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add247.i, i32 noundef %conv253.i, i32 noundef 0) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false239.i, %cond.true221.i
  %inc.i = add nuw nsw i32 %i.0355.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %gfxhub_v2_1_setup_vmid_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

gfxhub_v2_1_setup_vmid_config.exit:               ; preds = %for.inc.i
  %eng_addr_distance.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 11
  br label %for.body.i233

for.body.i233:                                    ; preds = %for.inc.i258.for.body.i233_crit_edge, %gfxhub_v2_1_setup_vmid_config.exit
  %i.088.i = phi i32 [ 0, %gfxhub_v2_1_setup_vmid_config.exit ], [ %inc.i256, %for.inc.i258.for.body.i233_crit_edge ]
  %630 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %virt, align 8
  %and.i231 = and i32 %631, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i231)
  %tobool.not.i232 = icmp eq i32 %and.i231, 0
  br i1 %tobool.not.i232, label %for.body.i233.cond.false.i244_crit_edge, label %land.lhs.true.i235

for.body.i233.cond.false.i244_crit_edge:          ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i244

land.lhs.true.i235:                               ; preds = %for.body.i233
  %632 = ptrtoint ptr %funcs.i207 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %funcs.i207, align 4
  %tobool1.not.i234 = icmp eq ptr %633, null
  br i1 %tobool1.not.i234, label %land.lhs.true.i235.cond.false.i244_crit_edge, label %land.lhs.true2.i238

land.lhs.true.i235.cond.false.i244_crit_edge:     ; preds = %land.lhs.true.i235
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i244

land.lhs.true2.i238:                              ; preds = %land.lhs.true.i235
  %sriov_wreg.i236 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %633, i32 0, i32 12
  %634 = ptrtoint ptr %sriov_wreg.i236 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %sriov_wreg.i236, align 4
  %tobool6.not.i237 = icmp eq ptr %635, null
  br i1 %tobool6.not.i237, label %land.lhs.true2.i238.cond.false.i244_crit_edge, label %cond.true.i242

land.lhs.true2.i238.cond.false.i244_crit_edge:    ; preds = %land.lhs.true2.i238
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i244

cond.true.i242:                                   ; preds = %land.lhs.true2.i238
  call void @__sanitizer_cov_trace_pc() #8
  %636 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %arrayidx11.i, align 8
  %638 = ptrtoint ptr %637 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %637, align 4
  %add.i239 = add i32 %639, 5699
  %640 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %eng_addr_distance.i, align 4
  %mul.i240 = mul i32 %641, %i.088.i
  %add14.i241 = add i32 %add.i239, %mul.i240
  tail call void %635(ptr noundef %adev, i32 noundef %add14.i241, i32 noundef -1, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end.i246

cond.false.i244:                                  ; preds = %land.lhs.true2.i238.cond.false.i244_crit_edge, %land.lhs.true.i235.cond.false.i244_crit_edge, %for.body.i233.cond.false.i244_crit_edge
  %642 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %arrayidx11.i, align 8
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %643, align 4
  %add19.i243 = add i32 %645, 5699
  %646 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %eng_addr_distance.i, align 4
  %mul21.i = mul i32 %647, %i.088.i
  %add22.i = add i32 %add19.i243, %mul21.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22.i, i32 noundef -1, i32 noundef 0) #6
  br label %cond.end.i246

cond.end.i246:                                    ; preds = %cond.false.i244, %cond.true.i242
  %648 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %virt, align 8
  %and25.i = and i32 %649, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i245 = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i245, label %cond.end.i246.cond.false51.i255_crit_edge, label %land.lhs.true27.i248

cond.end.i246.cond.false51.i255_crit_edge:        ; preds = %cond.end.i246
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i255

land.lhs.true27.i248:                             ; preds = %cond.end.i246
  %650 = ptrtoint ptr %funcs.i207 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %funcs.i207, align 4
  %tobool31.not.i247 = icmp eq ptr %651, null
  br i1 %tobool31.not.i247, label %land.lhs.true27.i248.cond.false51.i255_crit_edge, label %land.lhs.true32.i250

land.lhs.true27.i248.cond.false51.i255_crit_edge: ; preds = %land.lhs.true27.i248
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i255

land.lhs.true32.i250:                             ; preds = %land.lhs.true27.i248
  %sriov_wreg36.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %651, i32 0, i32 12
  %652 = ptrtoint ptr %sriov_wreg36.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %sriov_wreg36.i, align 4
  %tobool37.not.i249 = icmp eq ptr %653, null
  br i1 %tobool37.not.i249, label %land.lhs.true32.i250.cond.false51.i255_crit_edge, label %cond.true38.i252

land.lhs.true32.i250.cond.false51.i255_crit_edge: ; preds = %land.lhs.true32.i250
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i255

cond.true38.i252:                                 ; preds = %land.lhs.true32.i250
  call void @__sanitizer_cov_trace_pc() #8
  %654 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %arrayidx11.i, align 8
  %656 = ptrtoint ptr %655 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %655, align 4
  %add47.i251 = add i32 %657, 5700
  %658 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %eng_addr_distance.i, align 4
  %mul49.i = mul i32 %659, %i.088.i
  %add50.i = add i32 %add47.i251, %mul49.i
  tail call void %653(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 31, i32 noundef 0, i32 noundef 1) #6
  br label %for.inc.i258

cond.false51.i255:                                ; preds = %land.lhs.true32.i250.cond.false51.i255_crit_edge, %land.lhs.true27.i248.cond.false51.i255_crit_edge, %cond.end.i246.cond.false51.i255_crit_edge
  %660 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %arrayidx11.i, align 8
  %662 = ptrtoint ptr %661 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %661, align 4
  %add56.i253 = add i32 %663, 5700
  %664 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %eng_addr_distance.i, align 4
  %mul58.i = mul i32 %665, %i.088.i
  %add59.i254 = add i32 %add56.i253, %mul58.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i254, i32 noundef 31, i32 noundef 0) #6
  br label %for.inc.i258

for.inc.i258:                                     ; preds = %cond.false51.i255, %cond.true38.i252
  %inc.i256 = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i257 = icmp eq i32 %inc.i256, 18
  br i1 %exitcond.not.i257, label %gfxhub_v2_1_program_invalidation.exit, label %for.inc.i258.for.body.i233_crit_edge

for.inc.i258.for.body.i233_crit_edge:             ; preds = %for.inc.i258
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i233

gfxhub_v2_1_program_invalidation.exit:            ; preds = %for.inc.i258
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v2_1_gart_disable(ptr noundef %adev) #0 align 64 {
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
  %add = add i32 %9, 5628
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
  %add19 = add i32 %15, 5628
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
  %add46 = add i32 %27, 5891
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add46, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true32.cond.false47_crit_edge, %land.lhs.true27.cond.false47_crit_edge, %for.end.cond.false47_crit_edge
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add52 = add i32 %31, 5891
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
  %add82 = add i32 %41, 5891
  tail call void %37(ptr noundef %adev, i32 noundef %add82, i32 noundef %and56, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end89

cond.false83:                                     ; preds = %land.lhs.true67.cond.false83_crit_edge, %land.lhs.true62.cond.false83_crit_edge, %cond.end54.cond.false83_crit_edge
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx11, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add88 = add i32 %45, 5891
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add88, i32 noundef %and56, i32 noundef 0) #6
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false83, %cond.true73
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and92 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %cond.end89.cond.false184.sink.split_crit_edge, label %land.lhs.true94

cond.end89.cond.false184.sink.split_crit_edge:    ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184.sink.split

land.lhs.true94:                                  ; preds = %cond.end89
  %48 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs, align 4
  %tobool98.not = icmp eq ptr %49, null
  br i1 %tobool98.not, label %land.lhs.true94.cond.false184.sink.split_crit_edge, label %land.lhs.true99

land.lhs.true94.cond.false184.sink.split_crit_edge: ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184.sink.split

land.lhs.true99:                                  ; preds = %land.lhs.true94
  %sriov_wreg103 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %sriov_wreg103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sriov_wreg103, align 4
  %tobool104.not = icmp eq ptr %51, null
  br i1 %tobool104.not, label %land.lhs.true162, label %cond.true105

cond.true105:                                     ; preds = %land.lhs.true99
  %52 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx11, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add114 = add i32 %55, 5564
  %sriov_rreg128 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %49, i32 0, i32 13
  %56 = ptrtoint ptr %sriov_rreg128 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sriov_rreg128, align 4
  %tobool129.not = icmp eq ptr %57, null
  br i1 %tobool129.not, label %cond.false141, label %cond.true130

cond.true130:                                     ; preds = %cond.true105
  call void @__sanitizer_cov_trace_pc() #8
  %call140 = tail call i32 %57(ptr noundef %adev, i32 noundef %add114, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end148

cond.false141:                                    ; preds = %cond.true105
  call void @__sanitizer_cov_trace_pc() #8
  %call147 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add114, i32 noundef 0) #6
  br label %cond.end148

cond.end148:                                      ; preds = %cond.false141, %cond.true130
  %cond149 = phi i32 [ %call140, %cond.true130 ], [ %call147, %cond.false141 ]
  %and150 = and i32 %cond149, -2
  tail call void %51(ptr noundef %adev, i32 noundef %add114, i32 noundef %and150, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end195

land.lhs.true162:                                 ; preds = %land.lhs.true99
  %58 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load ptr, ptr %funcs, align 4
  %59 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx11, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %add157304 = add i32 %62, 5564
  %tobool166.not = icmp eq ptr %.pr, null
  br i1 %tobool166.not, label %land.lhs.true162.cond.false184_crit_edge, label %land.lhs.true167

land.lhs.true162.cond.false184_crit_edge:         ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184

land.lhs.true167:                                 ; preds = %land.lhs.true162
  %sriov_rreg171 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %.pr, i32 0, i32 13
  %63 = ptrtoint ptr %sriov_rreg171 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sriov_rreg171, align 4
  %tobool172.not = icmp eq ptr %64, null
  br i1 %tobool172.not, label %land.lhs.true167.cond.false184_crit_edge, label %cond.true173

land.lhs.true167.cond.false184_crit_edge:         ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false184

cond.true173:                                     ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #8
  %call183 = tail call i32 %64(ptr noundef %adev, i32 noundef %add157304, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end191

cond.false184.sink.split:                         ; preds = %land.lhs.true94.cond.false184.sink.split_crit_edge, %cond.end89.cond.false184.sink.split_crit_edge
  %65 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx11, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add157304311 = add i32 %68, 5564
  br label %cond.false184

cond.false184:                                    ; preds = %cond.false184.sink.split, %land.lhs.true167.cond.false184_crit_edge, %land.lhs.true162.cond.false184_crit_edge
  %add157307 = phi i32 [ %add157304, %land.lhs.true167.cond.false184_crit_edge ], [ %add157304, %land.lhs.true162.cond.false184_crit_edge ], [ %add157304311, %cond.false184.sink.split ]
  %call190 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add157307, i32 noundef 0) #6
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false184, %cond.true173
  %add157305 = phi i32 [ %add157304, %cond.true173 ], [ %add157307, %cond.false184 ]
  %cond192 = phi i32 [ %call183, %cond.true173 ], [ %call190, %cond.false184 ]
  %and193 = and i32 %cond192, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add157305, i32 noundef %and193, i32 noundef 0) #6
  br label %cond.end195

cond.end195:                                      ; preds = %cond.end191, %cond.end148
  %69 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virt, align 8
  %and198 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %cond.end195.cond.false221_crit_edge, label %land.lhs.true200

cond.end195.cond.false221_crit_edge:              ; preds = %cond.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false221

land.lhs.true200:                                 ; preds = %cond.end195
  %71 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %funcs, align 4
  %tobool204.not = icmp eq ptr %72, null
  br i1 %tobool204.not, label %land.lhs.true200.cond.false221_crit_edge, label %land.lhs.true205

land.lhs.true200.cond.false221_crit_edge:         ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false221

land.lhs.true205:                                 ; preds = %land.lhs.true200
  %sriov_wreg209 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %sriov_wreg209 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sriov_wreg209, align 4
  %tobool210.not = icmp eq ptr %74, null
  br i1 %tobool210.not, label %land.lhs.true205.cond.false221_crit_edge, label %cond.true211

land.lhs.true205.cond.false221_crit_edge:         ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false221

cond.true211:                                     ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx11, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add220 = add i32 %78, 5566
  tail call void %74(ptr noundef %adev, i32 noundef %add220, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end227

cond.false221:                                    ; preds = %land.lhs.true205.cond.false221_crit_edge, %land.lhs.true200.cond.false221_crit_edge, %cond.end195.cond.false221_crit_edge
  %79 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx11, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add226 = add i32 %82, 5566
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add226, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end227

cond.end227:                                      ; preds = %cond.false221, %cond.true211
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v2_1_set_fault_enable_default(ptr noundef %adev, i1 noundef zeroext %value) #0 align 64 {
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
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %2 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx18, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add21 = add i32 %5, 5572
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
  %add116 = add i32 %15, 5572
  tail call void %11(ptr noundef %adev, i32 noundef %add116, i32 noundef %tmp.0, i32 noundef 0, i32 noundef 1) #6
  br label %cleanup

cond.false117:                                    ; preds = %land.lhs.true102.cond.false117_crit_edge, %land.lhs.true97.cond.false117_crit_edge, %cond.false.cond.false117_crit_edge
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add122 = add i32 %19, 5572
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add122, i32 noundef %tmp.0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.false117, %cond.true107, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gfxhub_v2_1_init(ptr nocapture noundef %adev) #1 align 64 {
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
  %add = add i32 %3, 5735
  %4 = ptrtoint ptr %vmhub to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %vmhub, align 4
  %5 = load i32, ptr %1, align 4
  %add8 = add i32 %5, 5736
  %ctx0_ptb_addr_hi32 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 1
  %6 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add8, ptr %ctx0_ptb_addr_hi32, align 4
  %7 = load i32, ptr %1, align 4
  %add13 = add i32 %7, 5645
  %vm_inv_eng0_sem = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 2
  %8 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add13, ptr %vm_inv_eng0_sem, align 4
  %9 = load i32, ptr %1, align 4
  %add18 = add i32 %9, 5663
  %vm_inv_eng0_req = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 3
  %10 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18, ptr %vm_inv_eng0_req, align 4
  %11 = load i32, ptr %1, align 4
  %add23 = add i32 %11, 5681
  %vm_inv_eng0_ack = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 4
  %12 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add23, ptr %vm_inv_eng0_ack, align 4
  %13 = load i32, ptr %1, align 4
  %add28 = add i32 %13, 5628
  %vm_context0_cntl = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 5
  %14 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add28, ptr %vm_context0_cntl, align 4
  %15 = load i32, ptr %1, align 4
  %add33 = add i32 %15, 5576
  %vm_l2_pro_fault_status = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 0, i32 6
  %16 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add33, ptr %vm_l2_pro_fault_status, align 4
  %17 = load i32, ptr %1, align 4
  %add38 = add i32 %17, 5572
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
  store ptr @gfxhub_v2_1_vmhub_funcs, ptr %vmhub_funcs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfxhub_v2_1_get_xgmi_info(ptr noundef %adev) #0 align 64 {
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
  %add = add i32 %9, 5879
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
  %add17 = add i32 %13, 5879
  %call18 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call18, %cond.false ]
  %and19 = lshr i32 %cond, 4
  %shr = and i32 %and19, 15
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 29
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 264192, i32 %15)
  %cond81 = icmp eq i32 %15, 264192
  br i1 %cond81, label %sw.bb, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool22.not = icmp eq i32 %shr, 0
  br i1 %tobool22.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %add23 = add nuw nsw i32 %shr, 1
  %num_physical_nodes = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 4
  %16 = ptrtoint ptr %num_physical_nodes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add23, ptr %num_physical_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp = icmp ugt i32 %shr, 3
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and28 = and i32 %cond, 15
  %physical_node_id = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 3
  %17 = ptrtoint ptr %physical_node_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and28, ptr %physical_node_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and28)
  %cmp35 = icmp ugt i32 %and28, 3
  br i1 %cmp35, label %if.end.cleanup_crit_edge, label %if.end37

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt, align 8
  %and40 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.cond.false64_crit_edge, label %land.lhs.true42

if.end37.cond.false64_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false64

land.lhs.true42:                                  ; preds = %if.end37
  %funcs45 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs45, align 4
  %tobool46.not = icmp eq ptr %21, null
  br i1 %tobool46.not, label %land.lhs.true42.cond.false64_crit_edge, label %land.lhs.true47

land.lhs.true42.cond.false64_crit_edge:           ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false64

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %sriov_rreg51 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %sriov_rreg51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_rreg51, align 4
  %tobool52.not = icmp eq ptr %23, null
  br i1 %tobool52.not, label %land.lhs.true47.cond.false64_crit_edge, label %cond.true53

land.lhs.true47.cond.false64_crit_edge:           ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false64

cond.true53:                                      ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx59 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %24 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx59, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add62 = add i32 %27, 5880
  %call63 = tail call i32 %23(ptr noundef %adev, i32 noundef %add62, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end71

cond.false64:                                     ; preds = %land.lhs.true47.cond.false64_crit_edge, %land.lhs.true42.cond.false64_crit_edge, %if.end37.cond.false64_crit_edge
  %arrayidx66 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %28 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx66, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add69 = add i32 %31, 5880
  %call70 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add69, i32 noundef 0) #6
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false64, %cond.true53
  %cond72 = phi i32 [ %call63, %cond.true53 ], [ %call70, %cond.false64 ]
  %shl = shl i32 %cond72, 24
  %conv = zext i32 %shl to i64
  %node_segment_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 2
  %32 = ptrtoint ptr %node_segment_size to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %node_segment_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end71, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cond.end.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cond.end71 ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfxhub_v2_1_utcl2_harvest(ptr noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %0 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_sh_per_se, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 8
  %mul = mul i32 %3, %1
  %sh_prom.i = zext i32 %mul to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %4 = trunc i64 %notmask.i to i32
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 172, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 656129, label %entry.sw.bb_crit_edge
    i32 656131, label %entry.sw.bb_crit_edge150
  ]

entry.sw.bb_crit_edge150:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge150
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cond.false_crit_edge, label %land.lhs.true

sw.bb.cond.false_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %sw.bb
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add = add i32 %17, 4073
  %call18 = tail call i32 %13(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %sw.bb.cond.false_crit_edge
  %arrayidx20 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add23 = add i32 %21, 4073
  %call24 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add23, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call18, %cond.true ], [ %call24, %cond.false ]
  %22 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %virt, align 8
  %and28 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cond.end.cond.false52_crit_edge, label %land.lhs.true30

cond.end.cond.false52_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52

land.lhs.true30:                                  ; preds = %cond.end
  %funcs33 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %24 = ptrtoint ptr %funcs33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs33, align 4
  %tobool34.not = icmp eq ptr %25, null
  br i1 %tobool34.not, label %land.lhs.true30.cond.false52_crit_edge, label %land.lhs.true35

land.lhs.true30.cond.false52_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %sriov_rreg39 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %sriov_rreg39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sriov_rreg39, align 4
  %tobool40.not = icmp eq ptr %27, null
  br i1 %tobool40.not, label %land.lhs.true35.cond.false52_crit_edge, label %cond.true41

land.lhs.true35.cond.false52_crit_edge:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52

cond.true41:                                      ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add50 = add i32 %31, 4074
  %call51 = tail call i32 %27(ptr noundef %adev, i32 noundef %add50, i32 noundef 0, i32 noundef 1) #6
  br label %cond.end59

cond.false52:                                     ; preds = %land.lhs.true35.cond.false52_crit_edge, %land.lhs.true30.cond.false52_crit_edge, %cond.end.cond.false52_crit_edge
  %arrayidx54 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %32 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx54, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add57 = add i32 %35, 4074
  %call58 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add57, i32 noundef 0) #6
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false52, %cond.true41
  %cond60 = phi i32 [ %call51, %cond.true41 ], [ %call58, %cond.false52 ]
  %and25145 = or i32 %cond60, %cond
  %shr144 = lshr i32 %and25145, 8
  %conv.i = and i32 %4, 255
  %or = xor i32 %conv.i, 255
  %and64 = and i32 %or, %shr144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %cmp.not146 = icmp eq i32 %and64, 0
  br i1 %cmp.not146, label %cond.end59.for.end_crit_edge, label %cond.end59.for.body_crit_edge

cond.end59.for.body_crit_edge:                    ; preds = %cond.end59
  br label %for.body

cond.end59.for.end_crit_edge:                     ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end59.for.body_crit_edge
  %disabled_sa.0149 = phi i32 [ %shr69, %for.body.for.body_crit_edge ], [ %and64, %cond.end59.for.body_crit_edge ]
  %tmp.0148 = phi i32 [ %tmp.1, %for.body.for.body_crit_edge ], [ 0, %cond.end59.for.body_crit_edge ]
  %i.0147 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %cond.end59.for.body_crit_edge ]
  %and65 = and i32 %disabled_sa.0149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %mul67 = shl nuw i32 %i.0147, 1
  %shl = shl i32 3, %mul67
  %or68 = select i1 %tobool66.not, i32 0, i32 %shl
  %tmp.1 = or i32 %or68, %tmp.0148
  %shr69 = lshr i32 %disabled_sa.0149, 1
  %inc = add nuw nsw i32 %i.0147, 1
  %cmp.not = icmp ult i32 %disabled_sa.0149, 2
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end59.for.end_crit_edge
  %tmp.0.lcssa = phi i32 [ 0, %cond.end59.for.end_crit_edge ], [ %tmp.1, %for.body.for.end_crit_edge ]
  %36 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt, align 8
  %and72 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %for.end.cond.false94_crit_edge, label %land.lhs.true74

for.end.cond.false94_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false94

land.lhs.true74:                                  ; preds = %for.end
  %funcs77 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %38 = ptrtoint ptr %funcs77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs77, align 4
  %tobool78.not = icmp eq ptr %39, null
  br i1 %tobool78.not, label %land.lhs.true74.cond.false94_crit_edge, label %land.lhs.true79

land.lhs.true74.cond.false94_crit_edge:           ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false94

land.lhs.true79:                                  ; preds = %land.lhs.true74
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_wreg, align 4
  %tobool83.not = icmp eq ptr %41, null
  br i1 %tobool83.not, label %land.lhs.true79.cond.false94_crit_edge, label %cond.true84

land.lhs.true79.cond.false94_crit_edge:           ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false94

cond.true84:                                      ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx90 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %42 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx90, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add93 = add i32 %45, 5880
  tail call void %41(ptr noundef %adev, i32 noundef %add93, i32 noundef %tmp.0.lcssa, i32 noundef 0, i32 noundef 1) #6
  br label %sw.epilog

cond.false94:                                     ; preds = %land.lhs.true79.cond.false94_crit_edge, %land.lhs.true74.cond.false94_crit_edge, %for.end.cond.false94_crit_edge
  %arrayidx96 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %46 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx96, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add99 = add i32 %49, 5880
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add99, i32 noundef %tmp.0.lcssa, i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false94, %cond.true84, %entry.sw.epilog_crit_edge
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
define internal void @gfxhub_v2_1_print_l2_protection_fault_status(ptr nocapture noundef readonly %adev, i32 noundef %status) #0 align 64 {
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
define internal i32 @gfxhub_v2_1_get_invalidate_req(i32 noundef %vmid, i32 noundef %flush_type) #3 align 64 {
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

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

!0 = !{ptr @gfxhub_v2_1_funcs, !1, !"gfxhub_v2_1_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 577, i32 34}
!2 = !{ptr @gfxhub_v2_1_vmhub_funcs, !3, !"gfxhub_v2_1_vmhub_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 453, i32 40}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 85, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 88, i32 2}
!14 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 91, i32 2}
!19 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 94, i32 2}
!23 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 97, i32 2}
!27 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 100, i32 2}
!31 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 103, i32 2}
!35 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gfxhub_v2_1_print_l2_protection_fault_status._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 38, i32 2}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 39, i32 2}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 40, i32 2}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 41, i32 2}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 42, i32 2}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 43, i32 2}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 44, i32 2}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 45, i32 2}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 46, i32 2}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 47, i32 2}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 48, i32 2}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 49, i32 2}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 51, i32 2}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 52, i32 2}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 53, i32 2}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 54, i32 2}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 55, i32 2}
!71 = !{ptr @gfxhub_client_ids, !72, !"gfxhub_client_ids", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/gfxhub_v2_1.c", i32 37, i32 20}
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
