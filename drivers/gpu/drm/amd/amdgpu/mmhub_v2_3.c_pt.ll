; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c"
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

@mmhub_v2_3_funcs = dso_local constant { %struct.amdgpu_mmhub_funcs, [60 x i8] } { %struct.amdgpu_mmhub_funcs { ptr null, ptr @mmhub_v2_3_init, ptr @mmhub_v2_3_gart_enable, ptr @mmhub_v2_3_set_fault_enable_default, ptr @mmhub_v2_3_gart_disable, ptr @mmhub_v2_3_set_clockgating, ptr @mmhub_v2_3_get_clockgating, ptr @mmhub_v2_3_setup_vm_pt_regs, ptr null }, [60 x i8] zeroinitializer }, align 32
@mmhub_v2_3_vmhub_funcs = internal constant { %struct.amdgpu_vmhub_funcs, [24 x i8] } { %struct.amdgpu_vmhub_funcs { ptr @mmhub_v2_3_print_l2_protection_fault_status, ptr @mmhub_v2_3_get_invalidate_req }, [24 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"amdgpu: MMVM_L2_PROTECTION_FAULT_STATUS:0x%08X\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mmhub_v2_3_print_l2_protection_fault_status\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry_ptr = internal global ptr @mmhub_v2_3_print_l2_protection_fault_status._entry, section ".printk_index", align 4
@mmhub_client_ids_vangogh = internal constant { [31 x [2 x ptr]], [40 x i8] } { [31 x [2 x ptr]] [[2 x ptr] [ptr @.str.24, ptr @.str.24], [2 x ptr] [ptr @.str.25, ptr @.str.25], [2 x ptr] [ptr @.str.26, ptr @.str.26], [2 x ptr] [ptr @.str.27, ptr @.str.27], [2 x ptr] [ptr null, ptr @.str.28], [2 x ptr] [ptr null, ptr @.str.29], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.30, ptr null], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer, [2 x ptr] [ptr @.str.31, ptr @.str.31], [2 x ptr] [ptr @.str.32, ptr @.str.32], [2 x ptr] [ptr @.str.33, ptr @.str.33], [2 x ptr] [ptr @.str.34, ptr @.str.34], [2 x ptr] [ptr @.str.35, ptr @.str.35]], [40 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"amdgpu: \09 Faulty UTCL2 client ID: %s (0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.7 = internal global ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu: \09 MORE_FAULTS: 0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.11 = internal global ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.9, section ".printk_index", align 4
@mmhub_v2_3_print_l2_protection_fault_status._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"amdgpu: \09 WALKER_ERROR: 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.14 = internal global ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.12, section ".printk_index", align 4
@mmhub_v2_3_print_l2_protection_fault_status._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"amdgpu: \09 PERMISSION_FAULTS: 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.17 = internal global ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.15, section ".printk_index", align 4
@mmhub_v2_3_print_l2_protection_fault_status._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: \09 MAPPING_ERROR: 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.20 = internal global ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.18, section ".printk_index", align 4
@mmhub_v2_3_print_l2_protection_fault_status._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amdgpu: \09 RW: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.23 = internal global ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP0\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MP1\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEDMC\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEVGA\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCEDWB\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XDP\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UTCL2\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OSS\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HDP\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCN\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCNU\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JPEG\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 131840, i64 132096]
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"mmhub_v2_3_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 617, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"mmhub_v2_3_vmhub_funcs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 439, i32 40 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 90, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [25 x i8] c"mmhub_client_ids_vangogh\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 34, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 102, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 104, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 107, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 110, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 113, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 116, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 35, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 36, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 37, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 38, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 49, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 50, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 39, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 40, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 41, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 42, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 43, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [43 x i8] c"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 44, i32 12 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @mmhub_v2_3_print_l2_protection_fault_status._entry, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.12, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.15, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.18, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.21, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.5, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.9, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.11, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.14, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.17, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.20, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.23, ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.7, ptr @mmhub_v2_3_funcs, ptr @mmhub_v2_3_vmhub_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mmhub_client_ids_vangogh, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_vmhub_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_print_l2_protection_fault_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_client_ids_vangogh to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mmhub_v2_3_init(ptr nocapture noundef %adev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1
  %arrayidx1 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx1, align 8
  %arrayidx3 = getelementptr i32, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %3, 2368
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %arrayidx, align 4
  %5 = load i32, ptr %arrayidx3, align 4
  %add8 = add i32 %5, 2369
  %ctx0_ptb_addr_hi32 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 1
  %6 = ptrtoint ptr %ctx0_ptb_addr_hi32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add8, ptr %ctx0_ptb_addr_hi32, align 4
  %7 = load i32, ptr %arrayidx3, align 4
  %add13 = add i32 %7, 2560
  %vm_inv_eng0_sem = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 2
  %8 = ptrtoint ptr %vm_inv_eng0_sem to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add13, ptr %vm_inv_eng0_sem, align 4
  %9 = load i32, ptr %arrayidx3, align 4
  %add18 = add i32 %9, 2561
  %vm_inv_eng0_req = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 3
  %10 = ptrtoint ptr %vm_inv_eng0_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add18, ptr %vm_inv_eng0_req, align 4
  %11 = load i32, ptr %arrayidx3, align 4
  %add23 = add i32 %11, 2562
  %vm_inv_eng0_ack = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 4
  %12 = ptrtoint ptr %vm_inv_eng0_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add23, ptr %vm_inv_eng0_ack, align 4
  %13 = load i32, ptr %arrayidx3, align 4
  %add28 = add i32 %13, 1856
  %vm_context0_cntl = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 5
  %14 = ptrtoint ptr %vm_context0_cntl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add28, ptr %vm_context0_cntl, align 4
  %15 = load i32, ptr %arrayidx3, align 4
  %add33 = add i32 %15, 1804
  %vm_l2_pro_fault_status = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 6
  %16 = ptrtoint ptr %vm_l2_pro_fault_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add33, ptr %vm_l2_pro_fault_status, align 4
  %17 = load i32, ptr %arrayidx3, align 4
  %add38 = add i32 %17, 1800
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
  store i32 8, ptr %ctx_addr_distance, align 4
  %eng_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 10
  %21 = ptrtoint ptr %eng_distance to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %eng_distance, align 4
  %eng_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  %22 = ptrtoint ptr %eng_addr_distance to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %eng_addr_distance, align 4
  %vm_cntx_cntl_vm_fault = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 12
  %23 = ptrtoint ptr %vm_cntx_cntl_vm_fault to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2796032, ptr %vm_cntx_cntl_vm_fault, align 4
  %vmhub_funcs = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 13
  %24 = ptrtoint ptr %vmhub_funcs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mmhub_v2_3_vmhub_funcs, ptr %vmhub_funcs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v2_3_gart_enable(ptr noundef %adev) #1 align 64 {
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
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx16 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx16, align 4
  %add = add i32 %9, 2284
  %vram_start = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %10 = ptrtoint ptr %vram_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vram_start, align 8
  %shr = lshr i64 %11, 24
  %conv = trunc i64 %shr to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx18, align 8
  %arrayidx20 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %15, 2284
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
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 8
  %arrayidx49 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %27, 2285
  %vram_end = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 11
  %28 = ptrtoint ptr %vram_end to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vram_end, align 8
  %shr52 = lshr i64 %29, 24
  %conv53 = trunc i64 %shr52 to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add50, i32 noundef %conv53, i32 noundef 0, i32 noundef 11) #6
  br label %if.end

cond.false54:                                     ; preds = %land.lhs.true35.cond.false54_crit_edge, %land.lhs.true30.cond.false54_crit_edge, %cond.end.cond.false54_crit_edge
  %arrayidx56 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx56, align 8
  %arrayidx58 = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %33, 2285
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
  tail call void @mmhub_v2_3_setup_vm_pt_regs(ptr noundef %adev, i32 noundef 0, i64 noundef %call.i) #6
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
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx12.i = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx12.i, align 4
  %add.i = add i32 %47, 2370
  %gart_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %48 = ptrtoint ptr %gart_start.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %gart_start.i, align 8
  %shr.i = lshr i64 %49, 12
  %conv.i = trunc i64 %shr.i to i32
  tail call void %43(ptr noundef %adev, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.end.cond.false.i_crit_edge
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %50 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx16.i = getelementptr i32, ptr %51, i32 1
  %52 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %53, 2370
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
  %arrayidx43.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %62 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx43.i, align 8
  %arrayidx45.i = getelementptr i32, ptr %63, i32 1
  %64 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx45.i, align 4
  %add46.i = add i32 %65, 2371
  %gart_start48.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %66 = ptrtoint ptr %gart_start48.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %gart_start48.i, align 8
  %shr49.i = lshr i64 %67, 44
  %conv50.i = trunc i64 %shr49.i to i32
  tail call void %61(ptr noundef %adev, i32 noundef %add46.i, i32 noundef %conv50.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end61.i

cond.false51.i:                                   ; preds = %land.lhs.true31.i.cond.false51.i_crit_edge, %land.lhs.true26.i.cond.false51.i_crit_edge, %cond.end.i.cond.false51.i_crit_edge
  %arrayidx53.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %68 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx53.i, align 8
  %arrayidx55.i = getelementptr i32, ptr %69, i32 1
  %70 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx55.i, align 4
  %add56.i = add i32 %71, 2371
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
  %arrayidx83.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %80 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx83.i, align 8
  %arrayidx85.i = getelementptr i32, ptr %81, i32 1
  %82 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx85.i, align 4
  %add86.i = add i32 %83, 2372
  %gart_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %84 = ptrtoint ptr %gart_end.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gart_end.i, align 8
  %shr88.i = lshr i64 %85, 12
  %conv89.i = trunc i64 %shr88.i to i32
  tail call void %79(ptr noundef %adev, i32 noundef %add86.i, i32 noundef %conv89.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end100.i

cond.false90.i:                                   ; preds = %land.lhs.true71.i.cond.false90.i_crit_edge, %land.lhs.true66.i.cond.false90.i_crit_edge, %cond.end61.i.cond.false90.i_crit_edge
  %arrayidx92.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %86 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx92.i, align 8
  %arrayidx94.i = getelementptr i32, ptr %87, i32 1
  %88 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx94.i, align 4
  %add95.i = add i32 %89, 2372
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
  %arrayidx122.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %98 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx122.i, align 8
  %arrayidx124.i = getelementptr i32, ptr %99, i32 1
  %100 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx124.i, align 4
  %add125.i = add i32 %101, 2373
  %gart_end127.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %102 = ptrtoint ptr %gart_end127.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %gart_end127.i, align 8
  %shr128.i = lshr i64 %103, 44
  %conv129.i = trunc i64 %shr128.i to i32
  tail call void %97(ptr noundef %adev, i32 noundef %add125.i, i32 noundef %conv129.i, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_3_init_gart_aperture_regs.exit

cond.false130.i:                                  ; preds = %land.lhs.true110.i.cond.false130.i_crit_edge, %land.lhs.true105.i.cond.false130.i_crit_edge, %cond.end100.i.cond.false130.i_crit_edge
  %arrayidx132.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %104 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx132.i, align 8
  %arrayidx134.i = getelementptr i32, ptr %105, i32 1
  %106 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx134.i, align 4
  %add135.i = add i32 %107, 2373
  %gart_end137.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 9
  %108 = ptrtoint ptr %gart_end137.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %gart_end137.i, align 8
  %shr138.i = lshr i64 %109, 44
  %conv139.i = trunc i64 %shr138.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add135.i, i32 noundef %conv139.i, i32 noundef 0) #6
  br label %mmhub_v2_3_init_gart_aperture_regs.exit

mmhub_v2_3_init_gart_aperture_regs.exit:          ; preds = %cond.false130.i, %cond.true116.i
  %110 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %virt, align 8
  %and.i97 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.not.i98 = icmp eq i32 %and.i97, 0
  br i1 %tobool.not.i98, label %mmhub_v2_3_init_gart_aperture_regs.exit.cond.false.i112_crit_edge, label %land.lhs.true.i101

mmhub_v2_3_init_gart_aperture_regs.exit.cond.false.i112_crit_edge: ; preds = %mmhub_v2_3_init_gart_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i112

land.lhs.true.i101:                               ; preds = %mmhub_v2_3_init_gart_aperture_regs.exit
  %funcs.i99 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %112 = ptrtoint ptr %funcs.i99 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %funcs.i99, align 4
  %tobool1.not.i100 = icmp eq ptr %113, null
  br i1 %tobool1.not.i100, label %land.lhs.true.i101.cond.false.i112_crit_edge, label %land.lhs.true2.i104

land.lhs.true.i101.cond.false.i112_crit_edge:     ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i112

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i101
  %sriov_wreg.i102 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %113, i32 0, i32 12
  %114 = ptrtoint ptr %sriov_wreg.i102 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sriov_wreg.i102, align 4
  %tobool6.not.i103 = icmp eq ptr %115, null
  br i1 %tobool6.not.i103, label %land.lhs.true2.i104.cond.false.i112_crit_edge, label %cond.true.i108

land.lhs.true2.i104.cond.false.i112_crit_edge:    ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i112

cond.true.i108:                                   ; preds = %land.lhs.true2.i104
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i105 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %116 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i105, align 8
  %arrayidx12.i106 = getelementptr i32, ptr %117, i32 1
  %118 = ptrtoint ptr %arrayidx12.i106 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx12.i106, align 4
  %add.i107 = add i32 %119, 2288
  tail call void %115(ptr noundef %adev, i32 noundef %add.i107, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i113

cond.false.i112:                                  ; preds = %land.lhs.true2.i104.cond.false.i112_crit_edge, %land.lhs.true.i101.cond.false.i112_crit_edge, %mmhub_v2_3_init_gart_aperture_regs.exit.cond.false.i112_crit_edge
  %arrayidx14.i109 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %120 = ptrtoint ptr %arrayidx14.i109 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx14.i109, align 8
  %arrayidx16.i110 = getelementptr i32, ptr %121, i32 1
  %122 = ptrtoint ptr %arrayidx16.i110 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx16.i110, align 4
  %add17.i111 = add i32 %123, 2288
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i111, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end.i113

cond.end.i113:                                    ; preds = %cond.false.i112, %cond.true.i108
  %124 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %virt, align 8
  %and20.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %cond.end.i113.cond.false43.i_crit_edge, label %land.lhs.true22.i

cond.end.i113.cond.false43.i_crit_edge:           ; preds = %cond.end.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i

land.lhs.true22.i:                                ; preds = %cond.end.i113
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
  %arrayidx39.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %130 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx39.i, align 8
  %arrayidx41.i = getelementptr i32, ptr %131, i32 1
  %132 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx41.i, align 4
  %add42.i = add i32 %133, 2287
  %agp_start.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %134 = ptrtoint ptr %agp_start.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %agp_start.i, align 8
  %shr.i114 = lshr i64 %135, 24
  %conv.i115 = trunc i64 %shr.i114 to i32
  tail call void %129(ptr noundef %adev, i32 noundef %add42.i, i32 noundef %conv.i115, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end53.i

cond.false43.i:                                   ; preds = %land.lhs.true27.i.cond.false43.i_crit_edge, %land.lhs.true22.i.cond.false43.i_crit_edge, %cond.end.i113.cond.false43.i_crit_edge
  %arrayidx45.i116 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %136 = ptrtoint ptr %arrayidx45.i116 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx45.i116, align 8
  %arrayidx47.i = getelementptr i32, ptr %137, i32 1
  %138 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx47.i, align 4
  %add48.i = add i32 %139, 2287
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
  %arrayidx75.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %148 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx75.i, align 8
  %arrayidx77.i = getelementptr i32, ptr %149, i32 1
  %150 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx77.i, align 4
  %add78.i = add i32 %151, 2286
  %agp_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %152 = ptrtoint ptr %agp_end.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %agp_end.i, align 8
  %shr80.i = lshr i64 %153, 24
  %conv81.i = trunc i64 %shr80.i to i32
  tail call void %147(ptr noundef %adev, i32 noundef %add78.i, i32 noundef %conv81.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end92.i

cond.false82.i:                                   ; preds = %land.lhs.true63.i.cond.false82.i_crit_edge, %land.lhs.true58.i.cond.false82.i_crit_edge, %cond.end53.i.cond.false82.i_crit_edge
  %arrayidx84.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %154 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx84.i, align 8
  %arrayidx86.i = getelementptr i32, ptr %155, i32 1
  %156 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx86.i, align 4
  %add87.i = add i32 %157, 2286
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
  br i1 %tobool96.not.i, label %cond.end92.i.cond.false128.i_crit_edge, label %land.lhs.true97.i

cond.end92.i.cond.false128.i_crit_edge:           ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false128.i

land.lhs.true97.i:                                ; preds = %cond.end92.i
  %funcs100.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %162 = ptrtoint ptr %funcs100.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %funcs100.i, align 4
  %tobool101.not.i = icmp eq ptr %163, null
  br i1 %tobool101.not.i, label %land.lhs.true97.i.cond.false128.i_crit_edge, label %land.lhs.true102.i

land.lhs.true97.i.cond.false128.i_crit_edge:      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false128.i

land.lhs.true102.i:                               ; preds = %land.lhs.true97.i
  %sriov_wreg106.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %163, i32 0, i32 12
  %164 = ptrtoint ptr %sriov_wreg106.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sriov_wreg106.i, align 4
  %tobool107.not.i = icmp eq ptr %165, null
  br i1 %tobool107.not.i, label %land.lhs.true102.i.cond.false128.i_crit_edge, label %cond.true108.i

land.lhs.true102.i.cond.false128.i_crit_edge:     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false128.i

cond.true108.i:                                   ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx114.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %166 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx114.i, align 8
  %arrayidx116.i = getelementptr i32, ptr %167, i32 1
  %168 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx116.i, align 4
  %add117.i = add i32 %169, 2289
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
  tail call void %165(ptr noundef %adev, i32 noundef %add117.i, i32 noundef %cond.off18.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end149.i

cond.false128.i:                                  ; preds = %land.lhs.true102.i.cond.false128.i_crit_edge, %land.lhs.true97.i.cond.false128.i_crit_edge, %cond.end92.i.cond.false128.i_crit_edge
  %arrayidx130.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %175 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx130.i, align 8
  %arrayidx132.i117 = getelementptr i32, ptr %176, i32 1
  %177 = ptrtoint ptr %arrayidx132.i117 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx132.i117, align 4
  %add133.i = add i32 %178, 2289
  %fb_start136.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 12
  %179 = ptrtoint ptr %fb_start136.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %fb_start136.i, align 8
  %agp_start139.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 5
  %181 = ptrtoint ptr %agp_start139.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %agp_start139.i, align 8
  %183 = tail call i64 @llvm.umin.i64(i64 %180, i64 %182) #6
  %cond146.off18.v.i = lshr i64 %183, 18
  %cond146.off18.i = trunc i64 %cond146.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add133.i, i32 noundef %cond146.off18.i, i32 noundef 0) #6
  br label %cond.end149.i

cond.end149.i:                                    ; preds = %cond.false128.i, %cond.true108.i
  %184 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %virt, align 8
  %and152.i = and i32 %185, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  br i1 %tobool153.not.i, label %cond.end149.i.cond.false187.i_crit_edge, label %land.lhs.true154.i

cond.end149.i.cond.false187.i_crit_edge:          ; preds = %cond.end149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false187.i

land.lhs.true154.i:                               ; preds = %cond.end149.i
  %funcs157.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %186 = ptrtoint ptr %funcs157.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %funcs157.i, align 4
  %tobool158.not.i = icmp eq ptr %187, null
  br i1 %tobool158.not.i, label %land.lhs.true154.i.cond.false187.i_crit_edge, label %land.lhs.true159.i

land.lhs.true154.i.cond.false187.i_crit_edge:     ; preds = %land.lhs.true154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false187.i

land.lhs.true159.i:                               ; preds = %land.lhs.true154.i
  %sriov_wreg163.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %187, i32 0, i32 12
  %188 = ptrtoint ptr %sriov_wreg163.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sriov_wreg163.i, align 4
  %tobool164.not.i = icmp eq ptr %189, null
  br i1 %tobool164.not.i, label %land.lhs.true159.i.cond.false187.i_crit_edge, label %cond.true165.i

land.lhs.true159.i.cond.false187.i_crit_edge:     ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false187.i

cond.true165.i:                                   ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx171.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %190 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx171.i, align 8
  %arrayidx173.i = getelementptr i32, ptr %191, i32 1
  %192 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx173.i, align 4
  %add174.i = add i32 %193, 2290
  %fb_end.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %194 = ptrtoint ptr %fb_end.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %fb_end.i, align 8
  %agp_end177.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %196 = ptrtoint ptr %agp_end177.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %agp_end177.i, align 8
  %198 = tail call i64 @llvm.umax.i64(i64 %195, i64 %197) #6
  %cond184.off18.v.i = lshr i64 %198, 18
  %cond184.off18.i = trunc i64 %cond184.off18.v.i to i32
  tail call void %189(ptr noundef %adev, i32 noundef %add174.i, i32 noundef %cond184.off18.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end208.i

cond.false187.i:                                  ; preds = %land.lhs.true159.i.cond.false187.i_crit_edge, %land.lhs.true154.i.cond.false187.i_crit_edge, %cond.end149.i.cond.false187.i_crit_edge
  %arrayidx189.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %199 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx189.i, align 8
  %arrayidx191.i = getelementptr i32, ptr %200, i32 1
  %201 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx191.i, align 4
  %add192.i = add i32 %202, 2290
  %fb_end195.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 13
  %203 = ptrtoint ptr %fb_end195.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %fb_end195.i, align 8
  %agp_end198.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 6
  %205 = ptrtoint ptr %agp_end198.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %agp_end198.i, align 8
  %207 = tail call i64 @llvm.umax.i64(i64 %204, i64 %206) #6
  %cond205.off18.v.i = lshr i64 %207, 18
  %cond205.off18.i = trunc i64 %cond205.off18.v.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add192.i, i32 noundef %cond205.off18.i, i32 noundef 0) #6
  br label %cond.end208.i

cond.end208.i:                                    ; preds = %cond.false187.i, %cond.true165.i
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 69, i32 2
  %208 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %gpu_addr.i, align 8
  %call.i118 = tail call i64 @amdgpu_gmc_vram_mc2pa(ptr noundef %adev, i64 noundef %209) #6
  %210 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %virt, align 8
  %and211.i = and i32 %211, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i)
  %tobool212.not.i = icmp eq i32 %and211.i, 0
  br i1 %tobool212.not.i, label %cond.end208.i.cond.false236.i_crit_edge, label %land.lhs.true213.i

cond.end208.i.cond.false236.i_crit_edge:          ; preds = %cond.end208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false236.i

land.lhs.true213.i:                               ; preds = %cond.end208.i
  %funcs216.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %212 = ptrtoint ptr %funcs216.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %funcs216.i, align 4
  %tobool217.not.i = icmp eq ptr %213, null
  br i1 %tobool217.not.i, label %land.lhs.true213.i.cond.false236.i_crit_edge, label %land.lhs.true218.i

land.lhs.true213.i.cond.false236.i_crit_edge:     ; preds = %land.lhs.true213.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false236.i

land.lhs.true218.i:                               ; preds = %land.lhs.true213.i
  %sriov_wreg222.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %213, i32 0, i32 12
  %214 = ptrtoint ptr %sriov_wreg222.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %sriov_wreg222.i, align 4
  %tobool223.not.i = icmp eq ptr %215, null
  br i1 %tobool223.not.i, label %land.lhs.true218.i.cond.false236.i_crit_edge, label %cond.true224.i

land.lhs.true218.i.cond.false236.i_crit_edge:     ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false236.i

cond.true224.i:                                   ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx230.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %216 = ptrtoint ptr %arrayidx230.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx230.i, align 8
  %arrayidx232.i = getelementptr i32, ptr %217, i32 1
  %218 = ptrtoint ptr %arrayidx232.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx232.i, align 4
  %add233.i = add i32 %219, 2264
  %shr234.i = lshr i64 %call.i118, 12
  %conv235.i = trunc i64 %shr234.i to i32
  tail call void %215(ptr noundef %adev, i32 noundef %add233.i, i32 noundef %conv235.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end244.i

cond.false236.i:                                  ; preds = %land.lhs.true218.i.cond.false236.i_crit_edge, %land.lhs.true213.i.cond.false236.i_crit_edge, %cond.end208.i.cond.false236.i_crit_edge
  %arrayidx238.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %220 = ptrtoint ptr %arrayidx238.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx238.i, align 8
  %arrayidx240.i = getelementptr i32, ptr %221, i32 1
  %222 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx240.i, align 4
  %add241.i = add i32 %223, 2264
  %shr242.i = lshr i64 %call.i118, 12
  %conv243.i = trunc i64 %shr242.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add241.i, i32 noundef %conv243.i, i32 noundef 0) #6
  br label %cond.end244.i

cond.end244.i:                                    ; preds = %cond.false236.i, %cond.true224.i
  %224 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %virt, align 8
  %and247.i = and i32 %225, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247.i)
  %tobool248.not.i = icmp eq i32 %and247.i, 0
  br i1 %tobool248.not.i, label %cond.end244.i.cond.false272.i_crit_edge, label %land.lhs.true249.i

cond.end244.i.cond.false272.i_crit_edge:          ; preds = %cond.end244.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false272.i

land.lhs.true249.i:                               ; preds = %cond.end244.i
  %funcs252.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %226 = ptrtoint ptr %funcs252.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %funcs252.i, align 4
  %tobool253.not.i = icmp eq ptr %227, null
  br i1 %tobool253.not.i, label %land.lhs.true249.i.cond.false272.i_crit_edge, label %land.lhs.true254.i

land.lhs.true249.i.cond.false272.i_crit_edge:     ; preds = %land.lhs.true249.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false272.i

land.lhs.true254.i:                               ; preds = %land.lhs.true249.i
  %sriov_wreg258.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %227, i32 0, i32 12
  %228 = ptrtoint ptr %sriov_wreg258.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %sriov_wreg258.i, align 4
  %tobool259.not.i = icmp eq ptr %229, null
  br i1 %tobool259.not.i, label %land.lhs.true254.i.cond.false272.i_crit_edge, label %cond.true260.i

land.lhs.true254.i.cond.false272.i_crit_edge:     ; preds = %land.lhs.true254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false272.i

cond.true260.i:                                   ; preds = %land.lhs.true254.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx266.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %230 = ptrtoint ptr %arrayidx266.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx266.i, align 8
  %arrayidx268.i = getelementptr i32, ptr %231, i32 1
  %232 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx268.i, align 4
  %add269.i = add i32 %233, 2265
  %shr270.i = lshr i64 %call.i118, 44
  %conv271.i = trunc i64 %shr270.i to i32
  tail call void %229(ptr noundef %adev, i32 noundef %add269.i, i32 noundef %conv271.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end280.i

cond.false272.i:                                  ; preds = %land.lhs.true254.i.cond.false272.i_crit_edge, %land.lhs.true249.i.cond.false272.i_crit_edge, %cond.end244.i.cond.false272.i_crit_edge
  %arrayidx274.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %234 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx274.i, align 8
  %arrayidx276.i = getelementptr i32, ptr %235, i32 1
  %236 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx276.i, align 4
  %add277.i = add i32 %237, 2265
  %shr278.i = lshr i64 %call.i118, 44
  %conv279.i = trunc i64 %shr278.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add277.i, i32 noundef %conv279.i, i32 noundef 0) #6
  br label %cond.end280.i

cond.end280.i:                                    ; preds = %cond.false272.i, %cond.true260.i
  %238 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %virt, align 8
  %and283.i = and i32 %239, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283.i)
  %tobool284.not.i = icmp eq i32 %and283.i, 0
  br i1 %tobool284.not.i, label %cond.end280.i.cond.false307.i_crit_edge, label %land.lhs.true285.i

cond.end280.i.cond.false307.i_crit_edge:          ; preds = %cond.end280.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false307.i

land.lhs.true285.i:                               ; preds = %cond.end280.i
  %funcs288.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %240 = ptrtoint ptr %funcs288.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %funcs288.i, align 4
  %tobool289.not.i = icmp eq ptr %241, null
  br i1 %tobool289.not.i, label %land.lhs.true285.i.cond.false307.i_crit_edge, label %land.lhs.true290.i

land.lhs.true285.i.cond.false307.i_crit_edge:     ; preds = %land.lhs.true285.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false307.i

land.lhs.true290.i:                               ; preds = %land.lhs.true285.i
  %sriov_wreg294.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %241, i32 0, i32 12
  %242 = ptrtoint ptr %sriov_wreg294.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %sriov_wreg294.i, align 4
  %tobool295.not.i = icmp eq ptr %243, null
  br i1 %tobool295.not.i, label %land.lhs.true290.i.cond.false307.i_crit_edge, label %cond.true296.i

land.lhs.true290.i.cond.false307.i_crit_edge:     ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false307.i

cond.true296.i:                                   ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx302.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %244 = ptrtoint ptr %arrayidx302.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx302.i, align 8
  %arrayidx304.i = getelementptr i32, ptr %245, i32 1
  %246 = ptrtoint ptr %arrayidx304.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx304.i, align 4
  %add305.i = add i32 %247, 1807
  %dummy_page_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %248 = ptrtoint ptr %dummy_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %dummy_page_addr.i, align 8
  %shr306.i = lshr i32 %249, 12
  tail call void %243(ptr noundef %adev, i32 noundef %add305.i, i32 noundef %shr306.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end315.i

cond.false307.i:                                  ; preds = %land.lhs.true290.i.cond.false307.i_crit_edge, %land.lhs.true285.i.cond.false307.i_crit_edge, %cond.end280.i.cond.false307.i_crit_edge
  %arrayidx309.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %250 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %arrayidx309.i, align 8
  %arrayidx311.i = getelementptr i32, ptr %251, i32 1
  %252 = ptrtoint ptr %arrayidx311.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx311.i, align 4
  %add312.i = add i32 %253, 1807
  %dummy_page_addr313.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 64
  %254 = ptrtoint ptr %dummy_page_addr313.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %dummy_page_addr313.i, align 8
  %shr314.i = lshr i32 %255, 12
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add312.i, i32 noundef %shr314.i, i32 noundef 0) #6
  br label %cond.end315.i

cond.end315.i:                                    ; preds = %cond.false307.i, %cond.true296.i
  %256 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %virt, align 8
  %and318.i = and i32 %257, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318.i)
  %tobool319.not.i = icmp eq i32 %and318.i, 0
  br i1 %tobool319.not.i, label %cond.end315.i.cond.false345.i_crit_edge, label %land.lhs.true320.i

cond.end315.i.cond.false345.i_crit_edge:          ; preds = %cond.end315.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false345.i

land.lhs.true320.i:                               ; preds = %cond.end315.i
  %funcs323.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %258 = ptrtoint ptr %funcs323.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %funcs323.i, align 4
  %tobool324.not.i = icmp eq ptr %259, null
  br i1 %tobool324.not.i, label %land.lhs.true320.i.cond.false345.i_crit_edge, label %land.lhs.true325.i

land.lhs.true320.i.cond.false345.i_crit_edge:     ; preds = %land.lhs.true320.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false345.i

land.lhs.true325.i:                               ; preds = %land.lhs.true320.i
  %sriov_wreg329.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %259, i32 0, i32 12
  %260 = ptrtoint ptr %sriov_wreg329.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %sriov_wreg329.i, align 4
  %tobool330.not.i = icmp eq ptr %261, null
  br i1 %tobool330.not.i, label %land.lhs.true325.i.cond.false345.i_crit_edge, label %cond.true331.i

land.lhs.true325.i.cond.false345.i_crit_edge:     ; preds = %land.lhs.true325.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false345.i

cond.true331.i:                                   ; preds = %land.lhs.true325.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx337.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %262 = ptrtoint ptr %arrayidx337.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx337.i, align 8
  %arrayidx339.i = getelementptr i32, ptr %263, i32 1
  %264 = ptrtoint ptr %arrayidx339.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx339.i, align 4
  %add340.i = add i32 %265, 1808
  tail call void %261(ptr noundef %adev, i32 noundef %add340.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end355.i

cond.false345.i:                                  ; preds = %land.lhs.true325.i.cond.false345.i_crit_edge, %land.lhs.true320.i.cond.false345.i_crit_edge, %cond.end315.i.cond.false345.i_crit_edge
  %arrayidx347.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %266 = ptrtoint ptr %arrayidx347.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx347.i, align 8
  %arrayidx349.i = getelementptr i32, ptr %267, i32 1
  %268 = ptrtoint ptr %arrayidx349.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx349.i, align 4
  %add350.i = add i32 %269, 1808
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add350.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end355.i

cond.end355.i:                                    ; preds = %cond.false345.i, %cond.true331.i
  %270 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %virt, align 8
  %and358.i = and i32 %271, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358.i)
  %tobool359.not.i = icmp eq i32 %and358.i, 0
  br i1 %tobool359.not.i, label %cond.end355.i.cond.false381.i_crit_edge, label %land.lhs.true360.i

cond.end355.i.cond.false381.i_crit_edge:          ; preds = %cond.end355.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false381.i

land.lhs.true360.i:                               ; preds = %cond.end355.i
  %funcs363.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %272 = ptrtoint ptr %funcs363.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %funcs363.i, align 4
  %tobool364.not.i = icmp eq ptr %273, null
  br i1 %tobool364.not.i, label %land.lhs.true360.i.cond.false381.i_crit_edge, label %land.lhs.true365.i

land.lhs.true360.i.cond.false381.i_crit_edge:     ; preds = %land.lhs.true360.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false381.i

land.lhs.true365.i:                               ; preds = %land.lhs.true360.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %273, i32 0, i32 13
  %274 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool369.not.i = icmp eq ptr %275, null
  br i1 %tobool369.not.i, label %land.lhs.true365.i.cond.false381.i_crit_edge, label %cond.true370.i

land.lhs.true365.i.cond.false381.i_crit_edge:     ; preds = %land.lhs.true365.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false381.i

cond.true370.i:                                   ; preds = %land.lhs.true365.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx376.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %276 = ptrtoint ptr %arrayidx376.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx376.i, align 8
  %arrayidx378.i = getelementptr i32, ptr %277, i32 1
  %278 = ptrtoint ptr %arrayidx378.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx378.i, align 4
  %add379.i = add i32 %279, 1801
  %call380.i = tail call i32 %275(ptr noundef %adev, i32 noundef %add379.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end388.i

cond.false381.i:                                  ; preds = %land.lhs.true365.i.cond.false381.i_crit_edge, %land.lhs.true360.i.cond.false381.i_crit_edge, %cond.end355.i.cond.false381.i_crit_edge
  %arrayidx383.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %280 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx383.i, align 8
  %arrayidx385.i = getelementptr i32, ptr %281, i32 1
  %282 = ptrtoint ptr %arrayidx385.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx385.i, align 4
  %add386.i = add i32 %283, 1801
  %call387.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add386.i, i32 noundef 0) #6
  br label %cond.end388.i

cond.end388.i:                                    ; preds = %cond.false381.i, %cond.true370.i
  %cond389.i = phi i32 [ %call380.i, %cond.true370.i ], [ %call387.i, %cond.false381.i ]
  %or.i = or i32 %cond389.i, 262144
  %284 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %virt, align 8
  %and393.i = and i32 %285, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and393.i)
  %tobool394.not.i = icmp eq i32 %and393.i, 0
  br i1 %tobool394.not.i, label %cond.end388.i.cond.false416.i_crit_edge, label %land.lhs.true395.i

cond.end388.i.cond.false416.i_crit_edge:          ; preds = %cond.end388.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false416.i

land.lhs.true395.i:                               ; preds = %cond.end388.i
  %funcs398.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %286 = ptrtoint ptr %funcs398.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %funcs398.i, align 4
  %tobool399.not.i = icmp eq ptr %287, null
  br i1 %tobool399.not.i, label %land.lhs.true395.i.cond.false416.i_crit_edge, label %land.lhs.true400.i

land.lhs.true395.i.cond.false416.i_crit_edge:     ; preds = %land.lhs.true395.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false416.i

land.lhs.true400.i:                               ; preds = %land.lhs.true395.i
  %sriov_wreg404.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %287, i32 0, i32 12
  %288 = ptrtoint ptr %sriov_wreg404.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %sriov_wreg404.i, align 4
  %tobool405.not.i = icmp eq ptr %289, null
  br i1 %tobool405.not.i, label %land.lhs.true400.i.cond.false416.i_crit_edge, label %cond.true406.i

land.lhs.true400.i.cond.false416.i_crit_edge:     ; preds = %land.lhs.true400.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false416.i

cond.true406.i:                                   ; preds = %land.lhs.true400.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx412.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %290 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx412.i, align 8
  %arrayidx414.i = getelementptr i32, ptr %291, i32 1
  %292 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx414.i, align 4
  %add415.i = add i32 %293, 1801
  tail call void %289(ptr noundef %adev, i32 noundef %add415.i, i32 noundef %or.i, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_3_init_system_aperture_regs.exit

cond.false416.i:                                  ; preds = %land.lhs.true400.i.cond.false416.i_crit_edge, %land.lhs.true395.i.cond.false416.i_crit_edge, %cond.end388.i.cond.false416.i_crit_edge
  %arrayidx418.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %294 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %arrayidx418.i, align 8
  %arrayidx420.i = getelementptr i32, ptr %295, i32 1
  %296 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx420.i, align 4
  %add421.i = add i32 %297, 1801
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add421.i, i32 noundef %or.i, i32 noundef 0) #6
  br label %mmhub_v2_3_init_system_aperture_regs.exit

mmhub_v2_3_init_system_aperture_regs.exit:        ; preds = %cond.false416.i, %cond.true406.i
  %298 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %virt, align 8
  %and.i120 = and i32 %299, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.not.i121 = icmp eq i32 %and.i120, 0
  br i1 %tobool.not.i121, label %mmhub_v2_3_init_system_aperture_regs.exit.cond.false.i136_crit_edge, label %land.lhs.true.i124

mmhub_v2_3_init_system_aperture_regs.exit.cond.false.i136_crit_edge: ; preds = %mmhub_v2_3_init_system_aperture_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i136

land.lhs.true.i124:                               ; preds = %mmhub_v2_3_init_system_aperture_regs.exit
  %funcs.i122 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %300 = ptrtoint ptr %funcs.i122 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %funcs.i122, align 4
  %tobool1.not.i123 = icmp eq ptr %301, null
  br i1 %tobool1.not.i123, label %land.lhs.true.i124.cond.false.i136_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i124.cond.false.i136_crit_edge:     ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i136

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i124
  %sriov_rreg.i125 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %301, i32 0, i32 13
  %302 = ptrtoint ptr %sriov_rreg.i125 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %sriov_rreg.i125, align 4
  %tobool6.not.i126 = icmp eq ptr %303, null
  br i1 %tobool6.not.i126, label %land.lhs.true2.i127.cond.false.i136_crit_edge, label %cond.true.i132

land.lhs.true2.i127.cond.false.i136_crit_edge:    ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i136

cond.true.i132:                                   ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i128 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %304 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %arrayidx.i128, align 8
  %arrayidx12.i129 = getelementptr i32, ptr %305, i32 1
  %306 = ptrtoint ptr %arrayidx12.i129 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %arrayidx12.i129, align 4
  %add.i130 = add i32 %307, 2291
  %call.i131 = tail call i32 %303(ptr noundef %adev, i32 noundef %add.i130, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i137

cond.false.i136:                                  ; preds = %land.lhs.true2.i127.cond.false.i136_crit_edge, %land.lhs.true.i124.cond.false.i136_crit_edge, %mmhub_v2_3_init_system_aperture_regs.exit.cond.false.i136_crit_edge
  %arrayidx14.i133 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %308 = ptrtoint ptr %arrayidx14.i133 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx14.i133, align 8
  %arrayidx16.i134 = getelementptr i32, ptr %309, i32 1
  %310 = ptrtoint ptr %arrayidx16.i134 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx16.i134, align 4
  %add17.i135 = add i32 %311, 2291
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i135, i32 noundef 0) #6
  br label %cond.end.i137

cond.end.i137:                                    ; preds = %cond.false.i136, %cond.true.i132
  %cond.i = phi i32 [ %call.i131, %cond.true.i132 ], [ %call18.i, %cond.false.i136 ]
  %or23.i = and i32 %cond.i, -14458
  %or27.i = or i32 %or23.i, 6233
  %312 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %virt, align 8
  %and30.i = and i32 %313, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %cond.end.i137.cond.false52.i_crit_edge, label %land.lhs.true32.i

cond.end.i137.cond.false52.i_crit_edge:           ; preds = %cond.end.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

land.lhs.true32.i:                                ; preds = %cond.end.i137
  %funcs35.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %314 = ptrtoint ptr %funcs35.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %funcs35.i, align 4
  %tobool36.not.i138 = icmp eq ptr %315, null
  br i1 %tobool36.not.i138, label %land.lhs.true32.i.cond.false52.i_crit_edge, label %land.lhs.true37.i

land.lhs.true32.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

land.lhs.true37.i:                                ; preds = %land.lhs.true32.i
  %sriov_wreg.i139 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %315, i32 0, i32 12
  %316 = ptrtoint ptr %sriov_wreg.i139 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %sriov_wreg.i139, align 4
  %tobool41.not.i = icmp eq ptr %317, null
  br i1 %tobool41.not.i, label %land.lhs.true37.i.cond.false52.i_crit_edge, label %cond.true42.i

land.lhs.true37.i.cond.false52.i_crit_edge:       ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false52.i

cond.true42.i:                                    ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx48.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %318 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %arrayidx48.i, align 8
  %arrayidx50.i = getelementptr i32, ptr %319, i32 1
  %320 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx50.i, align 4
  %add51.i = add i32 %321, 2291
  tail call void %317(ptr noundef %adev, i32 noundef %add51.i, i32 noundef %or27.i, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_3_init_tlb_regs.exit

cond.false52.i:                                   ; preds = %land.lhs.true37.i.cond.false52.i_crit_edge, %land.lhs.true32.i.cond.false52.i_crit_edge, %cond.end.i137.cond.false52.i_crit_edge
  %arrayidx54.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %322 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx54.i, align 8
  %arrayidx56.i = getelementptr i32, ptr %323, i32 1
  %324 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx56.i, align 4
  %add57.i = add i32 %325, 2291
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add57.i, i32 noundef %or27.i, i32 noundef 0) #6
  br label %mmhub_v2_3_init_tlb_regs.exit

mmhub_v2_3_init_tlb_regs.exit:                    ; preds = %cond.false52.i, %cond.true42.i
  %326 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %virt, align 8
  %and.i141 = and i32 %327, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool.not.i142 = icmp eq i32 %and.i141, 0
  br i1 %tobool.not.i142, label %mmhub_v2_3_init_tlb_regs.exit.cond.false.i158_crit_edge, label %land.lhs.true.i145

mmhub_v2_3_init_tlb_regs.exit.cond.false.i158_crit_edge: ; preds = %mmhub_v2_3_init_tlb_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i158

land.lhs.true.i145:                               ; preds = %mmhub_v2_3_init_tlb_regs.exit
  %funcs.i143 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %328 = ptrtoint ptr %funcs.i143 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %funcs.i143, align 4
  %tobool1.not.i144 = icmp eq ptr %329, null
  br i1 %tobool1.not.i144, label %land.lhs.true.i145.cond.false.i158_crit_edge, label %land.lhs.true2.i148

land.lhs.true.i145.cond.false.i158_crit_edge:     ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i158

land.lhs.true2.i148:                              ; preds = %land.lhs.true.i145
  %sriov_rreg.i146 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %329, i32 0, i32 13
  %330 = ptrtoint ptr %sriov_rreg.i146 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %sriov_rreg.i146, align 4
  %tobool6.not.i147 = icmp eq ptr %331, null
  br i1 %tobool6.not.i147, label %land.lhs.true2.i148.cond.false.i158_crit_edge, label %cond.true.i153

land.lhs.true2.i148.cond.false.i158_crit_edge:    ; preds = %land.lhs.true2.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i158

cond.true.i153:                                   ; preds = %land.lhs.true2.i148
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i149 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %332 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %arrayidx.i149, align 8
  %arrayidx12.i150 = getelementptr i32, ptr %333, i32 1
  %334 = ptrtoint ptr %arrayidx12.i150 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx12.i150, align 4
  %add.i151 = add i32 %335, 1792
  %call.i152 = tail call i32 %331(ptr noundef %adev, i32 noundef %add.i151, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i161

cond.false.i158:                                  ; preds = %land.lhs.true2.i148.cond.false.i158_crit_edge, %land.lhs.true.i145.cond.false.i158_crit_edge, %mmhub_v2_3_init_tlb_regs.exit.cond.false.i158_crit_edge
  %arrayidx14.i154 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %336 = ptrtoint ptr %arrayidx14.i154 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %arrayidx14.i154, align 8
  %arrayidx16.i155 = getelementptr i32, ptr %337, i32 1
  %338 = ptrtoint ptr %arrayidx16.i155 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx16.i155, align 4
  %add17.i156 = add i32 %339, 1792
  %call18.i157 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i156, i32 noundef 0) #6
  br label %cond.end.i161

cond.end.i161:                                    ; preds = %cond.false.i158, %cond.true.i153
  %cond.i159 = phi i32 [ %call.i152, %cond.true.i153 ], [ %call18.i157, %cond.false.i158 ]
  %or.i160 = and i32 %cond.i159, -66849028
  %or29.i = or i32 %or.i160, 526337
  %340 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %virt, align 8
  %and34.i = and i32 %341, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %cond.end.i161.cond.false56.i_crit_edge, label %land.lhs.true36.i

cond.end.i161.cond.false56.i_crit_edge:           ; preds = %cond.end.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56.i

land.lhs.true36.i:                                ; preds = %cond.end.i161
  %funcs39.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %342 = ptrtoint ptr %funcs39.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %funcs39.i, align 4
  %tobool40.not.i = icmp eq ptr %343, null
  br i1 %tobool40.not.i, label %land.lhs.true36.i.cond.false56.i_crit_edge, label %land.lhs.true41.i

land.lhs.true36.i.cond.false56.i_crit_edge:       ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56.i

land.lhs.true41.i:                                ; preds = %land.lhs.true36.i
  %sriov_wreg.i162 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %343, i32 0, i32 12
  %344 = ptrtoint ptr %sriov_wreg.i162 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %sriov_wreg.i162, align 4
  %tobool45.not.i = icmp eq ptr %345, null
  br i1 %tobool45.not.i, label %land.lhs.true41.i.cond.false56.i_crit_edge, label %cond.true46.i

land.lhs.true41.i.cond.false56.i_crit_edge:       ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false56.i

cond.true46.i:                                    ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx52.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %346 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx52.i, align 8
  %arrayidx54.i163 = getelementptr i32, ptr %347, i32 1
  %348 = ptrtoint ptr %arrayidx54.i163 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx54.i163, align 4
  %add55.i = add i32 %349, 1792
  tail call void %345(ptr noundef %adev, i32 noundef %add55.i, i32 noundef %or29.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end62.i

cond.false56.i:                                   ; preds = %land.lhs.true41.i.cond.false56.i_crit_edge, %land.lhs.true36.i.cond.false56.i_crit_edge, %cond.end.i161.cond.false56.i_crit_edge
  %arrayidx58.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %350 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %arrayidx58.i, align 8
  %arrayidx60.i = getelementptr i32, ptr %351, i32 1
  %352 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx60.i, align 4
  %add61.i = add i32 %353, 1792
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add61.i, i32 noundef %or29.i, i32 noundef 0) #6
  br label %cond.end62.i

cond.end62.i:                                     ; preds = %cond.false56.i, %cond.true46.i
  %354 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %virt, align 8
  %and65.i = and i32 %355, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %cond.end62.i.cond.false89.i_crit_edge, label %land.lhs.true67.i

cond.end62.i.cond.false89.i_crit_edge:            ; preds = %cond.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false89.i

land.lhs.true67.i:                                ; preds = %cond.end62.i
  %funcs70.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %356 = ptrtoint ptr %funcs70.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %funcs70.i, align 4
  %tobool71.not.i = icmp eq ptr %357, null
  br i1 %tobool71.not.i, label %land.lhs.true67.i.cond.false89.i_crit_edge, label %land.lhs.true72.i

land.lhs.true67.i.cond.false89.i_crit_edge:       ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false89.i

land.lhs.true72.i:                                ; preds = %land.lhs.true67.i
  %sriov_rreg76.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %357, i32 0, i32 13
  %358 = ptrtoint ptr %sriov_rreg76.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %sriov_rreg76.i, align 4
  %tobool77.not.i = icmp eq ptr %359, null
  br i1 %tobool77.not.i, label %land.lhs.true72.i.cond.false89.i_crit_edge, label %cond.true78.i

land.lhs.true72.i.cond.false89.i_crit_edge:       ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false89.i

cond.true78.i:                                    ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx84.i164 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %360 = ptrtoint ptr %arrayidx84.i164 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx84.i164, align 8
  %arrayidx86.i165 = getelementptr i32, ptr %361, i32 1
  %362 = ptrtoint ptr %arrayidx86.i165 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx86.i165, align 4
  %add87.i166 = add i32 %363, 1793
  %call88.i = tail call i32 %359(ptr noundef %adev, i32 noundef %add87.i166, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end96.i

cond.false89.i:                                   ; preds = %land.lhs.true72.i.cond.false89.i_crit_edge, %land.lhs.true67.i.cond.false89.i_crit_edge, %cond.end62.i.cond.false89.i_crit_edge
  %arrayidx91.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %364 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx91.i, align 8
  %arrayidx93.i = getelementptr i32, ptr %365, i32 1
  %366 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx93.i, align 4
  %add94.i = add i32 %367, 1793
  %call95.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add94.i, i32 noundef 0) #6
  br label %cond.end96.i

cond.end96.i:                                     ; preds = %cond.false89.i, %cond.true78.i
  %cond97.i = phi i32 [ %call88.i, %cond.true78.i ], [ %call95.i, %cond.false89.i ]
  %or101.i = or i32 %cond97.i, 3
  %368 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %virt, align 8
  %and104.i = and i32 %369, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %cond.end96.i.cond.false127.i_crit_edge, label %land.lhs.true106.i

cond.end96.i.cond.false127.i_crit_edge:           ; preds = %cond.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false127.i

land.lhs.true106.i:                               ; preds = %cond.end96.i
  %funcs109.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %370 = ptrtoint ptr %funcs109.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %funcs109.i, align 4
  %tobool110.not.i = icmp eq ptr %371, null
  br i1 %tobool110.not.i, label %land.lhs.true106.i.cond.false127.i_crit_edge, label %land.lhs.true111.i

land.lhs.true106.i.cond.false127.i_crit_edge:     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false127.i

land.lhs.true111.i:                               ; preds = %land.lhs.true106.i
  %sriov_wreg115.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %371, i32 0, i32 12
  %372 = ptrtoint ptr %sriov_wreg115.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %sriov_wreg115.i, align 4
  %tobool116.not.i = icmp eq ptr %373, null
  br i1 %tobool116.not.i, label %land.lhs.true111.i.cond.false127.i_crit_edge, label %cond.true117.i

land.lhs.true111.i.cond.false127.i_crit_edge:     ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false127.i

cond.true117.i:                                   ; preds = %land.lhs.true111.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx123.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %374 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %arrayidx123.i, align 8
  %arrayidx125.i = getelementptr i32, ptr %375, i32 1
  %376 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx125.i, align 4
  %add126.i = add i32 %377, 1793
  tail call void %373(ptr noundef %adev, i32 noundef %add126.i, i32 noundef %or101.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end133.i

cond.false127.i:                                  ; preds = %land.lhs.true111.i.cond.false127.i_crit_edge, %land.lhs.true106.i.cond.false127.i_crit_edge, %cond.end96.i.cond.false127.i_crit_edge
  %arrayidx129.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %378 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx129.i, align 8
  %arrayidx131.i = getelementptr i32, ptr %379, i32 1
  %380 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx131.i, align 4
  %add132.i = add i32 %381, 1793
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add132.i, i32 noundef %or101.i, i32 noundef 0) #6
  br label %cond.end133.i

cond.end133.i:                                    ; preds = %cond.false127.i, %cond.true117.i
  %translate_further.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 31
  %382 = ptrtoint ptr %translate_further.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %translate_further.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool134.not.i = icmp eq i8 %383, 0
  %..i = select i1 %tobool134.not.i, i32 -2146238455, i32 -2146140148
  %384 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %virt, align 8
  %and145.i = and i32 %385, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i)
  %tobool146.not.i = icmp eq i32 %and145.i, 0
  br i1 %tobool146.not.i, label %cond.end133.i.cond.false168.i_crit_edge, label %land.lhs.true147.i

cond.end133.i.cond.false168.i_crit_edge:          ; preds = %cond.end133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false168.i

land.lhs.true147.i:                               ; preds = %cond.end133.i
  %funcs150.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %386 = ptrtoint ptr %funcs150.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %funcs150.i, align 4
  %tobool151.not.i = icmp eq ptr %387, null
  br i1 %tobool151.not.i, label %land.lhs.true147.i.cond.false168.i_crit_edge, label %land.lhs.true152.i

land.lhs.true147.i.cond.false168.i_crit_edge:     ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false168.i

land.lhs.true152.i:                               ; preds = %land.lhs.true147.i
  %sriov_wreg156.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %387, i32 0, i32 12
  %388 = ptrtoint ptr %sriov_wreg156.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %sriov_wreg156.i, align 4
  %tobool157.not.i = icmp eq ptr %389, null
  br i1 %tobool157.not.i, label %land.lhs.true152.i.cond.false168.i_crit_edge, label %cond.true158.i

land.lhs.true152.i.cond.false168.i_crit_edge:     ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false168.i

cond.true158.i:                                   ; preds = %land.lhs.true152.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx164.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %390 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %arrayidx164.i, align 8
  %arrayidx166.i = getelementptr i32, ptr %391, i32 1
  %392 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx166.i, align 4
  %add167.i = add i32 %393, 1794
  tail call void %389(ptr noundef %adev, i32 noundef %add167.i, i32 noundef %..i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end174.i

cond.false168.i:                                  ; preds = %land.lhs.true152.i.cond.false168.i_crit_edge, %land.lhs.true147.i.cond.false168.i_crit_edge, %cond.end133.i.cond.false168.i_crit_edge
  %arrayidx170.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %394 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %arrayidx170.i, align 8
  %arrayidx172.i = getelementptr i32, ptr %395, i32 1
  %396 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx172.i, align 4
  %add173.i = add i32 %397, 1794
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add173.i, i32 noundef %..i, i32 noundef 0) #6
  br label %cond.end174.i

cond.end174.i:                                    ; preds = %cond.false168.i, %cond.true158.i
  %398 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %virt, align 8
  %and181.i = and i32 %399, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %tobool182.not.i = icmp eq i32 %and181.i, 0
  br i1 %tobool182.not.i, label %cond.end174.i.cond.false204.i_crit_edge, label %land.lhs.true183.i

cond.end174.i.cond.false204.i_crit_edge:          ; preds = %cond.end174.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false204.i

land.lhs.true183.i:                               ; preds = %cond.end174.i
  %funcs186.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %400 = ptrtoint ptr %funcs186.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %funcs186.i, align 4
  %tobool187.not.i = icmp eq ptr %401, null
  br i1 %tobool187.not.i, label %land.lhs.true183.i.cond.false204.i_crit_edge, label %land.lhs.true188.i

land.lhs.true183.i.cond.false204.i_crit_edge:     ; preds = %land.lhs.true183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false204.i

land.lhs.true188.i:                               ; preds = %land.lhs.true183.i
  %sriov_wreg192.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %401, i32 0, i32 12
  %402 = ptrtoint ptr %sriov_wreg192.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %sriov_wreg192.i, align 4
  %tobool193.not.i = icmp eq ptr %403, null
  br i1 %tobool193.not.i, label %land.lhs.true188.i.cond.false204.i_crit_edge, label %cond.true194.i

land.lhs.true188.i.cond.false204.i_crit_edge:     ; preds = %land.lhs.true188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false204.i

cond.true194.i:                                   ; preds = %land.lhs.true188.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx200.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %404 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %arrayidx200.i, align 8
  %arrayidx202.i = getelementptr i32, ptr %405, i32 1
  %406 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %arrayidx202.i, align 4
  %add203.i = add i32 %407, 1816
  tail call void %403(ptr noundef %adev, i32 noundef %add203.i, i32 noundef 1, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end210.i

cond.false204.i:                                  ; preds = %land.lhs.true188.i.cond.false204.i_crit_edge, %land.lhs.true183.i.cond.false204.i_crit_edge, %cond.end174.i.cond.false204.i_crit_edge
  %arrayidx206.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %408 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %arrayidx206.i, align 8
  %arrayidx208.i = getelementptr i32, ptr %409, i32 1
  %410 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx208.i, align 4
  %add209.i = add i32 %411, 1816
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add209.i, i32 noundef 1, i32 noundef 0) #6
  br label %cond.end210.i

cond.end210.i:                                    ; preds = %cond.false204.i, %cond.true194.i
  %412 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %virt, align 8
  %and215.i = and i32 %413, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215.i)
  %tobool216.not.i = icmp eq i32 %and215.i, 0
  br i1 %tobool216.not.i, label %cond.end210.i.cond.false238.i_crit_edge, label %land.lhs.true217.i

cond.end210.i.cond.false238.i_crit_edge:          ; preds = %cond.end210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false238.i

land.lhs.true217.i:                               ; preds = %cond.end210.i
  %funcs220.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %414 = ptrtoint ptr %funcs220.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %funcs220.i, align 4
  %tobool221.not.i = icmp eq ptr %415, null
  br i1 %tobool221.not.i, label %land.lhs.true217.i.cond.false238.i_crit_edge, label %land.lhs.true222.i

land.lhs.true217.i.cond.false238.i_crit_edge:     ; preds = %land.lhs.true217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false238.i

land.lhs.true222.i:                               ; preds = %land.lhs.true217.i
  %sriov_wreg226.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %415, i32 0, i32 12
  %416 = ptrtoint ptr %sriov_wreg226.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %sriov_wreg226.i, align 4
  %tobool227.not.i = icmp eq ptr %417, null
  br i1 %tobool227.not.i, label %land.lhs.true222.i.cond.false238.i_crit_edge, label %cond.true228.i

land.lhs.true222.i.cond.false238.i_crit_edge:     ; preds = %land.lhs.true222.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false238.i

cond.true228.i:                                   ; preds = %land.lhs.true222.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx234.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %418 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %arrayidx234.i, align 8
  %arrayidx236.i = getelementptr i32, ptr %419, i32 1
  %420 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx236.i, align 4
  %add237.i = add i32 %421, 1824
  tail call void %417(ptr noundef %adev, i32 noundef %add237.i, i32 noundef 16352, i32 noundef 0, i32 noundef 1) #6
  br label %mmhub_v2_3_init_cache_regs.exit

cond.false238.i:                                  ; preds = %land.lhs.true222.i.cond.false238.i_crit_edge, %land.lhs.true217.i.cond.false238.i_crit_edge, %cond.end210.i.cond.false238.i_crit_edge
  %arrayidx240.i167 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 1
  %422 = ptrtoint ptr %arrayidx240.i167 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %arrayidx240.i167, align 8
  %arrayidx242.i = getelementptr i32, ptr %423, i32 1
  %424 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx242.i, align 4
  %add243.i = add i32 %425, 1824
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add243.i, i32 noundef 16352, i32 noundef 0) #6
  br label %mmhub_v2_3_init_cache_regs.exit

