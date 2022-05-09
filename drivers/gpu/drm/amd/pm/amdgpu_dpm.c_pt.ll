; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/amdgpu_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_PPLIB_POWERPLAYTABLE3 = type { %struct._ATOM_PPLIB_POWERPLAYTABLE2, i16, i16, i16 }
%struct._ATOM_PPLIB_POWERPLAYTABLE2 = type { %struct._ATOM_PPLIB_POWERPLAYTABLE, i8, i16 }
%struct._ATOM_PPLIB_FANTABLE = type { i8, i8, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_PPLIB_FANTABLE2 = type { %struct._ATOM_PPLIB_FANTABLE, i16 }
%struct._ATOM_PPLIB_FANTABLE3 = type <{ %struct._ATOM_PPLIB_FANTABLE2, i8, i16, i16 }>
%struct._ATOM_PPLIB_POWERPLAYTABLE4 = type <{ %struct._ATOM_PPLIB_POWERPLAYTABLE3, i32, i32, i16, i16, i16, i16, i16, i16 }>
%struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table = type { i8, [1 x %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record] }
%struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record = type <{ i16, i8, i16 }>
%struct.amdgpu_clock_voltage_dependency_entry = type { i32, i16 }
%struct._ATOM_PPLIB_Clock_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_Clock_Voltage_Limit_Record = type <{ i16, i8, i16, i8, i16, i16 }>
%struct._ATOM_PPLIB_PhaseSheddingLimits_Table = type { i8, [1 x %struct._ATOM_PPLIB_PhaseSheddingLimits_Record] }
%struct._ATOM_PPLIB_PhaseSheddingLimits_Record = type <{ i16, i16, i8, i16, i8 }>
%struct.amdgpu_phase_shedding_limits_entry = type { i16, i32, i32 }
%struct._ATOM_PPLIB_POWERPLAYTABLE5 = type <{ %struct._ATOM_PPLIB_POWERPLAYTABLE4, i32, i32, i32, i16, i32, i16, i16 }>
%struct._ATOM_PPLIB_CAC_Leakage_Table = type <{ i8, [1 x %union._ATOM_PPLIB_CAC_Leakage_Record] }>
%union._ATOM_PPLIB_CAC_Leakage_Record = type { %struct.anon.114 }
%struct.anon.114 = type { i16, i16, i16 }
%union.amdgpu_cac_leakage_entry = type { %struct.anon.103 }
%struct.anon.103 = type { i16, i32 }
%struct.anon.104 = type { i16, i16, i16 }
%struct.anon.113 = type <{ i16, i32 }>
%struct._ATOM_PPLIB_EXTENDEDHEADER = type <{ i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }>
%struct._ATOM_PPLIB_VCE_State_Table = type { i8, [1 x %struct._ATOM_PPLIB_VCE_State_Record] }
%struct._ATOM_PPLIB_VCE_State_Record = type { i8, i8 }
%struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Record = type <{ i16, i8 }>
%struct._VCEClockInfo = type <{ i16, i8, i16, i8 }>
%struct.amdgpu_vce_clock_voltage_dependency_entry = type { i32, i32, i16 }
%struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Record = type <{ i16, i8 }>
%struct._UVDClockInfo = type <{ i16, i8, i16, i8 }>
%struct.amdgpu_uvd_clock_voltage_dependency_entry = type { i32, i32, i16 }
%struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record = type <{ i16, i16, i8 }>
%struct._ATOM_PPLIB_PPM_Table = type { i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_ppm_table = type { i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record = type <{ i16, i16, i8 }>
%struct._ATOM_PPLIB_POWERTUNE_Table_V1 = type <{ i8, %struct._ATOM_PowerTune_Table, i16, i16, [6 x i16] }>
%struct._ATOM_PowerTune_Table = type { i16, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_PPLIB_POWERTUNE_Table = type <{ i8, %struct._ATOM_PowerTune_Table }>
%struct.amdgpu_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.amd_pm_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"balanced\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"performance\00", [20 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09ui class: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_dpm_print_class_info\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr = internal global ptr @amdgpu_dpm_print_class_info._entry, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09internal class:\00", [47 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.9 = internal global ptr @amdgpu_dpm_print_class_info._entry.7, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c none\00", [24 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.12 = internal global ptr @amdgpu_dpm_print_class_info._entry.10, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c boot\00", [24 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.15 = internal global ptr @amdgpu_dpm_print_class_info._entry.13, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c thermal\00", [21 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.18 = internal global ptr @amdgpu_dpm_print_class_info._entry.16, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c limited_pwr\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.21 = internal global ptr @amdgpu_dpm_print_class_info._entry.19, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c rest\00", [24 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.24 = internal global ptr @amdgpu_dpm_print_class_info._entry.22, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c forced\00", [22 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.27 = internal global ptr @amdgpu_dpm_print_class_info._entry.25, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c 3d_perf\00", [21 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.30 = internal global ptr @amdgpu_dpm_print_class_info._entry.28, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.6, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c ovrdrv\00", [22 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.33 = internal global ptr @amdgpu_dpm_print_class_info._entry.31, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c uvd\00", [25 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.36 = internal global ptr @amdgpu_dpm_print_class_info._entry.34, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.5, ptr @.str.6, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c 3d_low\00", [22 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.39 = internal global ptr @amdgpu_dpm_print_class_info._entry.37, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.5, ptr @.str.6, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c acpi\00", [24 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.42 = internal global ptr @amdgpu_dpm_print_class_info._entry.40, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.5, ptr @.str.6, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c uvd_hd2\00", [21 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.45 = internal global ptr @amdgpu_dpm_print_class_info._entry.43, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.5, ptr @.str.6, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c uvd_hd\00", [22 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.48 = internal global ptr @amdgpu_dpm_print_class_info._entry.46, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.5, ptr @.str.6, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c uvd_sd\00", [22 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.51 = internal global ptr @amdgpu_dpm_print_class_info._entry.49, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.5, ptr @.str.6, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c limited_pwr2\00", [16 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.54 = internal global ptr @amdgpu_dpm_print_class_info._entry.52, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.5, ptr @.str.6, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c ulv\00", [25 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.57 = internal global ptr @amdgpu_dpm_print_class_info._entry.55, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.5, ptr @.str.6, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c uvd_mvc\00", [21 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.60 = internal global ptr @amdgpu_dpm_print_class_info._entry.58, section ".printk_index", align 4
@amdgpu_dpm_print_class_info._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.5, ptr @.str.6, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_class_info._entry_ptr.63 = internal global ptr @amdgpu_dpm_print_class_info._entry.61, section ".printk_index", align 4
@amdgpu_dpm_print_cap_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09caps:\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amdgpu_dpm_print_cap_info\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_cap_info._entry_ptr = internal global ptr @amdgpu_dpm_print_cap_info._entry, section ".printk_index", align 4
@amdgpu_dpm_print_cap_info._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.6, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c single_disp\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_cap_info._entry_ptr.68 = internal global ptr @amdgpu_dpm_print_cap_info._entry.66, section ".printk_index", align 4
@amdgpu_dpm_print_cap_info._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.6, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c video\00", [23 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_cap_info._entry_ptr.71 = internal global ptr @amdgpu_dpm_print_cap_info._entry.69, section ".printk_index", align 4
@amdgpu_dpm_print_cap_info._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.6, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c no_dc\00", [23 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_cap_info._entry_ptr.74 = internal global ptr @amdgpu_dpm_print_cap_info._entry.72, section ".printk_index", align 4
@amdgpu_dpm_print_cap_info._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.65, ptr @.str.6, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_cap_info._entry_ptr.76 = internal global ptr @amdgpu_dpm_print_cap_info._entry.75, section ".printk_index", align 4
@amdgpu_dpm_print_ps_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09status:\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu_dpm_print_ps_status\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_ps_status._entry_ptr = internal global ptr @amdgpu_dpm_print_ps_status._entry, section ".printk_index", align 4
@amdgpu_dpm_print_ps_status._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.6, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c c\00", [27 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_ps_status._entry_ptr.81 = internal global ptr @amdgpu_dpm_print_ps_status._entry.79, section ".printk_index", align 4
@amdgpu_dpm_print_ps_status._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.6, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c r\00", [27 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_ps_status._entry_ptr.84 = internal global ptr @amdgpu_dpm_print_ps_status._entry.82, section ".printk_index", align 4
@amdgpu_dpm_print_ps_status._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.6, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c b\00", [27 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_ps_status._entry_ptr.87 = internal global ptr @amdgpu_dpm_print_ps_status._entry.85, section ".printk_index", align 4
@amdgpu_dpm_print_ps_status._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.78, ptr @.str.6, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_dpm_print_ps_status._entry_ptr.89 = internal global ptr @amdgpu_dpm_print_ps_status._entry.88, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016[drm] Internal thermal controller %s fan control\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"amdgpu_add_thermal_controller\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr = internal global ptr @amdgpu_add_thermal_controller._entry, section ".printk_index", align 4
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.95 = internal global ptr @amdgpu_add_thermal_controller._entry.94, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.97 = internal global ptr @amdgpu_add_thermal_controller._entry.96, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.99 = internal global ptr @amdgpu_add_thermal_controller._entry.98, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.101 = internal global ptr @amdgpu_add_thermal_controller._entry.100, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.103 = internal global ptr @amdgpu_add_thermal_controller._entry.102, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.105 = internal global ptr @amdgpu_add_thermal_controller._entry.104, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.107 = internal global ptr @amdgpu_add_thermal_controller._entry.106, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.91, ptr @.str.6, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016[drm] External GPIO thermal controller %s fan control\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.110 = internal global ptr @amdgpu_add_thermal_controller._entry.108, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.91, ptr @.str.6, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016[drm] ADT7473 with internal thermal controller %s fan control\0A\00", [63 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.113 = internal global ptr @amdgpu_add_thermal_controller._entry.111, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.91, ptr @.str.6, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016[drm] EMC2103 with internal thermal controller %s fan control\0A\00", [63 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.116 = internal global ptr @amdgpu_add_thermal_controller._entry.114, section ".printk_index", align 4
@amdgpu_add_thermal_controller._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.91, ptr @.str.6, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016[drm] Possible %s thermal controller at 0x%02x %s fan control\0A\00", [63 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.119 = internal global ptr @amdgpu_add_thermal_controller._entry.117, section ".printk_index", align 4
@pp_lib_thermal_controller_names = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.135, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], [48 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.91, ptr @.str.6, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016[drm] Unknown thermal controller type %d at 0x%02x %s fan control\0A\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_add_thermal_controller._entry_ptr.122 = internal global ptr @amdgpu_add_thermal_controller._entry.120, section ".printk_index", align 4
@amdgpu_dpm_set_powergating_by_smu.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.123, ptr @.str.124, ptr @.str.6, ptr @.str.125, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"amdgpu_dpm_set_powergating_by_smu\00", [62 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: IP block%d already in the target %s state!\00", [45 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gate\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ungate\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dpm %s uvd failed, ret = %d. \0A\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dpm %s vce failed, ret = %d. \0A\00", [33 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dpm %s jpeg failed, ret = %d. \0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_pm_load_smu_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.6, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013amdgpu: smu firmware loading failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_pm_load_smu_firmware\00", [36 x i8] zeroinitializer }, align 32
@amdgpu_pm_load_smu_firmware._entry_ptr = internal global ptr @amdgpu_pm_load_smu_firmware._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm63\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1032\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1030\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6649\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm64\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f75375\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RV6xx\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RV770\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7473\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"External GPIO\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Evergreen\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emc2103\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sumo\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Northern Islands\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Southern Islands\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm96163\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sea Islands\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Kaveri/Kabini\00", [18 x i8] zeroinitializer }, align 32
@amdgpu_dpm = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_dpm_change_power_state_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.6, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"switching from power state:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"amdgpu_dpm_change_power_state_locked\00", [59 x i8] zeroinitializer }, align 32
@amdgpu_dpm_change_power_state_locked._entry_ptr = internal global ptr @amdgpu_dpm_change_power_state_locked._entry, section ".printk_index", align 4
@amdgpu_dpm_change_power_state_locked._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.6, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"switching to power state:\0A\00", [37 x i8] zeroinitializer }, align 32
@amdgpu_dpm_change_power_state_locked._entry_ptr.158 = internal global ptr @amdgpu_dpm_change_power_state_locked._entry.156, section ".printk_index", align 4
@switch.table.amdgpu_dpm_print_class_info = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str, ptr @.str.2, ptr @.str, ptr @.str.3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 8, i64 7, i64 8, i64 11, i64 12, i64 14, i64 15, i64 16, i64 18, i64 19, i64 137, i64 141]
@__sancov_gen_cov_switch_values.159 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13]
@__sancov_gen_cov_switch_values.160 = internal global [14 x i64] [i64 12, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.161 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 14]
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 44, i32 7 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 47, i32 7 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 50, i32 7 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 53, i32 7 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 56, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 57, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 60, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 63, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 65, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 67, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 69, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 71, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 73, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 75, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 77, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 79, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 81, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 83, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 85, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 87, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 89, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 91, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 93, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 95, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 100, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 102, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 104, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 106, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 107, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 113, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 115, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 117, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 119, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 120, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 794, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 799, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 804, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 809, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 814, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 819, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 824, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 829, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 834, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 840, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 846, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 851, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant [32 x i8] c"pp_lib_thermal_controller_names\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 743, i32 20 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 867, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 933, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1537, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1573, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1596, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1607, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 744, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 745, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 746, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 747, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 748, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 749, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 750, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 751, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 752, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 753, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 755, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 756, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 757, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 758, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 759, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 760, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 761, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 762, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 763, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1433, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.538 = private constant [49 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1435, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant [41 x i8] c"switch.table.amdgpu_dpm_print_class_info\00", align 1
@llvm.compiler.used = appending global [173 x ptr] [ptr @amdgpu_add_thermal_controller._entry, ptr @amdgpu_add_thermal_controller._entry.100, ptr @amdgpu_add_thermal_controller._entry.102, ptr @amdgpu_add_thermal_controller._entry.104, ptr @amdgpu_add_thermal_controller._entry.106, ptr @amdgpu_add_thermal_controller._entry.108, ptr @amdgpu_add_thermal_controller._entry.111, ptr @amdgpu_add_thermal_controller._entry.114, ptr @amdgpu_add_thermal_controller._entry.117, ptr @amdgpu_add_thermal_controller._entry.120, ptr @amdgpu_add_thermal_controller._entry.94, ptr @amdgpu_add_thermal_controller._entry.96, ptr @amdgpu_add_thermal_controller._entry.98, ptr @amdgpu_add_thermal_controller._entry_ptr, ptr @amdgpu_add_thermal_controller._entry_ptr.101, ptr @amdgpu_add_thermal_controller._entry_ptr.103, ptr @amdgpu_add_thermal_controller._entry_ptr.105, ptr @amdgpu_add_thermal_controller._entry_ptr.107, ptr @amdgpu_add_thermal_controller._entry_ptr.110, ptr @amdgpu_add_thermal_controller._entry_ptr.113, ptr @amdgpu_add_thermal_controller._entry_ptr.116, ptr @amdgpu_add_thermal_controller._entry_ptr.119, ptr @amdgpu_add_thermal_controller._entry_ptr.122, ptr @amdgpu_add_thermal_controller._entry_ptr.95, ptr @amdgpu_add_thermal_controller._entry_ptr.97, ptr @amdgpu_add_thermal_controller._entry_ptr.99, ptr @amdgpu_dpm_change_power_state_locked._entry, ptr @amdgpu_dpm_change_power_state_locked._entry.156, ptr @amdgpu_dpm_change_power_state_locked._entry_ptr, ptr @amdgpu_dpm_change_power_state_locked._entry_ptr.158, ptr @amdgpu_dpm_print_cap_info._entry, ptr @amdgpu_dpm_print_cap_info._entry.66, ptr @amdgpu_dpm_print_cap_info._entry.69, ptr @amdgpu_dpm_print_cap_info._entry.72, ptr @amdgpu_dpm_print_cap_info._entry.75, ptr @amdgpu_dpm_print_cap_info._entry_ptr, ptr @amdgpu_dpm_print_cap_info._entry_ptr.68, ptr @amdgpu_dpm_print_cap_info._entry_ptr.71, ptr @amdgpu_dpm_print_cap_info._entry_ptr.74, ptr @amdgpu_dpm_print_cap_info._entry_ptr.76, ptr @amdgpu_dpm_print_class_info._entry, ptr @amdgpu_dpm_print_class_info._entry.10, ptr @amdgpu_dpm_print_class_info._entry.13, ptr @amdgpu_dpm_print_class_info._entry.16, ptr @amdgpu_dpm_print_class_info._entry.19, ptr @amdgpu_dpm_print_class_info._entry.22, ptr @amdgpu_dpm_print_class_info._entry.25, ptr @amdgpu_dpm_print_class_info._entry.28, ptr @amdgpu_dpm_print_class_info._entry.31, ptr @amdgpu_dpm_print_class_info._entry.34, ptr @amdgpu_dpm_print_class_info._entry.37, ptr @amdgpu_dpm_print_class_info._entry.40, ptr @amdgpu_dpm_print_class_info._entry.43, ptr @amdgpu_dpm_print_class_info._entry.46, ptr @amdgpu_dpm_print_class_info._entry.49, ptr @amdgpu_dpm_print_class_info._entry.52, ptr @amdgpu_dpm_print_class_info._entry.55, ptr @amdgpu_dpm_print_class_info._entry.58, ptr @amdgpu_dpm_print_class_info._entry.61, ptr @amdgpu_dpm_print_class_info._entry.7, ptr @amdgpu_dpm_print_class_info._entry_ptr, ptr @amdgpu_dpm_print_class_info._entry_ptr.12, ptr @amdgpu_dpm_print_class_info._entry_ptr.15, ptr @amdgpu_dpm_print_class_info._entry_ptr.18, ptr @amdgpu_dpm_print_class_info._entry_ptr.21, ptr @amdgpu_dpm_print_class_info._entry_ptr.24, ptr @amdgpu_dpm_print_class_info._entry_ptr.27, ptr @amdgpu_dpm_print_class_info._entry_ptr.30, ptr @amdgpu_dpm_print_class_info._entry_ptr.33, ptr @amdgpu_dpm_print_class_info._entry_ptr.36, ptr @amdgpu_dpm_print_class_info._entry_ptr.39, ptr @amdgpu_dpm_print_class_info._entry_ptr.42, ptr @amdgpu_dpm_print_class_info._entry_ptr.45, ptr @amdgpu_dpm_print_class_info._entry_ptr.48, ptr @amdgpu_dpm_print_class_info._entry_ptr.51, ptr @amdgpu_dpm_print_class_info._entry_ptr.54, ptr @amdgpu_dpm_print_class_info._entry_ptr.57, ptr @amdgpu_dpm_print_class_info._entry_ptr.60, ptr @amdgpu_dpm_print_class_info._entry_ptr.63, ptr @amdgpu_dpm_print_class_info._entry_ptr.9, ptr @amdgpu_dpm_print_ps_status._entry, ptr @amdgpu_dpm_print_ps_status._entry.79, ptr @amdgpu_dpm_print_ps_status._entry.82, ptr @amdgpu_dpm_print_ps_status._entry.85, ptr @amdgpu_dpm_print_ps_status._entry.88, ptr @amdgpu_dpm_print_ps_status._entry_ptr, ptr @amdgpu_dpm_print_ps_status._entry_ptr.81, ptr @amdgpu_dpm_print_ps_status._entry_ptr.84, ptr @amdgpu_dpm_print_ps_status._entry_ptr.87, ptr @amdgpu_dpm_print_ps_status._entry_ptr.89, ptr @amdgpu_pm_load_smu_firmware._entry, ptr @amdgpu_pm_load_smu_firmware._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @pp_lib_thermal_controller_names, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @switch.table.amdgpu_dpm_print_class_info], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_class_info._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_cap_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_cap_info._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_cap_info._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_cap_info._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_cap_info._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_ps_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_ps_status._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_ps_status._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_ps_status._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_print_ps_status._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_lib_thermal_controller_names to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_add_thermal_controller._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_pm_load_smu_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_change_power_state_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_dpm_change_power_state_locked._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amdgpu_dpm_print_class_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dpm_print_class_info(i32 noundef %class, i32 noundef %class2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %class, 7
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.amdgpu_dpm_print_class_info, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end

do.end:                                           ; preds = %switch.lookup, %entry.do.end_crit_edge
  %s.0 = phi ptr [ @.str, %entry.do.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %s.0) #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %class)
  %cmp = icmp ult i32 %class, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %class2)
  %cmp10 = icmp eq i32 %class2, 0
  %or.cond = and i1 %cmp, %cmp10
  br i1 %or.cond, label %do.end.do.end161.sink.split_crit_edge, label %if.else

do.end.do.end161.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end161.sink.split

if.else:                                          ; preds = %do.end
  %and16 = and i32 %class, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %if.else.if.end_crit_edge, label %do.end20

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  br label %if.end

if.end:                                           ; preds = %do.end20, %if.else.if.end_crit_edge
  %and23 = and i32 %class, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end.if.end31_crit_edge, label %do.end28

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.end.if.end31_crit_edge
  %and32 = and i32 %class, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end40_crit_edge, label %do.end37

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end31.if.end40_crit_edge
  %and41 = and i32 %class, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end49_crit_edge, label %do.end46

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #15
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.end40.if.end49_crit_edge
  %and50 = and i32 %class, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end58_crit_edge, label %do.end55

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.end49.if.end58_crit_edge
  %and59 = and i32 %class, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end67_crit_edge, label %do.end64

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.end58.if.end67_crit_edge
  %and68 = and i32 %class, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end76_crit_edge, label %do.end73

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #15
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %if.end67.if.end76_crit_edge
  %and77 = and i32 %class, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end85_crit_edge, label %do.end82

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  br label %if.end85

if.end85:                                         ; preds = %do.end82, %if.end76.if.end85_crit_edge
  %and86 = and i32 %class, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end94_crit_edge, label %do.end91

if.end85.if.end94_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #15
  br label %if.end94

if.end94:                                         ; preds = %do.end91, %if.end85.if.end94_crit_edge
  %and95 = and i32 %class, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end103_crit_edge, label %do.end100

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

do.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #15
  br label %if.end103

if.end103:                                        ; preds = %do.end100, %if.end94.if.end103_crit_edge
  %and104 = and i32 %class, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end112_crit_edge, label %do.end109

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.end103.if.end112_crit_edge
  %and113 = and i32 %class, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end121_crit_edge, label %do.end118

if.end112.if.end121_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

do.end118:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %if.end121

if.end121:                                        ; preds = %do.end118, %if.end112.if.end121_crit_edge
  %and122 = and i32 %class, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.if.end130_crit_edge, label %do.end127

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

do.end127:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %if.end130

if.end130:                                        ; preds = %do.end127, %if.end121.if.end130_crit_edge
  %and131 = and i32 %class2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end139_crit_edge, label %do.end136

if.end130.if.end139_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

do.end136:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #15
  br label %if.end139

if.end139:                                        ; preds = %do.end136, %if.end130.if.end139_crit_edge
  %and140 = and i32 %class2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end139.if.end148_crit_edge, label %do.end145

if.end139.if.end148_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

do.end145:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #15
  br label %if.end148

if.end148:                                        ; preds = %do.end145, %if.end139.if.end148_crit_edge
  %and149 = and i32 %class2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.do.end161_crit_edge, label %if.end148.do.end161.sink.split_crit_edge

if.end148.do.end161.sink.split_crit_edge:         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end161.sink.split

if.end148.do.end161_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end161

do.end161.sink.split:                             ; preds = %if.end148.do.end161.sink.split_crit_edge, %do.end.do.end161.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.11, %do.end.do.end161.sink.split_crit_edge ], [ @.str.59, %if.end148.do.end161.sink.split_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.11.sink) #15
  br label %do.end161

do.end161:                                        ; preds = %do.end161.sink.split, %if.end148.do.end161_crit_edge
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dpm_print_cap_info(i32 noundef %caps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #15
  %and = and i32 %caps, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #15
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry.if.end_crit_edge
  %and5 = and i32 %caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #15
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge
  %and13 = and i32 %caps, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.do.end22_crit_edge, label %do.end17

if.end12.do.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #15
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %if.end12.do.end22_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dpm_print_ps_status(ptr nocapture noundef readonly %adev, ptr noundef readnone %rps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #15
  %current_ps = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %cmp = icmp eq ptr %1, %rps
  br i1 %cmp, label %do.end2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #15
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry.if.end_crit_edge
  %requested_ps = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 3
  %2 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %requested_ps, align 4
  %cmp7 = icmp eq ptr %3, %rps
  br i1 %cmp7, label %do.end10, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #15
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.end.if.end13_crit_edge
  %boot_ps = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 4
  %4 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %boot_ps, align 4
  %cmp16 = icmp eq ptr %5, %rps
  br i1 %cmp16, label %do.end19, label %if.end13.do.end24_crit_edge

if.end13.do.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #15
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %if.end13.do.end24_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dpm_get_active_displays(ptr noundef %adev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %new_active_crtcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 17
  %0 = ptrtoint ptr %new_active_crtcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %new_active_crtcs, align 4
  %new_active_crtc_count = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 18
  %1 = ptrtoint ptr %new_active_crtc_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %new_active_crtc_count, align 4
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %land.lhs.true

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 2
  %4 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode_config_initialized, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end23_crit_edge, label %if.then

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %land.lhs.true
  %crtc_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %6 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn34 = load ptr, ptr %crtc_list, align 4
  %cmp.not35 = icmp eq ptr %.pn34, %crtc_list
  br i1 %cmp.not35, label %if.then.if.end23_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn34, %if.then.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn36, i32 988
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %crtc_id = getelementptr i8, ptr %.pn36, i32 984
  %9 = ptrtoint ptr %crtc_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crtc_id, align 8
  %shl = shl nuw i32 1, %10
  %11 = ptrtoint ptr %new_active_crtcs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_active_crtcs, align 4
  %or = or i32 %12, %shl
  store i32 %or, ptr %new_active_crtcs, align 4
  %13 = ptrtoint ptr %new_active_crtc_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %new_active_crtc_count, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %new_active_crtc_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.if.end23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %for.inc.if.end23_crit_edge, %if.then.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_get_vblank_time(ptr noundef readonly %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.lhs.true

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 2
  %2 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode_config_initialized, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end30_crit_edge, label %if.then

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.lhs.true
  %crtc_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %4 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn44 = load ptr, ptr %crtc_list, align 4
  %cmp.not45 = icmp eq ptr %.pn44, %crtc_list
  br i1 %cmp.not45, label %if.then.if.end30_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn46 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn44, %if.then.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn46, i32 160
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %land.lhs.true9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true9:                                   ; preds = %for.body
  %enabled10 = getelementptr i8, ptr %.pn46, i32 988
  %7 = ptrtoint ptr %enabled10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled10, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %land.lhs.true9.for.inc_crit_edge, label %land.lhs.true12

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %hw_mode = getelementptr i8, ptr %.pn46, i32 1368
  %9 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %land.lhs.true12.for.inc_crit_edge, label %if.then14

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  %crtc_htotal = getelementptr i8, ptr %.pn46, i32 1410
  %11 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_htotal, align 2
  %conv = zext i16 %12 to i32
  %crtc_vblank_end = getelementptr i8, ptr %.pn46, i32 1418
  %13 = ptrtoint ptr %crtc_vblank_end to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_vblank_end, align 2
  %conv17 = zext i16 %14 to i32
  %crtc_vdisplay = getelementptr i8, ptr %.pn46, i32 1414
  %15 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_vdisplay, align 2
  %conv19 = zext i16 %16 to i32
  %sub = sub nsw i32 %conv17, %conv19
  %v_border = getelementptr i8, ptr %.pn46, i32 1045
  %17 = ptrtoint ptr %v_border to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %v_border, align 1
  %conv20 = zext i8 %18 to i32
  %mul = shl nuw nsw i32 %conv20, 1
  %add = add nsw i32 %sub, %mul
  %mul21 = mul nuw nsw i32 %conv, 1000
  %mul22 = mul i32 %mul21, %add
  %div = udiv i32 %mul22, %10
  br label %if.end30

for.inc:                                          ; preds = %land.lhs.true12.for.inc_crit_edge, %land.lhs.true9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn46, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.if.end30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end30:                                         ; preds = %for.inc.if.end30_crit_edge, %if.then14, %if.then.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %entry.if.end30_crit_edge
  %vblank_time_us.0 = phi i32 [ %div, %if.then14 ], [ -1, %land.lhs.true.if.end30_crit_edge ], [ -1, %entry.if.end30_crit_edge ], [ -1, %if.then.if.end30_crit_edge ], [ -1, %for.inc.if.end30_crit_edge ]
  ret i32 %vblank_time_us.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_get_vrefresh(ptr noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %0 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %mode_config_initialized = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 2
  %2 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode_config_initialized, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end22_crit_edge, label %if.then

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %crtc_list = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %4 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn31 = load ptr, ptr %crtc_list, align 4
  %cmp.not32 = icmp eq ptr %.pn31, %crtc_list
  br i1 %cmp.not32, label %if.then.if.end22_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn31, %if.then.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn33, i32 160
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %land.lhs.true9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true9:                                   ; preds = %for.body
  %enabled10 = getelementptr i8, ptr %.pn33, i32 988
  %7 = ptrtoint ptr %enabled10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled10, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %land.lhs.true9.for.inc_crit_edge, label %land.lhs.true12

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %hw_mode = getelementptr i8, ptr %.pn33, i32 1368
  %9 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %land.lhs.true12.for.inc_crit_edge, label %if.then14

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  %hw_mode.le = getelementptr i8, ptr %.pn33, i32 1368
  %call16 = tail call i32 @drm_mode_vrefresh(ptr noundef %hw_mode.le) #12
  br label %if.end22

for.inc:                                          ; preds = %land.lhs.true12.for.inc_crit_edge, %land.lhs.true9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %if.then14, %if.then.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %vrefresh.0 = phi i32 [ %call16, %if.then14 ], [ 0, %land.lhs.true.if.end22_crit_edge ], [ 0, %entry.if.end22_crit_edge ], [ 0, %if.then.if.end22_crit_edge ], [ 0, %for.inc.if.end22_crit_edge ]
  ret i32 %vrefresh.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_is_internal_thermal_sensor(i32 noundef %sensor) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %sensor, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 10
  %switch.cast = trunc i32 %switch.tableidx to i10
  %switch.downshift = lshr i10 -133, %switch.cast
  %1 = and i10 %switch.downshift, 1
  %2 = sext i10 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i10 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_get_platform_caps(ptr nocapture noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #12
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !257
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #12
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !257
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #12
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !257
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %4, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #12
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %ulPlatformCaps = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 12
  %11 = ptrtoint ptr %ulPlatformCaps to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ulPlatformCaps, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %platform_caps = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 13
  %14 = ptrtoint ptr %platform_caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %platform_caps, align 4
  %usBackbiasTime = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 9
  %15 = ptrtoint ptr %usBackbiasTime to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usBackbiasTime, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv3 = zext i16 %17 to i32
  %backbias_response_time = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 15
  %18 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv3, ptr %backbias_response_time, align 4
  %usVoltageTime = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 10
  %19 = ptrtoint ptr %usVoltageTime to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usVoltageTime, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv6 = zext i16 %21 to i32
  %voltage_response_time = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 14
  %22 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv6, ptr %voltage_response_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_parse_extended_power_table(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #12
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !257
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #12
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !257
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #12
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !257
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %4, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #12
  br i1 %call, label %if.end, label %entry.cleanup1036_crit_edge

entry.cleanup1036_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup1036

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %usTableSize = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 11
  %11 = ptrtoint ptr %usTableSize to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %usTableSize, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %13)
  %cmp = icmp ugt i16 %13, 45
  br i1 %cmp, label %if.then5, label %if.end.if.end69_crit_edge

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then5:                                         ; preds = %if.end
  %usFanTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %add.ptr, i32 0, i32 2
  %14 = ptrtoint ptr %usFanTableOffset to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usFanTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.then5.if.end69_crit_edge, label %if.then6

if.then5.if.end69_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then6:                                         ; preds = %if.then5
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv12 = zext i16 %16 to i32
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %conv12
  %ucTHyst = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 1
  %17 = ptrtoint ptr %ucTHyst to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ucTHyst, align 1
  %fan = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22
  %t_hyst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 6
  %19 = ptrtoint ptr %t_hyst to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %t_hyst, align 4
  %usTMin = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 2
  %20 = ptrtoint ptr %usTMin to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %usTMin, align 1
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %fan to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %fan, align 4
  %usTMed = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 3
  %24 = ptrtoint ptr %usTMed to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usTMed, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %t_med = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 1
  %27 = ptrtoint ptr %t_med to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %t_med, align 2
  %usTHigh = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 4
  %28 = ptrtoint ptr %usTHigh to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usTHigh, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %t_high = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 2
  %31 = ptrtoint ptr %t_high to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %t_high, align 4
  %usPWMMin = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 5
  %32 = ptrtoint ptr %usPWMMin to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %usPWMMin, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %pwm_min = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 3
  %35 = ptrtoint ptr %pwm_min to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %pwm_min, align 2
  %usPWMMed = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 6
  %36 = ptrtoint ptr %usPWMMed to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %usPWMMed, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %pwm_med = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 4
  %39 = ptrtoint ptr %pwm_med to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %pwm_med, align 4
  %usPWMHigh = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 7
  %40 = ptrtoint ptr %usPWMHigh to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %usPWMHigh, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %pwm_high = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 5
  %43 = ptrtoint ptr %pwm_high to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %pwm_high, align 2
  %44 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp33 = icmp ugt i8 %45, 1
  br i1 %cmp33, label %if.then35, label %if.then6.if.end43_crit_edge

if.then6.if.end43_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then35:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %usTMax = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE2, ptr %add.ptr13, i32 0, i32 1
  %46 = ptrtoint ptr %usTMax to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %usTMax, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.then6.if.end43_crit_edge
  %.sink = phi i16 [ %48, %if.then35 ], [ 10900, %if.then6.if.end43_crit_edge ]
  %49 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %.sink, ptr %49, align 4
  %cycle_delay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 7
  %51 = ptrtoint ptr %cycle_delay to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 100000, ptr %cycle_delay, align 4
  %52 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp49 = icmp ugt i8 %53, 2
  br i1 %cmp49, label %if.then51, label %if.end43.if.end64_crit_edge

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %ucFanControlMode = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %add.ptr13, i32 0, i32 1
  %54 = ptrtoint ptr %ucFanControlMode to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucFanControlMode, align 1
  %control_mode = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 9
  %56 = ptrtoint ptr %control_mode to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %control_mode, align 2
  %usFanPWMMax = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %add.ptr13, i32 0, i32 2
  %57 = ptrtoint ptr %usFanPWMMax to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %usFanPWMMax, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %default_max_fan_pwm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 10
  %60 = ptrtoint ptr %default_max_fan_pwm to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %default_max_fan_pwm, align 4
  %default_fan_output_sensitivity = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 11
  %61 = ptrtoint ptr %default_fan_output_sensitivity to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 4836, ptr %default_fan_output_sensitivity, align 2
  %usFanOutputSensitivity = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %add.ptr13, i32 0, i32 3
  %62 = ptrtoint ptr %usFanOutputSensitivity to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %usFanOutputSensitivity, align 1
  %64 = call i16 @llvm.bswap.i16(i16 %63)
  %fan_output_sensitivity = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 12
  %65 = ptrtoint ptr %fan_output_sensitivity to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %fan_output_sensitivity, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then51, %if.end43.if.end64_crit_edge
  %ucode_fan_control = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 22, i32 13
  %66 = ptrtoint ptr %ucode_fan_control to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %ucode_fan_control, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.end64, %if.then5.if.end69_crit_edge, %if.end.if.end69_crit_edge
  %67 = ptrtoint ptr %usTableSize to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %usTableSize, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %69)
  %cmp72 = icmp ugt i16 %69, 65
  br i1 %cmp72, label %if.then74, label %if.end69.if.end258_crit_edge

if.end69.if.end258_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end258

if.then74:                                        ; preds = %if.end69
  %usVddcDependencyOnSCLKOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 3
  %70 = ptrtoint ptr %usVddcDependencyOnSCLKOffset to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %usVddcDependencyOnSCLKOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool75.not = icmp eq i16 %71, 0
  br i1 %tobool75.not, label %if.then74.if.end90_crit_edge, label %if.then76

if.then74.if.end90_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then76:                                        ; preds = %if.then74
  %72 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bios, align 4
  %add.ptr80 = getelementptr i8, ptr %73, i32 %conv
  %74 = call i16 @llvm.bswap.i16(i16 %71)
  %conv82 = zext i16 %74 to i32
  %add.ptr83 = getelementptr i8, ptr %add.ptr80, i32 %conv82
  %dyn_state = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21
  %75 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr83, align 1
  %conv.i = zext i8 %76 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #16
  %entries.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  %77 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call9.i.i.i, ptr %entries.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.then88, label %if.end.i

if.end.i:                                         ; preds = %if.then76
  %78 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp35.not.i = icmp eq i8 %79, 0
  br i1 %cmp35.not.i, label %if.end.i.amdgpu_parse_clk_voltage_dep_table.exit.thread_crit_edge, label %for.body.preheader.i

if.end.i.amdgpu_parse_clk_voltage_dep_table.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_parse_clk_voltage_dep_table.exit.thread

for.body.preheader.i:                             ; preds = %if.end.i
  %entries3.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %add.ptr83, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %entry1.037.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %entries3.i, %for.body.preheader.i ]
  %i.036.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %80 = ptrtoint ptr %entry1.037.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %entry1.037.i, align 1
  %82 = call i16 @llvm.bswap.i16(i16 %81) #12
  %conv7.i = zext i16 %82 to i32
  %ucClockHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037.i, i32 0, i32 1
  %83 = ptrtoint ptr %ucClockHigh.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ucClockHigh.i, align 1
  %conv8.i = zext i8 %84 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 16
  %or.i = or i32 %shl.i, %conv7.i
  %85 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %entries.i, align 4
  %arrayidx10.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %86, i32 %i.036.i
  %87 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or.i, ptr %arrayidx10.i, align 4
  %usVoltage.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037.i, i32 0, i32 2
  %88 = ptrtoint ptr %usVoltage.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %usVoltage.i, align 1
  %90 = call i16 @llvm.bswap.i16(i16 %89) #12
  %91 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %entries.i, align 4
  %v.i = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %92, i32 %i.036.i, i32 1
  %93 = ptrtoint ptr %v.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %90, ptr %v.i, align 4
  %add.ptr.i = getelementptr i8, ptr %entry1.037.i, i32 5
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %94 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %add.ptr83, align 1
  %conv5.i = zext i8 %95 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv5.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %amdgpu_parse_clk_voltage_dep_table.exit.thread.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

amdgpu_parse_clk_voltage_dep_table.exit.thread.loopexit: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i.le = zext i8 %95 to i32
  br label %amdgpu_parse_clk_voltage_dep_table.exit.thread

amdgpu_parse_clk_voltage_dep_table.exit.thread:   ; preds = %amdgpu_parse_clk_voltage_dep_table.exit.thread.loopexit, %if.end.i.amdgpu_parse_clk_voltage_dep_table.exit.thread_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end.i.amdgpu_parse_clk_voltage_dep_table.exit.thread_crit_edge ], [ %conv5.i.le, %amdgpu_parse_clk_voltage_dep_table.exit.thread.loopexit ]
  %96 = ptrtoint ptr %dyn_state to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %.lcssa.i, ptr %dyn_state, align 4
  br label %if.end90

if.then88:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end90:                                         ; preds = %amdgpu_parse_clk_voltage_dep_table.exit.thread, %if.then74.if.end90_crit_edge
  %usVddciDependencyOnMCLKOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 4
  %97 = ptrtoint ptr %usVddciDependencyOnMCLKOffset to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %usVddciDependencyOnMCLKOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool91.not = icmp eq i16 %98, 0
  br i1 %tobool91.not, label %if.end90.if.end107_crit_edge, label %if.then92

if.end90.if.end107_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then92:                                        ; preds = %if.end90
  %99 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mode_info1, align 4
  %bios94 = getelementptr inbounds %struct.atom_context, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %bios94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bios94, align 4
  %103 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %data_offset, align 2
  %conv95 = zext i16 %104 to i32
  %add.ptr96 = getelementptr i8, ptr %102, i32 %conv95
  %105 = call i16 @llvm.bswap.i16(i16 %98)
  %conv98 = zext i16 %105 to i32
  %add.ptr99 = getelementptr i8, ptr %add.ptr96, i32 %conv98
  %vddci_dependency_on_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 1
  %106 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %add.ptr99, align 1
  %conv.i1404 = zext i8 %107 to i32
  %mul.i1405 = shl nuw nsw i32 %conv.i1404, 3
  %call9.i.i.i1423 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i1405, i32 noundef 3520) #16
  %entries.i1426 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 1, i32 1
  %108 = ptrtoint ptr %entries.i1426 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call9.i.i.i1423, ptr %entries.i1426, align 4
  %tobool.not.i1427 = icmp eq ptr %call9.i.i.i1423, null
  br i1 %tobool.not.i1427, label %if.then105, label %if.end.i1431

if.end.i1431:                                     ; preds = %if.then92
  %109 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %add.ptr99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp35.not.i1430 = icmp eq i8 %110, 0
  br i1 %cmp35.not.i1430, label %if.end.i1431.amdgpu_parse_clk_voltage_dep_table.exit1454.thread_crit_edge, label %for.body.preheader.i1433

if.end.i1431.amdgpu_parse_clk_voltage_dep_table.exit1454.thread_crit_edge: ; preds = %if.end.i1431
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_parse_clk_voltage_dep_table.exit1454.thread

for.body.preheader.i1433:                         ; preds = %if.end.i1431
  %entries3.i1432 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %add.ptr99, i32 0, i32 1
  br label %for.body.i1448

for.body.i1448:                                   ; preds = %for.body.i1448.for.body.i1448_crit_edge, %for.body.preheader.i1433
  %entry1.037.i1434 = phi ptr [ %add.ptr.i1444, %for.body.i1448.for.body.i1448_crit_edge ], [ %entries3.i1432, %for.body.preheader.i1433 ]
  %i.036.i1435 = phi i32 [ %inc.i1445, %for.body.i1448.for.body.i1448_crit_edge ], [ 0, %for.body.preheader.i1433 ]
  %111 = ptrtoint ptr %entry1.037.i1434 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %entry1.037.i1434, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112) #12
  %conv7.i1436 = zext i16 %113 to i32
  %ucClockHigh.i1437 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037.i1434, i32 0, i32 1
  %114 = ptrtoint ptr %ucClockHigh.i1437 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ucClockHigh.i1437, align 1
  %conv8.i1438 = zext i8 %115 to i32
  %shl.i1439 = shl nuw nsw i32 %conv8.i1438, 16
  %or.i1440 = or i32 %shl.i1439, %conv7.i1436
  %116 = ptrtoint ptr %entries.i1426 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %entries.i1426, align 4
  %arrayidx10.i1441 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %117, i32 %i.036.i1435
  %118 = ptrtoint ptr %arrayidx10.i1441 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or.i1440, ptr %arrayidx10.i1441, align 4
  %usVoltage.i1442 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037.i1434, i32 0, i32 2
  %119 = ptrtoint ptr %usVoltage.i1442 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %usVoltage.i1442, align 1
  %121 = call i16 @llvm.bswap.i16(i16 %120) #12
  %122 = ptrtoint ptr %entries.i1426 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %entries.i1426, align 4
  %v.i1443 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %123, i32 %i.036.i1435, i32 1
  %124 = ptrtoint ptr %v.i1443 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %121, ptr %v.i1443, align 4
  %add.ptr.i1444 = getelementptr i8, ptr %entry1.037.i1434, i32 5
  %inc.i1445 = add nuw nsw i32 %i.036.i1435, 1
  %125 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %add.ptr99, align 1
  %conv5.i1446 = zext i8 %126 to i32
  %cmp.i1447 = icmp ult i32 %inc.i1445, %conv5.i1446
  br i1 %cmp.i1447, label %for.body.i1448.for.body.i1448_crit_edge, label %amdgpu_parse_clk_voltage_dep_table.exit1454.thread.loopexit

for.body.i1448.for.body.i1448_crit_edge:          ; preds = %for.body.i1448
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i1448

amdgpu_parse_clk_voltage_dep_table.exit1454.thread.loopexit: ; preds = %for.body.i1448
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i1446.le = zext i8 %126 to i32
  br label %amdgpu_parse_clk_voltage_dep_table.exit1454.thread

amdgpu_parse_clk_voltage_dep_table.exit1454.thread: ; preds = %amdgpu_parse_clk_voltage_dep_table.exit1454.thread.loopexit, %if.end.i1431.amdgpu_parse_clk_voltage_dep_table.exit1454.thread_crit_edge
  %.lcssa.i1451 = phi i32 [ 0, %if.end.i1431.amdgpu_parse_clk_voltage_dep_table.exit1454.thread_crit_edge ], [ %conv5.i1446.le, %amdgpu_parse_clk_voltage_dep_table.exit1454.thread.loopexit ]
  %127 = ptrtoint ptr %vddci_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %.lcssa.i1451, ptr %vddci_dependency_on_mclk, align 4
  br label %if.end107

if.then105:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end107:                                        ; preds = %amdgpu_parse_clk_voltage_dep_table.exit1454.thread, %if.end90.if.end107_crit_edge
  %usVddcDependencyOnMCLKOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 5
  %128 = ptrtoint ptr %usVddcDependencyOnMCLKOffset to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %usVddcDependencyOnMCLKOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool108.not = icmp eq i16 %129, 0
  br i1 %tobool108.not, label %if.end107.if.end124_crit_edge, label %if.then109

if.end107.if.end124_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then109:                                       ; preds = %if.end107
  %130 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mode_info1, align 4
  %bios111 = getelementptr inbounds %struct.atom_context, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %bios111 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bios111, align 4
  %134 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %data_offset, align 2
  %conv112 = zext i16 %135 to i32
  %add.ptr113 = getelementptr i8, ptr %133, i32 %conv112
  %136 = call i16 @llvm.bswap.i16(i16 %129)
  %conv115 = zext i16 %136 to i32
  %add.ptr116 = getelementptr i8, ptr %add.ptr113, i32 %conv115
  %vddc_dependency_on_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 2
  %137 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %add.ptr116, align 1
  %conv.i1455 = zext i8 %138 to i32
  %mul.i1456 = shl nuw nsw i32 %conv.i1455, 3
  %call9.i.i.i1474 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i1456, i32 noundef 3520) #16
  %entries.i1477 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 2, i32 1
  %139 = ptrtoint ptr %entries.i1477 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call9.i.i.i1474, ptr %entries.i1477, align 4
  %tobool.not.i1478 = icmp eq ptr %call9.i.i.i1474, null
  br i1 %tobool.not.i1478, label %if.then122, label %if.end.i1482

if.end.i1482:                                     ; preds = %if.then109
  %140 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %add.ptr116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp35.not.i1481 = icmp eq i8 %141, 0
  br i1 %cmp35.not.i1481, label %if.end.i1482.amdgpu_parse_clk_voltage_dep_table.exit1505.thread_crit_edge, label %for.body.preheader.i1484

if.end.i1482.amdgpu_parse_clk_voltage_dep_table.exit1505.thread_crit_edge: ; preds = %if.end.i1482
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_parse_clk_voltage_dep_table.exit1505.thread

for.body.preheader.i1484:                         ; preds = %if.end.i1482
  %entries3.i1483 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %add.ptr116, i32 0, i32 1
  br label %for.body.i1499

for.body.i1499:                                   ; preds = %for.body.i1499.for.body.i1499_crit_edge, %for.body.preheader.i1484
  %entry1.037.i1485 = phi ptr [ %add.ptr.i1495, %for.body.i1499.for.body.i1499_crit_edge ], [ %entries3.i1483, %for.body.preheader.i1484 ]
  %i.036.i1486 = phi i32 [ %inc.i1496, %for.body.i1499.for.body.i1499_crit_edge ], [ 0, %for.body.preheader.i1484 ]
  %142 = ptrtoint ptr %entry1.037.i1485 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %entry1.037.i1485, align 1
  %144 = call i16 @llvm.bswap.i16(i16 %143) #12
  %conv7.i1487 = zext i16 %144 to i32
  %ucClockHigh.i1488 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037.i1485, i32 0, i32 1
  %145 = ptrtoint ptr %ucClockHigh.i1488 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ucClockHigh.i1488, align 1
  %conv8.i1489 = zext i8 %146 to i32
  %shl.i1490 = shl nuw nsw i32 %conv8.i1489, 16
  %or.i1491 = or i32 %shl.i1490, %conv7.i1487
  %147 = ptrtoint ptr %entries.i1477 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %entries.i1477, align 4
  %arrayidx10.i1492 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %148, i32 %i.036.i1486
  %149 = ptrtoint ptr %arrayidx10.i1492 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or.i1491, ptr %arrayidx10.i1492, align 4
  %usVoltage.i1493 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037.i1485, i32 0, i32 2
  %150 = ptrtoint ptr %usVoltage.i1493 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %usVoltage.i1493, align 1
  %152 = call i16 @llvm.bswap.i16(i16 %151) #12
  %153 = ptrtoint ptr %entries.i1477 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %entries.i1477, align 4
  %v.i1494 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %154, i32 %i.036.i1486, i32 1
  %155 = ptrtoint ptr %v.i1494 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %152, ptr %v.i1494, align 4
  %add.ptr.i1495 = getelementptr i8, ptr %entry1.037.i1485, i32 5
  %inc.i1496 = add nuw nsw i32 %i.036.i1486, 1
  %156 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %add.ptr116, align 1
  %conv5.i1497 = zext i8 %157 to i32
  %cmp.i1498 = icmp ult i32 %inc.i1496, %conv5.i1497
  br i1 %cmp.i1498, label %for.body.i1499.for.body.i1499_crit_edge, label %amdgpu_parse_clk_voltage_dep_table.exit1505.thread.loopexit

for.body.i1499.for.body.i1499_crit_edge:          ; preds = %for.body.i1499
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i1499

amdgpu_parse_clk_voltage_dep_table.exit1505.thread.loopexit: ; preds = %for.body.i1499
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i1497.le = zext i8 %157 to i32
  br label %amdgpu_parse_clk_voltage_dep_table.exit1505.thread

amdgpu_parse_clk_voltage_dep_table.exit1505.thread: ; preds = %amdgpu_parse_clk_voltage_dep_table.exit1505.thread.loopexit, %if.end.i1482.amdgpu_parse_clk_voltage_dep_table.exit1505.thread_crit_edge
  %.lcssa.i1502 = phi i32 [ 0, %if.end.i1482.amdgpu_parse_clk_voltage_dep_table.exit1505.thread_crit_edge ], [ %conv5.i1497.le, %amdgpu_parse_clk_voltage_dep_table.exit1505.thread.loopexit ]
  %158 = ptrtoint ptr %vddc_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %.lcssa.i1502, ptr %vddc_dependency_on_mclk, align 4
  br label %if.end124

if.then122:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end124:                                        ; preds = %amdgpu_parse_clk_voltage_dep_table.exit1505.thread, %if.end107.if.end124_crit_edge
  %usMvddDependencyOnMCLKOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 8
  %159 = ptrtoint ptr %usMvddDependencyOnMCLKOffset to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %usMvddDependencyOnMCLKOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool125.not = icmp eq i16 %160, 0
  br i1 %tobool125.not, label %if.end124.if.end141_crit_edge, label %if.then126

if.end124.if.end141_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then126:                                       ; preds = %if.end124
  %161 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mode_info1, align 4
  %bios128 = getelementptr inbounds %struct.atom_context, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %bios128 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bios128, align 4
  %165 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %data_offset, align 2
  %conv129 = zext i16 %166 to i32
  %add.ptr130 = getelementptr i8, ptr %164, i32 %conv129
  %167 = call i16 @llvm.bswap.i16(i16 %160)
  %conv132 = zext i16 %167 to i32
  %add.ptr133 = getelementptr i8, ptr %add.ptr130, i32 %conv132
  %mvdd_dependency_on_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 3
  %168 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %add.ptr133, align 1
  %conv.i1506 = zext i8 %169 to i32
  %mul.i1507 = shl nuw nsw i32 %conv.i1506, 3
  %call9.i.i.i1525 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i1507, i32 noundef 3520) #16
  %entries.i1528 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 3, i32 1
  %170 = ptrtoint ptr %entries.i1528 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call9.i.i.i1525, ptr %entries.i1528, align 4
  %tobool.not.i1529 = icmp eq ptr %call9.i.i.i1525, null
  br i1 %tobool.not.i1529, label %if.then139, label %if.end.i1533

if.end.i1533:                                     ; preds = %if.then126
  %171 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %add.ptr133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %cmp35.not.i1532 = icmp eq i8 %172, 0
  br i1 %cmp35.not.i1532, label %if.end.i1533.amdgpu_parse_clk_voltage_dep_table.exit1556.thread_crit_edge, label %for.body.preheader.i1535

if.end.i1533.amdgpu_parse_clk_voltage_dep_table.exit1556.thread_crit_edge: ; preds = %if.end.i1533
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_parse_clk_voltage_dep_table.exit1556.thread

for.body.preheader.i1535:                         ; preds = %if.end.i1533
  %entries3.i1534 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %add.ptr133, i32 0, i32 1
  br label %for.body.i1550

for.body.i1550:                                   ; preds = %for.body.i1550.for.body.i1550_crit_edge, %for.body.preheader.i1535
  %entry1.037.i1536 = phi ptr [ %add.ptr.i1546, %for.body.i1550.for.body.i1550_crit_edge ], [ %entries3.i1534, %for.body.preheader.i1535 ]
  %i.036.i1537 = phi i32 [ %inc.i1547, %for.body.i1550.for.body.i1550_crit_edge ], [ 0, %for.body.preheader.i1535 ]
  %173 = ptrtoint ptr %entry1.037.i1536 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %entry1.037.i1536, align 1
  %175 = call i16 @llvm.bswap.i16(i16 %174) #12
  %conv7.i1538 = zext i16 %175 to i32
  %ucClockHigh.i1539 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037.i1536, i32 0, i32 1
  %176 = ptrtoint ptr %ucClockHigh.i1539 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %ucClockHigh.i1539, align 1
  %conv8.i1540 = zext i8 %177 to i32
  %shl.i1541 = shl nuw nsw i32 %conv8.i1540, 16
  %or.i1542 = or i32 %shl.i1541, %conv7.i1538
  %178 = ptrtoint ptr %entries.i1528 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %entries.i1528, align 4
  %arrayidx10.i1543 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %179, i32 %i.036.i1537
  %180 = ptrtoint ptr %arrayidx10.i1543 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %or.i1542, ptr %arrayidx10.i1543, align 4
  %usVoltage.i1544 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037.i1536, i32 0, i32 2
  %181 = ptrtoint ptr %usVoltage.i1544 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 2)
  %182 = load i16, ptr %usVoltage.i1544, align 1
  %183 = call i16 @llvm.bswap.i16(i16 %182) #12
  %184 = ptrtoint ptr %entries.i1528 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %entries.i1528, align 4
  %v.i1545 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %185, i32 %i.036.i1537, i32 1
  %186 = ptrtoint ptr %v.i1545 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %183, ptr %v.i1545, align 4
  %add.ptr.i1546 = getelementptr i8, ptr %entry1.037.i1536, i32 5
  %inc.i1547 = add nuw nsw i32 %i.036.i1537, 1
  %187 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %add.ptr133, align 1
  %conv5.i1548 = zext i8 %188 to i32
  %cmp.i1549 = icmp ult i32 %inc.i1547, %conv5.i1548
  br i1 %cmp.i1549, label %for.body.i1550.for.body.i1550_crit_edge, label %amdgpu_parse_clk_voltage_dep_table.exit1556.thread.loopexit

for.body.i1550.for.body.i1550_crit_edge:          ; preds = %for.body.i1550
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i1550

amdgpu_parse_clk_voltage_dep_table.exit1556.thread.loopexit: ; preds = %for.body.i1550
  call void @__sanitizer_cov_trace_pc() #14
  %conv5.i1548.le = zext i8 %188 to i32
  br label %amdgpu_parse_clk_voltage_dep_table.exit1556.thread

amdgpu_parse_clk_voltage_dep_table.exit1556.thread: ; preds = %amdgpu_parse_clk_voltage_dep_table.exit1556.thread.loopexit, %if.end.i1533.amdgpu_parse_clk_voltage_dep_table.exit1556.thread_crit_edge
  %.lcssa.i1553 = phi i32 [ 0, %if.end.i1533.amdgpu_parse_clk_voltage_dep_table.exit1556.thread_crit_edge ], [ %conv5.i1548.le, %amdgpu_parse_clk_voltage_dep_table.exit1556.thread.loopexit ]
  %189 = ptrtoint ptr %mvdd_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %.lcssa.i1553, ptr %mvdd_dependency_on_mclk, align 4
  br label %if.end141

if.then139:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end141:                                        ; preds = %amdgpu_parse_clk_voltage_dep_table.exit1556.thread, %if.end124.if.end141_crit_edge
  %usMaxClockVoltageOnDCOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 6
  %190 = ptrtoint ptr %usMaxClockVoltageOnDCOffset to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %191 = load i16, ptr %usMaxClockVoltageOnDCOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %tobool142.not = icmp eq i16 %191, 0
  br i1 %tobool142.not, label %if.end141.if.end185_crit_edge, label %if.then143

if.end141.if.end185_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185

if.then143:                                       ; preds = %if.end141
  %192 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mode_info1, align 4
  %bios145 = getelementptr inbounds %struct.atom_context, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %bios145 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %bios145, align 4
  %196 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %data_offset, align 2
  %conv146 = zext i16 %197 to i32
  %add.ptr147 = getelementptr i8, ptr %195, i32 %conv146
  %198 = call i16 @llvm.bswap.i16(i16 %191)
  %conv149 = zext i16 %198 to i32
  %add.ptr150 = getelementptr i8, ptr %add.ptr147, i32 %conv149
  %199 = ptrtoint ptr %add.ptr150 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %add.ptr150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool151.not = icmp eq i8 %200, 0
  br i1 %tobool151.not, label %if.then143.if.end185_crit_edge, label %if.then152

if.then143.if.end185_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185

if.then152:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  %entries = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Table, ptr %add.ptr150, i32 0, i32 1
  %201 = ptrtoint ptr %entries to i32
  call void @__asan_loadN_noabort(i32 %201, i32 2)
  %202 = load i16, ptr %entries, align 1
  %203 = call i16 @llvm.bswap.i16(i16 %202)
  %conv153 = zext i16 %203 to i32
  %ucSclkHigh = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries, i32 0, i32 1
  %204 = ptrtoint ptr %ucSclkHigh to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %ucSclkHigh, align 1
  %conv156 = zext i8 %205 to i32
  %shl = shl nuw nsw i32 %conv156, 16
  %or = or i32 %shl, %conv153
  %max_clock_voltage_on_dc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 12
  %206 = ptrtoint ptr %max_clock_voltage_on_dc to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or, ptr %max_clock_voltage_on_dc, align 4
  %usMclkLow = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries, i32 0, i32 2
  %207 = ptrtoint ptr %usMclkLow to i32
  call void @__asan_loadN_noabort(i32 %207, i32 2)
  %208 = load i16, ptr %usMclkLow, align 1
  %209 = call i16 @llvm.bswap.i16(i16 %208)
  %conv162 = zext i16 %209 to i32
  %ucMclkHigh = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries, i32 0, i32 3
  %210 = ptrtoint ptr %ucMclkHigh to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %ucMclkHigh, align 1
  %conv165 = zext i8 %211 to i32
  %shl166 = shl nuw nsw i32 %conv165, 16
  %or167 = or i32 %shl166, %conv162
  %mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 12, i32 1
  %212 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %or167, ptr %mclk, align 4
  %usVddc = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries, i32 0, i32 4
  %213 = ptrtoint ptr %usVddc to i32
  call void @__asan_loadN_noabort(i32 %213, i32 2)
  %214 = load i16, ptr %usVddc, align 1
  %215 = call i16 @llvm.bswap.i16(i16 %214)
  %vddc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 12, i32 2
  %216 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %vddc, align 4
  %usVddci = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries, i32 0, i32 5
  %217 = ptrtoint ptr %usVddci to i32
  call void @__asan_loadN_noabort(i32 %217, i32 2)
  %218 = load i16, ptr %usVddci, align 1
  %219 = call i16 @llvm.bswap.i16(i16 %218)
  %vddci = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 12, i32 3
  %220 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %219, ptr %vddci, align 2
  br label %if.end185

if.end185:                                        ; preds = %if.then152, %if.then143.if.end185_crit_edge, %if.end141.if.end185_crit_edge
  %usVddcPhaseShedLimitsTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 7
  %221 = ptrtoint ptr %usVddcPhaseShedLimitsTableOffset to i32
  call void @__asan_loadN_noabort(i32 %221, i32 2)
  %222 = load i16, ptr %usVddcPhaseShedLimitsTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %222)
  %tobool186.not = icmp eq i16 %222, 0
  br i1 %tobool186.not, label %if.end185.if.end258_crit_edge, label %if.then187

if.end185.if.end258_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end258

if.then187:                                       ; preds = %if.end185
  %223 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mode_info1, align 4
  %bios189 = getelementptr inbounds %struct.atom_context, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %bios189 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %bios189, align 4
  %227 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %data_offset, align 2
  %conv190 = zext i16 %228 to i32
  %add.ptr191 = getelementptr i8, ptr %226, i32 %conv190
  %229 = call i16 @llvm.bswap.i16(i16 %222)
  %conv193 = zext i16 %229 to i32
  %add.ptr194 = getelementptr i8, ptr %add.ptr191, i32 %conv193
  %230 = ptrtoint ptr %add.ptr194 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %add.ptr194, align 1
  %conv197 = zext i8 %231 to i32
  %232 = mul nuw nsw i32 %conv197, 12
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %232, i32 noundef 3520) #16
  %entries202 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 19, i32 1
  %233 = ptrtoint ptr %entries202 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call8.i.i, ptr %entries202, align 4
  %tobool208.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool208.not, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end210:                                        ; preds = %if.then187
  %phase_shedding_limits_table1726 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 19
  %234 = ptrtoint ptr %add.ptr194 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %add.ptr194, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %cmp2151763.not = icmp eq i8 %235, 0
  br i1 %cmp2151763.not, label %if.end210.for.end_crit_edge, label %for.body.preheader

if.end210.for.end_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end210
  %entries211 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Table, ptr %add.ptr194, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.01765 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %entry195.01764 = phi ptr [ %add.ptr249, %for.body.for.body_crit_edge ], [ %entries211, %for.body.preheader ]
  %usSclkLow217 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Record, ptr %entry195.01764, i32 0, i32 1
  %236 = ptrtoint ptr %usSclkLow217 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 2)
  %237 = load i16, ptr %usSclkLow217, align 1
  %238 = call i16 @llvm.bswap.i16(i16 %237)
  %conv218 = zext i16 %238 to i32
  %ucSclkHigh219 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Record, ptr %entry195.01764, i32 0, i32 2
  %239 = ptrtoint ptr %ucSclkHigh219 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %ucSclkHigh219, align 1
  %conv220 = zext i8 %240 to i32
  %shl221 = shl nuw nsw i32 %conv220, 16
  %or222 = or i32 %shl221, %conv218
  %241 = ptrtoint ptr %entries202 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %entries202, align 4
  %sclk229 = getelementptr %struct.amdgpu_phase_shedding_limits_entry, ptr %242, i32 %i.01765, i32 1
  %243 = ptrtoint ptr %sclk229 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %or222, ptr %sclk229, align 4
  %usMclkLow230 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Record, ptr %entry195.01764, i32 0, i32 3
  %244 = ptrtoint ptr %usMclkLow230 to i32
  call void @__asan_loadN_noabort(i32 %244, i32 2)
  %245 = load i16, ptr %usMclkLow230, align 1
  %246 = call i16 @llvm.bswap.i16(i16 %245)
  %conv231 = zext i16 %246 to i32
  %ucMclkHigh232 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Record, ptr %entry195.01764, i32 0, i32 4
  %247 = ptrtoint ptr %ucMclkHigh232 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %ucMclkHigh232, align 1
  %conv233 = zext i8 %248 to i32
  %shl234 = shl nuw nsw i32 %conv233, 16
  %or235 = or i32 %shl234, %conv231
  %249 = ptrtoint ptr %entries202 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %entries202, align 4
  %mclk242 = getelementptr %struct.amdgpu_phase_shedding_limits_entry, ptr %250, i32 %i.01765, i32 2
  %251 = ptrtoint ptr %mclk242 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %or235, ptr %mclk242, align 4
  %252 = ptrtoint ptr %entry195.01764 to i32
  call void @__asan_loadN_noabort(i32 %252, i32 2)
  %253 = load i16, ptr %entry195.01764, align 1
  %254 = call i16 @llvm.bswap.i16(i16 %253)
  %255 = ptrtoint ptr %entries202 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %entries202, align 4
  %arrayidx248 = getelementptr %struct.amdgpu_phase_shedding_limits_entry, ptr %256, i32 %i.01765
  %257 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %254, ptr %arrayidx248, align 4
  %add.ptr249 = getelementptr i8, ptr %entry195.01764, i32 8
  %inc = add nuw nsw i32 %i.01765, 1
  %258 = ptrtoint ptr %add.ptr194 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %add.ptr194, align 1
  %conv214 = zext i8 %259 to i32
  %cmp215 = icmp ult i32 %inc, %conv214
  br i1 %cmp215, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end210.for.end_crit_edge
  %.lcssa1761 = phi i8 [ 0, %if.end210.for.end_crit_edge ], [ %259, %for.body.for.end_crit_edge ]
  %conv214.le = zext i8 %.lcssa1761 to i32
  %260 = ptrtoint ptr %phase_shedding_limits_table1726 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %conv214.le, ptr %phase_shedding_limits_table1726, align 4
  br label %if.end258

if.end258:                                        ; preds = %for.end, %if.end185.if.end258_crit_edge, %if.end69.if.end258_crit_edge
  %261 = ptrtoint ptr %usTableSize to i32
  call void @__asan_loadN_noabort(i32 %261, i32 2)
  %262 = load i16, ptr %usTableSize, align 1
  %263 = call i16 @llvm.bswap.i16(i16 %262)
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %263)
  %cmp261 = icmp ugt i16 %263, 87
  br i1 %cmp261, label %if.then263, label %if.end258.if.end383_crit_edge

if.end258.if.end383_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end383

if.then263:                                       ; preds = %if.end258
  %ulTDPLimit = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 1
  %264 = ptrtoint ptr %ulTDPLimit to i32
  call void @__asan_loadN_noabort(i32 %264, i32 4)
  %265 = load i32, ptr %ulTDPLimit, align 1
  %266 = call i32 @llvm.bswap.i32(i32 %265)
  %tdp_limit = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 23
  %267 = ptrtoint ptr %tdp_limit to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %tdp_limit, align 4
  %ulNearTDPLimit = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 2
  %268 = ptrtoint ptr %ulNearTDPLimit to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %ulNearTDPLimit, align 1
  %270 = call i32 @llvm.bswap.i32(i32 %269)
  %near_tdp_limit = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 24
  %271 = ptrtoint ptr %near_tdp_limit to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %near_tdp_limit, align 4
  %near_tdp_limit_adjusted = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 25
  %272 = ptrtoint ptr %near_tdp_limit_adjusted to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %270, ptr %near_tdp_limit_adjusted, align 4
  %usTDPODLimit = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 6
  %273 = ptrtoint ptr %usTDPODLimit to i32
  call void @__asan_loadN_noabort(i32 %273, i32 2)
  %274 = load i16, ptr %usTDPODLimit, align 1
  %275 = call i16 @llvm.bswap.i16(i16 %274)
  %tdp_od_limit = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 28
  %276 = ptrtoint ptr %tdp_od_limit to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %275, ptr %tdp_od_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %274)
  %tobool278.not = icmp ne i16 %274, 0
  %spec.select1805 = zext i1 %tobool278.not to i8
  %277 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 31
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %spec.select1805, ptr %277, align 2
  %tdp_adjustment = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 29
  %279 = ptrtoint ptr %tdp_adjustment to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %tdp_adjustment, align 4
  %ulSQRampingThreshold = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 3
  %280 = ptrtoint ptr %ulSQRampingThreshold to i32
  call void @__asan_loadN_noabort(i32 %280, i32 4)
  %281 = load i32, ptr %ulSQRampingThreshold, align 1
  %282 = call i32 @llvm.bswap.i32(i32 %281)
  %sq_ramping_threshold = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 26
  %283 = ptrtoint ptr %sq_ramping_threshold to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %sq_ramping_threshold, align 4
  %ulCACLeakage = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 5
  %284 = ptrtoint ptr %ulCACLeakage to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %ulCACLeakage, align 1
  %286 = call i32 @llvm.bswap.i32(i32 %285)
  %cac_leakage = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 27
  %287 = ptrtoint ptr %cac_leakage to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %cac_leakage, align 4
  %usLoadLineSlope = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 7
  %288 = ptrtoint ptr %usLoadLineSlope to i32
  call void @__asan_loadN_noabort(i32 %288, i32 2)
  %289 = load i16, ptr %usLoadLineSlope, align 1
  %290 = call i16 @llvm.bswap.i16(i16 %289)
  %load_line_slope = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 30
  %291 = ptrtoint ptr %load_line_slope to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %290, ptr %load_line_slope, align 4
  %usCACLeakageTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 4
  %292 = ptrtoint ptr %usCACLeakageTableOffset to i32
  call void @__asan_loadN_noabort(i32 %292, i32 2)
  %293 = load i16, ptr %usCACLeakageTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %293)
  %tobool295.not = icmp eq i16 %293, 0
  br i1 %tobool295.not, label %if.then263.if.end383_crit_edge, label %if.then296

if.then263.if.end383_crit_edge:                   ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end383

if.then296:                                       ; preds = %if.then263
  %294 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %mode_info1, align 4
  %bios298 = getelementptr inbounds %struct.atom_context, ptr %295, i32 0, i32 2
  %296 = ptrtoint ptr %bios298 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %bios298, align 4
  %298 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %data_offset, align 2
  %conv299 = zext i16 %299 to i32
  %add.ptr300 = getelementptr i8, ptr %297, i32 %conv299
  %300 = call i16 @llvm.bswap.i16(i16 %293)
  %conv302 = zext i16 %300 to i32
  %add.ptr303 = getelementptr i8, ptr %add.ptr300, i32 %conv302
  %301 = ptrtoint ptr %add.ptr303 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %add.ptr303, align 1
  %conv306 = zext i8 %302 to i32
  %mul = shl nuw nsw i32 %conv306, 3
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #16
  %entries311 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 18, i32 1
  %303 = ptrtoint ptr %entries311 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call9.i.i, ptr %entries311, align 4
  %tobool317.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool317.not, label %if.then318, label %if.end319

if.then318:                                       ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end319:                                        ; preds = %if.then296
  %cac_leakage_table1732 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 18
  %304 = ptrtoint ptr %add.ptr303 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %add.ptr303, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %cmp3251768.not = icmp eq i8 %305, 0
  br i1 %cmp3251768.not, label %if.end319.for.end369_crit_edge, label %for.body327.lr.ph

if.end319.for.end369_crit_edge:                   ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end369

for.body327.lr.ph:                                ; preds = %if.end319
  %entries320 = getelementptr inbounds %struct._ATOM_PPLIB_CAC_Leakage_Table, ptr %add.ptr303, i32 0, i32 1
  %platform_caps = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 13
  br label %for.body327

for.body327:                                      ; preds = %if.end365.for.body327_crit_edge, %for.body327.lr.ph
  %i.11771 = phi i32 [ 0, %for.body327.lr.ph ], [ %inc368, %if.end365.for.body327_crit_edge ]
  %entry304.01769 = phi ptr [ %entries320, %for.body327.lr.ph ], [ %add.ptr366, %if.end365.for.body327_crit_edge ]
  %306 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %platform_caps, align 4
  %and = and i32 %307, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool330.not = icmp eq i32 %and, 0
  %308 = ptrtoint ptr %entry304.01769 to i32
  call void @__asan_loadN_noabort(i32 %308, i32 2)
  %309 = load i16, ptr %entry304.01769, align 1
  %310 = call i16 @llvm.bswap.i16(i16 %309)
  %311 = ptrtoint ptr %entries311 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %entries311, align 4
  %arrayidx357 = getelementptr %union.amdgpu_cac_leakage_entry, ptr %312, i32 %i.11771
  %313 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 %310, ptr %arrayidx357, align 4
  br i1 %tobool330.not, label %if.else350, label %if.then331

if.then331:                                       ; preds = %for.body327
  call void @__sanitizer_cov_trace_pc() #14
  %usVddc2 = getelementptr inbounds %struct.anon.114, ptr %entry304.01769, i32 0, i32 1
  %314 = ptrtoint ptr %usVddc2 to i32
  call void @__asan_loadN_noabort(i32 %314, i32 2)
  %315 = load i16, ptr %usVddc2, align 1
  %316 = call i16 @llvm.bswap.i16(i16 %315)
  %317 = ptrtoint ptr %entries311 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %entries311, align 4
  %arrayidx343 = getelementptr %union.amdgpu_cac_leakage_entry, ptr %318, i32 %i.11771
  %vddc2 = getelementptr inbounds %struct.anon.104, ptr %arrayidx343, i32 0, i32 1
  %319 = ptrtoint ptr %vddc2 to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %316, ptr %vddc2, align 2
  %usVddc3 = getelementptr inbounds %struct.anon.114, ptr %entry304.01769, i32 0, i32 2
  %320 = ptrtoint ptr %usVddc3 to i32
  call void @__asan_loadN_noabort(i32 %320, i32 2)
  %321 = load i16, ptr %usVddc3, align 1
  %322 = call i16 @llvm.bswap.i16(i16 %321)
  %323 = ptrtoint ptr %entries311 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %entries311, align 4
  %vddc3 = getelementptr %union.amdgpu_cac_leakage_entry, ptr %324, i32 %i.11771, i32 0, i32 1
  %325 = ptrtoint ptr %vddc3 to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 %322, ptr %vddc3, align 4
  br label %if.end365

if.else350:                                       ; preds = %for.body327
  call void @__sanitizer_cov_trace_pc() #14
  %ulLeakageValue = getelementptr inbounds %struct.anon.113, ptr %entry304.01769, i32 0, i32 1
  %326 = ptrtoint ptr %ulLeakageValue to i32
  call void @__asan_loadN_noabort(i32 %326, i32 4)
  %327 = load i32, ptr %ulLeakageValue, align 1
  %328 = call i32 @llvm.bswap.i32(i32 %327)
  %329 = ptrtoint ptr %entries311 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %entries311, align 4
  %leakage = getelementptr %union.amdgpu_cac_leakage_entry, ptr %330, i32 %i.11771, i32 0, i32 1
  %331 = ptrtoint ptr %leakage to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %328, ptr %leakage, align 4
  br label %if.end365

if.end365:                                        ; preds = %if.else350, %if.then331
  %add.ptr366 = getelementptr i8, ptr %entry304.01769, i32 6
  %inc368 = add nuw nsw i32 %i.11771, 1
  %332 = ptrtoint ptr %add.ptr303 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %add.ptr303, align 1
  %conv324 = zext i8 %333 to i32
  %cmp325 = icmp ult i32 %inc368, %conv324
  br i1 %cmp325, label %if.end365.for.body327_crit_edge, label %if.end365.for.end369_crit_edge

if.end365.for.end369_crit_edge:                   ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end369

if.end365.for.body327_crit_edge:                  ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body327

for.end369:                                       ; preds = %if.end365.for.end369_crit_edge, %if.end319.for.end369_crit_edge
  %.lcssa1766 = phi i8 [ 0, %if.end319.for.end369_crit_edge ], [ %333, %if.end365.for.end369_crit_edge ]
  %conv324.le = zext i8 %.lcssa1766 to i32
  %334 = ptrtoint ptr %cac_leakage_table1732 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %conv324.le, ptr %cac_leakage_table1732, align 4
  br label %if.end383

if.end383:                                        ; preds = %for.end369, %if.then263.if.end383_crit_edge, %if.end258.if.end383_crit_edge
  %335 = ptrtoint ptr %usTableSize to i32
  call void @__asan_loadN_noabort(i32 %335, i32 2)
  %336 = load i16, ptr %usTableSize, align 1
  %337 = call i16 @llvm.bswap.i16(i16 %336)
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %337)
  %cmp386 = icmp ugt i16 %337, 45
  br i1 %cmp386, label %if.then388, label %if.end383.cleanup1036_crit_edge

if.end383.cleanup1036_crit_edge:                  ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup1036

if.then388:                                       ; preds = %if.end383
  %338 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %mode_info1, align 4
  %bios390 = getelementptr inbounds %struct.atom_context, ptr %339, i32 0, i32 2
  %340 = ptrtoint ptr %bios390 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %bios390, align 4
  %342 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %data_offset, align 2
  %conv391 = zext i16 %343 to i32
  %add.ptr392 = getelementptr i8, ptr %341, i32 %conv391
  %usExtendendedHeaderOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %add.ptr, i32 0, i32 3
  %344 = ptrtoint ptr %usExtendendedHeaderOffset to i32
  call void @__asan_loadN_noabort(i32 %344, i32 2)
  %345 = load i16, ptr %usExtendendedHeaderOffset, align 1
  %346 = call i16 @llvm.bswap.i16(i16 %345)
  %conv393 = zext i16 %346 to i32
  %add.ptr394 = getelementptr i8, ptr %add.ptr392, i32 %conv393
  %347 = ptrtoint ptr %add.ptr394 to i32
  call void @__asan_loadN_noabort(i32 %347, i32 2)
  %348 = load i16, ptr %add.ptr394, align 1
  %349 = call i16 @llvm.bswap.i16(i16 %348)
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %349)
  %cmp396 = icmp ugt i16 %349, 11
  br i1 %cmp396, label %land.lhs.true, label %if.then388.if.end579_crit_edge

if.then388.if.end579_crit_edge:                   ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end579

land.lhs.true:                                    ; preds = %if.then388
  %usVCETableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr394, i32 0, i32 3
  %350 = ptrtoint ptr %usVCETableOffset to i32
  call void @__asan_loadN_noabort(i32 %350, i32 2)
  %351 = load i16, ptr %usVCETableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %351)
  %tobool399.not = icmp eq i16 %351, 0
  br i1 %tobool399.not, label %land.lhs.true.if.end579_crit_edge, label %if.then400

land.lhs.true.if.end579_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end579

if.then400:                                       ; preds = %land.lhs.true
  %352 = call i16 @llvm.bswap.i16(i16 %351)
  %conv406 = zext i16 %352 to i32
  %add.ptr407 = getelementptr i8, ptr %add.ptr392, i32 %conv406
  %add.ptr408 = getelementptr i8, ptr %add.ptr407, i32 1
  %add.ptr417 = getelementptr i8, ptr %add.ptr408, i32 1
  %353 = ptrtoint ptr %add.ptr408 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %add.ptr408, align 1
  %conv419 = zext i8 %354 to i32
  %mul420 = mul nuw nsw i32 %conv419, 6
  %add.ptr421 = getelementptr i8, ptr %add.ptr417, i32 %mul420
  %add.ptr435 = getelementptr i8, ptr %add.ptr421, i32 1
  %355 = ptrtoint ptr %add.ptr421 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %add.ptr421, align 1
  %conv436 = zext i8 %356 to i32
  %mul437 = mul nuw nsw i32 %conv436, 3
  %add.ptr438 = getelementptr i8, ptr %add.ptr435, i32 %mul437
  %mul443 = mul nuw nsw i32 %conv436, 12
  %call9.i.i1602 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul443, i32 noundef 3520) #16
  %entries448 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 6, i32 1
  %357 = ptrtoint ptr %entries448 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %call9.i.i1602, ptr %entries448, align 4
  %tobool454.not = icmp eq ptr %call9.i.i1602, null
  br i1 %tobool454.not, label %if.then455, label %if.end456