mmhub_v2_3_init_cache_regs.exit:                  ; preds = %cond.false238.i, %cond.true228.i
  %426 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %virt, align 8
  %and.i170 = and i32 %427, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i170)
  %tobool.not.i171 = icmp eq i32 %and.i170, 0
  br i1 %tobool.not.i171, label %mmhub_v2_3_init_cache_regs.exit.cond.false.i187_crit_edge, label %land.lhs.true.i174

mmhub_v2_3_init_cache_regs.exit.cond.false.i187_crit_edge: ; preds = %mmhub_v2_3_init_cache_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i187

land.lhs.true.i174:                               ; preds = %mmhub_v2_3_init_cache_regs.exit
  %funcs.i172 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %428 = ptrtoint ptr %funcs.i172 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %funcs.i172, align 4
  %tobool1.not.i173 = icmp eq ptr %429, null
  br i1 %tobool1.not.i173, label %land.lhs.true.i174.cond.false.i187_crit_edge, label %land.lhs.true2.i177

land.lhs.true.i174.cond.false.i187_crit_edge:     ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i187

land.lhs.true2.i177:                              ; preds = %land.lhs.true.i174
  %sriov_rreg.i175 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %429, i32 0, i32 13
  %430 = ptrtoint ptr %sriov_rreg.i175 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %sriov_rreg.i175, align 4
  %tobool6.not.i176 = icmp eq ptr %431, null
  br i1 %tobool6.not.i176, label %land.lhs.true2.i177.cond.false.i187_crit_edge, label %cond.true.i182