if.then455:                                       ; preds = %if.then400
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end456:                                        ; preds = %if.then400
  %vce_clock_voltage_dependency_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 6
  %358 = ptrtoint ptr %add.ptr421 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %add.ptr421, align 1
  %360 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %359, ptr %vce_clock_voltage_dependency_table, align 4
  %entries465 = getelementptr inbounds %struct._ATOM_PPLIB_VCE_State_Table, ptr %add.ptr438, i32 0, i32 1
  %361 = load i8, ptr %add.ptr421, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %cmp4701775.not = icmp eq i8 %361, 0
  br i1 %cmp4701775.not, label %if.end456.for.end508_crit_edge, label %if.end456.for.body472_crit_edge

if.end456.for.body472_crit_edge:                  ; preds = %if.end456
  br label %for.body472

if.end456.for.end508_crit_edge:                   ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end508

for.body472:                                      ; preds = %for.body472.for.body472_crit_edge, %if.end456.for.body472_crit_edge
  %i.21777 = phi i32 [ %inc507, %for.body472.for.body472_crit_edge ], [ 0, %if.end456.for.body472_crit_edge ]
  %entry439.01776 = phi ptr [ %add.ptr505, %for.body472.for.body472_crit_edge ], [ %add.ptr435, %if.end456.for.body472_crit_edge ]
  %ucVCEClockInfoIndex = getelementptr inbounds %struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Record, ptr %entry439.01776, i32 0, i32 1
  %362 = ptrtoint ptr %ucVCEClockInfoIndex to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %ucVCEClockInfoIndex, align 1
  %conv475 = zext i8 %363 to i32
  %mul476 = mul nuw nsw i32 %conv475, 6
  %add.ptr477 = getelementptr i8, ptr %add.ptr417, i32 %mul476
  %364 = ptrtoint ptr %add.ptr477 to i32
  call void @__asan_loadN_noabort(i32 %364, i32 2)
  %365 = load i16, ptr %add.ptr477, align 1
  %366 = call i16 @llvm.bswap.i16(i16 %365)
  %conv478 = zext i16 %366 to i32
  %ucEVClkHigh = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr477, i32 0, i32 1
  %367 = ptrtoint ptr %ucEVClkHigh to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %ucEVClkHigh, align 1
  %conv479 = zext i8 %368 to i32
  %shl480 = shl nuw nsw i32 %conv479, 16
  %or481 = or i32 %shl480, %conv478
  %369 = ptrtoint ptr %entries448 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %entries448, align 4
  %evclk = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %370, i32 %i.21777, i32 1
  %371 = ptrtoint ptr %evclk to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %or481, ptr %evclk, align 4
  %usECClkLow = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr477, i32 0, i32 2
  %372 = ptrtoint ptr %usECClkLow to i32
  call void @__asan_loadN_noabort(i32 %372, i32 2)
  %373 = load i16, ptr %usECClkLow, align 1
  %374 = call i16 @llvm.bswap.i16(i16 %373)
  %conv488 = zext i16 %374 to i32
  %ucECClkHigh = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr477, i32 0, i32 3
  %375 = ptrtoint ptr %ucECClkHigh to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %ucECClkHigh, align 1
  %conv489 = zext i8 %376 to i32
  %shl490 = shl nuw nsw i32 %conv489, 16
  %or491 = or i32 %shl490, %conv488
  %377 = ptrtoint ptr %entries448 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %entries448, align 4
  %arrayidx497 = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %378, i32 %i.21777
  %379 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %or491, ptr %arrayidx497, align 4
  %380 = ptrtoint ptr %entry439.01776 to i32
  call void @__asan_loadN_noabort(i32 %380, i32 2)
  %381 = load i16, ptr %entry439.01776, align 1
  %382 = call i16 @llvm.bswap.i16(i16 %381)
  %383 = ptrtoint ptr %entries448 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %entries448, align 4
  %v = getelementptr %struct.amdgpu_vce_clock_voltage_dependency_entry, ptr %384, i32 %i.21777, i32 2
  %385 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 %382, ptr %v, align 4
  %add.ptr505 = getelementptr i8, ptr %entry439.01776, i32 3
  %inc507 = add nuw nsw i32 %i.21777, 1
  %386 = ptrtoint ptr %add.ptr421 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %add.ptr421, align 1
  %conv469 = zext i8 %387 to i32
  %cmp470 = icmp ult i32 %inc507, %conv469
  br i1 %cmp470, label %for.body472.for.body472_crit_edge, label %for.body472.for.end508_crit_edge