land.lhs.true2.i177.cond.false.i187_crit_edge:    ; preds = %land.lhs.true2.i177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i187

cond.true.i182:                                   ; preds = %land.lhs.true2.i177
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i178 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %432 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %arrayidx.i178, align 8
  %arrayidx12.i179 = getelementptr i32, ptr %433, i32 1
  %434 = ptrtoint ptr %arrayidx12.i179 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx12.i179, align 4
  %add.i180 = add i32 %435, 1856
  %call.i181 = tail call i32 %431(ptr noundef %adev, i32 noundef %add.i180, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i191

cond.false.i187:                                  ; preds = %land.lhs.true2.i177.cond.false.i187_crit_edge, %land.lhs.true.i174.cond.false.i187_crit_edge, %mmhub_v2_3_init_cache_regs.exit.cond.false.i187_crit_edge
  %arrayidx14.i183 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %436 = ptrtoint ptr %arrayidx14.i183 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx14.i183, align 8
  %arrayidx16.i184 = getelementptr i32, ptr %437, i32 1
  %438 = ptrtoint ptr %arrayidx16.i184 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %arrayidx16.i184, align 4
  %add17.i185 = add i32 %439, 1856
  %call18.i186 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i185, i32 noundef 0) #6
  br label %cond.end.i191

cond.end.i191:                                    ; preds = %cond.false.i187, %cond.true.i182
  %cond.i188 = phi i32 [ %call.i181, %cond.true.i182 ], [ %call18.i186, %cond.false.i187 ]
  %or.i189 = and i32 %cond.i188, -136
  %and20.i190 = or i32 %or.i189, 1
  %440 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %virt, align 8
  %and26.i = and i32 %441, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %cond.end.i191.cond.false48.i_crit_edge, label %land.lhs.true28.i

cond.end.i191.cond.false48.i_crit_edge:           ; preds = %cond.end.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

land.lhs.true28.i:                                ; preds = %cond.end.i191
  %funcs31.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %442 = ptrtoint ptr %funcs31.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %funcs31.i, align 4
  %tobool32.not.i192 = icmp eq ptr %443, null
  br i1 %tobool32.not.i192, label %land.lhs.true28.i.cond.false48.i_crit_edge, label %land.lhs.true33.i

land.lhs.true28.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

land.lhs.true33.i:                                ; preds = %land.lhs.true28.i
  %sriov_wreg.i193 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %443, i32 0, i32 12
  %444 = ptrtoint ptr %sriov_wreg.i193 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %sriov_wreg.i193, align 4
  %tobool37.not.i = icmp eq ptr %445, null
  br i1 %tobool37.not.i, label %land.lhs.true33.i.cond.false48.i_crit_edge, label %cond.true38.i

land.lhs.true33.i.cond.false48.i_crit_edge:       ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false48.i

cond.true38.i:                                    ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %446 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %arrayidx44.i, align 8
  %arrayidx46.i = getelementptr i32, ptr %447, i32 1
  %448 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %449, 1856
  tail call void %445(ptr noundef %adev, i32 noundef %add47.i, i32 noundef %and20.i190, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_3_enable_system_domain.exit

cond.false48.i:                                   ; preds = %land.lhs.true33.i.cond.false48.i_crit_edge, %land.lhs.true28.i.cond.false48.i_crit_edge, %cond.end.i191.cond.false48.i_crit_edge
  %arrayidx50.i194 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %450 = ptrtoint ptr %arrayidx50.i194 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %arrayidx50.i194, align 8
  %arrayidx52.i195 = getelementptr i32, ptr %451, i32 1
  %452 = ptrtoint ptr %arrayidx52.i195 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx52.i195, align 4
  %add53.i = add i32 %453, 1856
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add53.i, i32 noundef %and20.i190, i32 noundef 0) #6
  br label %mmhub_v2_3_enable_system_domain.exit

mmhub_v2_3_enable_system_domain.exit:             ; preds = %cond.false48.i, %cond.true38.i
  %454 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %virt, align 8
  %and.i197 = and i32 %455, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197)
  %tobool.not.i198 = icmp eq i32 %and.i197, 0
  br i1 %tobool.not.i198, label %mmhub_v2_3_enable_system_domain.exit.cond.false.i212_crit_edge, label %land.lhs.true.i201

mmhub_v2_3_enable_system_domain.exit.cond.false.i212_crit_edge: ; preds = %mmhub_v2_3_enable_system_domain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i212

land.lhs.true.i201:                               ; preds = %mmhub_v2_3_enable_system_domain.exit
  %funcs.i199 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %456 = ptrtoint ptr %funcs.i199 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %funcs.i199, align 4
  %tobool1.not.i200 = icmp eq ptr %457, null
  br i1 %tobool1.not.i200, label %land.lhs.true.i201.cond.false.i212_crit_edge, label %land.lhs.true2.i204

land.lhs.true.i201.cond.false.i212_crit_edge:     ; preds = %land.lhs.true.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i212

land.lhs.true2.i204:                              ; preds = %land.lhs.true.i201
  %sriov_wreg.i202 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %457, i32 0, i32 12
  %458 = ptrtoint ptr %sriov_wreg.i202 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %sriov_wreg.i202, align 4
  %tobool6.not.i203 = icmp eq ptr %459, null
  br i1 %tobool6.not.i203, label %land.lhs.true2.i204.cond.false.i212_crit_edge, label %cond.true.i208

land.lhs.true2.i204.cond.false.i212_crit_edge:    ; preds = %land.lhs.true2.i204
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i212

cond.true.i208:                                   ; preds = %land.lhs.true2.i204
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i205 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %460 = ptrtoint ptr %arrayidx.i205 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %arrayidx.i205, align 8
  %arrayidx12.i206 = getelementptr i32, ptr %461, i32 1
  %462 = ptrtoint ptr %arrayidx12.i206 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %arrayidx12.i206, align 4
  %add.i207 = add i32 %463, 1810
  tail call void %459(ptr noundef %adev, i32 noundef %add.i207, i32 noundef -1, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i215

cond.false.i212:                                  ; preds = %land.lhs.true2.i204.cond.false.i212_crit_edge, %land.lhs.true.i201.cond.false.i212_crit_edge, %mmhub_v2_3_enable_system_domain.exit.cond.false.i212_crit_edge
  %arrayidx14.i209 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %464 = ptrtoint ptr %arrayidx14.i209 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx14.i209, align 8
  %arrayidx16.i210 = getelementptr i32, ptr %465, i32 1
  %466 = ptrtoint ptr %arrayidx16.i210 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %arrayidx16.i210, align 4
  %add17.i211 = add i32 %467, 1810
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17.i211, i32 noundef -1, i32 noundef 0) #6
  br label %cond.end.i215

cond.end.i215:                                    ; preds = %cond.false.i212, %cond.true.i208
  %468 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %virt, align 8
  %and20.i213 = and i32 %469, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i213)
  %tobool21.not.i214 = icmp eq i32 %and20.i213, 0
  br i1 %tobool21.not.i214, label %cond.end.i215.cond.false43.i229_crit_edge, label %land.lhs.true22.i218

cond.end.i215.cond.false43.i229_crit_edge:        ; preds = %cond.end.i215
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i229

land.lhs.true22.i218:                             ; preds = %cond.end.i215
  %funcs25.i216 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %470 = ptrtoint ptr %funcs25.i216 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %funcs25.i216, align 4
  %tobool26.not.i217 = icmp eq ptr %471, null
  br i1 %tobool26.not.i217, label %land.lhs.true22.i218.cond.false43.i229_crit_edge, label %land.lhs.true27.i221

land.lhs.true22.i218.cond.false43.i229_crit_edge: ; preds = %land.lhs.true22.i218
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i229

land.lhs.true27.i221:                             ; preds = %land.lhs.true22.i218
  %sriov_wreg31.i219 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %471, i32 0, i32 12
  %472 = ptrtoint ptr %sriov_wreg31.i219 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %sriov_wreg31.i219, align 4
  %tobool32.not.i220 = icmp eq ptr %473, null
  br i1 %tobool32.not.i220, label %land.lhs.true27.i221.cond.false43.i229_crit_edge, label %cond.true33.i225

land.lhs.true27.i221.cond.false43.i229_crit_edge: ; preds = %land.lhs.true27.i221
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false43.i229