for.body472.for.end508_crit_edge:                 ; preds = %for.body472
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end508

for.body472.for.body472_crit_edge:                ; preds = %for.body472
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body472

for.end508:                                       ; preds = %for.body472.for.end508_crit_edge, %if.end456.for.end508_crit_edge
  %388 = ptrtoint ptr %add.ptr438 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %add.ptr438, align 1
  %390 = call i8 @llvm.umin.i8(i8 %389, i8 6)
  %spec.select = zext i8 %390 to i32
  %num_of_vce_states = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 6
  %391 = ptrtoint ptr %num_of_vce_states to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %spec.select, ptr %num_of_vce_states, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %cmp5211778.not = icmp eq i8 %390, 0
  br i1 %cmp5211778.not, label %for.end508.if.end579_crit_edge, label %for.end508.for.body523_crit_edge

for.end508.for.body523_crit_edge:                 ; preds = %for.end508
  br label %for.body523

for.end508.if.end579_crit_edge:                   ; preds = %for.end508
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end579

for.body523:                                      ; preds = %for.body523.for.body523_crit_edge, %for.end508.for.body523_crit_edge
  %i.31780 = phi i32 [ %inc568, %for.body523.for.body523_crit_edge ], [ 0, %for.end508.for.body523_crit_edge ]
  %state_entry.01779 = phi ptr [ %add.ptr566, %for.body523.for.body523_crit_edge ], [ %entries465, %for.end508.for.body523_crit_edge ]
  %392 = ptrtoint ptr %state_entry.01779 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %state_entry.01779, align 1
  %conv527 = zext i8 %393 to i32
  %mul528 = mul nuw nsw i32 %conv527, 6
  %add.ptr529 = getelementptr i8, ptr %add.ptr417, i32 %mul528
  %394 = ptrtoint ptr %add.ptr529 to i32
  call void @__asan_loadN_noabort(i32 %394, i32 2)
  %395 = load i16, ptr %add.ptr529, align 1
  %396 = call i16 @llvm.bswap.i16(i16 %395)
  %conv531 = zext i16 %396 to i32
  %ucEVClkHigh532 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr529, i32 0, i32 1
  %397 = ptrtoint ptr %ucEVClkHigh532 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %ucEVClkHigh532, align 1
  %conv533 = zext i8 %398 to i32
  %shl534 = shl nuw nsw i32 %conv533, 16
  %or535 = or i32 %shl534, %conv531
  %arrayidx538 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 7, i32 %i.31780
  %399 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %or535, ptr %arrayidx538, align 4
  %usECClkLow540 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr529, i32 0, i32 2
  %400 = ptrtoint ptr %usECClkLow540 to i32
  call void @__asan_loadN_noabort(i32 %400, i32 2)
  %401 = load i16, ptr %usECClkLow540, align 1
  %402 = call i16 @llvm.bswap.i16(i16 %401)
  %conv541 = zext i16 %402 to i32
  %ucECClkHigh542 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr529, i32 0, i32 3
  %403 = ptrtoint ptr %ucECClkHigh542 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %ucECClkHigh542, align 1
  %conv543 = zext i8 %404 to i32
  %shl544 = shl nuw nsw i32 %conv543, 16
  %or545 = or i32 %shl544, %conv541
  %ecclk550 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 7, i32 %i.31780, i32 1
  %405 = ptrtoint ptr %ecclk550 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %or545, ptr %ecclk550, align 4
  %ucClockInfoIndex = getelementptr inbounds %struct._ATOM_PPLIB_VCE_State_Record, ptr %state_entry.01779, i32 0, i32 1
  %406 = ptrtoint ptr %ucClockInfoIndex to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %ucClockInfoIndex, align 1
  %408 = and i8 %407, 63
  %clk_idx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 7, i32 %i.31780, i32 4
  %409 = ptrtoint ptr %clk_idx to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %408, ptr %clk_idx, align 4
  %410 = load i8, ptr %ucClockInfoIndex, align 1
  %411 = lshr i8 %410, 6
  %pstate = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 7, i32 %i.31780, i32 5
  %412 = ptrtoint ptr %pstate to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %411, ptr %pstate, align 1
  %add.ptr566 = getelementptr i8, ptr %state_entry.01779, i32 2
  %inc568 = add nuw i32 %i.31780, 1
  %413 = ptrtoint ptr %num_of_vce_states to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %num_of_vce_states, align 4
  %cmp521 = icmp ult i32 %inc568, %414
  br i1 %cmp521, label %for.body523.for.body523_crit_edge, label %for.body523.if.end579_crit_edge

for.body523.if.end579_crit_edge:                  ; preds = %for.body523
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end579

for.body523.for.body523_crit_edge:                ; preds = %for.body523
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body523

if.end579:                                        ; preds = %for.body523.if.end579_crit_edge, %for.end508.if.end579_crit_edge, %land.lhs.true.if.end579_crit_edge, %if.then388.if.end579_crit_edge
  %415 = ptrtoint ptr %add.ptr394 to i32
  call void @__asan_loadN_noabort(i32 %415, i32 2)
  %416 = load i16, ptr %add.ptr394, align 1
  %417 = call i16 @llvm.bswap.i16(i16 %416)
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %417)
  %cmp582 = icmp ugt i16 %417, 13
  br i1 %cmp582, label %land.lhs.true584, label %if.end579.if.end686_crit_edge

if.end579.if.end686_crit_edge:                    ; preds = %if.end579
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end686

land.lhs.true584:                                 ; preds = %if.end579
  %usUVDTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr394, i32 0, i32 4
  %418 = ptrtoint ptr %usUVDTableOffset to i32
  call void @__asan_loadN_noabort(i32 %418, i32 2)
  %419 = load i16, ptr %usUVDTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %419)
  %tobool586.not = icmp eq i16 %419, 0
  br i1 %tobool586.not, label %land.lhs.true584.if.end686_crit_edge, label %if.then587

land.lhs.true584.if.end686_crit_edge:             ; preds = %land.lhs.true584
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end686

if.then587:                                       ; preds = %land.lhs.true584
  %420 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %mode_info1, align 4
  %bios590 = getelementptr inbounds %struct.atom_context, ptr %421, i32 0, i32 2
  %422 = ptrtoint ptr %bios590 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %bios590, align 4
  %424 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %data_offset, align 2
  %conv591 = zext i16 %425 to i32
  %add.ptr592 = getelementptr i8, ptr %423, i32 %conv591
  %426 = call i16 @llvm.bswap.i16(i16 %419)
  %conv594 = zext i16 %426 to i32
  %add.ptr595 = getelementptr i8, ptr %add.ptr592, i32 %conv594
  %add.ptr596 = getelementptr i8, ptr %add.ptr595, i32 1
  %add.ptr606 = getelementptr i8, ptr %add.ptr596, i32 1
  %427 = ptrtoint ptr %add.ptr596 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %add.ptr596, align 1
  %conv608 = zext i8 %428 to i32
  %mul609 = mul nuw nsw i32 %conv608, 6
  %add.ptr610 = getelementptr i8, ptr %add.ptr606, i32 %mul609
  %429 = ptrtoint ptr %add.ptr610 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %add.ptr610, align 1
  %conv614 = zext i8 %430 to i32
  %mul615 = mul nuw nsw i32 %conv614, 12
  %call9.i.i1631 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul615, i32 noundef 3520) #16
  %entries620 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 5, i32 1
  %431 = ptrtoint ptr %entries620 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %call9.i.i1631, ptr %entries620, align 4
  %tobool626.not = icmp eq ptr %call9.i.i1631, null
  br i1 %tobool626.not, label %if.then627, label %if.end628

if.then627:                                       ; preds = %if.then587
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end628:                                        ; preds = %if.then587
  %uvd_clock_voltage_dependency_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 5
  %432 = ptrtoint ptr %add.ptr610 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %add.ptr610, align 1
  %434 = ptrtoint ptr %uvd_clock_voltage_dependency_table to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %433, ptr %uvd_clock_voltage_dependency_table, align 4
  %435 = load i8, ptr %add.ptr610, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %cmp6401782.not = icmp eq i8 %435, 0
  br i1 %cmp6401782.not, label %if.end628.if.end686_crit_edge, label %for.body642.lr.ph

if.end628.if.end686_crit_edge:                    ; preds = %if.end628
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end686

for.body642.lr.ph:                                ; preds = %if.end628
  %entries635 = getelementptr inbounds %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table, ptr %add.ptr610, i32 0, i32 1
  br label %for.body642

for.body642:                                      ; preds = %for.body642.for.body642_crit_edge, %for.body642.lr.ph
  %entry611.01784 = phi ptr [ %entries635, %for.body642.lr.ph ], [ %add.ptr676, %for.body642.for.body642_crit_edge ]
  %i.41783 = phi i32 [ 0, %for.body642.lr.ph ], [ %inc678, %for.body642.for.body642_crit_edge ]
  %ucUVDClockInfoIndex = getelementptr inbounds %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Record, ptr %entry611.01784, i32 0, i32 1
  %436 = ptrtoint ptr %ucUVDClockInfoIndex to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %ucUVDClockInfoIndex, align 1
  %conv645 = zext i8 %437 to i32
  %mul646 = mul nuw nsw i32 %conv645, 6
  %add.ptr647 = getelementptr i8, ptr %add.ptr606, i32 %mul646
  %438 = ptrtoint ptr %add.ptr647 to i32
  call void @__asan_loadN_noabort(i32 %438, i32 2)
  %439 = load i16, ptr %add.ptr647, align 1
  %440 = call i16 @llvm.bswap.i16(i16 %439)
  %conv648 = zext i16 %440 to i32
  %ucVClkHigh = getelementptr inbounds %struct._UVDClockInfo, ptr %add.ptr647, i32 0, i32 1
  %441 = ptrtoint ptr %ucVClkHigh to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %ucVClkHigh, align 1
  %conv649 = zext i8 %442 to i32
  %shl650 = shl nuw nsw i32 %conv649, 16
  %or651 = or i32 %shl650, %conv648
  %443 = ptrtoint ptr %entries620 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %entries620, align 4
  %arrayidx657 = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %444, i32 %i.41783
  %445 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %or651, ptr %arrayidx657, align 4
  %usDClkLow = getelementptr inbounds %struct._UVDClockInfo, ptr %add.ptr647, i32 0, i32 2
  %446 = ptrtoint ptr %usDClkLow to i32
  call void @__asan_loadN_noabort(i32 %446, i32 2)
  %447 = load i16, ptr %usDClkLow, align 1
  %448 = call i16 @llvm.bswap.i16(i16 %447)
  %conv658 = zext i16 %448 to i32
  %ucDClkHigh = getelementptr inbounds %struct._UVDClockInfo, ptr %add.ptr647, i32 0, i32 3
  %449 = ptrtoint ptr %ucDClkHigh to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %ucDClkHigh, align 1
  %conv659 = zext i8 %450 to i32
  %shl660 = shl nuw nsw i32 %conv659, 16
  %or661 = or i32 %shl660, %conv658
  %451 = ptrtoint ptr %entries620 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %entries620, align 4
  %dclk = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %452, i32 %i.41783, i32 1
  %453 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 %or661, ptr %dclk, align 4
  %454 = ptrtoint ptr %entry611.01784 to i32
  call void @__asan_loadN_noabort(i32 %454, i32 2)
  %455 = load i16, ptr %entry611.01784, align 1
  %456 = call i16 @llvm.bswap.i16(i16 %455)
  %457 = ptrtoint ptr %entries620 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %entries620, align 4
  %v675 = getelementptr %struct.amdgpu_uvd_clock_voltage_dependency_entry, ptr %458, i32 %i.41783, i32 2
  %459 = ptrtoint ptr %v675 to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 %456, ptr %v675, align 4
  %add.ptr676 = getelementptr i8, ptr %entry611.01784, i32 3
  %inc678 = add nuw nsw i32 %i.41783, 1
  %460 = ptrtoint ptr %add.ptr610 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %add.ptr610, align 1
  %conv639 = zext i8 %461 to i32
  %cmp640 = icmp ult i32 %inc678, %conv639
  br i1 %cmp640, label %for.body642.for.body642_crit_edge, label %for.body642.if.end686_crit_edge

for.body642.if.end686_crit_edge:                  ; preds = %for.body642
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end686

for.body642.for.body642_crit_edge:                ; preds = %for.body642
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body642

if.end686:                                        ; preds = %for.body642.if.end686_crit_edge, %if.end628.if.end686_crit_edge, %land.lhs.true584.if.end686_crit_edge, %if.end579.if.end686_crit_edge
  %462 = ptrtoint ptr %add.ptr394 to i32
  call void @__asan_loadN_noabort(i32 %462, i32 2)
  %463 = load i16, ptr %add.ptr394, align 1
  %464 = call i16 @llvm.bswap.i16(i16 %463)
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %464)
  %cmp689 = icmp ugt i16 %464, 15
  br i1 %cmp689, label %land.lhs.true691, label %if.end686.if.end764_crit_edge

if.end686.if.end764_crit_edge:                    ; preds = %if.end686
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end764

land.lhs.true691:                                 ; preds = %if.end686
  %usSAMUTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr394, i32 0, i32 5
  %465 = ptrtoint ptr %usSAMUTableOffset to i32
  call void @__asan_loadN_noabort(i32 %465, i32 2)
  %466 = load i16, ptr %usSAMUTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %466)
  %tobool693.not = icmp eq i16 %466, 0
  br i1 %tobool693.not, label %land.lhs.true691.if.end764_crit_edge, label %if.then694

land.lhs.true691.if.end764_crit_edge:             ; preds = %land.lhs.true691
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end764

if.then694:                                       ; preds = %land.lhs.true691
  %467 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %mode_info1, align 4
  %bios697 = getelementptr inbounds %struct.atom_context, ptr %468, i32 0, i32 2
  %469 = ptrtoint ptr %bios697 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %bios697, align 4
  %471 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %data_offset, align 2
  %conv698 = zext i16 %472 to i32
  %add.ptr699 = getelementptr i8, ptr %470, i32 %conv698
  %473 = call i16 @llvm.bswap.i16(i16 %466)
  %conv701 = zext i16 %473 to i32
  %add.ptr702 = getelementptr i8, ptr %add.ptr699, i32 %conv701
  %add.ptr703 = getelementptr i8, ptr %add.ptr702, i32 1
  %474 = ptrtoint ptr %add.ptr703 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %add.ptr703, align 1
  %conv707 = zext i8 %475 to i32
  %mul708 = shl nuw nsw i32 %conv707, 3
  %call9.i.i1660 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul708, i32 noundef 3520) #16
  %entries713 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 7, i32 1
  %476 = ptrtoint ptr %entries713 to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %call9.i.i1660, ptr %entries713, align 4
  %tobool719.not = icmp eq ptr %call9.i.i1660, null
  br i1 %tobool719.not, label %if.then720, label %if.end721

if.then720:                                       ; preds = %if.then694
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end721:                                        ; preds = %if.then694
  %samu_clock_voltage_dependency_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 7
  %477 = ptrtoint ptr %add.ptr703 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %add.ptr703, align 1
  %conv723 = zext i8 %478 to i32
  %479 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %conv723, ptr %samu_clock_voltage_dependency_table, align 4
  %480 = load i8, ptr %add.ptr703, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %480)
  %cmp7341786.not = icmp eq i8 %480, 0
  br i1 %cmp7341786.not, label %if.end721.if.end764_crit_edge, label %for.body736.preheader

if.end721.if.end764_crit_edge:                    ; preds = %if.end721
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end764

for.body736.preheader:                            ; preds = %if.end721
  %entries729 = getelementptr inbounds %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Table, ptr %add.ptr703, i32 0, i32 1
  br label %for.body736

for.body736:                                      ; preds = %for.body736.for.body736_crit_edge, %for.body736.preheader
  %entry704.01788 = phi ptr [ %add.ptr755, %for.body736.for.body736_crit_edge ], [ %entries729, %for.body736.preheader ]
  %i.51787 = phi i32 [ %inc757, %for.body736.for.body736_crit_edge ], [ 0, %for.body736.preheader ]
  %usSAMClockLow = getelementptr inbounds %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record, ptr %entry704.01788, i32 0, i32 1
  %481 = ptrtoint ptr %usSAMClockLow to i32
  call void @__asan_loadN_noabort(i32 %481, i32 2)
  %482 = load i16, ptr %usSAMClockLow, align 1
  %483 = call i16 @llvm.bswap.i16(i16 %482)
  %conv737 = zext i16 %483 to i32
  %ucSAMClockHigh = getelementptr inbounds %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record, ptr %entry704.01788, i32 0, i32 2
  %484 = ptrtoint ptr %ucSAMClockHigh to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %ucSAMClockHigh, align 1
  %conv738 = zext i8 %485 to i32
  %shl739 = shl nuw nsw i32 %conv738, 16
  %or740 = or i32 %shl739, %conv737
  %486 = ptrtoint ptr %entries713 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %entries713, align 4
  %arrayidx746 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %487, i32 %i.51787
  %488 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %or740, ptr %arrayidx746, align 4
  %489 = ptrtoint ptr %entry704.01788 to i32
  call void @__asan_loadN_noabort(i32 %489, i32 2)
  %490 = load i16, ptr %entry704.01788, align 1
  %491 = call i16 @llvm.bswap.i16(i16 %490)
  %492 = ptrtoint ptr %entries713 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %entries713, align 4
  %v754 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %493, i32 %i.51787, i32 1
  %494 = ptrtoint ptr %v754 to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 %491, ptr %v754, align 4
  %add.ptr755 = getelementptr i8, ptr %entry704.01788, i32 5
  %inc757 = add nuw nsw i32 %i.51787, 1
  %495 = ptrtoint ptr %add.ptr703 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %add.ptr703, align 1
  %conv733 = zext i8 %496 to i32
  %cmp734 = icmp ult i32 %inc757, %conv733
  br i1 %cmp734, label %for.body736.for.body736_crit_edge, label %for.body736.if.end764_crit_edge

for.body736.if.end764_crit_edge:                  ; preds = %for.body736
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end764

for.body736.for.body736_crit_edge:                ; preds = %for.body736
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body736

if.end764:                                        ; preds = %for.body736.if.end764_crit_edge, %if.end721.if.end764_crit_edge, %land.lhs.true691.if.end764_crit_edge, %if.end686.if.end764_crit_edge
  %497 = ptrtoint ptr %add.ptr394 to i32
  call void @__asan_loadN_noabort(i32 %497, i32 2)
  %498 = load i16, ptr %add.ptr394, align 1
  %499 = call i16 @llvm.bswap.i16(i16 %498)
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %499)
  %cmp767 = icmp ugt i16 %499, 17
  br i1 %cmp767, label %land.lhs.true769, label %if.end764.if.end834_crit_edge

if.end764.if.end834_crit_edge:                    ; preds = %if.end764
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end834

land.lhs.true769:                                 ; preds = %if.end764
  %usPPMTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr394, i32 0, i32 6
  %500 = ptrtoint ptr %usPPMTableOffset to i32
  call void @__asan_loadN_noabort(i32 %500, i32 2)
  %501 = load i16, ptr %usPPMTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %501)
  %tobool771.not = icmp eq i16 %501, 0
  br i1 %tobool771.not, label %land.lhs.true769.if.end834_crit_edge, label %if.then772

land.lhs.true769.if.end834_crit_edge:             ; preds = %land.lhs.true769
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end834

if.then772:                                       ; preds = %land.lhs.true769
  %502 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %mode_info1, align 4
  %bios774 = getelementptr inbounds %struct.atom_context, ptr %503, i32 0, i32 2
  %504 = ptrtoint ptr %bios774 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %bios774, align 4
  %506 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %506)
  %507 = load i16, ptr %data_offset, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %508 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1669 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %508, i32 noundef 3520, i32 noundef 36) #17
  %ppm_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 20
  %509 = ptrtoint ptr %ppm_table to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %call7.i.i1669, ptr %ppm_table, align 4
  %tobool788.not = icmp eq ptr %call7.i.i1669, null
  br i1 %tobool788.not, label %if.then789, label %if.end790

if.then789:                                       ; preds = %if.then772
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end790:                                        ; preds = %if.then772
  call void @__sanitizer_cov_trace_pc() #14
  %conv775 = zext i16 %507 to i32
  %add.ptr776 = getelementptr i8, ptr %505, i32 %conv775
  %510 = call i16 @llvm.bswap.i16(i16 %501)
  %conv778 = zext i16 %510 to i32
  %add.ptr779 = getelementptr i8, ptr %add.ptr776, i32 %conv778
  %ucPpmDesign = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 1
  %511 = ptrtoint ptr %ucPpmDesign to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %ucPpmDesign, align 1
  %513 = ptrtoint ptr %call7.i.i1669 to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 %512, ptr %call7.i.i1669, align 8
  %usCpuCoreNumber = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 2
  %514 = ptrtoint ptr %usCpuCoreNumber to i32
  call void @__asan_loadN_noabort(i32 %514, i32 2)
  %515 = load i16, ptr %usCpuCoreNumber, align 1
  %516 = call i16 @llvm.bswap.i16(i16 %515)
  %cpu_core_number = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 1
  %517 = ptrtoint ptr %cpu_core_number to i32
  call void @__asan_store2_noabort(i32 %517)
  store i16 %516, ptr %cpu_core_number, align 2
  %ulPlatformTDP = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 3
  %518 = ptrtoint ptr %ulPlatformTDP to i32
  call void @__asan_loadN_noabort(i32 %518, i32 4)
  %519 = load i32, ptr %ulPlatformTDP, align 1
  %520 = call i32 @llvm.bswap.i32(i32 %519)
  %platform_tdp = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 2
  %521 = ptrtoint ptr %platform_tdp to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %520, ptr %platform_tdp, align 4
  %ulSmallACPlatformTDP = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 4
  %522 = ptrtoint ptr %ulSmallACPlatformTDP to i32
  call void @__asan_loadN_noabort(i32 %522, i32 4)
  %523 = load i32, ptr %ulSmallACPlatformTDP, align 1
  %524 = call i32 @llvm.bswap.i32(i32 %523)
  %small_ac_platform_tdp = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 3
  %525 = ptrtoint ptr %small_ac_platform_tdp to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 %524, ptr %small_ac_platform_tdp, align 8
  %ulPlatformTDC = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 5
  %526 = ptrtoint ptr %ulPlatformTDC to i32
  call void @__asan_loadN_noabort(i32 %526, i32 4)
  %527 = load i32, ptr %ulPlatformTDC, align 1
  %528 = call i32 @llvm.bswap.i32(i32 %527)
  %platform_tdc = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 4
  %529 = ptrtoint ptr %platform_tdc to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %528, ptr %platform_tdc, align 4
  %ulSmallACPlatformTDC = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 6
  %530 = ptrtoint ptr %ulSmallACPlatformTDC to i32
  call void @__asan_loadN_noabort(i32 %530, i32 4)
  %531 = load i32, ptr %ulSmallACPlatformTDC, align 1
  %532 = call i32 @llvm.bswap.i32(i32 %531)
  %small_ac_platform_tdc = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 5
  %533 = ptrtoint ptr %small_ac_platform_tdc to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %532, ptr %small_ac_platform_tdc, align 8
  %ulApuTDP = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 7
  %534 = ptrtoint ptr %ulApuTDP to i32
  call void @__asan_loadN_noabort(i32 %534, i32 4)
  %535 = load i32, ptr %ulApuTDP, align 1
  %536 = call i32 @llvm.bswap.i32(i32 %535)
  %apu_tdp = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 6
  %537 = ptrtoint ptr %apu_tdp to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 %536, ptr %apu_tdp, align 4
  %ulDGpuTDP = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 8
  %538 = ptrtoint ptr %ulDGpuTDP to i32
  call void @__asan_loadN_noabort(i32 %538, i32 4)
  %539 = load i32, ptr %ulDGpuTDP, align 1
  %540 = call i32 @llvm.bswap.i32(i32 %539)
  %dgpu_tdp = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 7
  %541 = ptrtoint ptr %dgpu_tdp to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 %540, ptr %dgpu_tdp, align 8
  %ulDGpuUlvPower = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 9
  %542 = ptrtoint ptr %ulDGpuUlvPower to i32
  call void @__asan_loadN_noabort(i32 %542, i32 4)
  %543 = load i32, ptr %ulDGpuUlvPower, align 1
  %544 = call i32 @llvm.bswap.i32(i32 %543)
  %dgpu_ulv_power = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 8
  %545 = ptrtoint ptr %dgpu_ulv_power to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %544, ptr %dgpu_ulv_power, align 4
  %ulTjmax = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr779, i32 0, i32 10
  %546 = ptrtoint ptr %ulTjmax to i32
  call void @__asan_loadN_noabort(i32 %546, i32 4)
  %547 = load i32, ptr %ulTjmax, align 1
  %548 = call i32 @llvm.bswap.i32(i32 %547)
  %tj_max = getelementptr inbounds %struct.amdgpu_ppm_table, ptr %call7.i.i1669, i32 0, i32 9
  %549 = ptrtoint ptr %tj_max to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 %548, ptr %tj_max, align 8
  br label %if.end834