cond.true33.i225:                                 ; preds = %land.lhs.true27.i221
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx39.i222 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %474 = ptrtoint ptr %arrayidx39.i222 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %arrayidx39.i222, align 8
  %arrayidx41.i223 = getelementptr i32, ptr %475, i32 1
  %476 = ptrtoint ptr %arrayidx41.i223 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %arrayidx41.i223, align 4
  %add42.i224 = add i32 %477, 1811
  tail call void %473(ptr noundef %adev, i32 noundef %add42.i224, i32 noundef 15, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end49.i

cond.false43.i229:                                ; preds = %land.lhs.true27.i221.cond.false43.i229_crit_edge, %land.lhs.true22.i218.cond.false43.i229_crit_edge, %cond.end.i215.cond.false43.i229_crit_edge
  %arrayidx45.i226 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %478 = ptrtoint ptr %arrayidx45.i226 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %arrayidx45.i226, align 8
  %arrayidx47.i227 = getelementptr i32, ptr %479, i32 1
  %480 = ptrtoint ptr %arrayidx47.i227 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx47.i227, align 4
  %add48.i228 = add i32 %481, 1811
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48.i228, i32 noundef 15, i32 noundef 0) #6
  br label %cond.end49.i

cond.end49.i:                                     ; preds = %cond.false43.i229, %cond.true33.i225
  %482 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %virt, align 8
  %and52.i = and i32 %483, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cond.end49.i.cond.false75.i_crit_edge, label %land.lhs.true54.i

cond.end49.i.cond.false75.i_crit_edge:            ; preds = %cond.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true54.i:                                ; preds = %cond.end49.i
  %funcs57.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %484 = ptrtoint ptr %funcs57.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %funcs57.i, align 4
  %tobool58.not.i = icmp eq ptr %485, null
  br i1 %tobool58.not.i, label %land.lhs.true54.i.cond.false75.i_crit_edge, label %land.lhs.true59.i

land.lhs.true54.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

land.lhs.true59.i:                                ; preds = %land.lhs.true54.i
  %sriov_wreg63.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %485, i32 0, i32 12
  %486 = ptrtoint ptr %sriov_wreg63.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %sriov_wreg63.i, align 4
  %tobool64.not.i = icmp eq ptr %487, null
  br i1 %tobool64.not.i, label %land.lhs.true59.i.cond.false75.i_crit_edge, label %cond.true65.i

land.lhs.true59.i.cond.false75.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i

cond.true65.i:                                    ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx71.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %488 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %arrayidx71.i, align 8
  %arrayidx73.i = getelementptr i32, ptr %489, i32 1
  %490 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %arrayidx73.i, align 4
  %add74.i = add i32 %491, 1812
  tail call void %487(ptr noundef %adev, i32 noundef %add74.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end81.i

cond.false75.i:                                   ; preds = %land.lhs.true59.i.cond.false75.i_crit_edge, %land.lhs.true54.i.cond.false75.i_crit_edge, %cond.end49.i.cond.false75.i_crit_edge
  %arrayidx77.i230 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %492 = ptrtoint ptr %arrayidx77.i230 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %arrayidx77.i230, align 8
  %arrayidx79.i = getelementptr i32, ptr %493, i32 1
  %494 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %495, 1812
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add80.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end81.i

cond.end81.i:                                     ; preds = %cond.false75.i, %cond.true65.i
  %496 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %virt, align 8
  %and84.i = and i32 %497, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %cond.end81.i.cond.false107.i_crit_edge, label %land.lhs.true86.i

cond.end81.i.cond.false107.i_crit_edge:           ; preds = %cond.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false107.i

land.lhs.true86.i:                                ; preds = %cond.end81.i
  %funcs89.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %498 = ptrtoint ptr %funcs89.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %funcs89.i, align 4
  %tobool90.not.i = icmp eq ptr %499, null
  br i1 %tobool90.not.i, label %land.lhs.true86.i.cond.false107.i_crit_edge, label %land.lhs.true91.i

land.lhs.true86.i.cond.false107.i_crit_edge:      ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false107.i

land.lhs.true91.i:                                ; preds = %land.lhs.true86.i
  %sriov_wreg95.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %499, i32 0, i32 12
  %500 = ptrtoint ptr %sriov_wreg95.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %sriov_wreg95.i, align 4
  %tobool96.not.i231 = icmp eq ptr %501, null
  br i1 %tobool96.not.i231, label %land.lhs.true91.i.cond.false107.i_crit_edge, label %cond.true97.i

land.lhs.true91.i.cond.false107.i_crit_edge:      ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false107.i

cond.true97.i:                                    ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx103.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %502 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %arrayidx103.i, align 8
  %arrayidx105.i = getelementptr i32, ptr %503, i32 1
  %504 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx105.i, align 4
  %add106.i = add i32 %505, 1813
  tail call void %501(ptr noundef %adev, i32 noundef %add106.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end113.i

cond.false107.i:                                  ; preds = %land.lhs.true91.i.cond.false107.i_crit_edge, %land.lhs.true86.i.cond.false107.i_crit_edge, %cond.end81.i.cond.false107.i_crit_edge
  %arrayidx109.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %506 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %arrayidx109.i, align 8
  %arrayidx111.i = getelementptr i32, ptr %507, i32 1
  %508 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx111.i, align 4
  %add112.i = add i32 %509, 1813
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add112.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end113.i

cond.end113.i:                                    ; preds = %cond.false107.i, %cond.true97.i
  %510 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %virt, align 8
  %and116.i = and i32 %511, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %cond.end113.i.cond.false139.i_crit_edge, label %land.lhs.true118.i

cond.end113.i.cond.false139.i_crit_edge:          ; preds = %cond.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false139.i

land.lhs.true118.i:                               ; preds = %cond.end113.i
  %funcs121.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %512 = ptrtoint ptr %funcs121.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %funcs121.i, align 4
  %tobool122.not.i = icmp eq ptr %513, null
  br i1 %tobool122.not.i, label %land.lhs.true118.i.cond.false139.i_crit_edge, label %land.lhs.true123.i

land.lhs.true118.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false139.i

land.lhs.true123.i:                               ; preds = %land.lhs.true118.i
  %sriov_wreg127.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %513, i32 0, i32 12
  %514 = ptrtoint ptr %sriov_wreg127.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %sriov_wreg127.i, align 4
  %tobool128.not.i = icmp eq ptr %515, null
  br i1 %tobool128.not.i, label %land.lhs.true123.i.cond.false139.i_crit_edge, label %cond.true129.i

land.lhs.true123.i.cond.false139.i_crit_edge:     ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false139.i

cond.true129.i:                                   ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx135.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %516 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %arrayidx135.i, align 8
  %arrayidx137.i = getelementptr i32, ptr %517, i32 1
  %518 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %arrayidx137.i, align 4
  %add138.i = add i32 %519, 1814
  tail call void %515(ptr noundef %adev, i32 noundef %add138.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end145.i

cond.false139.i:                                  ; preds = %land.lhs.true123.i.cond.false139.i_crit_edge, %land.lhs.true118.i.cond.false139.i_crit_edge, %cond.end113.i.cond.false139.i_crit_edge
  %arrayidx141.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %520 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %arrayidx141.i, align 8
  %arrayidx143.i = getelementptr i32, ptr %521, i32 1
  %522 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %arrayidx143.i, align 4
  %add144.i = add i32 %523, 1814
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add144.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end145.i

cond.end145.i:                                    ; preds = %cond.false139.i, %cond.true129.i
  %524 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %virt, align 8
  %and148.i = and i32 %525, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %cond.end145.i.cond.false171.i_crit_edge, label %land.lhs.true150.i

cond.end145.i.cond.false171.i_crit_edge:          ; preds = %cond.end145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false171.i

land.lhs.true150.i:                               ; preds = %cond.end145.i
  %funcs153.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %526 = ptrtoint ptr %funcs153.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %funcs153.i, align 4
  %tobool154.not.i = icmp eq ptr %527, null
  br i1 %tobool154.not.i, label %land.lhs.true150.i.cond.false171.i_crit_edge, label %land.lhs.true155.i

land.lhs.true150.i.cond.false171.i_crit_edge:     ; preds = %land.lhs.true150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false171.i

land.lhs.true155.i:                               ; preds = %land.lhs.true150.i
  %sriov_wreg159.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %527, i32 0, i32 12
  %528 = ptrtoint ptr %sriov_wreg159.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %sriov_wreg159.i, align 4
  %tobool160.not.i = icmp eq ptr %529, null
  br i1 %tobool160.not.i, label %land.lhs.true155.i.cond.false171.i_crit_edge, label %cond.true161.i

land.lhs.true155.i.cond.false171.i_crit_edge:     ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false171.i

cond.true161.i:                                   ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx167.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %530 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %arrayidx167.i, align 8
  %arrayidx169.i = getelementptr i32, ptr %531, i32 1
  %532 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %arrayidx169.i, align 4
  %add170.i = add i32 %533, 1815
  tail call void %529(ptr noundef %adev, i32 noundef %add170.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_3_disable_identity_aperture.exit

cond.false171.i:                                  ; preds = %land.lhs.true155.i.cond.false171.i_crit_edge, %land.lhs.true150.i.cond.false171.i_crit_edge, %cond.end145.i.cond.false171.i_crit_edge
  %arrayidx173.i232 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %534 = ptrtoint ptr %arrayidx173.i232 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %arrayidx173.i232, align 8
  %arrayidx175.i = getelementptr i32, ptr %535, i32 1
  %536 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %arrayidx175.i, align 4
  %add176.i = add i32 %537, 1815
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add176.i, i32 noundef 0, i32 noundef 0) #6
  br label %mmhub_v2_3_disable_identity_aperture.exit

mmhub_v2_3_disable_identity_aperture.exit:        ; preds = %cond.false171.i, %cond.true161.i
  %funcs.i234 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %arrayidx11.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %num_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 6
  %block_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 7
  %noretry.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 41
  %ctx_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 8
  %ctx_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %max_pfn.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %mmhub_v2_3_disable_identity_aperture.exit
  %i.0355.i = phi i32 [ 0, %mmhub_v2_3_disable_identity_aperture.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %538 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %virt, align 8
  %and.i235 = and i32 %539, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i235)
  %tobool.not.i236 = icmp eq i32 %and.i235, 0
  br i1 %tobool.not.i236, label %for.body.i.cond.false.i245_crit_edge, label %land.lhs.true.i238

for.body.i.cond.false.i245_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i245

land.lhs.true.i238:                               ; preds = %for.body.i
  %540 = ptrtoint ptr %funcs.i234 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %funcs.i234, align 4
  %tobool1.not.i237 = icmp eq ptr %541, null
  br i1 %tobool1.not.i237, label %land.lhs.true.i238.cond.false.i245_crit_edge, label %land.lhs.true2.i241

land.lhs.true.i238.cond.false.i245_crit_edge:     ; preds = %land.lhs.true.i238
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i245

land.lhs.true2.i241:                              ; preds = %land.lhs.true.i238
  %sriov_rreg.i239 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %541, i32 0, i32 13
  %542 = ptrtoint ptr %sriov_rreg.i239 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %sriov_rreg.i239, align 4
  %tobool6.not.i240 = icmp eq ptr %543, null
  br i1 %tobool6.not.i240, label %land.lhs.true2.i241.cond.false.i245_crit_edge, label %cond.true.i244

land.lhs.true2.i241.cond.false.i245_crit_edge:    ; preds = %land.lhs.true2.i241
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i245

cond.true.i244:                                   ; preds = %land.lhs.true2.i241
  call void @__sanitizer_cov_trace_pc() #8
  %544 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %545, i32 1
  %546 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %arrayidx13.i, align 4
  %add.i242 = add nuw nsw i32 %i.0355.i, 1857
  %add14.i = add i32 %add.i242, %547
  %call.i243 = tail call i32 %543(ptr noundef %adev, i32 noundef %add14.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i251

cond.false.i245:                                  ; preds = %land.lhs.true2.i241.cond.false.i245_crit_edge, %land.lhs.true.i238.cond.false.i245_crit_edge, %for.body.i.cond.false.i245_crit_edge
  %548 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx18.i = getelementptr i32, ptr %549, i32 1
  %550 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add nuw nsw i32 %i.0355.i, 1857
  %add20.i = add i32 %add19.i, %551
  %call21.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add20.i, i32 noundef 0) #6
  br label %cond.end.i251

cond.end.i251:                                    ; preds = %cond.false.i245, %cond.true.i244
  %cond.i246 = phi i32 [ %call.i243, %cond.true.i244 ], [ %call21.i, %cond.false.i245 ]
  %or.i247 = and i32 %cond.i246, -5592320
  %552 = ptrtoint ptr %num_level.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %num_level.i, align 8
  %shl.i = shl i32 %553, 1
  %and24.i248 = and i32 %shl.i, 6
  %554 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %block_size.i, align 4
  %sub.i = shl i32 %555, 3
  %shl42.i = add i32 %sub.i, 56
  %and43.i = and i32 %shl42.i, 120
  %556 = ptrtoint ptr %noretry.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %noretry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %557)
  %tobool46.not.i = icmp eq i32 %557, 0
  %shl47.i = select i1 %tobool46.not.i, i32 128, i32 0
  %and23.i = or i32 %or.i247, %and24.i248
  %or39.i = or i32 %and23.i, %and43.i
  %or44.i = or i32 %or39.i, %shl47.i
  %or49.i = or i32 %or44.i, 5592065
  %558 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %virt, align 8
  %and52.i249 = and i32 %559, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i249)
  %tobool53.not.i250 = icmp eq i32 %and52.i249, 0
  br i1 %tobool53.not.i250, label %cond.end.i251.cond.false75.i259_crit_edge, label %land.lhs.true54.i253

cond.end.i251.cond.false75.i259_crit_edge:        ; preds = %cond.end.i251
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i259

land.lhs.true54.i253:                             ; preds = %cond.end.i251
  %560 = ptrtoint ptr %funcs.i234 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %funcs.i234, align 4
  %tobool58.not.i252 = icmp eq ptr %561, null
  br i1 %tobool58.not.i252, label %land.lhs.true54.i253.cond.false75.i259_crit_edge, label %land.lhs.true59.i255

land.lhs.true54.i253.cond.false75.i259_crit_edge: ; preds = %land.lhs.true54.i253
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i259

land.lhs.true59.i255:                             ; preds = %land.lhs.true54.i253
  %sriov_wreg.i254 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %561, i32 0, i32 12
  %562 = ptrtoint ptr %sriov_wreg.i254 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %sriov_wreg.i254, align 4
  %tobool63.not.i = icmp eq ptr %563, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i255.cond.false75.i259_crit_edge, label %cond.true64.i

land.lhs.true59.i255.cond.false75.i259_crit_edge: ; preds = %land.lhs.true59.i255
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false75.i259

cond.true64.i:                                    ; preds = %land.lhs.true59.i255
  call void @__sanitizer_cov_trace_pc() #8
  %564 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx72.i = getelementptr i32, ptr %565, i32 1
  %566 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %arrayidx72.i, align 4
  %add73.i = add i32 %567, 1857
  %568 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %ctx_distance.i, align 4
  %mul.i = mul i32 %569, %i.0355.i
  %add74.i256 = add i32 %add73.i, %mul.i
  tail call void %563(ptr noundef %adev, i32 noundef %add74.i256, i32 noundef %or49.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end84.i

cond.false75.i259:                                ; preds = %land.lhs.true59.i255.cond.false75.i259_crit_edge, %land.lhs.true54.i253.cond.false75.i259_crit_edge, %cond.end.i251.cond.false75.i259_crit_edge
  %570 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx79.i257 = getelementptr i32, ptr %571, i32 1
  %572 = ptrtoint ptr %arrayidx79.i257 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %arrayidx79.i257, align 4
  %add80.i258 = add i32 %573, 1857
  %574 = ptrtoint ptr %ctx_distance.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %ctx_distance.i, align 4
  %mul82.i = mul i32 %575, %i.0355.i
  %add83.i = add i32 %add80.i258, %mul82.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add83.i, i32 noundef %or49.i, i32 noundef 0) #6
  br label %cond.end84.i

cond.end84.i:                                     ; preds = %cond.false75.i259, %cond.true64.i
  %576 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %virt, align 8
  %and87.i = and i32 %577, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %cond.end84.i.cond.false112.i_crit_edge, label %land.lhs.true89.i

cond.end84.i.cond.false112.i_crit_edge:           ; preds = %cond.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

land.lhs.true89.i:                                ; preds = %cond.end84.i
  %578 = ptrtoint ptr %funcs.i234 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %funcs.i234, align 4
  %tobool93.not.i = icmp eq ptr %579, null
  br i1 %tobool93.not.i, label %land.lhs.true89.i.cond.false112.i_crit_edge, label %land.lhs.true94.i

land.lhs.true89.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

land.lhs.true94.i:                                ; preds = %land.lhs.true89.i
  %sriov_wreg98.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %579, i32 0, i32 12
  %580 = ptrtoint ptr %sriov_wreg98.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %sriov_wreg98.i, align 4
  %tobool99.not.i = icmp eq ptr %581, null
  br i1 %tobool99.not.i, label %land.lhs.true94.i.cond.false112.i_crit_edge, label %cond.true100.i

land.lhs.true94.i.cond.false112.i_crit_edge:      ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false112.i

cond.true100.i:                                   ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #8
  %582 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx108.i = getelementptr i32, ptr %583, i32 1
  %584 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %arrayidx108.i, align 4
  %add109.i = add i32 %585, 2378
  %586 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul110.i = mul i32 %587, %i.0355.i
  %add111.i = add i32 %add109.i, %mul110.i
  tail call void %581(ptr noundef %adev, i32 noundef %add111.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end121.i

cond.false112.i:                                  ; preds = %land.lhs.true94.i.cond.false112.i_crit_edge, %land.lhs.true89.i.cond.false112.i_crit_edge, %cond.end84.i.cond.false112.i_crit_edge
  %588 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx116.i260 = getelementptr i32, ptr %589, i32 1
  %590 = ptrtoint ptr %arrayidx116.i260 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %arrayidx116.i260, align 4
  %add117.i261 = add i32 %591, 2378
  %592 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul119.i = mul i32 %593, %i.0355.i
  %add120.i = add i32 %add117.i261, %mul119.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add120.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end121.i

cond.end121.i:                                    ; preds = %cond.false112.i, %cond.true100.i
  %594 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %virt, align 8
  %and124.i = and i32 %595, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  br i1 %tobool125.not.i, label %cond.end121.i.cond.false150.i_crit_edge, label %land.lhs.true126.i

cond.end121.i.cond.false150.i_crit_edge:          ; preds = %cond.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

land.lhs.true126.i:                               ; preds = %cond.end121.i
  %596 = ptrtoint ptr %funcs.i234 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %funcs.i234, align 4
  %tobool130.not.i = icmp eq ptr %597, null
  br i1 %tobool130.not.i, label %land.lhs.true126.i.cond.false150.i_crit_edge, label %land.lhs.true131.i

land.lhs.true126.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

land.lhs.true131.i:                               ; preds = %land.lhs.true126.i
  %sriov_wreg135.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %597, i32 0, i32 12
  %598 = ptrtoint ptr %sriov_wreg135.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %sriov_wreg135.i, align 4
  %tobool136.not.i = icmp eq ptr %599, null
  br i1 %tobool136.not.i, label %land.lhs.true131.i.cond.false150.i_crit_edge, label %cond.true137.i

land.lhs.true131.i.cond.false150.i_crit_edge:     ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false150.i

cond.true137.i:                                   ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  %600 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx145.i = getelementptr i32, ptr %601, i32 1
  %602 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %arrayidx145.i, align 4
  %add146.i = add i32 %603, 2379
  %604 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul148.i = mul i32 %605, %i.0355.i
  %add149.i = add i32 %add146.i, %mul148.i
  tail call void %599(ptr noundef %adev, i32 noundef %add149.i, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end159.i

cond.false150.i:                                  ; preds = %land.lhs.true131.i.cond.false150.i_crit_edge, %land.lhs.true126.i.cond.false150.i_crit_edge, %cond.end121.i.cond.false150.i_crit_edge
  %606 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx154.i = getelementptr i32, ptr %607, i32 1
  %608 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %arrayidx154.i, align 4
  %add155.i = add i32 %609, 2379
  %610 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul157.i = mul i32 %611, %i.0355.i
  %add158.i = add i32 %add155.i, %mul157.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add158.i, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end159.i

cond.end159.i:                                    ; preds = %cond.false150.i, %cond.true137.i
  %612 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %virt, align 8
  %and162.i = and i32 %613, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %tobool163.not.i = icmp eq i32 %and162.i, 0
  br i1 %tobool163.not.i, label %cond.end159.i.cond.false191.i_crit_edge, label %land.lhs.true164.i

cond.end159.i.cond.false191.i_crit_edge:          ; preds = %cond.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

land.lhs.true164.i:                               ; preds = %cond.end159.i
  %614 = ptrtoint ptr %funcs.i234 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %funcs.i234, align 4
  %tobool168.not.i = icmp eq ptr %615, null
  br i1 %tobool168.not.i, label %land.lhs.true164.i.cond.false191.i_crit_edge, label %land.lhs.true169.i

land.lhs.true164.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

land.lhs.true169.i:                               ; preds = %land.lhs.true164.i
  %sriov_wreg173.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %615, i32 0, i32 12
  %616 = ptrtoint ptr %sriov_wreg173.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %sriov_wreg173.i, align 4
  %tobool174.not.i = icmp eq ptr %617, null
  br i1 %tobool174.not.i, label %land.lhs.true169.i.cond.false191.i_crit_edge, label %cond.true175.i

land.lhs.true169.i.cond.false191.i_crit_edge:     ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false191.i

cond.true175.i:                                   ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #8
  %618 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx183.i = getelementptr i32, ptr %619, i32 1
  %620 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %arrayidx183.i, align 4
  %add184.i = add i32 %621, 2380
  %622 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul186.i = mul i32 %623, %i.0355.i
  %add187.i = add i32 %add184.i, %mul186.i
  %624 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %624)
  %625 = load i64, ptr %max_pfn.i, align 8
  %626 = trunc i64 %625 to i32
  %conv.i262 = add i32 %626, -1
  tail call void %617(ptr noundef %adev, i32 noundef %add187.i, i32 noundef %conv.i262, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end205.i

cond.false191.i:                                  ; preds = %land.lhs.true169.i.cond.false191.i_crit_edge, %land.lhs.true164.i.cond.false191.i_crit_edge, %cond.end159.i.cond.false191.i_crit_edge
  %627 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx195.i = getelementptr i32, ptr %628, i32 1
  %629 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %arrayidx195.i, align 4
  %add196.i = add i32 %630, 2380
  %631 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul198.i = mul i32 %632, %i.0355.i
  %add199.i = add i32 %add196.i, %mul198.i
  %633 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %633)
  %634 = load i64, ptr %max_pfn.i, align 8
  %635 = trunc i64 %634 to i32
  %conv204.i = add i32 %635, -1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add199.i, i32 noundef %conv204.i, i32 noundef 0) #6
  br label %cond.end205.i

cond.end205.i:                                    ; preds = %cond.false191.i, %cond.true175.i
  %636 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %virt, align 8
  %and208.i = and i32 %637, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i)
  %tobool209.not.i = icmp eq i32 %and208.i, 0
  br i1 %tobool209.not.i, label %cond.end205.i.cond.false239.i_crit_edge, label %land.lhs.true210.i

cond.end205.i.cond.false239.i_crit_edge:          ; preds = %cond.end205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

land.lhs.true210.i:                               ; preds = %cond.end205.i
  %638 = ptrtoint ptr %funcs.i234 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %funcs.i234, align 4
  %tobool214.not.i = icmp eq ptr %639, null
  br i1 %tobool214.not.i, label %land.lhs.true210.i.cond.false239.i_crit_edge, label %land.lhs.true215.i

land.lhs.true210.i.cond.false239.i_crit_edge:     ; preds = %land.lhs.true210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

land.lhs.true215.i:                               ; preds = %land.lhs.true210.i
  %sriov_wreg219.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %639, i32 0, i32 12
  %640 = ptrtoint ptr %sriov_wreg219.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %sriov_wreg219.i, align 4
  %tobool220.not.i = icmp eq ptr %641, null
  br i1 %tobool220.not.i, label %land.lhs.true215.i.cond.false239.i_crit_edge, label %cond.true221.i

land.lhs.true215.i.cond.false239.i_crit_edge:     ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false239.i

cond.true221.i:                                   ; preds = %land.lhs.true215.i
  call void @__sanitizer_cov_trace_pc() #8
  %642 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx229.i = getelementptr i32, ptr %643, i32 1
  %644 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %arrayidx229.i, align 4
  %add230.i = add i32 %645, 2381
  %646 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul232.i = mul i32 %647, %i.0355.i
  %add233.i263 = add i32 %add230.i, %mul232.i
  %648 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %648)
  %649 = load i64, ptr %max_pfn.i, align 8
  %sub236.i = add i64 %649, -1
  %shr.i264 = lshr i64 %sub236.i, 32
  %conv238.i = trunc i64 %shr.i264 to i32
  tail call void %641(ptr noundef %adev, i32 noundef %add233.i263, i32 noundef %conv238.i, i32 noundef 0, i32 noundef 11) #6
  br label %for.inc.i

cond.false239.i:                                  ; preds = %land.lhs.true215.i.cond.false239.i_crit_edge, %land.lhs.true210.i.cond.false239.i_crit_edge, %cond.end205.i.cond.false239.i_crit_edge
  %650 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx243.i = getelementptr i32, ptr %651, i32 1
  %652 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %arrayidx243.i, align 4
  %add244.i = add i32 %653, 2381
  %654 = ptrtoint ptr %ctx_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %ctx_addr_distance.i, align 4
  %mul246.i = mul i32 %655, %i.0355.i
  %add247.i = add i32 %add244.i, %mul246.i
  %656 = ptrtoint ptr %max_pfn.i to i32
  call void @__asan_load8_noabort(i32 %656)
  %657 = load i64, ptr %max_pfn.i, align 8
  %sub250.i = add i64 %657, -1
  %shr251.i = lshr i64 %sub250.i, 32
  %conv253.i = trunc i64 %shr251.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add247.i, i32 noundef %conv253.i, i32 noundef 0) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false239.i, %cond.true221.i
  %inc.i = add nuw nsw i32 %i.0355.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %mmhub_v2_3_setup_vmid_config.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

mmhub_v2_3_setup_vmid_config.exit:                ; preds = %for.inc.i
  %eng_addr_distance.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 11
  br label %for.body.i270

for.body.i270:                                    ; preds = %for.inc.i298.for.body.i270_crit_edge, %mmhub_v2_3_setup_vmid_config.exit
  %i.088.i = phi i32 [ 0, %mmhub_v2_3_setup_vmid_config.exit ], [ %inc.i296, %for.inc.i298.for.body.i270_crit_edge ]
  %658 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %virt, align 8
  %and.i268 = and i32 %659, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i269 = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i269, label %for.body.i270.cond.false.i283_crit_edge, label %land.lhs.true.i272

for.body.i270.cond.false.i283_crit_edge:          ; preds = %for.body.i270
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i283

land.lhs.true.i272:                               ; preds = %for.body.i270
  %660 = ptrtoint ptr %funcs.i234 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %funcs.i234, align 4
  %tobool1.not.i271 = icmp eq ptr %661, null
  br i1 %tobool1.not.i271, label %land.lhs.true.i272.cond.false.i283_crit_edge, label %land.lhs.true2.i275

land.lhs.true.i272.cond.false.i283_crit_edge:     ; preds = %land.lhs.true.i272
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i283

land.lhs.true2.i275:                              ; preds = %land.lhs.true.i272
  %sriov_wreg.i273 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %661, i32 0, i32 12
  %662 = ptrtoint ptr %sriov_wreg.i273 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %sriov_wreg.i273, align 4
  %tobool6.not.i274 = icmp eq ptr %663, null
  br i1 %tobool6.not.i274, label %land.lhs.true2.i275.cond.false.i283_crit_edge, label %cond.true.i280

land.lhs.true2.i275.cond.false.i283_crit_edge:    ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i283

cond.true.i280:                                   ; preds = %land.lhs.true2.i275
  call void @__sanitizer_cov_trace_pc() #8
  %664 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx13.i276 = getelementptr i32, ptr %665, i32 1
  %666 = ptrtoint ptr %arrayidx13.i276 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %arrayidx13.i276, align 4
  %add.i277 = add i32 %667, 2563
  %668 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %eng_addr_distance.i, align 4
  %mul.i278 = mul i32 %669, %i.088.i
  %add14.i279 = add i32 %add.i277, %mul.i278
  tail call void %663(ptr noundef %adev, i32 noundef %add14.i279, i32 noundef -1, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i285

cond.false.i283:                                  ; preds = %land.lhs.true2.i275.cond.false.i283_crit_edge, %land.lhs.true.i272.cond.false.i283_crit_edge, %for.body.i270.cond.false.i283_crit_edge
  %670 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx18.i281 = getelementptr i32, ptr %671, i32 1
  %672 = ptrtoint ptr %arrayidx18.i281 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %arrayidx18.i281, align 4
  %add19.i282 = add i32 %673, 2563
  %674 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %eng_addr_distance.i, align 4
  %mul21.i = mul i32 %675, %i.088.i
  %add22.i = add i32 %add19.i282, %mul21.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add22.i, i32 noundef -1, i32 noundef 0) #6
  br label %cond.end.i285

cond.end.i285:                                    ; preds = %cond.false.i283, %cond.true.i280
  %676 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %virt, align 8
  %and25.i = and i32 %677, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i284 = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i284, label %cond.end.i285.cond.false51.i295_crit_edge, label %land.lhs.true27.i287

cond.end.i285.cond.false51.i295_crit_edge:        ; preds = %cond.end.i285
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i295

land.lhs.true27.i287:                             ; preds = %cond.end.i285
  %678 = ptrtoint ptr %funcs.i234 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %funcs.i234, align 4
  %tobool31.not.i286 = icmp eq ptr %679, null
  br i1 %tobool31.not.i286, label %land.lhs.true27.i287.cond.false51.i295_crit_edge, label %land.lhs.true32.i289

land.lhs.true27.i287.cond.false51.i295_crit_edge: ; preds = %land.lhs.true27.i287
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i295

land.lhs.true32.i289:                             ; preds = %land.lhs.true27.i287
  %sriov_wreg36.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %679, i32 0, i32 12
  %680 = ptrtoint ptr %sriov_wreg36.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %sriov_wreg36.i, align 4
  %tobool37.not.i288 = icmp eq ptr %681, null
  br i1 %tobool37.not.i288, label %land.lhs.true32.i289.cond.false51.i295_crit_edge, label %cond.true38.i292

land.lhs.true32.i289.cond.false51.i295_crit_edge: ; preds = %land.lhs.true32.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false51.i295

cond.true38.i292:                                 ; preds = %land.lhs.true32.i289
  call void @__sanitizer_cov_trace_pc() #8
  %682 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx46.i290 = getelementptr i32, ptr %683, i32 1
  %684 = ptrtoint ptr %arrayidx46.i290 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %arrayidx46.i290, align 4
  %add47.i291 = add i32 %685, 2564
  %686 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %eng_addr_distance.i, align 4
  %mul49.i = mul i32 %687, %i.088.i
  %add50.i = add i32 %add47.i291, %mul49.i
  tail call void %681(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 31, i32 noundef 0, i32 noundef 11) #6
  br label %for.inc.i298

cond.false51.i295:                                ; preds = %land.lhs.true32.i289.cond.false51.i295_crit_edge, %land.lhs.true27.i287.cond.false51.i295_crit_edge, %cond.end.i285.cond.false51.i295_crit_edge
  %688 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %arrayidx11.i, align 8
  %arrayidx55.i293 = getelementptr i32, ptr %689, i32 1
  %690 = ptrtoint ptr %arrayidx55.i293 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %arrayidx55.i293, align 4
  %add56.i294 = add i32 %691, 2564
  %692 = ptrtoint ptr %eng_addr_distance.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %eng_addr_distance.i, align 4
  %mul58.i = mul i32 %693, %i.088.i
  %add59.i = add i32 %add56.i294, %mul58.i
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add59.i, i32 noundef 31, i32 noundef 0) #6
  br label %for.inc.i298

for.inc.i298:                                     ; preds = %cond.false51.i295, %cond.true38.i292
  %inc.i296 = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i297 = icmp eq i32 %inc.i296, 18
  br i1 %exitcond.not.i297, label %mmhub_v2_3_program_invalidation.exit, label %for.inc.i298.for.body.i270_crit_edge

for.inc.i298.for.body.i270_crit_edge:             ; preds = %for.inc.i298
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i270