if.end834:                                        ; preds = %if.end790, %land.lhs.true769.if.end834_crit_edge, %if.end764.if.end834_crit_edge
  %550 = ptrtoint ptr %add.ptr394 to i32
  call void @__asan_loadN_noabort(i32 %550, i32 2)
  %551 = load i16, ptr %add.ptr394, align 1
  %552 = call i16 @llvm.bswap.i16(i16 %551)
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %552)
  %cmp837 = icmp ugt i16 %552, 19
  br i1 %cmp837, label %land.lhs.true839, label %if.end834.if.end913_crit_edge

if.end834.if.end913_crit_edge:                    ; preds = %if.end834
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end913

land.lhs.true839:                                 ; preds = %if.end834
  %usACPTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr394, i32 0, i32 7
  %553 = ptrtoint ptr %usACPTableOffset to i32
  call void @__asan_loadN_noabort(i32 %553, i32 2)
  %554 = load i16, ptr %usACPTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %554)
  %tobool841.not = icmp eq i16 %554, 0
  br i1 %tobool841.not, label %land.lhs.true839.if.end913_crit_edge, label %if.then842

land.lhs.true839.if.end913_crit_edge:             ; preds = %land.lhs.true839
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end913

if.then842:                                       ; preds = %land.lhs.true839
  %555 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %mode_info1, align 4
  %bios845 = getelementptr inbounds %struct.atom_context, ptr %556, i32 0, i32 2
  %557 = ptrtoint ptr %bios845 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %bios845, align 4
  %559 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %559)
  %560 = load i16, ptr %data_offset, align 2
  %conv846 = zext i16 %560 to i32
  %add.ptr847 = getelementptr i8, ptr %558, i32 %conv846
  %561 = call i16 @llvm.bswap.i16(i16 %554)
  %conv849 = zext i16 %561 to i32
  %add.ptr850 = getelementptr i8, ptr %add.ptr847, i32 %conv849
  %add.ptr851 = getelementptr i8, ptr %add.ptr850, i32 1
  %562 = ptrtoint ptr %add.ptr851 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %add.ptr851, align 1
  %conv855 = zext i8 %563 to i32
  %mul856 = shl nuw nsw i32 %conv855, 3
  %call9.i.i1697 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul856, i32 noundef 3520) #16
  %entries861 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 8, i32 1
  %564 = ptrtoint ptr %entries861 to i32
  call void @__asan_store4_noabort(i32 %564)
  store ptr %call9.i.i1697, ptr %entries861, align 4
  %tobool867.not = icmp eq ptr %call9.i.i1697, null
  br i1 %tobool867.not, label %if.then868, label %if.end869

if.then868:                                       ; preds = %if.then842
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end869:                                        ; preds = %if.then842
  %acp_clock_voltage_dependency_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 8
  %565 = ptrtoint ptr %add.ptr851 to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %add.ptr851, align 1
  %conv871 = zext i8 %566 to i32
  %567 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 %conv871, ptr %acp_clock_voltage_dependency_table, align 4
  %568 = load i8, ptr %add.ptr851, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %568)
  %cmp8821790.not = icmp eq i8 %568, 0
  br i1 %cmp8821790.not, label %if.end869.if.end913_crit_edge, label %for.body884.preheader

if.end869.if.end913_crit_edge:                    ; preds = %if.end869
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end913

for.body884.preheader:                            ; preds = %if.end869
  %entries877 = getelementptr inbounds %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Table, ptr %add.ptr851, i32 0, i32 1
  br label %for.body884

for.body884:                                      ; preds = %for.body884.for.body884_crit_edge, %for.body884.preheader
  %entry852.01792 = phi ptr [ %add.ptr904, %for.body884.for.body884_crit_edge ], [ %entries877, %for.body884.preheader ]
  %i.61791 = phi i32 [ %inc906, %for.body884.for.body884_crit_edge ], [ 0, %for.body884.preheader ]
  %usACPClockLow = getelementptr inbounds %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record, ptr %entry852.01792, i32 0, i32 1
  %569 = ptrtoint ptr %usACPClockLow to i32
  call void @__asan_loadN_noabort(i32 %569, i32 2)
  %570 = load i16, ptr %usACPClockLow, align 1
  %571 = call i16 @llvm.bswap.i16(i16 %570)
  %conv885 = zext i16 %571 to i32
  %ucACPClockHigh = getelementptr inbounds %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record, ptr %entry852.01792, i32 0, i32 2
  %572 = ptrtoint ptr %ucACPClockHigh to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %ucACPClockHigh, align 1
  %conv886 = zext i8 %573 to i32
  %shl887 = shl nuw nsw i32 %conv886, 16
  %or888 = or i32 %shl887, %conv885
  %574 = ptrtoint ptr %entries861 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %entries861, align 4
  %arrayidx894 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %575, i32 %i.61791
  %576 = ptrtoint ptr %arrayidx894 to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 %or888, ptr %arrayidx894, align 4
  %577 = ptrtoint ptr %entry852.01792 to i32
  call void @__asan_loadN_noabort(i32 %577, i32 2)
  %578 = load i16, ptr %entry852.01792, align 1
  %579 = call i16 @llvm.bswap.i16(i16 %578)
  %580 = ptrtoint ptr %entries861 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %entries861, align 4
  %v903 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %581, i32 %i.61791, i32 1
  %582 = ptrtoint ptr %v903 to i32
  call void @__asan_store2_noabort(i32 %582)
  store i16 %579, ptr %v903, align 4
  %add.ptr904 = getelementptr i8, ptr %entry852.01792, i32 5
  %inc906 = add nuw nsw i32 %i.61791, 1
  %583 = ptrtoint ptr %add.ptr851 to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %add.ptr851, align 1
  %conv881 = zext i8 %584 to i32
  %cmp882 = icmp ult i32 %inc906, %conv881
  br i1 %cmp882, label %for.body884.for.body884_crit_edge, label %for.body884.if.end913_crit_edge

for.body884.if.end913_crit_edge:                  ; preds = %for.body884
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end913

for.body884.for.body884_crit_edge:                ; preds = %for.body884
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body884

if.end913:                                        ; preds = %for.body884.if.end913_crit_edge, %if.end869.if.end913_crit_edge, %land.lhs.true839.if.end913_crit_edge, %if.end834.if.end913_crit_edge
  %585 = ptrtoint ptr %add.ptr394 to i32
  call void @__asan_loadN_noabort(i32 %585, i32 2)
  %586 = load i16, ptr %add.ptr394, align 1
  %587 = call i16 @llvm.bswap.i16(i16 %586)
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %587)
  %cmp916 = icmp ugt i16 %587, 21
  br i1 %cmp916, label %land.lhs.true918, label %if.end913.if.end1003_crit_edge

if.end913.if.end1003_crit_edge:                   ; preds = %if.end913
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end1003

land.lhs.true918:                                 ; preds = %if.end913
  %usPowerTuneTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr394, i32 0, i32 8
  %588 = ptrtoint ptr %usPowerTuneTableOffset to i32
  call void @__asan_loadN_noabort(i32 %588, i32 2)
  %589 = load i16, ptr %usPowerTuneTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %589)
  %tobool920.not = icmp eq i16 %589, 0
  br i1 %tobool920.not, label %land.lhs.true918.if.end1003_crit_edge, label %if.then921

land.lhs.true918.if.end1003_crit_edge:            ; preds = %land.lhs.true918
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end1003

if.then921:                                       ; preds = %land.lhs.true918
  %590 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %mode_info1, align 4
  %bios923 = getelementptr inbounds %struct.atom_context, ptr %591, i32 0, i32 2
  %592 = ptrtoint ptr %bios923 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %bios923, align 4
  %594 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %594)
  %595 = load i16, ptr %data_offset, align 2
  %conv924 = zext i16 %595 to i32
  %add.ptr925 = getelementptr i8, ptr %593, i32 %conv924
  %596 = call i16 @llvm.bswap.i16(i16 %589)
  %conv927 = zext i16 %596 to i32
  %add.ptr928 = getelementptr i8, ptr %add.ptr925, i32 %conv927
  %597 = ptrtoint ptr %add.ptr928 to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %add.ptr928, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %599 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1706 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %599, i32 noundef 3520, i32 noundef 16) #17
  %cac_tdp_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 21
  %600 = ptrtoint ptr %cac_tdp_table to i32
  call void @__asan_store4_noabort(i32 %600)
  store ptr %call7.i.i1706, ptr %cac_tdp_table, align 4
  %tobool937.not = icmp eq ptr %call7.i.i1706, null
  br i1 %tobool937.not, label %if.then938, label %if.end939

if.then938:                                       ; preds = %if.then921
  call void @__sanitizer_cov_trace_pc() #14
  call void @amdgpu_free_extended_power_table(ptr noundef %adev)
  br label %cleanup1036

if.end939:                                        ; preds = %if.then921
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %598)
  %cmp941.not = icmp eq i8 %598, 0
  %601 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %mode_info1, align 4
  %bios958 = getelementptr inbounds %struct.atom_context, ptr %602, i32 0, i32 2
  %603 = ptrtoint ptr %bios958 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %bios958, align 4
  %605 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %605)
  %606 = load i16, ptr %data_offset, align 2
  %conv959 = zext i16 %606 to i32
  %add.ptr960 = getelementptr i8, ptr %604, i32 %conv959
  %607 = ptrtoint ptr %usPowerTuneTableOffset to i32
  call void @__asan_loadN_noabort(i32 %607, i32 2)
  %608 = load i16, ptr %usPowerTuneTableOffset, align 1
  %609 = call i16 @llvm.bswap.i16(i16 %608)
  %conv962 = zext i16 %609 to i32
  %add.ptr963 = getelementptr i8, ptr %add.ptr960, i32 %conv962
  br i1 %cmp941.not, label %if.else955, label %if.then943

if.then943:                                       ; preds = %if.end939
  call void @__sanitizer_cov_trace_pc() #14
  %usMaximumPowerDeliveryLimit = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %add.ptr963, i32 0, i32 2
  %610 = ptrtoint ptr %usMaximumPowerDeliveryLimit to i32
  call void @__asan_loadN_noabort(i32 %610, i32 2)
  %611 = load i16, ptr %usMaximumPowerDeliveryLimit, align 1
  %power_tune_table = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %add.ptr963, i32 0, i32 1
  br label %if.end970

if.else955:                                       ; preds = %if.end939
  call void @__sanitizer_cov_trace_pc() #14
  %power_tune_table969 = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %add.ptr963, i32 0, i32 1
  br label %if.end970

if.end970:                                        ; preds = %if.else955, %if.then943
  %.sink1799 = phi i16 [ 255, %if.else955 ], [ %611, %if.then943 ]
  %pt.0 = phi ptr [ %power_tune_table969, %if.else955 ], [ %power_tune_table, %if.then943 ]
  %612 = getelementptr inbounds %struct.amdgpu_cac_tdp_table, ptr %call7.i.i1706, i32 0, i32 7
  %613 = ptrtoint ptr %612 to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 %.sink1799, ptr %612, align 2
  %614 = ptrtoint ptr %pt.0 to i32
  call void @__asan_loadN_noabort(i32 %614, i32 2)
  %615 = load i16, ptr %pt.0, align 1
  %616 = call i16 @llvm.bswap.i16(i16 %615)
  %617 = ptrtoint ptr %call7.i.i1706 to i32
  call void @__asan_store2_noabort(i32 %617)
  store i16 %616, ptr %call7.i.i1706, align 8
  %usConfigurableTDP = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 1
  %618 = ptrtoint ptr %usConfigurableTDP to i32
  call void @__asan_loadN_noabort(i32 %618, i32 2)
  %619 = load i16, ptr %usConfigurableTDP, align 1
  %620 = call i16 @llvm.bswap.i16(i16 %619)
  %configurable_tdp = getelementptr inbounds %struct.amdgpu_cac_tdp_table, ptr %call7.i.i1706, i32 0, i32 1
  %621 = ptrtoint ptr %configurable_tdp to i32
  call void @__asan_store2_noabort(i32 %621)
  store i16 %620, ptr %configurable_tdp, align 2
  %usTDC = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 2
  %622 = ptrtoint ptr %usTDC to i32
  call void @__asan_loadN_noabort(i32 %622, i32 2)
  %623 = load i16, ptr %usTDC, align 1
  %624 = call i16 @llvm.bswap.i16(i16 %623)
  %tdc = getelementptr inbounds %struct.amdgpu_cac_tdp_table, ptr %call7.i.i1706, i32 0, i32 2
  %625 = ptrtoint ptr %tdc to i32
  call void @__asan_store2_noabort(i32 %625)
  store i16 %624, ptr %tdc, align 4
  %usBatteryPowerLimit = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 3
  %626 = ptrtoint ptr %usBatteryPowerLimit to i32
  call void @__asan_loadN_noabort(i32 %626, i32 2)
  %627 = load i16, ptr %usBatteryPowerLimit, align 1
  %628 = call i16 @llvm.bswap.i16(i16 %627)
  %battery_power_limit = getelementptr inbounds %struct.amdgpu_cac_tdp_table, ptr %call7.i.i1706, i32 0, i32 3
  %629 = ptrtoint ptr %battery_power_limit to i32
  call void @__asan_store2_noabort(i32 %629)
  store i16 %628, ptr %battery_power_limit, align 2
  %usSmallPowerLimit = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 4
  %630 = ptrtoint ptr %usSmallPowerLimit to i32
  call void @__asan_loadN_noabort(i32 %630, i32 2)
  %631 = load i16, ptr %usSmallPowerLimit, align 1
  %632 = call i16 @llvm.bswap.i16(i16 %631)
  %small_power_limit = getelementptr inbounds %struct.amdgpu_cac_tdp_table, ptr %call7.i.i1706, i32 0, i32 4
  %633 = ptrtoint ptr %small_power_limit to i32
  call void @__asan_store2_noabort(i32 %633)
  store i16 %632, ptr %small_power_limit, align 8
  %usLowCACLeakage = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 5
  %634 = ptrtoint ptr %usLowCACLeakage to i32
  call void @__asan_loadN_noabort(i32 %634, i32 2)
  %635 = load i16, ptr %usLowCACLeakage, align 1
  %636 = call i16 @llvm.bswap.i16(i16 %635)
  %low_cac_leakage = getelementptr inbounds %struct.amdgpu_cac_tdp_table, ptr %call7.i.i1706, i32 0, i32 5
  %637 = ptrtoint ptr %low_cac_leakage to i32
  call void @__asan_store2_noabort(i32 %637)
  store i16 %636, ptr %low_cac_leakage, align 2
  %usHighCACLeakage = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 6
  %638 = ptrtoint ptr %usHighCACLeakage to i32
  call void @__asan_loadN_noabort(i32 %638, i32 2)
  %639 = load i16, ptr %usHighCACLeakage, align 1
  %640 = call i16 @llvm.bswap.i16(i16 %639)
  %high_cac_leakage = getelementptr inbounds %struct.amdgpu_cac_tdp_table, ptr %call7.i.i1706, i32 0, i32 6
  %641 = ptrtoint ptr %high_cac_leakage to i32
  call void @__asan_store2_noabort(i32 %641)
  store i16 %640, ptr %high_cac_leakage, align 4
  br label %if.end1003

if.end1003:                                       ; preds = %if.end970, %land.lhs.true918.if.end1003_crit_edge, %if.end913.if.end1003_crit_edge
  %642 = ptrtoint ptr %add.ptr394 to i32
  call void @__asan_loadN_noabort(i32 %642, i32 2)
  %643 = load i16, ptr %add.ptr394, align 1
  %644 = call i16 @llvm.bswap.i16(i16 %643)
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %644)
  %cmp1006 = icmp ugt i16 %644, 23
  br i1 %cmp1006, label %land.lhs.true1008, label %if.end1003.cleanup1036_crit_edge

if.end1003.cleanup1036_crit_edge:                 ; preds = %if.end1003
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup1036

land.lhs.true1008:                                ; preds = %if.end1003
  %usSclkVddgfxTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr394, i32 0, i32 9
  %645 = ptrtoint ptr %usSclkVddgfxTableOffset to i32
  call void @__asan_loadN_noabort(i32 %645, i32 2)
  %646 = load i16, ptr %usSclkVddgfxTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %646)
  %tobool1010.not = icmp eq i16 %646, 0
  br i1 %tobool1010.not, label %land.lhs.true1008.cleanup1036_crit_edge, label %if.then1011

land.lhs.true1008.cleanup1036_crit_edge:          ; preds = %land.lhs.true1008
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup1036

if.then1011:                                      ; preds = %land.lhs.true1008
  %647 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %mode_info1, align 4
  %bios1013 = getelementptr inbounds %struct.atom_context, ptr %648, i32 0, i32 2
  %649 = ptrtoint ptr %bios1013 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %bios1013, align 4
  %651 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %651)
  %652 = load i16, ptr %data_offset, align 2
  %conv1014 = zext i16 %652 to i32
  %add.ptr1015 = getelementptr i8, ptr %650, i32 %conv1014
  %653 = call i16 @llvm.bswap.i16(i16 %646)
  %conv1017 = zext i16 %653 to i32
  %add.ptr1018 = getelementptr i8, ptr %add.ptr1015, i32 %conv1017
  %vddgfx_dependency_on_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 9
  %call1022 = call fastcc i32 @amdgpu_parse_clk_voltage_dep_table(ptr noundef %vddgfx_dependency_on_sclk, ptr noundef %add.ptr1018)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1022)
  %tobool1023.not = icmp eq i32 %call1022, 0
  br i1 %tobool1023.not, label %if.then1011.cleanup1036_crit_edge, label %if.then1024

if.then1011.cleanup1036_crit_edge:                ; preds = %if.then1011
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup1036

if.then1024:                                      ; preds = %if.then1011
  call void @__sanitizer_cov_trace_pc() #14
  %entries1029 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 9, i32 1
  %654 = ptrtoint ptr %entries1029 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %entries1029, align 4
  call void @kfree(ptr noundef %655) #12
  br label %cleanup1036

cleanup1036:                                      ; preds = %if.then1024, %if.then1011.cleanup1036_crit_edge, %land.lhs.true1008.cleanup1036_crit_edge, %if.end1003.cleanup1036_crit_edge, %if.then938, %if.then868, %if.then789, %if.then720, %if.then627, %if.then455, %if.end383.cleanup1036_crit_edge, %if.then318, %if.then209, %if.then139, %if.then122, %if.then105, %if.then88, %entry.cleanup1036_crit_edge
  %retval.17 = phi i32 [ -12, %if.then88 ], [ -12, %if.then105 ], [ -12, %if.then122 ], [ -12, %if.then139 ], [ -22, %entry.cleanup1036_crit_edge ], [ -12, %if.then209 ], [ -12, %if.then318 ], [ 0, %if.then1011.cleanup1036_crit_edge ], [ 0, %land.lhs.true1008.cleanup1036_crit_edge ], [ 0, %if.end1003.cleanup1036_crit_edge ], [ 0, %if.end383.cleanup1036_crit_edge ], [ -12, %if.then938 ], [ -12, %if.then868 ], [ -12, %if.then789 ], [ -12, %if.then720 ], [ -12, %if.then627 ], [ -12, %if.then455 ], [ %call1022, %if.then1024 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #12
  ret i32 %retval.17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_parse_clk_voltage_dep_table(ptr nocapture noundef %amdgpu_table, ptr nocapture noundef readonly %atom_table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atom_table to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %atom_table, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #16
  %entries = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, ptr %amdgpu_table, i32 0, i32 1
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %entries, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %atom_table to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %atom_table, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp35.not = icmp eq i8 %4, 0
  br i1 %cmp35.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %entries3 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %atom_table, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %entry1.037 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %entries3, %for.body.preheader ]
  %i.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %5 = ptrtoint ptr %entry1.037 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %entry1.037, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv7 = zext i16 %7 to i32
  %ucClockHigh = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037, i32 0, i32 1
  %8 = ptrtoint ptr %ucClockHigh to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ucClockHigh, align 1
  %conv8 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv8, 16
  %or = or i32 %shl, %conv7
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %arrayidx10 = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %11, i32 %i.036
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %arrayidx10, align 4
  %usVoltage = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.037, i32 0, i32 2
  %13 = ptrtoint ptr %usVoltage to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %usVoltage, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.amdgpu_clock_voltage_dependency_entry, ptr %17, i32 %i.036, i32 1
  %18 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %v, align 4
  %add.ptr = getelementptr i8, ptr %entry1.037, i32 5
  %inc = add nuw nsw i32 %i.036, 1
  %19 = ptrtoint ptr %atom_table to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %atom_table, align 1
  %conv5 = zext i8 %20 to i32
  %cmp = icmp ult i32 %inc, %conv5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = zext i8 %20 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %if.end.for.end_crit_edge ]
  %21 = ptrtoint ptr %amdgpu_table to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.lcssa, ptr %amdgpu_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_free_extended_power_table(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 0, i32 1
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %1) #12
  %entries2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 1, i32 1
  %2 = ptrtoint ptr %entries2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries2, align 4
  tail call void @kfree(ptr noundef %3) #12
  %entries3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 2, i32 1
  %4 = ptrtoint ptr %entries3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries3, align 4
  tail call void @kfree(ptr noundef %5) #12
  %entries4 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 3, i32 1
  %6 = ptrtoint ptr %entries4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries4, align 4
  tail call void @kfree(ptr noundef %7) #12
  %entries5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 18, i32 1
  %8 = ptrtoint ptr %entries5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries5, align 4
  tail call void @kfree(ptr noundef %9) #12
  %entries6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 19, i32 1
  %10 = ptrtoint ptr %entries6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries6, align 4
  tail call void @kfree(ptr noundef %11) #12
  %ppm_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 20
  %12 = ptrtoint ptr %ppm_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ppm_table, align 4
  tail call void @kfree(ptr noundef %13) #12
  %cac_tdp_table = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 21
  %14 = ptrtoint ptr %cac_tdp_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cac_tdp_table, align 4
  tail call void @kfree(ptr noundef %15) #12
  %entries7 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 6, i32 1
  %16 = ptrtoint ptr %entries7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entries7, align 4
  tail call void @kfree(ptr noundef %17) #12
  %entries8 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 5, i32 1
  %18 = ptrtoint ptr %entries8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entries8, align 4
  tail call void @kfree(ptr noundef %19) #12
  %entries9 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 7, i32 1
  %20 = ptrtoint ptr %entries9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entries9, align 4
  tail call void @kfree(ptr noundef %21) #12
  %entries10 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 8, i32 1
  %22 = ptrtoint ptr %entries10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entries10, align 4
  tail call void @kfree(ptr noundef %23) #12
  %entries11 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 21, i32 9, i32 1
  %24 = ptrtoint ptr %entries11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %entries11, align 4
  tail call void @kfree(ptr noundef %25) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_add_thermal_controller(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %i2c_bus = alloca %struct.amdgpu_i2c_bus_rec, align 4
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %i2c_bus) #12
  %0 = call ptr @memset(ptr %i2c_bus, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #12
  %1 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %data_offset, align 2, !annotation !257
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #12
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !257
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #12
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !257
  %4 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @amdgpu_atom_parse_data_header(ptr noundef %5, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #12
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %sThermalController = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 13
  %12 = ptrtoint ptr %sThermalController to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sThermalController, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not = icmp eq i8 %13, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %ucFanParameters = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %sThermalController, i32 0, i32 3
  %14 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool.not = icmp sgt i8 %15, -1
  br i1 %tobool.not, label %if.then5.if.end8_crit_edge, label %if.then7

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %no_fan = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 9
  %16 = ptrtoint ptr %no_fan to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %no_fan, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5.if.end8_crit_edge
  %17 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ucFanParameters, align 1
  %19 = and i8 %18, 15
  %fan_pulses_per_revolution = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 10
  %20 = ptrtoint ptr %fan_pulses_per_revolution to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %fan_pulses_per_revolution, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16.not = icmp eq i8 %19, 0
  br i1 %tobool16.not, label %if.end8.if.end20_crit_edge, label %if.then17

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %ucFanMinRPM = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %sThermalController, i32 0, i32 4
  %21 = ptrtoint ptr %ucFanMinRPM to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucFanMinRPM, align 1
  %fan_min_rpm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 11
  %23 = ptrtoint ptr %fan_min_rpm to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %fan_min_rpm, align 2
  %ucFanMaxRPM = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %sThermalController, i32 0, i32 5
  %24 = ptrtoint ptr %ucFanMaxRPM to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ucFanMaxRPM, align 1
  %fan_max_rpm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 12
  %26 = ptrtoint ptr %fan_max_rpm to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %fan_max_rpm, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end8.if.end20_crit_edge
  %27 = ptrtoint ptr %sThermalController to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sThermalController, align 1
  %conv22 = zext i8 %28 to i32
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %28, label %if.else211 [
    i8 7, label %do.end
    i8 8, label %do.end39
    i8 12, label %do.end57
    i8 14, label %do.end75
    i8 15, label %do.end93
    i8 16, label %do.end111
    i8 18, label %do.end129
    i8 19, label %do.end147
    i8 11, label %do.end165
    i8 -119, label %do.end183
    i8 -115, label %do.end201
  ]

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool29.not = icmp sgt i8 %31, -1
  %cond = select i1 %tobool29.not, ptr @.str.93, ptr @.str.92
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %cond) #15
  %int_thermal_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %32 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %int_thermal_type, align 4
  br label %cleanup

do.end39:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %tobool44.not = icmp sgt i8 %34, -1
  %cond45 = select i1 %tobool44.not, ptr @.str.93, ptr @.str.92
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %cond45) #15
  %int_thermal_type48 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %35 = ptrtoint ptr %int_thermal_type48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %int_thermal_type48, align 4
  br label %cleanup

do.end57:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %tobool62.not = icmp sgt i8 %37, -1
  %cond63 = select i1 %tobool62.not, ptr @.str.93, ptr @.str.92
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %cond63) #15
  %int_thermal_type66 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %38 = ptrtoint ptr %int_thermal_type66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %int_thermal_type66, align 4
  br label %cleanup