mmhub_v2_3_program_invalidation.exit:             ; preds = %for.inc.i298
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v2_3_set_fault_enable_default(ptr noundef %adev, i1 noundef zeroext %value) #1 align 64 {
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
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 1800
  %call = tail call i32 %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %13, 1800
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
  %arrayidx107 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %20 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx107, align 8
  %arrayidx109 = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx109, align 4
  %add110 = add i32 %23, 1800
  tail call void %19(ptr noundef %adev, i32 noundef %add110, i32 noundef %spec.select, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end117

cond.false111:                                    ; preds = %land.lhs.true96.cond.false111_crit_edge, %land.lhs.true91.cond.false111_crit_edge, %cond.end.cond.false111_crit_edge
  %arrayidx113 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %24 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx113, align 8
  %arrayidx115 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx115, align 4
  %add116 = add i32 %27, 1800
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add116, i32 noundef %spec.select, i32 noundef 0) #6
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false111, %cond.true101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v2_3_gart_disable(ptr noundef %adev) #1 align 64 {
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
  %arrayidx13 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %9, 1856
  %10 = ptrtoint ptr %ctx_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_distance, align 4
  %mul = mul i32 %11, %i.0260
  %add14 = add i32 %add, %mul
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %for.inc

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %for.body.cond.false_crit_edge
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx11, align 8
  %arrayidx18 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %15, 1856
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
  %arrayidx45 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %27, 2291
  %call = tail call i32 %23(ptr noundef %adev, i32 noundef %add46, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end54

cond.false47:                                     ; preds = %land.lhs.true32.cond.false47_crit_edge, %land.lhs.true27.cond.false47_crit_edge, %for.end.cond.false47_crit_edge
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 8
  %arrayidx51 = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %31, 2291
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
  %arrayidx81 = getelementptr i32, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx81, align 4
  %add82 = add i32 %41, 2291
  tail call void %37(ptr noundef %adev, i32 noundef %add82, i32 noundef %and56, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end89

cond.false83:                                     ; preds = %land.lhs.true67.cond.false83_crit_edge, %land.lhs.true62.cond.false83_crit_edge, %cond.end54.cond.false83_crit_edge
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx11, align 8
  %arrayidx87 = getelementptr i32, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx87, align 4
  %add88 = add i32 %45, 2291
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
  %arrayidx113 = getelementptr i32, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx113, align 4
  %add114 = add i32 %55, 1792
  %call115 = tail call i32 %51(ptr noundef %adev, i32 noundef %add114, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end123

cond.false116:                                    ; preds = %land.lhs.true99.cond.false116_crit_edge, %land.lhs.true94.cond.false116_crit_edge, %cond.end89.cond.false116_crit_edge
  %56 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx11, align 8
  %arrayidx120 = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx120, align 4
  %add121 = add i32 %59, 1792
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
  %arrayidx150 = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx150, align 4
  %add151 = add i32 %69, 1792
  tail call void %65(ptr noundef %adev, i32 noundef %add151, i32 noundef %and125, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end158

cond.false152:                                    ; preds = %land.lhs.true136.cond.false152_crit_edge, %land.lhs.true131.cond.false152_crit_edge, %cond.end123.cond.false152_crit_edge
  %70 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx11, align 8
  %arrayidx156 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx156, align 4
  %add157 = add i32 %73, 1792
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
  %arrayidx182 = getelementptr i32, ptr %81, i32 1
  %82 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx182, align 4
  %add183 = add i32 %83, 1794
  tail call void %79(ptr noundef %adev, i32 noundef %add183, i32 noundef 0, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end190

cond.false184:                                    ; preds = %land.lhs.true168.cond.false184_crit_edge, %land.lhs.true163.cond.false184_crit_edge, %cond.end158.cond.false184_crit_edge
  %84 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx11, align 8
  %arrayidx188 = getelementptr i32, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx188, align 4
  %add189 = add i32 %87, 1794
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add189, i32 noundef 0, i32 noundef 0) #6
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false184, %cond.true174
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmhub_v2_3_set_clockgating(ptr noundef %adev, i32 noundef %state) #1 align 64 {
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
  br i1 %tobool.not, label %cond.end.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.end.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %arrayidx14.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %2 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx16.i = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %5, 1743
  %call18.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i, i32 noundef 0) #6
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt, align 8
  %and21.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %cond.end.i.cond.false45.i_crit_edge, label %land.lhs.true23.i

cond.end.i.cond.false45.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false45.i

land.lhs.true23.i:                                ; preds = %cond.end.i
  %funcs26.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs26.i, align 4
  %tobool27.not.i = icmp eq ptr %9, null
  br i1 %tobool27.not.i, label %land.lhs.true23.i.cond.false45.i_crit_edge, label %land.lhs.true28.i

land.lhs.true23.i.cond.false45.i_crit_edge:       ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false45.i

land.lhs.true28.i:                                ; preds = %land.lhs.true23.i
  %sriov_rreg32.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg32.i, align 4
  %tobool33.not.i = icmp eq ptr %11, null
  br i1 %tobool33.not.i, label %land.lhs.true28.i.cond.false45.i_crit_edge, label %cond.true34.i

land.lhs.true28.i.cond.false45.i_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false45.i

cond.true34.i:                                    ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx42.i = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx42.i, align 4
  %add43.i = add i32 %15, 150
  %call44.i = tail call i32 %11(ptr noundef %adev, i32 noundef %add43.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end52.i

cond.false45.i:                                   ; preds = %land.lhs.true28.i.cond.false45.i_crit_edge, %land.lhs.true23.i.cond.false45.i_crit_edge, %cond.end.i.cond.false45.i_crit_edge
  %16 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx49.i = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx49.i, align 4
  %add50.i = add i32 %19, 150
  %call51.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50.i, i32 noundef 0) #6
  br label %cond.end52.i

cond.end52.i:                                     ; preds = %cond.false45.i, %cond.true34.i
  %cond53.i = phi i32 [ %call44.i, %cond.true34.i ], [ %call51.i, %cond.false45.i ]
  br i1 %cmp, label %land.lhs.true55.i, label %cond.end52.i.if.else.i_crit_edge

cond.end52.i.if.else.i_crit_edge:                 ; preds = %cond.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true55.i:                                ; preds = %cond.end52.i
  %cg_flags.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %20 = ptrtoint ptr %cg_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cg_flags.i, align 8
  %and56.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %land.lhs.true55.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true55.i.if.else.i_crit_edge:            ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  %and58.i = and i32 %call18.i, 16777215
  %and59.i = and i32 %cond53.i, -253
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true55.i.if.else.i_crit_edge, %cond.end52.i.if.else.i_crit_edge
  %or.i = or i32 %call18.i, -16777216
  %or60.i = or i32 %cond53.i, 252
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i32 [ %and58.i, %if.then.i ], [ %or.i, %if.else.i ]
  %data1.0.i = phi i32 [ %and59.i, %if.then.i ], [ %or60.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call18.i, i32 %data.0.i)
  %cmp.not.i = icmp eq i32 %call18.i, %data.0.i
  br i1 %cmp.not.i, label %if.end.i.if.end93.i_crit_edge, label %if.then61.i

if.end.i.if.end93.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93.i

if.then61.i:                                      ; preds = %if.end.i
  %22 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %virt, align 8
  %and64.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.then61.i.cond.false86.i_crit_edge, label %land.lhs.true66.i

if.then61.i.cond.false86.i_crit_edge:             ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

land.lhs.true66.i:                                ; preds = %if.then61.i
  %funcs69.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %24 = ptrtoint ptr %funcs69.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs69.i, align 4
  %tobool70.not.i = icmp eq ptr %25, null
  br i1 %tobool70.not.i, label %land.lhs.true66.i.cond.false86.i_crit_edge, label %land.lhs.true71.i

land.lhs.true66.i.cond.false86.i_crit_edge:       ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

land.lhs.true71.i:                                ; preds = %land.lhs.true66.i
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool75.not.i = icmp eq ptr %27, null
  br i1 %tobool75.not.i, label %land.lhs.true71.i.cond.false86.i_crit_edge, label %cond.true76.i

land.lhs.true71.i.cond.false86.i_crit_edge:       ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false86.i

cond.true76.i:                                    ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx84.i = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx84.i, align 4
  %add85.i = add i32 %31, 1743
  tail call void %27(ptr noundef %adev, i32 noundef %add85.i, i32 noundef %data.0.i, i32 noundef 0, i32 noundef 11) #6
  br label %if.end93.i

cond.false86.i:                                   ; preds = %land.lhs.true71.i.cond.false86.i_crit_edge, %land.lhs.true66.i.cond.false86.i_crit_edge, %if.then61.i.cond.false86.i_crit_edge
  %32 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx90.i = getelementptr i32, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx90.i, align 4
  %add91.i = add i32 %35, 1743
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add91.i, i32 noundef %data.0.i, i32 noundef 0) #6
  br label %if.end93.i

if.end93.i:                                       ; preds = %cond.false86.i, %cond.true76.i, %if.end.i.if.end93.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond53.i, i32 %data1.0.i)
  %cmp94.not.i = icmp eq i32 %cond53.i, %data1.0.i
  br i1 %cmp94.not.i, label %if.end93.i.mmhub_v2_3_update_medium_grain_clock_gating.exit_crit_edge, label %if.then95.i

if.end93.i.mmhub_v2_3_update_medium_grain_clock_gating.exit_crit_edge: ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmhub_v2_3_update_medium_grain_clock_gating.exit

if.then95.i:                                      ; preds = %if.end93.i
  %36 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt, align 8
  %and98.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.then95.i.cond.false121.i_crit_edge, label %land.lhs.true100.i

if.then95.i.cond.false121.i_crit_edge:            ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false121.i

land.lhs.true100.i:                               ; preds = %if.then95.i
  %funcs103.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %38 = ptrtoint ptr %funcs103.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs103.i, align 4
  %tobool104.not.i = icmp eq ptr %39, null
  br i1 %tobool104.not.i, label %land.lhs.true100.i.cond.false121.i_crit_edge, label %land.lhs.true105.i

land.lhs.true100.i.cond.false121.i_crit_edge:     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false121.i

land.lhs.true105.i:                               ; preds = %land.lhs.true100.i
  %sriov_wreg109.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sriov_wreg109.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_wreg109.i, align 4
  %tobool110.not.i = icmp eq ptr %41, null
  br i1 %tobool110.not.i, label %land.lhs.true105.i.cond.false121.i_crit_edge, label %cond.true111.i

land.lhs.true105.i.cond.false121.i_crit_edge:     ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false121.i

cond.true111.i:                                   ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx119.i = getelementptr i32, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx119.i, align 4
  %add120.i = add i32 %45, 150
  tail call void %41(ptr noundef %adev, i32 noundef %add120.i, i32 noundef %data1.0.i, i32 noundef 0, i32 noundef 11) #6
  br label %mmhub_v2_3_update_medium_grain_clock_gating.exit

cond.false121.i:                                  ; preds = %land.lhs.true105.i.cond.false121.i_crit_edge, %land.lhs.true100.i.cond.false121.i_crit_edge, %if.then95.i.cond.false121.i_crit_edge
  %46 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx125.i = getelementptr i32, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx125.i, align 4
  %add126.i = add i32 %49, 150
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add126.i, i32 noundef %data1.0.i, i32 noundef 0) #6
  br label %mmhub_v2_3_update_medium_grain_clock_gating.exit

mmhub_v2_3_update_medium_grain_clock_gating.exit: ; preds = %cond.false121.i, %cond.true111.i, %if.end93.i.mmhub_v2_3_update_medium_grain_clock_gating.exit_crit_edge
  %50 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %virt, align 8
  %and.i6 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %mmhub_v2_3_update_medium_grain_clock_gating.exit.cond.false.i23_crit_edge, label %land.lhs.true.i10

mmhub_v2_3_update_medium_grain_clock_gating.exit.cond.false.i23_crit_edge: ; preds = %mmhub_v2_3_update_medium_grain_clock_gating.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i23

land.lhs.true.i10:                                ; preds = %mmhub_v2_3_update_medium_grain_clock_gating.exit
  %funcs.i8 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %52 = ptrtoint ptr %funcs.i8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs.i8, align 4
  %tobool1.not.i9 = icmp eq ptr %53, null
  br i1 %tobool1.not.i9, label %land.lhs.true.i10.cond.false.i23_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i10.cond.false.i23_crit_edge:       ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i23

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i10
  %sriov_rreg.i11 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %sriov_rreg.i11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sriov_rreg.i11, align 4
  %tobool6.not.i12 = icmp eq ptr %55, null
  br i1 %tobool6.not.i12, label %land.lhs.true2.i13.cond.false.i23_crit_edge, label %cond.true.i18

land.lhs.true2.i13.cond.false.i23_crit_edge:      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i23

cond.true.i18:                                    ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx12.i15 = getelementptr i32, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx12.i15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx12.i15, align 4
  %add.i16 = add i32 %59, 1743
  %call.i17 = tail call i32 %55(ptr noundef %adev, i32 noundef %add.i16, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end.i27

cond.false.i23:                                   ; preds = %land.lhs.true2.i13.cond.false.i23_crit_edge, %land.lhs.true.i10.cond.false.i23_crit_edge, %mmhub_v2_3_update_medium_grain_clock_gating.exit.cond.false.i23_crit_edge
  %60 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx16.i20 = getelementptr i32, ptr %61, i32 1
  %62 = ptrtoint ptr %arrayidx16.i20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx16.i20, align 4
  %add17.i21 = add i32 %63, 1743
  %call18.i22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add17.i21, i32 noundef 0) #6
  br label %cond.end.i27

cond.end.i27:                                     ; preds = %cond.false.i23, %cond.true.i18
  %cond.i24 = phi i32 [ %call.i17, %cond.true.i18 ], [ %call18.i22, %cond.false.i23 ]
  %64 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %virt, align 8
  %and21.i25 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i25)
  %tobool22.not.i26 = icmp eq i32 %and21.i25, 0
  br i1 %tobool22.not.i26, label %cond.end.i27.cond.false45.i43_crit_edge, label %land.lhs.true23.i30

cond.end.i27.cond.false45.i43_crit_edge:          ; preds = %cond.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false45.i43

land.lhs.true23.i30:                              ; preds = %cond.end.i27
  %funcs26.i28 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %66 = ptrtoint ptr %funcs26.i28 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %funcs26.i28, align 4
  %tobool27.not.i29 = icmp eq ptr %67, null
  br i1 %tobool27.not.i29, label %land.lhs.true23.i30.cond.false45.i43_crit_edge, label %land.lhs.true28.i33

land.lhs.true23.i30.cond.false45.i43_crit_edge:   ; preds = %land.lhs.true23.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false45.i43

land.lhs.true28.i33:                              ; preds = %land.lhs.true23.i30
  %sriov_rreg32.i31 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %sriov_rreg32.i31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sriov_rreg32.i31, align 4
  %tobool33.not.i32 = icmp eq ptr %69, null
  br i1 %tobool33.not.i32, label %land.lhs.true28.i33.cond.false45.i43_crit_edge, label %cond.true34.i38

land.lhs.true28.i33.cond.false45.i43_crit_edge:   ; preds = %land.lhs.true28.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false45.i43

cond.true34.i38:                                  ; preds = %land.lhs.true28.i33
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx42.i35 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx42.i35 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx42.i35, align 4
  %add43.i36 = add i32 %73, 101
  %call44.i37 = tail call i32 %69(ptr noundef %adev, i32 noundef %add43.i36, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end52.i47

cond.false45.i43:                                 ; preds = %land.lhs.true28.i33.cond.false45.i43_crit_edge, %land.lhs.true23.i30.cond.false45.i43_crit_edge, %cond.end.i27.cond.false45.i43_crit_edge
  %74 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx49.i40 = getelementptr i32, ptr %75, i32 1
  %76 = ptrtoint ptr %arrayidx49.i40 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx49.i40, align 4
  %add50.i41 = add i32 %77, 101
  %call51.i42 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add50.i41, i32 noundef 0) #6
  br label %cond.end52.i47

cond.end52.i47:                                   ; preds = %cond.false45.i43, %cond.true34.i38
  %cond53.i44 = phi i32 [ %call44.i37, %cond.true34.i38 ], [ %call51.i42, %cond.false45.i43 ]
  %78 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %virt, align 8
  %and56.i45 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i45)
  %tobool57.not.i46 = icmp eq i32 %and56.i45, 0
  br i1 %tobool57.not.i46, label %cond.end52.i47.cond.false80.i_crit_edge, label %land.lhs.true58.i

cond.end52.i47.cond.false80.i_crit_edge:          ; preds = %cond.end52.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false80.i

land.lhs.true58.i:                                ; preds = %cond.end52.i47
  %funcs61.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %80 = ptrtoint ptr %funcs61.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %funcs61.i, align 4
  %tobool62.not.i = icmp eq ptr %81, null
  br i1 %tobool62.not.i, label %land.lhs.true58.i.cond.false80.i_crit_edge, label %land.lhs.true63.i

land.lhs.true58.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false80.i

land.lhs.true63.i:                                ; preds = %land.lhs.true58.i
  %sriov_rreg67.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %81, i32 0, i32 13
  %82 = ptrtoint ptr %sriov_rreg67.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sriov_rreg67.i, align 4
  %tobool68.not.i = icmp eq ptr %83, null
  br i1 %tobool68.not.i, label %land.lhs.true63.i.cond.false80.i_crit_edge, label %cond.true69.i

land.lhs.true63.i.cond.false80.i_crit_edge:       ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false80.i

cond.true69.i:                                    ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx77.i = getelementptr i32, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx77.i, align 4
  %add78.i = add i32 %87, 36
  %call79.i = tail call i32 %83(ptr noundef %adev, i32 noundef %add78.i, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end87.i

cond.false80.i:                                   ; preds = %land.lhs.true63.i.cond.false80.i_crit_edge, %land.lhs.true58.i.cond.false80.i_crit_edge, %cond.end52.i47.cond.false80.i_crit_edge
  %88 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx84.i49 = getelementptr i32, ptr %89, i32 1
  %90 = ptrtoint ptr %arrayidx84.i49 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx84.i49, align 4
  %add85.i50 = add i32 %91, 36
  %call86.i = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add85.i50, i32 noundef 0) #6
  br label %cond.end87.i

cond.end87.i:                                     ; preds = %cond.false80.i, %cond.true69.i
  %cond88.i = phi i32 [ %call79.i, %cond.true69.i ], [ %call86.i, %cond.false80.i ]
  br i1 %cmp, label %land.lhs.true90.i, label %cond.end87.i.if.else.i54_crit_edge

cond.end87.i.if.else.i54_crit_edge:               ; preds = %cond.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i54

land.lhs.true90.i:                                ; preds = %cond.end87.i
  %cg_flags.i51 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 99
  %92 = ptrtoint ptr %cg_flags.i51 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cg_flags.i51, align 8
  %and91.i = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %land.lhs.true90.i.if.else.i54_crit_edge, label %if.then.i52

land.lhs.true90.i.if.else.i54_crit_edge:          ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i54

if.then.i52:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #8
  %and93.i = and i32 %cond.i24, -32769
  %and94.i = and i32 %cond53.i44, 134217727
  %and95.i = and i32 %cond88.i, 134217727
  br label %if.end.i58

if.else.i54:                                      ; preds = %land.lhs.true90.i.if.else.i54_crit_edge, %cond.end87.i.if.else.i54_crit_edge
  %or.i53 = or i32 %cond.i24, 32768
  %or96.i = or i32 %cond53.i44, -134217728
  %or97.i = or i32 %cond88.i, -134217728
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.else.i54, %if.then.i52
  %data.0.i55 = phi i32 [ %and93.i, %if.then.i52 ], [ %or.i53, %if.else.i54 ]
  %data1.0.i56 = phi i32 [ %and94.i, %if.then.i52 ], [ %or96.i, %if.else.i54 ]
  %data2.0.i = phi i32 [ %and95.i, %if.then.i52 ], [ %or97.i, %if.else.i54 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i24, i32 %data.0.i55)
  %cmp.not.i57 = icmp eq i32 %cond.i24, %data.0.i55
  br i1 %cmp.not.i57, label %if.end.i58.if.end130.i_crit_edge, label %if.then98.i