do.end75:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %tobool80.not = icmp sgt i8 %40, -1
  %cond81 = select i1 %tobool80.not, ptr @.str.93, ptr @.str.92
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %cond81) #15
  %int_thermal_type84 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %41 = ptrtoint ptr %int_thermal_type84 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 7, ptr %int_thermal_type84, align 4
  br label %cleanup

do.end93:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool98.not = icmp sgt i8 %43, -1
  %cond99 = select i1 %tobool98.not, ptr @.str.93, ptr @.str.92
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %cond99) #15
  %int_thermal_type102 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %44 = ptrtoint ptr %int_thermal_type102 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %int_thermal_type102, align 4
  br label %cleanup

do.end111:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %tobool116.not = icmp sgt i8 %46, -1
  %cond117 = select i1 %tobool116.not, ptr @.str.93, ptr @.str.92
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %cond117) #15
  %int_thermal_type120 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %47 = ptrtoint ptr %int_thermal_type120 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9, ptr %int_thermal_type120, align 4
  br label %cleanup

do.end129:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %tobool134.not = icmp sgt i8 %49, -1
  %cond135 = select i1 %tobool134.not, ptr @.str.93, ptr @.str.92
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %cond135) #15
  %int_thermal_type138 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %50 = ptrtoint ptr %int_thermal_type138 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 11, ptr %int_thermal_type138, align 4
  br label %cleanup

do.end147:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %tobool152.not = icmp sgt i8 %52, -1
  %cond153 = select i1 %tobool152.not, ptr @.str.93, ptr @.str.92
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %cond153) #15
  %int_thermal_type156 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %53 = ptrtoint ptr %int_thermal_type156 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 12, ptr %int_thermal_type156, align 4
  br label %cleanup

do.end165:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %tobool170.not = icmp sgt i8 %55, -1
  %cond171 = select i1 %tobool170.not, ptr @.str.93, ptr @.str.92
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull %cond171) #15
  %int_thermal_type174 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %56 = ptrtoint ptr %int_thermal_type174 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %int_thermal_type174, align 4
  br label %cleanup

do.end183:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %tobool188.not = icmp sgt i8 %58, -1
  %cond189 = select i1 %tobool188.not, ptr @.str.93, ptr @.str.92
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull %cond189) #15
  %int_thermal_type192 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %59 = ptrtoint ptr %int_thermal_type192 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %int_thermal_type192, align 4
  br label %cleanup

do.end201:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %tobool206.not = icmp sgt i8 %61, -1
  %cond207 = select i1 %tobool206.not, ptr @.str.93, ptr @.str.92
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull %cond207) #15
  %int_thermal_type210 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %62 = ptrtoint ptr %int_thermal_type210 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 10, ptr %int_thermal_type210, align 4
  br label %cleanup

if.else211:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %28)
  %cmp214 = icmp ult i8 %28, 20
  br i1 %cmp214, label %do.end219, label %do.end254

do.end219:                                        ; preds = %if.else211
  %arrayidx = getelementptr [20 x ptr], ptr @pp_lib_thermal_controller_names, i32 0, i32 %conv22
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx, align 4
  %ucI2cAddress = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %sThermalController, i32 0, i32 2
  %65 = ptrtoint ptr %ucI2cAddress to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ucI2cAddress, align 1
  %67 = lshr i8 %66, 1
  %68 = zext i8 %67 to i32
  %69 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %tobool226.not = icmp sgt i8 %70, -1
  %cond227 = select i1 %tobool226.not, ptr @.str.93, ptr @.str.92
  %call228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %64, i32 noundef %68, ptr noundef nonnull %cond227) #15
  %int_thermal_type230 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 7
  %71 = ptrtoint ptr %int_thermal_type230 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %int_thermal_type230, align 4
  %ucI2cLine = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %sThermalController, i32 0, i32 1
  %72 = ptrtoint ptr %ucI2cLine to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ucI2cLine, align 1
  call void @amdgpu_atombios_lookup_i2c_gpio(ptr nonnull sret(%struct.amdgpu_i2c_bus_rec) align 4 %i2c_bus, ptr noundef %adev, i8 noundef zeroext %73) #12
  %call232 = call ptr @amdgpu_i2c_lookup(ptr noundef %adev, ptr noundef nonnull %i2c_bus) #12
  %i2c_bus234 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 5
  %74 = ptrtoint ptr %i2c_bus234 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call232, ptr %i2c_bus234, align 4
  %tobool237.not = icmp eq ptr %call232, null
  br i1 %tobool237.not, label %do.end219.cleanup_crit_edge, label %if.then238

do.end219.cleanup_crit_edge:                      ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then238:                                       ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #12
  %75 = call ptr @memset(ptr %info, i32 0, i32 56)
  %76 = ptrtoint ptr %sThermalController to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %sThermalController, align 1
  %idxprom240 = zext i8 %77 to i32
  %arrayidx241 = getelementptr [20 x ptr], ptr @pp_lib_thermal_controller_names, i32 0, i32 %idxprom240
  %78 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx241, align 4
  %80 = ptrtoint ptr %ucI2cAddress to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ucI2cAddress, align 1
  %82 = lshr i8 %81, 1
  %conv245 = zext i8 %82 to i16
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %83 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv245, ptr %addr, align 2
  %call246 = call i32 @strlcpy(ptr noundef nonnull %info, ptr noundef %79, i32 noundef 20) #12
  %84 = ptrtoint ptr %i2c_bus234 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i2c_bus234, align 4
  %call249 = call ptr @i2c_new_client_device(ptr noundef %85, ptr noundef nonnull %info) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #12
  br label %cleanup

do.end254:                                        ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #14
  %ucI2cAddress258 = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %sThermalController, i32 0, i32 2
  %86 = ptrtoint ptr %ucI2cAddress258 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ucI2cAddress258, align 1
  %88 = lshr i8 %87, 1
  %89 = zext i8 %88 to i32
  %90 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %tobool264.not = icmp sgt i8 %91, -1
  %cond265 = select i1 %tobool264.not, ptr @.str.93, ptr @.str.92
  %call266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %conv22, i32 noundef %89, ptr noundef nonnull %cond265) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end254, %if.then238, %do.end219.cleanup_crit_edge, %do.end201, %do.end183, %do.end165, %do.end147, %do.end129, %do.end111, %do.end93, %do.end75, %do.end57, %do.end39, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #12
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %i2c_bus) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_lookup_i2c_gpio(ptr sret(%struct.amdgpu_i2c_bus_rec) align 4, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_i2c_lookup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_get_pcie_gen_support(ptr nocapture noundef readnone %adev, i32 noundef %sys_mask, i32 noundef %asic_gen, i32 noundef %default_gen) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asic_gen)
  %0 = icmp ult i32 %asic_gen, 3
  br i1 %0, label %entry.return_crit_edge, label %sw.default

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.default:                                       ; preds = %entry
  %and = and i32 %sys_mask, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %default_gen)
  %cmp = icmp eq i32 %default_gen, 2
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %sw.default.return_crit_edge, label %if.else

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %and3 = and i32 %sys_mask, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp ne i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %default_gen)
  %cmp6 = icmp eq i32 %default_gen, 1
  %or.cond11 = and i1 %tobool4.not, %cmp6
  %spec.select = zext i1 %or.cond11 to i32
  br label %return

return:                                           ; preds = %if.else, %sw.default.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 2, %sw.default.return_crit_edge ], [ %spec.select, %if.else ], [ %asic_gen, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @amdgpu_get_vce_clock_state(ptr noundef readonly %handle, i32 noundef %idx) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_of_vce_states = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 6
  %0 = ptrtoint ptr %num_of_vce_states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_of_vce_states, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp = icmp ugt i32 %1, %idx
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 98, i32 15, i32 7, i32 %idx
  %retval.0 = select i1 %cmp, ptr %arrayidx, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_get_sclk(ptr nocapture noundef readonly %adev, i1 noundef zeroext %low) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %get_sclk = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %get_sclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_sclk, align 4
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %3(ptr noundef %5, i1 noundef zeroext %low) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_get_mclk(ptr nocapture noundef readonly %adev, i1 noundef zeroext %low) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %get_mclk = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %get_mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_mclk, align 4
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %3(ptr noundef %5, i1 noundef zeroext %low) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %adev, i32 noundef %block_type, i1 noundef zeroext %gate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %cond = select i1 %gate, i32 2, i32 1
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 28, i32 %block_type
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond)
  %cmp = icmp eq i32 %3, %cond
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_dpm_set_powergating_by_smu.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_dpm_set_powergating_by_smu, %if.then8)) #12
          to label %cleanup [label %if.then8], !srcloc !258

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  %cond10 = select i1 %gate, ptr @.str.126, ptr @.str.127
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_dpm_set_powergating_by_smu.__UNIQUE_ID_ddebug343, ptr noundef %5, ptr noundef nonnull @.str.125, i32 noundef %block_type, ptr noundef nonnull %cond10) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %6 = zext i32 %block_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %block_type, label %if.end11.if.then36_crit_edge [
    i32 8, label %if.end11.sw.bb_crit_edge
    i32 9, label %if.end11.sw.bb_crit_edge71
    i32 6, label %if.end11.sw.bb23_crit_edge
    i32 11, label %if.end11.sw.bb23_crit_edge72
    i32 7, label %if.end11.sw.bb23_crit_edge73
    i32 13, label %if.end11.sw.bb23_crit_edge74
    i32 1, label %if.end11.sw.bb23_crit_edge75
    i32 10, label %if.end11.sw.bb23_crit_edge76
  ]

if.end11.sw.bb23_crit_edge76:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end11.sw.bb23_crit_edge75:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end11.sw.bb23_crit_edge74:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end11.sw.bb23_crit_edge73:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end11.sw.bb23_crit_edge72:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end11.sw.bb23_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb23

if.end11.sw.bb_crit_edge71:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end11.sw.bb_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end11.if.then36_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

sw.bb:                                            ; preds = %if.end11.sw.bb_crit_edge, %if.end11.sw.bb_crit_edge71
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %sw.bb.if.then36_crit_edge, label %land.lhs.true

sw.bb.if.then36_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

land.lhs.true:                                    ; preds = %sw.bb
  %set_powergating_by_smu = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 33
  %7 = ptrtoint ptr %set_powergating_by_smu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_powergating_by_smu, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %land.lhs.true.if.then36_crit_edge, label %if.then14

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #12
  %9 = ptrtoint ptr %set_powergating_by_smu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_powergating_by_smu, align 4
  %11 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %powerplay, align 8
  %call19 = tail call i32 %10(ptr noundef %12, i32 noundef %block_type, i1 noundef zeroext %gate) #12
  tail call void @mutex_unlock(ptr noundef %pm) #12
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end11.sw.bb23_crit_edge, %if.end11.sw.bb23_crit_edge72, %if.end11.sw.bb23_crit_edge73, %if.end11.sw.bb23_crit_edge74, %if.end11.sw.bb23_crit_edge75, %if.end11.sw.bb23_crit_edge76
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %sw.bb23.if.then36_crit_edge, label %land.lhs.true25

sw.bb23.if.then36_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

land.lhs.true25:                                  ; preds = %sw.bb23
  %set_powergating_by_smu26 = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 33
  %13 = ptrtoint ptr %set_powergating_by_smu26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_powergating_by_smu26, align 4
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %land.lhs.true25.if.then36_crit_edge, label %if.then28