if.end.i58.if.end130.i_crit_edge:                 ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.then98.i:                                      ; preds = %if.end.i58
  %94 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %virt, align 8
  %and101.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %if.then98.i.cond.false123.i_crit_edge, label %land.lhs.true103.i

if.then98.i.cond.false123.i_crit_edge:            ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false123.i

land.lhs.true103.i:                               ; preds = %if.then98.i
  %funcs106.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %96 = ptrtoint ptr %funcs106.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %funcs106.i, align 4
  %tobool107.not.i = icmp eq ptr %97, null
  br i1 %tobool107.not.i, label %land.lhs.true103.i.cond.false123.i_crit_edge, label %land.lhs.true108.i

land.lhs.true103.i.cond.false123.i_crit_edge:     ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false123.i

land.lhs.true108.i:                               ; preds = %land.lhs.true103.i
  %sriov_wreg.i59 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %97, i32 0, i32 12
  %98 = ptrtoint ptr %sriov_wreg.i59 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sriov_wreg.i59, align 4
  %tobool112.not.i = icmp eq ptr %99, null
  br i1 %tobool112.not.i, label %land.lhs.true108.i.cond.false123.i_crit_edge, label %cond.true113.i

land.lhs.true108.i.cond.false123.i_crit_edge:     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false123.i

cond.true113.i:                                   ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx121.i = getelementptr i32, ptr %101, i32 1
  %102 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx121.i, align 4
  %add122.i = add i32 %103, 1743
  tail call void %99(ptr noundef %adev, i32 noundef %add122.i, i32 noundef %data.0.i55, i32 noundef 0, i32 noundef 11) #6
  br label %if.end130.i

cond.false123.i:                                  ; preds = %land.lhs.true108.i.cond.false123.i_crit_edge, %land.lhs.true103.i.cond.false123.i_crit_edge, %if.then98.i.cond.false123.i_crit_edge
  %104 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx127.i = getelementptr i32, ptr %105, i32 1
  %106 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx127.i, align 4
  %add128.i = add i32 %107, 1743
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add128.i, i32 noundef %data.0.i55, i32 noundef 0) #6
  br label %if.end130.i

if.end130.i:                                      ; preds = %cond.false123.i, %cond.true113.i, %if.end.i58.if.end130.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond53.i44, i32 %data1.0.i56)
  %cmp131.not.i = icmp eq i32 %cond53.i44, %data1.0.i56
  br i1 %cmp131.not.i, label %if.end130.i.if.end165.i_crit_edge, label %if.then132.i

if.end130.i.if.end165.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165.i

if.then132.i:                                     ; preds = %if.end130.i
  %108 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %virt, align 8
  %and135.i = and i32 %109, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %if.then132.i.cond.false158.i_crit_edge, label %land.lhs.true137.i

if.then132.i.cond.false158.i_crit_edge:           ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false158.i

land.lhs.true137.i:                               ; preds = %if.then132.i
  %funcs140.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %110 = ptrtoint ptr %funcs140.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %funcs140.i, align 4
  %tobool141.not.i = icmp eq ptr %111, null
  br i1 %tobool141.not.i, label %land.lhs.true137.i.cond.false158.i_crit_edge, label %land.lhs.true142.i

land.lhs.true137.i.cond.false158.i_crit_edge:     ; preds = %land.lhs.true137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false158.i

land.lhs.true142.i:                               ; preds = %land.lhs.true137.i
  %sriov_wreg146.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %111, i32 0, i32 12
  %112 = ptrtoint ptr %sriov_wreg146.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sriov_wreg146.i, align 4
  %tobool147.not.i = icmp eq ptr %113, null
  br i1 %tobool147.not.i, label %land.lhs.true142.i.cond.false158.i_crit_edge, label %cond.true148.i

land.lhs.true142.i.cond.false158.i_crit_edge:     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false158.i

cond.true148.i:                                   ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx156.i = getelementptr i32, ptr %115, i32 1
  %116 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx156.i, align 4
  %add157.i = add i32 %117, 101
  tail call void %113(ptr noundef %adev, i32 noundef %add157.i, i32 noundef %data1.0.i56, i32 noundef 0, i32 noundef 11) #6
  br label %if.end165.i

cond.false158.i:                                  ; preds = %land.lhs.true142.i.cond.false158.i_crit_edge, %land.lhs.true137.i.cond.false158.i_crit_edge, %if.then132.i.cond.false158.i_crit_edge
  %118 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx162.i = getelementptr i32, ptr %119, i32 1
  %120 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx162.i, align 4
  %add163.i = add i32 %121, 101
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add163.i, i32 noundef %data1.0.i56, i32 noundef 0) #6
  br label %if.end165.i

if.end165.i:                                      ; preds = %cond.false158.i, %cond.true148.i, %if.end130.i.if.end165.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cond88.i, i32 %data2.0.i)
  %cmp166.not.i = icmp eq i32 %cond88.i, %data2.0.i
  br i1 %cmp166.not.i, label %if.end165.i.return_crit_edge, label %if.then167.i

if.end165.i.return_crit_edge:                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then167.i:                                     ; preds = %if.end165.i
  %122 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %virt, align 8
  %and170.i = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  br i1 %tobool171.not.i, label %if.then167.i.cond.false193.i_crit_edge, label %land.lhs.true172.i

if.then167.i.cond.false193.i_crit_edge:           ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false193.i

land.lhs.true172.i:                               ; preds = %if.then167.i
  %funcs175.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %124 = ptrtoint ptr %funcs175.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %funcs175.i, align 4
  %tobool176.not.i = icmp eq ptr %125, null
  br i1 %tobool176.not.i, label %land.lhs.true172.i.cond.false193.i_crit_edge, label %land.lhs.true177.i

land.lhs.true172.i.cond.false193.i_crit_edge:     ; preds = %land.lhs.true172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false193.i

land.lhs.true177.i:                               ; preds = %land.lhs.true172.i
  %sriov_wreg181.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %125, i32 0, i32 12
  %126 = ptrtoint ptr %sriov_wreg181.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sriov_wreg181.i, align 4
  %tobool182.not.i = icmp eq ptr %127, null
  br i1 %tobool182.not.i, label %land.lhs.true177.i.cond.false193.i_crit_edge, label %cond.true183.i

land.lhs.true177.i.cond.false193.i_crit_edge:     ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false193.i

cond.true183.i:                                   ; preds = %land.lhs.true177.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx191.i = getelementptr i32, ptr %129, i32 1
  %130 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx191.i, align 4
  %add192.i = add i32 %131, 36
  tail call void %127(ptr noundef %adev, i32 noundef %add192.i, i32 noundef %data2.0.i, i32 noundef 0, i32 noundef 11) #6
  br label %return

cond.false193.i:                                  ; preds = %land.lhs.true177.i.cond.false193.i_crit_edge, %land.lhs.true172.i.cond.false193.i_crit_edge, %if.then167.i.cond.false193.i_crit_edge
  %132 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx14.i, align 8
  %arrayidx197.i = getelementptr i32, ptr %133, i32 1
  %134 = ptrtoint ptr %arrayidx197.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx197.i, align 4
  %add198.i = add i32 %135, 36
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add198.i, i32 noundef %data2.0.i, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %cond.false193.i, %cond.true183.i, %if.end165.i.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v2_3_get_clockgating(ptr noundef %adev, ptr nocapture noundef %flags) #1 align 64 {
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
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %virt, align 8
  %and3 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %funcs, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true6

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sriov_rreg, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %land.lhs.true6.cond.false_crit_edge, label %cond.true

land.lhs.true6.cond.false_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 8
  %arrayidx16 = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16, align 4
  %add = add i32 %12, 150
  %call = tail call i32 %8(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true6.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %arrayidx18 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx18, align 8
  %arrayidx20 = getelementptr i32, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %16, 150
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add21, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call22, %cond.false ]
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virt, align 8
  %and25 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %cond.end.cond.false49_crit_edge, label %land.lhs.true27

cond.end.cond.false49_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49

land.lhs.true27:                                  ; preds = %cond.end
  %funcs30 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %19 = ptrtoint ptr %funcs30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs30, align 4
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %land.lhs.true27.cond.false49_crit_edge, label %land.lhs.true32

land.lhs.true27.cond.false49_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %sriov_rreg36 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %sriov_rreg36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sriov_rreg36, align 4
  %tobool37.not = icmp eq ptr %22, null
  br i1 %tobool37.not, label %land.lhs.true32.cond.false49_crit_edge, label %cond.true38

land.lhs.true32.cond.false49_crit_edge:           ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false49

cond.true38:                                      ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx44 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx44, align 8
  %arrayidx46 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %26, 1743
  %call48 = tail call i32 %22(ptr noundef %adev, i32 noundef %add47, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end56

cond.false49:                                     ; preds = %land.lhs.true32.cond.false49_crit_edge, %land.lhs.true27.cond.false49_crit_edge, %cond.end.cond.false49_crit_edge
  %arrayidx51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr i32, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %30, 1743
  %call55 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add54, i32 noundef 0) #6
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false49, %cond.true38
  %cond57 = phi i32 [ %call48, %cond.true38 ], [ %call55, %cond.false49 ]
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %virt, align 8
  %and60 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %cond.end56.cond.false84_crit_edge, label %land.lhs.true62

cond.end56.cond.false84_crit_edge:                ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false84

land.lhs.true62:                                  ; preds = %cond.end56
  %funcs65 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %33 = ptrtoint ptr %funcs65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %funcs65, align 4
  %tobool66.not = icmp eq ptr %34, null
  br i1 %tobool66.not, label %land.lhs.true62.cond.false84_crit_edge, label %land.lhs.true67

land.lhs.true62.cond.false84_crit_edge:           ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false84

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %sriov_rreg71 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %sriov_rreg71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sriov_rreg71, align 4
  %tobool72.not = icmp eq ptr %36, null
  br i1 %tobool72.not, label %land.lhs.true67.cond.false84_crit_edge, label %cond.true73

land.lhs.true67.cond.false84_crit_edge:           ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false84

cond.true73:                                      ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx79 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %37 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx79, align 8
  %arrayidx81 = getelementptr i32, ptr %38, i32 1
  %39 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx81, align 4
  %add82 = add i32 %40, 101
  %call83 = tail call i32 %36(ptr noundef %adev, i32 noundef %add82, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end91

cond.false84:                                     ; preds = %land.lhs.true67.cond.false84_crit_edge, %land.lhs.true62.cond.false84_crit_edge, %cond.end56.cond.false84_crit_edge
  %arrayidx86 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %41 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx86, align 8
  %arrayidx88 = getelementptr i32, ptr %42, i32 1
  %43 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %44, 101
  %call90 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add89, i32 noundef 0) #6
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false84, %cond.true73
  %cond92 = phi i32 [ %call83, %cond.true73 ], [ %call90, %cond.false84 ]
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %virt, align 8
  %and95 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %cond.end91.cond.false119_crit_edge, label %land.lhs.true97

cond.end91.cond.false119_crit_edge:               ; preds = %cond.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false119

land.lhs.true97:                                  ; preds = %cond.end91
  %funcs100 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %47 = ptrtoint ptr %funcs100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %funcs100, align 4
  %tobool101.not = icmp eq ptr %48, null
  br i1 %tobool101.not, label %land.lhs.true97.cond.false119_crit_edge, label %land.lhs.true102

land.lhs.true97.cond.false119_crit_edge:          ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false119

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %sriov_rreg106 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %sriov_rreg106 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sriov_rreg106, align 4
  %tobool107.not = icmp eq ptr %50, null
  br i1 %tobool107.not, label %land.lhs.true102.cond.false119_crit_edge, label %cond.true108

land.lhs.true102.cond.false119_crit_edge:         ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false119

cond.true108:                                     ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx114 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %51 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx114, align 8
  %arrayidx116 = getelementptr i32, ptr %52, i32 1
  %53 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx116, align 4
  %add117 = add i32 %54, 36
  %call118 = tail call i32 %50(ptr noundef %adev, i32 noundef %add117, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end126

cond.false119:                                    ; preds = %land.lhs.true102.cond.false119_crit_edge, %land.lhs.true97.cond.false119_crit_edge, %cond.end91.cond.false119_crit_edge
  %arrayidx121 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %55 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx121, align 8
  %arrayidx123 = getelementptr i32, ptr %56, i32 1
  %57 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx123, align 4
  %add124 = add i32 %58, 36
  %call125 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add124, i32 noundef 0) #6
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false119, %cond.true108
  %cond127 = phi i32 [ %call118, %cond.true108 ], [ %call125, %cond.false119 ]
  %and128 = and i32 %cond, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %cond57)
  %tobool132.not = icmp ult i32 %cond57, 16777216
  %or.cond = select i1 %tobool129.not, i1 %tobool132.not, i1 false
  br i1 %or.cond, label %if.then133, label %cond.end126.if.end134_crit_edge

cond.end126.if.end134_crit_edge:                  ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then133:                                       ; preds = %cond.end126
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %or = or i32 %60, 512
  store i32 %or, ptr %flags, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %cond.end126.if.end134_crit_edge
  %and135 = and i32 %cond57, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %cond92)
  %tobool139.not = icmp ult i32 %cond92, 134217728
  %or.cond188 = select i1 %tobool136.not, i1 %tobool139.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %cond127)
  %tobool142.not = icmp ult i32 %cond127, 134217728
  %or.cond189 = select i1 %or.cond188, i1 %tobool142.not, i1 false
  br i1 %or.cond189, label %if.then143, label %if.end134.if.end145_crit_edge

if.end134.if.end145_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then143:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %or144 = or i32 %62, 256
  store i32 %or144, ptr %flags, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end134.if.end145_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmhub_v2_3_setup_vm_pt_regs(ptr noundef %adev, i32 noundef %vmid, i64 noundef %page_table_base) #1 align 64 {
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
  %arrayidx13 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %9, 2368
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %10 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %11, %vmid
  %add14 = add i32 %add, %mul
  %conv = trunc i64 %page_table_base to i32
  tail call void %5(ptr noundef %adev, i32 noundef %add14, i32 noundef %conv, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx17 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 8
  %arrayidx19 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %15, 2368
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
  %arrayidx49 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx49, align 4
  %add50 = add i32 %27, 2369
  %ctx_addr_distance51 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 66, i32 1, i32 9
  %28 = ptrtoint ptr %ctx_addr_distance51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx_addr_distance51, align 4
  %mul52 = mul i32 %29, %vmid
  %add53 = add i32 %add50, %mul52
  %shr = lshr i64 %page_table_base, 32
  %conv55 = trunc i64 %shr to i32
  tail call void %23(ptr noundef %adev, i32 noundef %add53, i32 noundef %conv55, i32 noundef 0, i32 noundef 11) #6
  br label %cond.end68

cond.false56:                                     ; preds = %land.lhs.true35.cond.false56_crit_edge, %land.lhs.true30.cond.false56_crit_edge, %cond.end.cond.false56_crit_edge
  %arrayidx58 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 11
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx58, align 8
  %arrayidx60 = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx60, align 4
  %add61 = add i32 %33, 2369
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
define internal void @mmhub_v2_3_print_l2_protection_fault_status(ptr nocapture noundef readonly %adev, i32 noundef %status) #1 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.do.end8_crit_edge [
    i32 131840, label %entry.sw.bb_crit_edge
    i32 132096, label %entry.sw.bb_crit_edge54
  ]

entry.sw.bb_crit_edge54:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge54
  %arrayidx5 = getelementptr [31 x [2 x ptr]], ptr @mmhub_client_ids_vangogh, i32 0, i32 %shr, i32 %shr2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  br label %do.end8

do.end8:                                          ; preds = %sw.bb, %entry.do.end8_crit_edge
  %mmhub_cid.0 = phi ptr [ %6, %sw.bb ], [ null, %entry.do.end8_crit_edge ]
  %7 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adev, align 8
  %tobool.not = icmp eq ptr %mmhub_cid.0, null
  %spec.select = select i1 %tobool.not, ptr @.str.8, ptr %mmhub_cid.0
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %spec.select, i32 noundef %shr) #9
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  %and14 = and i32 %status, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %and14) #9
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  %and20 = lshr i32 %status, 1
  %shr21 = and i32 %and20, 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef %shr21) #9
  %13 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adev, align 8
  %and26 = lshr i32 %status, 4
  %shr27 = and i32 %and26, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16, i32 noundef %shr27) #9
  %15 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adev, align 8
  %and32 = lshr i32 %status, 8
  %shr33 = and i32 %and32, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %shr33) #9
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.22, i32 noundef %shr2) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmhub_v2_3_get_invalidate_req(i32 noundef %vmid, i32 noundef %flush_type) #2 align 64 {
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
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_gmc_pd_addr(ptr noundef) local_unnamed_addr #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @mmhub_v2_3_funcs, !1, !"mmhub_v2_3_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 617, i32 33}
!2 = !{ptr @mmhub_v2_3_vmhub_funcs, !3, !"mmhub_v2_3_vmhub_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 439, i32 40}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 90, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 102, i32 2}
!14 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 104, i32 2}
!19 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 107, i32 2}
!23 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 110, i32 2}
!27 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 113, i32 2}
!31 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 116, i32 2}
!35 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mmhub_v2_3_print_l2_protection_fault_status._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 35, i32 11}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 36, i32 11}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 37, i32 11}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 38, i32 11}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 49, i32 11}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 50, i32 11}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 39, i32 12}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 40, i32 12}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 41, i32 12}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 42, i32 12}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 43, i32 12}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 44, i32 12}
!61 = !{ptr @mmhub_client_ids_vangogh, !62, !"mmhub_client_ids_vangogh", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/mmhub_v2_3.c", i32 34, i32 20}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i8 0, i8 2}