land.lhs.true25.if.then36_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %powerplay, align 8
  %call33 = tail call i32 %14(ptr noundef %16, i32 noundef %block_type, i1 noundef zeroext %gate) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then28, %if.then14
  %ret.0 = phi i32 [ %call33, %if.then28 ], [ %call19, %if.then14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool35.not = icmp eq i32 %ret.0, 0
  br i1 %tobool35.not, label %sw.epilog.if.then36_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.if.then36_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then36:                                        ; preds = %sw.epilog.if.then36_crit_edge, %land.lhs.true25.if.then36_crit_edge, %sw.bb23.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge, %sw.bb.if.then36_crit_edge, %if.end11.if.then36_crit_edge
  %call.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %cond, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %sw.epilog.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then36 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_baco_enter(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_asic_baco_state = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 63
  %4 = ptrtoint ptr %set_asic_baco_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_asic_baco_state, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %3, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_baco_exit(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_asic_baco_state = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 63
  %4 = ptrtoint ptr %set_asic_baco_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_asic_baco_state, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %3, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_set_mp1_state(ptr nocapture noundef readonly %adev, i32 noundef %mp1_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %set_mp1_state = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %set_mp1_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_mp1_state, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %mp1_state) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_dpm_is_baco_supported(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  %baco_cap = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %baco_cap) #12
  %4 = ptrtoint ptr %baco_cap to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %baco_cap, align 1, !annotation !257
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_asic_baco_capability = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 61
  %5 = ptrtoint ptr %get_asic_baco_capability to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_asic_baco_capability, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 %6(ptr noundef %3, ptr noundef nonnull %baco_cap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %baco_cap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %baco_cap, align 1, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9 = icmp ne i8 %8, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool9, %if.end8 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %baco_cap) #12
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_mode2_reset(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %asic_reset_mode_2 = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %asic_reset_mode_2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic_reset_mode_2, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_baco_reset(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %set_asic_baco_state = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 63
  %4 = ptrtoint ptr %set_asic_baco_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_asic_baco_state, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 %5(ptr noundef %3, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %set_asic_baco_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_asic_baco_state, align 4
  %call10 = tail call i32 %7(ptr noundef %3, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call10, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_dpm_is_mode1_reset_supported(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_support_sw_smu(ptr noundef %adev) #12
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %call2 = tail call zeroext i1 @smu_mode1_reset_is_support(ptr noundef %smu1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call2, %if.then ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_support_sw_smu(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smu_mode1_reset_is_support(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_mode1_reset(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_support_sw_smu(ptr noundef %adev) #12
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %call2 = tail call i32 @smu_mode1_reset(ptr noundef %smu1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_mode1_reset(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_switch_power_profile(ptr nocapture noundef readonly %adev, i32 noundef %type, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %switch_power_profile = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %switch_power_profile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %switch_power_profile, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %5(ptr noundef %7, i32 noundef %type, i1 noundef zeroext %en) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then4 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_set_xgmi_pstate(ptr nocapture noundef readonly %adev, i32 noundef %pstate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %set_xgmi_pstate = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %set_xgmi_pstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_xgmi_pstate, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %pstate) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_set_df_cstate(ptr nocapture noundef readonly %adev, i32 noundef %cstate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %2 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %powerplay, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %set_df_cstate = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 67
  %4 = ptrtoint ptr %set_df_cstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_df_cstate, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %3, i32 noundef %cstate) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_allow_xgmi_power_down(ptr noundef %adev, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_support_sw_smu(ptr noundef %adev) #12
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %smu1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %call2 = tail call i32 @smu_allow_xgmi_power_down(ptr noundef %smu1, i1 noundef zeroext %en) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_allow_xgmi_power_down(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_enable_mgpu_fan_boost(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %2 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %enable_mgpu_fan_boost = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 56
  %4 = ptrtoint ptr %enable_mgpu_fan_boost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_mgpu_fan_boost, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_set_clockgating_by_smu(ptr nocapture noundef readonly %adev, i32 noundef %msg_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %2 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %set_clockgating_by_smu = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %set_clockgating_by_smu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_clockgating_by_smu, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %msg_id) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_smu_i2c_bus_access(ptr nocapture noundef readonly %adev, i1 noundef zeroext %acquire) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %0 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %powerplay, align 8
  %pp_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %2 = ptrtoint ptr %pp_funcs3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp_funcs3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %smu_i2c_bus_access = getelementptr inbounds %struct.amd_pm_funcs, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %smu_i2c_bus_access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu_i2c_bus_access, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %1, i1 noundef zeroext %acquire) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -95, %land.lhs.true.if.end_crit_edge ], [ -95, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_pm_acpi_event_handler(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #12
  %call = tail call i32 @power_supply_is_system_supplied() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %spec.select = zext i1 %cmp to i8
  %2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 23
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 4
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %4 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp_funcs, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.then.if.end18_crit_edge, label %land.lhs.true

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %enable_bapm = getelementptr inbounds %struct.amd_pm_funcs, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %enable_bapm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_bapm, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %land.lhs.true.if.end18_crit_edge, label %if.then10

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %powerplay, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17 = icmp ne i8 %11, 0
  tail call void %7(ptr noundef %9, i1 noundef zeroext %tobool17) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %land.lhs.true.if.end18_crit_edge, %if.then.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm) #12
  %call21 = tail call zeroext i1 @is_support_sw_smu(ptr noundef %adev) #12
  br i1 %call21, label %if.then22, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %smu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 97
  %call23 = tail call i32 @smu_set_ac_dc(ptr noundef %smu) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_is_system_supplied() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_set_ac_dc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_dpm_read_sensor(ptr nocapture noundef readonly %adev, i32 noundef %sensor, ptr noundef %data, ptr noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1, align 4
  %tobool.not = icmp eq ptr %data, null
  %tobool2.not = icmp eq ptr %size, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  %tobool3.not = icmp eq ptr %1, null
  %or.cond16 = select i1 %or.cond, i1 true, i1 %tobool3.not
  br i1 %or.cond16, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %read_sensor = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %read_sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_sensor, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %sensor, ptr noundef nonnull %data, ptr noundef nonnull %size) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then5 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dpm_thermal_work_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -29620
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #12
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #12
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %size, align 4
  %pm = getelementptr i8, ptr %work, i32 -556
  %dpm_enabled = getelementptr i8, ptr %work, i32 -428
  %2 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpm_enabled, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %powerplay.i = getelementptr i8, ptr %work, i32 -2860
  %pp_funcs1.i = getelementptr i8, ptr %work, i32 -2856
  %4 = ptrtoint ptr %pp_funcs1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp_funcs1.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.if.else_crit_edge, label %land.lhs.true.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end
  %read_sensor.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %read_sensor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_sensor.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.else_crit_edge, label %amdgpu_dpm_read_sensor.exit

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

amdgpu_dpm_read_sensor.exit:                      ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %powerplay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %powerplay.i, align 8
  %call.i = call i32 %7(ptr noundef %9, i32 noundef 10, ptr noundef nonnull %temp, ptr noundef nonnull %size) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.then2, label %amdgpu_dpm_read_sensor.exit.if.else_crit_edge

amdgpu_dpm_read_sensor.exit.if.else_crit_edge:    ; preds = %amdgpu_dpm_read_sensor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then2:                                         ; preds = %amdgpu_dpm_read_sensor.exit
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %min_temp = getelementptr inbounds %struct.amdgpu_dpm_thermal, ptr %work, i32 0, i32 1
  %12 = ptrtoint ptr %min_temp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %if.then2.if.end17_crit_edge, label %if.then2.if.end17.thread_crit_edge

if.then2.if.end17.thread_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread

if.then2.if.end17_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else:                                          ; preds = %amdgpu_dpm_read_sensor.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.if.else_crit_edge
  %high_to_low = getelementptr inbounds %struct.amdgpu_dpm_thermal, ptr %work, i32 0, i32 10
  %14 = ptrtoint ptr %high_to_low to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %high_to_low, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %if.else.if.end17.thread_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else.if.end17.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %if.else.if.end17.thread_crit_edge, %if.then2.if.end17.thread_crit_edge
  call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #12
  br label %if.end27

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then2.if.end17_crit_edge
  %dpm_state.0.in = getelementptr i8, ptr %work, i32 -268
  %16 = ptrtoint ptr %dpm_state.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %dpm_state.0 = load i32, ptr %dpm_state.0.in, align 4
  call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %dpm_state.0)
  %cmp19 = icmp eq i32 %dpm_state.0, 11
  %spec.select = zext i1 %cmp19 to i8
  br label %if.end27

if.end27:                                         ; preds = %if.end17, %if.end17.thread
  %.sink = phi i8 [ 1, %if.end17.thread ], [ %spec.select, %if.end17 ]
  %dpm_state.051 = phi i32 [ 11, %if.end17.thread ], [ %dpm_state.0, %if.end17 ]
  %thermal_active26 = getelementptr i8, ptr %work, i32 -5
  %17 = ptrtoint ptr %thermal_active26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %thermal_active26, align 1
  %state = getelementptr i8, ptr %work, i32 -272
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dpm_state.051, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %pm) #12
  call void @amdgpu_pm_compute_clocks(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_pm_compute_clocks(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %equal.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 13
  %0 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dpm_enabled, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_crtc = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 20
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.for.body.preheader_crit_edge, label %if.then2

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 24
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %adev) #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then2, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.preheader
  %i.0163 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 90, i32 %i.0163
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %for.body.if.end8_crit_edge, label %land.lhs.true

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %ready = getelementptr inbounds %struct.amdgpu_ring, ptr %9, i32 0, i32 3, i32 17
  %10 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ready, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %if.then7

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_fence_wait_empty(ptr noundef nonnull %9) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end8
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %12 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_funcs, align 4
  %dispatch_tasks = getelementptr inbounds %struct.amd_pm_funcs, ptr %13, i32 0, i32 30
  %14 = ptrtoint ptr %dispatch_tasks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dispatch_tasks, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.end
  %call11 = tail call zeroext i1 @amdgpu_device_has_dc_support(ptr noundef %adev) #12
  br i1 %call11, label %if.then10.if.end45_crit_edge, label %if.then12

if.then10.if.end45_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then12:                                        ; preds = %if.then10
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #12
  %new_active_crtcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 17
  %16 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %new_active_crtcs.i, align 4
  %new_active_crtc_count.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 18
  %17 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %new_active_crtc_count.i, align 4
  %18 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %amdgpu_dpm_get_active_displays.exit.thread154, label %land.lhs.true.i

amdgpu_dpm_get_active_displays.exit.thread154:    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_active_crtc_count.i, align 4
  %num_display156 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 20, i32 4
  %22 = ptrtoint ptr %num_display156 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %num_display156, align 8
  br label %amdgpu_dpm_get_vrefresh.exit

land.lhs.true.i:                                  ; preds = %if.then12
  %mode_config_initialized.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 2
  %23 = ptrtoint ptr %mode_config_initialized.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mode_config_initialized.i, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i = icmp eq i8 %24, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.land.lhs.true.i92_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i92_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i92

if.then.i:                                        ; preds = %land.lhs.true.i
  %crtc_list.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %25 = ptrtoint ptr %crtc_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn34.i = load ptr, ptr %crtc_list.i, align 4
  %cmp.not35.i = icmp eq ptr %.pn34.i, %crtc_list.i
  br i1 %cmp.not35.i, label %if.then.i.land.lhs.true.i92_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.land.lhs.true.i92_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i92

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %.pn36.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn34.i, %if.then.i.for.body.i_crit_edge ]
  %enabled.i = getelementptr i8, ptr %.pn36.i, i32 988
  %26 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not.i = icmp eq i8 %27, 0
  br i1 %tobool10.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %crtc_id.i = getelementptr i8, ptr %.pn36.i, i32 984
  %28 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_id.i, align 8
  %shl.i = shl nuw i32 1, %29
  %30 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_active_crtcs.i, align 4
  %or.i = or i32 %31, %shl.i
  store i32 %or.i, ptr %new_active_crtcs.i, align 4
  %32 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %new_active_crtc_count.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %new_active_crtc_count.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then11.i, %for.body.i.for.inc.i_crit_edge
  %34 = ptrtoint ptr %.pn36.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load ptr, ptr %.pn36.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %crtc_list.i
  br i1 %cmp.not.i, label %for.inc.i.land.lhs.true.i92_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.land.lhs.true.i92_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i92

land.lhs.true.i92:                                ; preds = %for.inc.i.land.lhs.true.i92_crit_edge, %if.then.i.land.lhs.true.i92_crit_edge, %land.lhs.true.i.land.lhs.true.i92_crit_edge
  %35 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %new_active_crtc_count.i, align 4
  %num_display = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 20, i32 4
  %37 = ptrtoint ptr %num_display to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %num_display, align 8
  %38 = ptrtoint ptr %mode_config_initialized.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mode_config_initialized.i, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool2.not.i = icmp eq i8 %39, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i92.amdgpu_dpm_get_vrefresh.exit_crit_edge, label %if.then.i94

land.lhs.true.i92.amdgpu_dpm_get_vrefresh.exit_crit_edge: ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_vrefresh.exit

if.then.i94:                                      ; preds = %land.lhs.true.i92
  %crtc_list.i93 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %40 = ptrtoint ptr %crtc_list.i93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn31.i = load ptr, ptr %crtc_list.i93, align 4
  %cmp.not32.i = icmp eq ptr %.pn31.i, %crtc_list.i93
  br i1 %cmp.not32.i, label %if.then.i94.amdgpu_dpm_get_vrefresh.exit_crit_edge, label %if.then.i94.for.body.i96_crit_edge

if.then.i94.for.body.i96_crit_edge:               ; preds = %if.then.i94
  br label %for.body.i96

if.then.i94.amdgpu_dpm_get_vrefresh.exit_crit_edge: ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_vrefresh.exit

for.body.i96:                                     ; preds = %for.inc.i99.for.body.i96_crit_edge, %if.then.i94.for.body.i96_crit_edge
  %.pn33.i = phi ptr [ %.pn.i97, %for.inc.i99.for.body.i96_crit_edge ], [ %.pn31.i, %if.then.i94.for.body.i96_crit_edge ]
  %enabled.i95 = getelementptr i8, ptr %.pn33.i, i32 160
  %41 = ptrtoint ptr %enabled.i95 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enabled.i95, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool8.not.i = icmp eq i8 %42, 0
  br i1 %tobool8.not.i, label %for.body.i96.for.inc.i99_crit_edge, label %land.lhs.true9.i

for.body.i96.for.inc.i99_crit_edge:               ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i99

land.lhs.true9.i:                                 ; preds = %for.body.i96
  %enabled10.i = getelementptr i8, ptr %.pn33.i, i32 988
  %43 = ptrtoint ptr %enabled10.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enabled10.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool11.not.i = icmp eq i8 %44, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.for.inc.i99_crit_edge, label %land.lhs.true12.i

land.lhs.true9.i.for.inc.i99_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i99

land.lhs.true12.i:                                ; preds = %land.lhs.true9.i
  %hw_mode.i = getelementptr i8, ptr %.pn33.i, i32 1368
  %45 = ptrtoint ptr %hw_mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hw_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool13.not.i = icmp eq i32 %46, 0
  br i1 %tobool13.not.i, label %land.lhs.true12.i.for.inc.i99_crit_edge, label %if.then14.i

land.lhs.true12.i.for.inc.i99_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i99

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw_mode.i.le = getelementptr i8, ptr %.pn33.i, i32 1368
  %call16.i = tail call i32 @drm_mode_vrefresh(ptr noundef %hw_mode.i.le) #12
  br label %amdgpu_dpm_get_vrefresh.exit

for.inc.i99:                                      ; preds = %land.lhs.true12.i.for.inc.i99_crit_edge, %land.lhs.true9.i.for.inc.i99_crit_edge, %for.body.i96.for.inc.i99_crit_edge
  %47 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i97 = load ptr, ptr %.pn33.i, align 4
  %cmp.not.i98 = icmp eq ptr %.pn.i97, %crtc_list.i93
  br i1 %cmp.not.i98, label %for.inc.i99.amdgpu_dpm_get_vrefresh.exit_crit_edge, label %for.inc.i99.for.body.i96_crit_edge

for.inc.i99.for.body.i96_crit_edge:               ; preds = %for.inc.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i96

for.inc.i99.amdgpu_dpm_get_vrefresh.exit_crit_edge: ; preds = %for.inc.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_vrefresh.exit

amdgpu_dpm_get_vrefresh.exit:                     ; preds = %for.inc.i99.amdgpu_dpm_get_vrefresh.exit_crit_edge, %if.then14.i, %if.then.i94.amdgpu_dpm_get_vrefresh.exit_crit_edge, %land.lhs.true.i92.amdgpu_dpm_get_vrefresh.exit_crit_edge, %amdgpu_dpm_get_active_displays.exit.thread154
  %vrefresh.0.i = phi i32 [ %call16.i, %if.then14.i ], [ 0, %land.lhs.true.i92.amdgpu_dpm_get_vrefresh.exit_crit_edge ], [ 0, %if.then.i94.amdgpu_dpm_get_vrefresh.exit_crit_edge ], [ 0, %amdgpu_dpm_get_active_displays.exit.thread154 ], [ 0, %for.inc.i99.amdgpu_dpm_get_vrefresh.exit_crit_edge ]
  %pm_display_cfg153 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 20
  %vrefresh = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 20, i32 12
  %48 = ptrtoint ptr %vrefresh to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %vrefresh.0.i, ptr %vrefresh, align 4
  %49 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i101 = icmp eq i32 %50, 0
  br i1 %tobool.not.i101, label %amdgpu_dpm_get_vrefresh.exit.amdgpu_dpm_get_vblank_time.exit_crit_edge, label %land.lhs.true.i104

amdgpu_dpm_get_vrefresh.exit.amdgpu_dpm_get_vblank_time.exit_crit_edge: ; preds = %amdgpu_dpm_get_vrefresh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_vblank_time.exit

land.lhs.true.i104:                               ; preds = %amdgpu_dpm_get_vrefresh.exit
  %mode_config_initialized.i102 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 2
  %51 = ptrtoint ptr %mode_config_initialized.i102 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mode_config_initialized.i102, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool2.not.i103 = icmp eq i8 %52, 0
  br i1 %tobool2.not.i103, label %land.lhs.true.i104.amdgpu_dpm_get_vblank_time.exit_crit_edge, label %if.then.i106

land.lhs.true.i104.amdgpu_dpm_get_vblank_time.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_vblank_time.exit

if.then.i106:                                     ; preds = %land.lhs.true.i104
  %crtc_list.i105 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %53 = ptrtoint ptr %crtc_list.i105 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn44.i = load ptr, ptr %crtc_list.i105, align 4
  %cmp.not45.i = icmp eq ptr %.pn44.i, %crtc_list.i105
  br i1 %cmp.not45.i, label %if.then.i106.amdgpu_dpm_get_vblank_time.exit_crit_edge, label %if.then.i106.for.body.i109_crit_edge

if.then.i106.for.body.i109_crit_edge:             ; preds = %if.then.i106
  br label %for.body.i109

if.then.i106.amdgpu_dpm_get_vblank_time.exit_crit_edge: ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_vblank_time.exit

for.body.i109:                                    ; preds = %for.inc.i119.for.body.i109_crit_edge, %if.then.i106.for.body.i109_crit_edge
  %.pn46.i = phi ptr [ %.pn.i117, %for.inc.i119.for.body.i109_crit_edge ], [ %.pn44.i, %if.then.i106.for.body.i109_crit_edge ]
  %enabled.i107 = getelementptr i8, ptr %.pn46.i, i32 160
  %54 = ptrtoint ptr %enabled.i107 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enabled.i107, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool8.not.i108 = icmp eq i8 %55, 0
  br i1 %tobool8.not.i108, label %for.body.i109.for.inc.i119_crit_edge, label %land.lhs.true9.i112

for.body.i109.for.inc.i119_crit_edge:             ; preds = %for.body.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i119

land.lhs.true9.i112:                              ; preds = %for.body.i109
  %enabled10.i110 = getelementptr i8, ptr %.pn46.i, i32 988
  %56 = ptrtoint ptr %enabled10.i110 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %enabled10.i110, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool11.not.i111 = icmp eq i8 %57, 0
  br i1 %tobool11.not.i111, label %land.lhs.true9.i112.for.inc.i119_crit_edge, label %land.lhs.true12.i115

land.lhs.true9.i112.for.inc.i119_crit_edge:       ; preds = %land.lhs.true9.i112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i119

land.lhs.true12.i115:                             ; preds = %land.lhs.true9.i112
  %hw_mode.i113 = getelementptr i8, ptr %.pn46.i, i32 1368
  %58 = ptrtoint ptr %hw_mode.i113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hw_mode.i113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool13.not.i114 = icmp eq i32 %59, 0
  br i1 %tobool13.not.i114, label %land.lhs.true12.i115.for.inc.i119_crit_edge, label %if.then14.i116

land.lhs.true12.i115.for.inc.i119_crit_edge:      ; preds = %land.lhs.true12.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i119

if.then14.i116:                                   ; preds = %land.lhs.true12.i115
  call void @__sanitizer_cov_trace_pc() #14
  %crtc_htotal.i = getelementptr i8, ptr %.pn46.i, i32 1410
  %60 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %crtc_htotal.i, align 2
  %conv.i = zext i16 %61 to i32
  %crtc_vblank_end.i = getelementptr i8, ptr %.pn46.i, i32 1418
  %62 = ptrtoint ptr %crtc_vblank_end.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %crtc_vblank_end.i, align 2
  %conv17.i = zext i16 %63 to i32
  %crtc_vdisplay.i = getelementptr i8, ptr %.pn46.i, i32 1414
  %64 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv19.i = zext i16 %65 to i32
  %sub.i = sub nsw i32 %conv17.i, %conv19.i
  %v_border.i = getelementptr i8, ptr %.pn46.i, i32 1045
  %66 = ptrtoint ptr %v_border.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %v_border.i, align 1
  %conv20.i = zext i8 %67 to i32
  %mul.i = shl nuw nsw i32 %conv20.i, 1
  %add.i = add nsw i32 %sub.i, %mul.i
  %mul21.i = mul nuw nsw i32 %conv.i, 1000
  %mul22.i = mul i32 %mul21.i, %add.i
  %div.i = udiv i32 %mul22.i, %59
  br label %amdgpu_dpm_get_vblank_time.exit

for.inc.i119:                                     ; preds = %land.lhs.true12.i115.for.inc.i119_crit_edge, %land.lhs.true9.i112.for.inc.i119_crit_edge, %for.body.i109.for.inc.i119_crit_edge
  %68 = ptrtoint ptr %.pn46.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn.i117 = load ptr, ptr %.pn46.i, align 4
  %cmp.not.i118 = icmp eq ptr %.pn.i117, %crtc_list.i105
  br i1 %cmp.not.i118, label %for.inc.i119.amdgpu_dpm_get_vblank_time.exit_crit_edge, label %for.inc.i119.for.body.i109_crit_edge

for.inc.i119.for.body.i109_crit_edge:             ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i109

for.inc.i119.amdgpu_dpm_get_vblank_time.exit_crit_edge: ; preds = %for.inc.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_vblank_time.exit

amdgpu_dpm_get_vblank_time.exit:                  ; preds = %for.inc.i119.amdgpu_dpm_get_vblank_time.exit_crit_edge, %if.then14.i116, %if.then.i106.amdgpu_dpm_get_vblank_time.exit_crit_edge, %land.lhs.true.i104.amdgpu_dpm_get_vblank_time.exit_crit_edge, %amdgpu_dpm_get_vrefresh.exit.amdgpu_dpm_get_vblank_time.exit_crit_edge
  %vblank_time_us.0.i = phi i32 [ %div.i, %if.then14.i116 ], [ -1, %land.lhs.true.i104.amdgpu_dpm_get_vblank_time.exit_crit_edge ], [ -1, %amdgpu_dpm_get_vrefresh.exit.amdgpu_dpm_get_vblank_time.exit_crit_edge ], [ -1, %if.then.i106.amdgpu_dpm_get_vblank_time.exit_crit_edge ], [ -1, %for.inc.i119.amdgpu_dpm_get_vblank_time.exit_crit_edge ]
  %min_vblank_time = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 20, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %vrefresh.0.i)
  %cmp25 = icmp ugt i32 %vrefresh.0.i, 120
  %spec.store.select = select i1 %cmp25, i32 0, i32 %vblank_time_us.0.i
  %69 = ptrtoint ptr %min_vblank_time to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %spec.store.select, ptr %min_vblank_time, align 8
  %70 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pp_funcs, align 4
  %display_configuration_change = getelementptr inbounds %struct.amd_pm_funcs, ptr %71, i32 0, i32 46
  %72 = ptrtoint ptr %display_configuration_change to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %display_configuration_change, align 4
  %tobool33.not = icmp eq ptr %73, null
  br i1 %tobool33.not, label %amdgpu_dpm_get_vblank_time.exit.if.end42_crit_edge, label %if.then34

amdgpu_dpm_get_vblank_time.exit.if.end42_crit_edge: ; preds = %amdgpu_dpm_get_vblank_time.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then34:                                        ; preds = %amdgpu_dpm_get_vblank_time.exit
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %powerplay, align 8
  %call41 = tail call i32 %73(ptr noundef %75, ptr noundef %pm_display_cfg153) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %amdgpu_dpm_get_vblank_time.exit.if.end42_crit_edge
  tail call void @mutex_unlock(ptr noundef %pm) #12
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.then10.if.end45_crit_edge
  %76 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pp_funcs, align 4
  %dispatch_tasks48 = getelementptr inbounds %struct.amd_pm_funcs, ptr %77, i32 0, i32 30
  %78 = ptrtoint ptr %dispatch_tasks48 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dispatch_tasks48, align 4
  %80 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %powerplay, align 8
  %call51 = tail call i32 %79(ptr noundef %81, i32 noundef 0, ptr noundef null) #12
  br label %cleanup

if.else:                                          ; preds = %for.end
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #12
  %new_active_crtcs.i120 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 17
  %82 = ptrtoint ptr %new_active_crtcs.i120 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %new_active_crtcs.i120, align 4
  %new_active_crtc_count.i121 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 18
  %83 = ptrtoint ptr %new_active_crtc_count.i121 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %new_active_crtc_count.i121, align 4
  %84 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i123 = icmp eq i32 %85, 0
  br i1 %tobool.not.i123, label %if.else.amdgpu_dpm_get_active_displays.exit143_crit_edge, label %land.lhs.true.i126

if.else.amdgpu_dpm_get_active_displays.exit143_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_active_displays.exit143

land.lhs.true.i126:                               ; preds = %if.else
  %mode_config_initialized.i124 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 79, i32 2
  %86 = ptrtoint ptr %mode_config_initialized.i124 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %mode_config_initialized.i124, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool4.not.i125 = icmp eq i8 %87, 0
  br i1 %tobool4.not.i125, label %land.lhs.true.i126.amdgpu_dpm_get_active_displays.exit143_crit_edge, label %if.then.i130

land.lhs.true.i126.amdgpu_dpm_get_active_displays.exit143_crit_edge: ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_active_displays.exit143

if.then.i130:                                     ; preds = %land.lhs.true.i126
  %crtc_list.i127 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 30, i32 20
  %88 = ptrtoint ptr %crtc_list.i127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn34.i128 = load ptr, ptr %crtc_list.i127, align 4
  %cmp.not35.i129 = icmp eq ptr %.pn34.i128, %crtc_list.i127
  br i1 %cmp.not35.i129, label %if.then.i130.amdgpu_dpm_get_active_displays.exit143_crit_edge, label %if.then.i130.for.body.i134_crit_edge

if.then.i130.for.body.i134_crit_edge:             ; preds = %if.then.i130
  br label %for.body.i134

if.then.i130.amdgpu_dpm_get_active_displays.exit143_crit_edge: ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_active_displays.exit143

for.body.i134:                                    ; preds = %for.inc.i142.for.body.i134_crit_edge, %if.then.i130.for.body.i134_crit_edge
  %.pn36.i131 = phi ptr [ %.pn.i140, %for.inc.i142.for.body.i134_crit_edge ], [ %.pn34.i128, %if.then.i130.for.body.i134_crit_edge ]
  %enabled.i132 = getelementptr i8, ptr %.pn36.i131, i32 988
  %89 = ptrtoint ptr %enabled.i132 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %enabled.i132, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool10.not.i133 = icmp eq i8 %90, 0
  br i1 %tobool10.not.i133, label %for.body.i134.for.inc.i142_crit_edge, label %if.then11.i139

for.body.i134.for.inc.i142_crit_edge:             ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i142

if.then11.i139:                                   ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #14
  %crtc_id.i135 = getelementptr i8, ptr %.pn36.i131, i32 984
  %91 = ptrtoint ptr %crtc_id.i135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %crtc_id.i135, align 8
  %shl.i136 = shl nuw i32 1, %92
  %93 = ptrtoint ptr %new_active_crtcs.i120 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %new_active_crtcs.i120, align 4
  %or.i137 = or i32 %94, %shl.i136
  store i32 %or.i137, ptr %new_active_crtcs.i120, align 4
  %95 = ptrtoint ptr %new_active_crtc_count.i121 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %new_active_crtc_count.i121, align 4
  %inc.i138 = add i32 %96, 1
  store i32 %inc.i138, ptr %new_active_crtc_count.i121, align 4
  br label %for.inc.i142

for.inc.i142:                                     ; preds = %if.then11.i139, %for.body.i134.for.inc.i142_crit_edge
  %97 = ptrtoint ptr %.pn36.i131 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn.i140 = load ptr, ptr %.pn36.i131, align 4
  %cmp.not.i141 = icmp eq ptr %.pn.i140, %crtc_list.i127
  br i1 %cmp.not.i141, label %for.inc.i142.amdgpu_dpm_get_active_displays.exit143_crit_edge, label %for.inc.i142.for.body.i134_crit_edge

for.inc.i142.for.body.i134_crit_edge:             ; preds = %for.inc.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i134

for.inc.i142.amdgpu_dpm_get_active_displays.exit143_crit_edge: ; preds = %for.inc.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_get_active_displays.exit143

amdgpu_dpm_get_active_displays.exit143:           ; preds = %for.inc.i142.amdgpu_dpm_get_active_displays.exit143_crit_edge, %if.then.i130.amdgpu_dpm_get_active_displays.exit143_crit_edge, %land.lhs.true.i126.amdgpu_dpm_get_active_displays.exit143_crit_edge, %if.else.amdgpu_dpm_get_active_displays.exit143_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %equal.i) #12
  %98 = ptrtoint ptr %equal.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %equal.i, align 1
  %99 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %dpm_enabled, align 8, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i144 = icmp eq i8 %100, 0
  br i1 %tobool.not.i144, label %amdgpu_dpm_get_active_displays.exit143.amdgpu_dpm_change_power_state_locked.exit_crit_edge, label %if.end.i

amdgpu_dpm_get_active_displays.exit143.amdgpu_dpm_change_power_state_locked.exit_crit_edge: ; preds = %amdgpu_dpm_get_active_displays.exit143
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_change_power_state_locked.exit

if.end.i:                                         ; preds = %amdgpu_dpm_get_active_displays.exit143
  %user_state.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 10
  %101 = ptrtoint ptr %user_state.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %user_state.i, align 4
  %state.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 9
  %103 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp.not.i145 = icmp eq i32 %102, %104
  br i1 %cmp.not.i145, label %if.end.i.if.end19.i_crit_edge, label %if.then4.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then4.i:                                       ; preds = %if.end.i
  %thermal_active.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 32
  %105 = ptrtoint ptr %thermal_active.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %thermal_active.i, align 1, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool7.not.i = icmp eq i8 %106, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i147, label %if.then4.i.if.end19.i_crit_edge

if.then4.i.if.end19.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

land.lhs.true.i147:                               ; preds = %if.then4.i
  %uvd_active.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 33
  %107 = ptrtoint ptr %uvd_active.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %uvd_active.i, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool10.not.i146 = icmp eq i8 %108, 0
  br i1 %tobool10.not.i146, label %if.then11.i148, label %land.lhs.true.i147.if.end19.i_crit_edge

land.lhs.true.i147.if.end19.i_crit_edge:          ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then11.i148:                                   ; preds = %land.lhs.true.i147
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %102, ptr %state.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then11.i148, %land.lhs.true.i147.if.end19.i_crit_edge, %if.then4.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %110 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %state.i, align 4
  %dpm.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15
  %112 = ptrtoint ptr %new_active_crtc_count.i121 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %new_active_crtc_count.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp.i.i = icmp slt i32 %113, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end19.i.if.end8.i.i_crit_edge

if.end19.i.if.end8.i.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end19.i
  %114 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pp_funcs, align 4
  %vblank_too_short.i.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %vblank_too_short.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %vblank_too_short.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %117, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %powerplay, align 8
  %call.i.i = tail call zeroext i1 %117(ptr noundef %119) #12
  %not.call.i.i = xor i1 %call.i.i, true
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end8.i.i_crit_edge, %if.end19.i.if.end8.i.i_crit_edge
  %single_display.0.shrunk.i.i = phi i1 [ true, %land.lhs.true.i.i.if.end8.i.i_crit_edge ], [ false, %if.end19.i.if.end8.i.i_crit_edge ], [ %not.call.i.i, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %111)
  %cmp9.i.i = icmp eq i32 %111, 4
  %spec.store.select.i.i = select i1 %cmp9.i.i, i32 14, i32 %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.store.select.i.i)
  %cmp12.i.i = icmp eq i32 %spec.store.select.i.i, 3
  %spec.store.select135.i.i = select i1 %cmp12.i.i, i32 4, i32 %spec.store.select.i.i
  %num_ps.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 1
  %120 = ptrtoint ptr %num_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_ps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp17187.i.i = icmp sgt i32 %121, 0
  %uvd_ps.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 5
  br label %restart_search.i.i

restart_search.i.i:                               ; preds = %restart_search.i.i.backedge, %if.end8.i.i
  %dpm_state.addr.0.i.i = phi i32 [ %spec.store.select135.i.i, %if.end8.i.i ], [ %dpm_state.addr.0.i.i.be, %restart_search.i.i.backedge ]
  br i1 %cmp17187.i.i, label %for.body.lr.ph.i.i, label %restart_search.i.i.for.end.i.i_crit_edge

restart_search.i.i.for.end.i.i_crit_edge:         ; preds = %restart_search.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %restart_search.i.i
  %122 = ptrtoint ptr %dpm.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dpm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %dpm_state.addr.0.i.i)
  %cond.i.i = icmp eq i32 %dpm_state.addr.0.i.i, 10
  br i1 %cond.i.i, label %sw.bb89.i.i, label %for.body.lr.ph.i.i.for.body.i.i_crit_edge

for.body.lr.ph.i.i.for.body.i.i_crit_edge:        ; preds = %for.body.lr.ph.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i.for.body.i.i_crit_edge
  %i.0188.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.lr.ph.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.amdgpu_ps, ptr %123, i32 %i.0188.i.i
  %class.i.i = getelementptr %struct.amdgpu_ps, ptr %123, i32 %i.0188.i.i, i32 1
  %124 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %class.i.i, align 4
  %and.i.i = and i32 %125, 7
  %126 = zext i32 %dpm_state.addr.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %dpm_state.addr.0.i.i, label %for.body.i.i.for.inc.i.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 3, label %sw.bb31.i.i
    i32 4, label %sw.bb44.i.i
    i32 5, label %sw.bb57.i.i
    i32 6, label %sw.bb66.i.i
    i32 7, label %sw.bb72.i.i
    i32 8, label %sw.bb78.i.i
    i32 9, label %sw.bb84.i.i
    i32 14, label %sw.bb110.i.i
    i32 11, label %sw.bb92.i.i
    i32 12, label %sw.bb98.i.i
    i32 13, label %sw.bb104.i.i
  ]

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb.i.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp21.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp21.i.i, label %if.then22.i.i, label %sw.bb.i.i.for.inc.i.i_crit_edge

sw.bb.i.i.for.inc.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then22.i.i:                                    ; preds = %sw.bb.i.i
  %127 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i.i, align 4
  %and23.i.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  %brmerge.i.i = select i1 %tobool24.not.i.i, i1 true, i1 %single_display.0.shrunk.i.i
  br i1 %brmerge.i.i, label %if.then22.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, label %if.then22.i.i.for.inc.i.i_crit_edge

if.then22.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then22.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb31.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp32.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp32.i.i, label %if.then33.i.i, label %sw.bb31.i.i.for.inc.i.i_crit_edge

sw.bb31.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then33.i.i:                                    ; preds = %sw.bb31.i.i
  %129 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i.i, align 4
  %and35.i.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  %brmerge183.i.i = select i1 %tobool36.not.i.i, i1 true, i1 %single_display.0.shrunk.i.i
  br i1 %brmerge183.i.i, label %if.then33.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, label %if.then33.i.i.for.inc.i.i_crit_edge

if.then33.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then33.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb44.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i.i)
  %cmp45.i.i = icmp eq i32 %and.i.i, 5
  br i1 %cmp45.i.i, label %if.then46.i.i, label %sw.bb44.i.i.for.inc.i.i_crit_edge

sw.bb44.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then46.i.i:                                    ; preds = %sw.bb44.i.i
  %131 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx.i.i, align 4
  %and48.i.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  %brmerge184.i.i = select i1 %tobool49.not.i.i, i1 true, i1 %single_display.0.shrunk.i.i
  br i1 %brmerge184.i.i, label %if.then46.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, label %if.then46.i.i.for.inc.i.i_crit_edge

if.then46.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then46.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb57.i.i:                                      ; preds = %for.body.i.i
  %133 = ptrtoint ptr %uvd_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %uvd_ps.i.i, align 4
  %tobool60.not.i.i = icmp eq ptr %134, null
  br i1 %tobool60.not.i.i, label %sw.bb57.i.i.for.inc.i.i_crit_edge, label %sw.bb57.i.i.if.then24.i_crit_edge

sw.bb57.i.i.if.then24.i_crit_edge:                ; preds = %sw.bb57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

sw.bb57.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb66.i.i:                                      ; preds = %for.body.i.i
  %and68.i.i = and i32 %125, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %tobool69.not.i.i = icmp eq i32 %and68.i.i, 0
  br i1 %tobool69.not.i.i, label %sw.bb66.i.i.for.inc.i.i_crit_edge, label %sw.bb66.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge

sw.bb66.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %sw.bb66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb66.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb66.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb72.i.i:                                      ; preds = %for.body.i.i
  %and74.i.i = and i32 %125, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i.i)
  %tobool75.not.i.i = icmp eq i32 %and74.i.i, 0
  br i1 %tobool75.not.i.i, label %sw.bb72.i.i.for.inc.i.i_crit_edge, label %sw.bb72.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge

sw.bb72.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %sw.bb72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb72.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb78.i.i:                                      ; preds = %for.body.i.i
  %and80.i.i = and i32 %125, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i.i)
  %tobool81.not.i.i = icmp eq i32 %and80.i.i, 0
  br i1 %tobool81.not.i.i, label %sw.bb78.i.i.for.inc.i.i_crit_edge, label %sw.bb78.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge

sw.bb78.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %sw.bb78.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb78.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb78.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb84.i.i:                                      ; preds = %for.body.i.i
  %class2.i.i = getelementptr %struct.amdgpu_ps, ptr %123, i32 %i.0188.i.i, i32 2
  %135 = ptrtoint ptr %class2.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %class2.i.i, align 4
  %and85.i.i = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i.i)
  %tobool86.not.i.i = icmp eq i32 %and85.i.i, 0
  br i1 %tobool86.not.i.i, label %sw.bb84.i.i.for.inc.i.i_crit_edge, label %sw.bb84.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge

sw.bb84.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %sw.bb84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb84.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb89.i.i:                                      ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %boot_ps.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 4
  %137 = ptrtoint ptr %boot_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %boot_ps.i.i, align 4
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb92.i.i:                                      ; preds = %for.body.i.i
  %and94.i.i = and i32 %125, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i.i)
  %tobool95.not.i.i = icmp eq i32 %and94.i.i, 0
  br i1 %tobool95.not.i.i, label %sw.bb92.i.i.for.inc.i.i_crit_edge, label %sw.bb92.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge

sw.bb92.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %sw.bb92.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb92.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb92.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb98.i.i:                                      ; preds = %for.body.i.i
  %and100.i.i = and i32 %125, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i.i)
  %tobool101.not.i.i = icmp eq i32 %and100.i.i, 0
  br i1 %tobool101.not.i.i, label %sw.bb98.i.i.for.inc.i.i_crit_edge, label %sw.bb98.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge

sw.bb98.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %sw.bb98.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb98.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb98.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb104.i.i:                                     ; preds = %for.body.i.i
  %class2105.i.i = getelementptr %struct.amdgpu_ps, ptr %123, i32 %i.0188.i.i, i32 2
  %139 = ptrtoint ptr %class2105.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %class2105.i.i, align 4
  %and106.i.i = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i.i)
  %tobool107.not.i.i = icmp eq i32 %and106.i.i, 0
  br i1 %tobool107.not.i.i, label %sw.bb104.i.i.for.inc.i.i_crit_edge, label %sw.bb104.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge

sw.bb104.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %sw.bb104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb104.i.i.for.inc.i.i_crit_edge:               ; preds = %sw.bb104.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

sw.bb110.i.i:                                     ; preds = %for.body.i.i
  %and112.i.i = and i32 %125, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i.i)
  %tobool113.not.i.i = icmp eq i32 %and112.i.i, 0
  br i1 %tobool113.not.i.i, label %sw.bb110.i.i.for.inc.i.i_crit_edge, label %sw.bb110.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge

sw.bb110.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge: ; preds = %sw.bb110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_pick_power_state.exit.i

sw.bb110.i.i.for.inc.i.i_crit_edge:               ; preds = %sw.bb110.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb110.i.i.for.inc.i.i_crit_edge, %sw.bb104.i.i.for.inc.i.i_crit_edge, %sw.bb98.i.i.for.inc.i.i_crit_edge, %sw.bb92.i.i.for.inc.i.i_crit_edge, %sw.bb84.i.i.for.inc.i.i_crit_edge, %sw.bb78.i.i.for.inc.i.i_crit_edge, %sw.bb72.i.i.for.inc.i.i_crit_edge, %sw.bb66.i.i.for.inc.i.i_crit_edge, %sw.bb57.i.i.for.inc.i.i_crit_edge, %if.then46.i.i.for.inc.i.i_crit_edge, %sw.bb44.i.i.for.inc.i.i_crit_edge, %if.then33.i.i.for.inc.i.i_crit_edge, %sw.bb31.i.i.for.inc.i.i_crit_edge, %if.then22.i.i.for.inc.i.i_crit_edge, %sw.bb.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0188.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %121
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %restart_search.i.i.for.end.i.i_crit_edge
  %141 = zext i32 %dpm_state.addr.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %dpm_state.addr.0.i.i, label %for.end.i.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge [
    i32 6, label %for.end.i.i.restart_search.i.i.backedge_crit_edge
    i32 7, label %for.end.i.i.sw.bb117.i.i_crit_edge
    i32 8, label %for.end.i.i.sw.bb117.i.i_crit_edge197
    i32 9, label %for.end.i.i.sw.bb117.i.i_crit_edge198
    i32 11, label %sw.bb127.i.i
    i32 12, label %sw.bb128.i.i
    i32 2, label %for.end.i.i.sw.bb129.i.i_crit_edge
    i32 3, label %for.end.i.i.sw.bb129.i.i_crit_edge199
    i32 14, label %for.end.i.i.sw.bb129.i.i_crit_edge200
  ]

for.end.i.i.sw.bb129.i.i_crit_edge200:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb129.i.i

for.end.i.i.sw.bb129.i.i_crit_edge199:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb129.i.i

for.end.i.i.sw.bb129.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb129.i.i

for.end.i.i.sw.bb117.i.i_crit_edge198:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb117.i.i

for.end.i.i.sw.bb117.i.i_crit_edge197:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb117.i.i

for.end.i.i.sw.bb117.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb117.i.i

for.end.i.i.restart_search.i.i.backedge_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart_search.i.i.backedge

for.end.i.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_change_power_state_locked.exit

sw.bb117.i.i:                                     ; preds = %for.end.i.i.sw.bb117.i.i_crit_edge, %for.end.i.i.sw.bb117.i.i_crit_edge197, %for.end.i.i.sw.bb117.i.i_crit_edge198
  %142 = ptrtoint ptr %uvd_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %uvd_ps.i.i, align 4
  %tobool121.not.i.i = icmp eq ptr %143, null
  br i1 %tobool121.not.i.i, label %sw.bb117.i.i.restart_search.i.i.backedge_crit_edge, label %sw.bb117.i.i.if.then24.i_crit_edge

sw.bb117.i.i.if.then24.i_crit_edge:               ; preds = %sw.bb117.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

sw.bb117.i.i.restart_search.i.i.backedge_crit_edge: ; preds = %sw.bb117.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart_search.i.i.backedge

sw.bb127.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart_search.i.i.backedge

sw.bb128.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart_search.i.i.backedge

sw.bb129.i.i:                                     ; preds = %for.end.i.i.sw.bb129.i.i_crit_edge, %for.end.i.i.sw.bb129.i.i_crit_edge199, %for.end.i.i.sw.bb129.i.i_crit_edge200
  br label %restart_search.i.i.backedge

restart_search.i.i.backedge:                      ; preds = %sw.bb129.i.i, %sw.bb128.i.i, %sw.bb127.i.i, %sw.bb117.i.i.restart_search.i.i.backedge_crit_edge, %for.end.i.i.restart_search.i.i.backedge_crit_edge
  %dpm_state.addr.0.i.i.be = phi i32 [ 4, %sw.bb129.i.i ], [ 2, %sw.bb128.i.i ], [ 12, %sw.bb127.i.i ], [ 7, %for.end.i.i.restart_search.i.i.backedge_crit_edge ], [ 4, %sw.bb117.i.i.restart_search.i.i.backedge_crit_edge ]
  br label %restart_search.i.i

amdgpu_dpm_pick_power_state.exit.i:               ; preds = %sw.bb110.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %sw.bb104.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %sw.bb98.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %sw.bb92.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %sw.bb89.i.i, %sw.bb84.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %sw.bb78.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %sw.bb72.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %sw.bb66.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %if.then46.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %if.then33.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge, %if.then22.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %138, %sw.bb89.i.i ], [ %arrayidx.i.i, %if.then22.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %if.then33.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %if.then46.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %sw.bb66.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %sw.bb72.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %sw.bb78.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %sw.bb84.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %sw.bb92.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %sw.bb98.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %sw.bb104.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ], [ %arrayidx.i.i, %sw.bb110.i.i.amdgpu_dpm_pick_power_state.exit.i_crit_edge ]
  %tobool23.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool23.not.i, label %amdgpu_dpm_pick_power_state.exit.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge, label %amdgpu_dpm_pick_power_state.exit.i.if.then24.i_crit_edge

amdgpu_dpm_pick_power_state.exit.i.if.then24.i_crit_edge: ; preds = %amdgpu_dpm_pick_power_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i

amdgpu_dpm_pick_power_state.exit.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge: ; preds = %amdgpu_dpm_pick_power_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_change_power_state_locked.exit

if.then24.i:                                      ; preds = %amdgpu_dpm_pick_power_state.exit.i.if.then24.i_crit_edge, %sw.bb117.i.i.if.then24.i_crit_edge, %sw.bb57.i.i.if.then24.i_crit_edge
  %retval.0.i201.i = phi ptr [ %retval.0.i.i, %amdgpu_dpm_pick_power_state.exit.i.if.then24.i_crit_edge ], [ %134, %sw.bb57.i.i.if.then24.i_crit_edge ], [ %143, %sw.bb117.i.i.if.then24.i_crit_edge ]
  %requested_ps.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 3
  %144 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %retval.0.i201.i, ptr %requested_ps.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_dpm to i32))
  %145 = load i32, ptr @amdgpu_dpm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp28.i = icmp eq i32 %145, 1
  br i1 %cmp28.i, label %land.lhs.true29.i, label %if.then24.i.if.end52.i_crit_edge

if.then24.i.if.end52.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

land.lhs.true29.i:                                ; preds = %if.then24.i
  %146 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pp_funcs, align 4
  %print_power_state.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %print_power_state.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %print_power_state.i, align 4
  %tobool30.not.i = icmp eq ptr %149, null
  br i1 %tobool30.not.i, label %land.lhs.true29.i.if.end52.i_crit_edge, label %do.end.i

land.lhs.true29.i.if.end52.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

do.end.i:                                         ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #14
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #15
  %150 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pp_funcs, align 4
  %print_power_state35.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %print_power_state35.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %print_power_state35.i, align 4
  %154 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %powerplay, align 8
  %current_ps.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 2
  %156 = ptrtoint ptr %current_ps.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %current_ps.i, align 4
  tail call void %153(ptr noundef %155, ptr noundef %157) #12
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #15
  %158 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pp_funcs, align 4
  %print_power_state46.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %print_power_state46.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %print_power_state46.i, align 4
  %162 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %powerplay, align 8
  %164 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %requested_ps.i, align 4
  tail call void %161(ptr noundef %163, ptr noundef %165) #12
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end.i, %land.lhs.true29.i.if.end52.i_crit_edge, %if.then24.i.if.end52.i_crit_edge
  %vce_active.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 34
  %166 = ptrtoint ptr %vce_active.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %vce_active.i, align 1, !range !256
  %vce_active56.i = getelementptr inbounds %struct.amdgpu_ps, ptr %retval.0.i201.i, i32 0, i32 7
  %168 = ptrtoint ptr %vce_active56.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %vce_active56.i, align 4
  %169 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pp_funcs, align 4
  %display_configuration_changed.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %display_configuration_changed.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %display_configuration_changed.i, align 4
  %tobool59.not.i = icmp eq ptr %172, null
  br i1 %tobool59.not.i, label %if.end52.i.if.end66.i_crit_edge, label %if.then60.i

if.end52.i.if.end66.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66.i

if.then60.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %powerplay, align 8
  tail call void %172(ptr noundef %174) #12
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then60.i, %if.end52.i.if.end66.i_crit_edge
  %175 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pp_funcs, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %179 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %powerplay, align 8
  %call71.i = tail call i32 %178(ptr noundef %180) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end66.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge

if.end66.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_change_power_state_locked.exit

if.end74.i:                                       ; preds = %if.end66.i
  %181 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pp_funcs, align 4
  %check_state_equal.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %182, i32 0, i32 7
  %183 = ptrtoint ptr %check_state_equal.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %check_state_equal.i, align 4
  %tobool77.not.i = icmp eq ptr %184, null
  br i1 %tobool77.not.i, label %if.end74.i.if.end94.i_crit_edge, label %if.then78.i

if.end74.i.if.end94.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

if.then78.i:                                      ; preds = %if.end74.i
  %185 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %powerplay, align 8
  %current_ps86.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 2
  %187 = ptrtoint ptr %current_ps86.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %current_ps86.i, align 4
  %189 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %requested_ps.i, align 4
  %call90.i = call i32 %184(ptr noundef %186, ptr noundef %188, ptr noundef %190, ptr noundef nonnull %equal.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.not.i = icmp eq i32 %call90.i, 0
  br i1 %cmp91.not.i, label %if.then78.i.if.end94.i_crit_edge, label %if.end94.thread.i

if.then78.i.if.end94.i_crit_edge:                 ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

if.end94.thread.i:                                ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #14
  %191 = ptrtoint ptr %equal.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %equal.i, align 1
  br label %if.end97.i

if.end94.i:                                       ; preds = %if.then78.i.if.end94.i_crit_edge, %if.end74.i.if.end94.i_crit_edge
  %192 = ptrtoint ptr %equal.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %.pr.i = load i8, ptr %equal.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool95.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool95.not.i, label %if.end94.i.if.end97.i_crit_edge, label %if.end94.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge

if.end94.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_change_power_state_locked.exit

if.end94.i.if.end97.i_crit_edge:                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end94.i.if.end97.i_crit_edge, %if.end94.thread.i
  %193 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pp_funcs, align 4
  %set_power_state.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %set_power_state.i, align 4
  %197 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %powerplay, align 8
  %call102.i = call i32 %196(ptr noundef %198) #12
  %199 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pp_funcs, align 4
  %post_set_power_state.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %post_set_power_state.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %post_set_power_state.i, align 4
  %203 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %powerplay, align 8
  call void %202(ptr noundef %204) #12
  %205 = ptrtoint ptr %new_active_crtcs.i120 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %new_active_crtcs.i120, align 4
  %current_active_crtcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 19
  %207 = ptrtoint ptr %current_active_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %current_active_crtcs.i, align 4
  %208 = ptrtoint ptr %new_active_crtc_count.i121 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %new_active_crtc_count.i121, align 4
  %current_active_crtc_count.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 20
  %210 = ptrtoint ptr %current_active_crtc_count.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %current_active_crtc_count.i, align 4
  %211 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pp_funcs, align 4
  %force_performance_level.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %212, i32 0, i32 14
  %213 = ptrtoint ptr %force_performance_level.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %force_performance_level.i, align 4
  %tobool117.not.i = icmp eq ptr %214, null
  br i1 %tobool117.not.i, label %if.end97.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge, label %if.then118.i

if.end97.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_dpm_change_power_state_locked.exit

if.then118.i:                                     ; preds = %if.end97.i
  %thermal_active121.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 32
  %215 = ptrtoint ptr %thermal_active121.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %thermal_active121.i, align 1, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool122.not.i = icmp eq i8 %216, 0
  br i1 %tobool122.not.i, label %if.else135.i, label %if.then123.i

if.then123.i:                                     ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #14
  %forced_level.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 36
  %217 = ptrtoint ptr %forced_level.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %forced_level.i, align 4
  %219 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %powerplay, align 8
  %call131.i = call i32 %214(ptr noundef %220, i32 noundef 4) #12
  %221 = ptrtoint ptr %forced_level.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %218, ptr %forced_level.i, align 4
  br label %amdgpu_dpm_change_power_state_locked.exit

if.else135.i:                                     ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #14
  %222 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %powerplay, align 8
  %forced_level143.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 36
  %224 = ptrtoint ptr %forced_level143.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %forced_level143.i, align 4
  %call144.i = call i32 %214(ptr noundef %223, i32 noundef %225) #12
  br label %amdgpu_dpm_change_power_state_locked.exit

amdgpu_dpm_change_power_state_locked.exit:        ; preds = %if.else135.i, %if.then123.i, %if.end97.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge, %if.end94.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge, %if.end66.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge, %amdgpu_dpm_pick_power_state.exit.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge, %for.end.i.i.amdgpu_dpm_change_power_state_locked.exit_crit_edge, %amdgpu_dpm_get_active_displays.exit143.amdgpu_dpm_change_power_state_locked.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %equal.i) #12
  call void @mutex_unlock(ptr noundef %pm) #12
  br label %cleanup

cleanup:                                          ; preds = %amdgpu_dpm_change_power_state_locked.exit, %if.end45, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_empty(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_has_dc_support(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dpm_enable_uvd(ptr noundef %adev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %1)
  %cmp = icmp eq i32 %1, 110
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #12
  br i1 %enable, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.then1 ], [ 0, %if.then.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 33
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %pm) #12
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %adev)
  br label %if.end33

if.else10:                                        ; preds = %entry
  %lnot = xor i1 %enable, true
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %adev, i32 noundef 8, i1 noundef zeroext %lnot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.else10.if.end15_crit_edge, label %if.then13

if.else10.if.end15_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %enable, ptr @.str.129, ptr @.str.130
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.128, ptr noundef nonnull %cond, i32 noundef %call) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else10.if.end15_crit_edge
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 5
  %5 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp16 = icmp eq i32 %6, 14
  br i1 %cmp16, label %land.lhs.true, label %if.end15.if.end33_crit_edge

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end15
  %decode_image_width = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 108, i32 13
  %7 = ptrtoint ptr %decode_image_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %decode_image_width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3839, i32 %8)
  %cmp17 = icmp ugt i32 %8, 3839
  br i1 %cmp17, label %if.then18, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then18:                                        ; preds = %land.lhs.true
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %9 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %powerplay, align 8
  %tobool19.not = icmp eq ptr %10, null
  br i1 %tobool19.not, label %if.then18.if.end33_crit_edge, label %land.lhs.true20

if.then18.if.end33_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true20:                                  ; preds = %if.then18
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %10, i32 0, i32 30
  %11 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwmgr_func, align 4
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %land.lhs.true20.if.end33_crit_edge, label %land.lhs.true22

land.lhs.true20.if.end33_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %update_nbdpm_pstate = getelementptr inbounds %struct.pp_hwmgr_func, ptr %12, i32 0, i32 65
  %13 = ptrtoint ptr %update_nbdpm_pstate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %update_nbdpm_pstate, align 4
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %land.lhs.true22.if.end33_crit_edge, label %if.then25

land.lhs.true22.if.end33_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call i32 %14(ptr noundef nonnull %10, i1 noundef zeroext %lnot, i1 noundef zeroext true) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %land.lhs.true22.if.end33_crit_edge, %land.lhs.true20.if.end33_crit_edge, %if.then18.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.end15.if.end33_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dpm_enable_vce(ptr noundef %adev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %1)
  %cmp = icmp eq i32 %1, 110
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %pm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98
  tail call void @mutex_lock_nested(ptr noundef %pm, i32 noundef 0) #12
  br i1 %enable, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %vce_level = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 8
  %2 = ptrtoint ptr %vce_level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vce_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.then1 ], [ 0, %if.then.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 34
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %3, align 1
  tail call void @mutex_unlock(ptr noundef %pm) #12
  tail call void @amdgpu_pm_compute_clocks(ptr noundef %adev)
  br label %if.end16

if.else10:                                        ; preds = %entry
  %lnot = xor i1 %enable, true
  %call = tail call i32 @amdgpu_dpm_set_powergating_by_smu(ptr noundef %adev, i32 noundef 9, i1 noundef zeroext %lnot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.else10.if.end16_crit_edge, label %if.then13

if.else10.if.end16_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %enable, ptr @.str.129, ptr @.str.130
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.131, ptr noundef nonnull %cond, i32 noundef %call) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else10.if.end16_crit_edge, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_pm_print_power_states(ptr nocapture noundef readonly %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs, align 4
  %print_power_state = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %print_power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %print_power_state, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_ps = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15, i32 1
  %4 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp114 = icmp sgt i32 %5, 0
  br i1 %cmp114, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dpm = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_funcs, align 4
  %print_power_state4 = getelementptr inbounds %struct.amd_pm_funcs, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %print_power_state4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %print_power_state4, align 4
  %10 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %powerplay, align 8
  %12 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dpm, align 4
  %arrayidx = getelementptr %struct.amdgpu_ps, ptr %13, i32 %i.015
  tail call void %9(ptr noundef %11, ptr noundef %arrayidx) #12
  %inc = add nuw nsw i32 %i.015, 1
  %14 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ps, align 4
  %cmp1 = icmp slt i32 %inc, %15
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_dpm_enable_jpeg(ptr noundef %adev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lnot = xor i1 %enable, true
  %powerplay.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs1.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs1.i, align 4
  %cond.i = select i1 %enable, i32 1, i32 2
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 28, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond.i)
  %cmp.i = icmp eq i32 %3, %cond.i
  br i1 %cmp.i, label %do.body.i, label %if.end11.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_dpm_set_powergating_by_smu.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_dpm_enable_jpeg, %if.then8.i)) #12
          to label %if.end [label %if.then8.i], !srcloc !258

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 8
  %cond10.i = select i1 %enable, ptr @.str.127, ptr @.str.126
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amdgpu_dpm_set_powergating_by_smu.__UNIQUE_ID_ddebug343, ptr noundef %5, ptr noundef nonnull @.str.125, i32 noundef 13, ptr noundef nonnull %cond10.i) #12
  br label %if.end

if.end11.i:                                       ; preds = %entry
  %tobool24.not.i = icmp eq ptr %1, null
  br i1 %tobool24.not.i, label %if.end11.i.if.then36.i_crit_edge, label %land.lhs.true25.i

if.end11.i.if.then36.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36.i

land.lhs.true25.i:                                ; preds = %if.end11.i
  %set_powergating_by_smu26.i = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %set_powergating_by_smu26.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_powergating_by_smu26.i, align 4
  %tobool27.not.i = icmp eq ptr %7, null
  br i1 %tobool27.not.i, label %land.lhs.true25.i.if.then36.i_crit_edge, label %if.then28.i

land.lhs.true25.i.if.then36.i_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36.i

if.then28.i:                                      ; preds = %land.lhs.true25.i
  %8 = ptrtoint ptr %powerplay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %powerplay.i, align 8
  %call33.i = tail call i32 %7(ptr noundef %9, i32 noundef 13, i1 noundef zeroext %lnot) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool35.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool35.not.i, label %if.then28.i.if.then36.i_crit_edge, label %if.then

if.then28.i.if.then36.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.then28.i.if.then36.i_crit_edge, %land.lhs.true25.i.if.then36.i_crit_edge, %if.end11.i.if.then36.i_crit_edge
  %call.i.i66.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %cond.i, ptr %arrayidx.i, align 4
  br label %if.end

if.then:                                          ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %enable, ptr @.str.129, ptr @.str.130
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.132, ptr noundef nonnull %cond, i32 noundef %call33.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then36.i, %if.then8.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_pm_load_smu_firmware(ptr nocapture noundef readonly %adev, ptr noundef writeonly %smu_version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %powerplay = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95
  %pp_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 95, i32 1
  %0 = ptrtoint ptr %pp_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp_funcs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %load_firmware = getelementptr inbounds %struct.amd_pm_funcs, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %load_firmware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %load_firmware, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %powerplay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %powerplay, align 8
  %call = tail call i32 %3(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %tobool11.not = icmp eq ptr %smu_version, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 17
  %6 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_version, align 4
  %8 = ptrtoint ptr %smu_version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %smu_version, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !184, !185, !187, !188, !189, !191, !193, !195, !196, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !241, !242, !243, !245, !246}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 44, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 47, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 50, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 53, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 56, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @amdgpu_dpm_print_class_info._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 57, i32 2}
!16 = !{ptr @amdgpu_dpm_print_class_info._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 60, i32 3}
!20 = !{ptr @amdgpu_dpm_print_class_info._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 63, i32 4}
!24 = !{ptr @amdgpu_dpm_print_class_info._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 65, i32 4}
!28 = !{ptr @amdgpu_dpm_print_class_info._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 67, i32 4}
!32 = !{ptr @amdgpu_dpm_print_class_info._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 69, i32 4}
!36 = !{ptr @amdgpu_dpm_print_class_info._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 71, i32 4}
!40 = !{ptr @amdgpu_dpm_print_class_info._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 73, i32 4}
!44 = !{ptr @amdgpu_dpm_print_class_info._entry.28, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 75, i32 4}
!48 = !{ptr @amdgpu_dpm_print_class_info._entry.31, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.33, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.35, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 77, i32 4}
!52 = !{ptr @amdgpu_dpm_print_class_info._entry.34, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.36, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.38, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 79, i32 4}
!56 = !{ptr @amdgpu_dpm_print_class_info._entry.37, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.39, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.41, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 81, i32 4}
!60 = !{ptr @amdgpu_dpm_print_class_info._entry.40, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.42, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.44, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 83, i32 4}
!64 = !{ptr @amdgpu_dpm_print_class_info._entry.43, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.45, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.47, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 85, i32 4}
!68 = !{ptr @amdgpu_dpm_print_class_info._entry.46, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.48, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.50, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 87, i32 4}
!72 = !{ptr @amdgpu_dpm_print_class_info._entry.49, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.51, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.53, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 89, i32 4}
!76 = !{ptr @amdgpu_dpm_print_class_info._entry.52, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.54, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.56, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 91, i32 4}
!80 = !{ptr @amdgpu_dpm_print_class_info._entry.55, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.57, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.59, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 93, i32 4}
!84 = !{ptr @amdgpu_dpm_print_class_info._entry.58, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.60, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.62, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 95, i32 2}
!88 = !{ptr @amdgpu_dpm_print_class_info._entry.61, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @amdgpu_dpm_print_class_info._entry_ptr.63, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.64, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 100, i32 2}
!92 = !{ptr @.str.65, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @amdgpu_dpm_print_cap_info._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @amdgpu_dpm_print_cap_info._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.67, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 102, i32 3}
!97 = !{ptr @amdgpu_dpm_print_cap_info._entry.66, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @amdgpu_dpm_print_cap_info._entry_ptr.68, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.70, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 104, i32 3}
!101 = !{ptr @amdgpu_dpm_print_cap_info._entry.69, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @amdgpu_dpm_print_cap_info._entry_ptr.71, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.73, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 106, i32 3}
!105 = !{ptr @amdgpu_dpm_print_cap_info._entry.72, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @amdgpu_dpm_print_cap_info._entry_ptr.74, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @amdgpu_dpm_print_cap_info._entry.75, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 107, i32 2}
!109 = !{ptr @amdgpu_dpm_print_cap_info._entry_ptr.76, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.77, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 113, i32 2}
!112 = !{ptr @.str.78, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @amdgpu_dpm_print_ps_status._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @amdgpu_dpm_print_ps_status._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.80, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 115, i32 3}
!117 = !{ptr @amdgpu_dpm_print_ps_status._entry.79, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @amdgpu_dpm_print_ps_status._entry_ptr.81, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.83, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 117, i32 3}
!121 = !{ptr @amdgpu_dpm_print_ps_status._entry.82, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @amdgpu_dpm_print_ps_status._entry_ptr.84, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.86, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 119, i32 3}
!125 = !{ptr @amdgpu_dpm_print_ps_status._entry.85, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @amdgpu_dpm_print_ps_status._entry_ptr.87, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @amdgpu_dpm_print_ps_status._entry.88, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 120, i32 2}
!129 = !{ptr @amdgpu_dpm_print_ps_status._entry_ptr.89, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.90, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 794, i32 4}
!132 = !{ptr @.str.91, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @amdgpu_add_thermal_controller._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @amdgpu_add_thermal_controller._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.92, !131, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.93, !131, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @amdgpu_add_thermal_controller._entry.94, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 799, i32 4}
!139 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.95, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @amdgpu_add_thermal_controller._entry.96, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 804, i32 4}
!142 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.97, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @amdgpu_add_thermal_controller._entry.98, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 809, i32 4}
!145 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.99, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @amdgpu_add_thermal_controller._entry.100, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 814, i32 4}
!148 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.101, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @amdgpu_add_thermal_controller._entry.102, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 819, i32 4}
!151 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.103, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @amdgpu_add_thermal_controller._entry.104, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 824, i32 4}
!154 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.105, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @amdgpu_add_thermal_controller._entry.106, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 829, i32 4}
!157 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.107, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.109, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 834, i32 4}
!160 = !{ptr @amdgpu_add_thermal_controller._entry.108, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.110, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.112, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 840, i32 4}
!164 = !{ptr @amdgpu_add_thermal_controller._entry.111, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.113, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.115, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 846, i32 4}
!168 = !{ptr @amdgpu_add_thermal_controller._entry.114, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.116, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.118, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 851, i32 4}
!172 = !{ptr @amdgpu_add_thermal_controller._entry.117, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.119, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.121, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 867, i32 4}
!176 = !{ptr @amdgpu_add_thermal_controller._entry.120, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @amdgpu_add_thermal_controller._entry_ptr.122, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.123, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 933, i32 3}
!180 = !{ptr @.str.124, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.125, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @amdgpu_dpm_set_powergating_by_smu.__UNIQUE_ID_ddebug343, !179, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!183 = !{ptr @.str.126, !179, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.127, !179, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.128, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 1537, i32 4}
!187 = !{ptr @.str.129, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.130, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.131, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 1573, i32 4}
!191 = !{ptr @.str.132, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 1596, i32 3}
!193 = !{ptr @.str.133, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 1607, i32 4}
!195 = !{ptr @.str.134, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @amdgpu_pm_load_smu_firmware._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @amdgpu_pm_load_smu_firmware._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.135, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 744, i32 2}
!200 = !{ptr @.str.136, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 745, i32 2}
!202 = !{ptr @.str.137, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 746, i32 2}
!204 = !{ptr @.str.138, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 747, i32 2}
!206 = !{ptr @.str.139, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 748, i32 2}
!208 = !{ptr @.str.140, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 749, i32 2}
!210 = !{ptr @.str.141, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 750, i32 2}
!212 = !{ptr @.str.142, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 751, i32 2}
!214 = !{ptr @.str.143, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 752, i32 2}
!216 = !{ptr @.str.144, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 753, i32 2}
!218 = !{ptr @.str.145, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 755, i32 2}
!220 = !{ptr @.str.146, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 756, i32 2}
!222 = !{ptr @.str.147, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 757, i32 2}
!224 = !{ptr @.str.148, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 758, i32 2}
!226 = !{ptr @.str.149, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 759, i32 2}
!228 = !{ptr @.str.150, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 760, i32 2}
!230 = !{ptr @.str.151, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 761, i32 2}
!232 = !{ptr @.str.152, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 762, i32 2}
!234 = !{ptr @.str.153, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 763, i32 2}
!236 = !{ptr @pp_lib_thermal_controller_names, !237, !"pp_lib_thermal_controller_names", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 743, i32 20}
!238 = !{ptr @.str.154, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 1433, i32 3}
!240 = !{ptr @.str.155, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @amdgpu_dpm_change_power_state_locked._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @amdgpu_dpm_change_power_state_locked._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.157, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/amdgpu_dpm.c", i32 1435, i32 3}
!245 = !{ptr @amdgpu_dpm_change_power_state_locked._entry.156, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @amdgpu_dpm_change_power_state_locked._entry_ptr.158, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i8 0, i8 2}
!257 = !{!"auto-init"}
!258 = !{i64 2148980515, i64 2148980520, i64 2148980533, i64 2148980577, i64 2148980611, i64 2148980632}
