; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/vega20_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pp_smumgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.99, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.98], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.98 = type { i8, [7 x i8] }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.95] }
%struct.anon.95 = type { [12 x %struct.ttm_pool_type] }
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
%struct.anon.99 = type { %struct.spinlock, i64, i64, i64, i32 }
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
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.smu_table_entry = type { i32, i32, i64, ptr, ptr }
%struct.amdgpu_asic_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_hdp_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.cgs_firmware_info = type { i16, i16, i16, i32, i64, i32, ptr, i8 }
%struct.cgs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@vega20_set_activity_monitor_coeff._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vega20_set_activity_monitor_coeff = private unnamed_addr constant [34 x i8] c"vega20_set_activity_monitor_coeff\00", align 1
@vega20_set_activity_monitor_coeff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_set_activity_monitor_coeff, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014amdgpu: [powerplay] %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c\00", [62 x i8] zeroinitializer }, align 32
@vega20_set_activity_monitor_coeff._entry_ptr = internal global ptr @vega20_set_activity_monitor_coeff._entry, section ".printk_index", align 4
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[SetActivityMonitor] Attempt to Set Dram Addr High Failed!\00", [37 x i8] zeroinitializer }, align 32
@vega20_set_activity_monitor_coeff._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_set_activity_monitor_coeff._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_set_activity_monitor_coeff, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_set_activity_monitor_coeff._entry_ptr.6 = internal global ptr @vega20_set_activity_monitor_coeff._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[SetActivityMonitor] Attempt to Set Dram Addr Low Failed!\00", [38 x i8] zeroinitializer }, align 32
@vega20_set_activity_monitor_coeff._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_set_activity_monitor_coeff._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_set_activity_monitor_coeff, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_set_activity_monitor_coeff._entry_ptr.10 = internal global ptr @vega20_set_activity_monitor_coeff._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[SetActivityMonitor] Attempt to Transfer Table To SMU Failed!\00", [34 x i8] zeroinitializer }, align 32
@vega20_get_activity_monitor_coeff._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_get_activity_monitor_coeff = private unnamed_addr constant [34 x i8] c"vega20_get_activity_monitor_coeff\00", align 1
@vega20_get_activity_monitor_coeff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_get_activity_monitor_coeff, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_get_activity_monitor_coeff._entry_ptr = internal global ptr @vega20_get_activity_monitor_coeff._entry, section ".printk_index", align 4
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[GetActivityMonitor] Attempt to Set Dram Addr High Failed!\00", [37 x i8] zeroinitializer }, align 32
@vega20_get_activity_monitor_coeff._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_get_activity_monitor_coeff._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_get_activity_monitor_coeff, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_get_activity_monitor_coeff._entry_ptr.15 = internal global ptr @vega20_get_activity_monitor_coeff._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[GetActivityMonitor] Attempt to Set Dram Addr Low Failed!\00", [38 x i8] zeroinitializer }, align 32
@vega20_get_activity_monitor_coeff._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_get_activity_monitor_coeff._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_get_activity_monitor_coeff, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_get_activity_monitor_coeff._entry_ptr.19 = internal global ptr @vega20_get_activity_monitor_coeff._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[GetActivityMonitor] Attempt to Transfer Table From SMU Failed!\00", [32 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_enable_smc_features = private unnamed_addr constant [27 x i8] c"vega20_enable_smc_features\00", align 1
@vega20_enable_smc_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_enable_smc_features, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._entry_ptr = internal global ptr @vega20_enable_smc_features._entry, section ".printk_index", align 4
@.str.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[EnableDisableSMCFeatures] Attempt to enable SMU features Low failed!\00", [58 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_enable_smc_features, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._entry_ptr.24 = internal global ptr @vega20_enable_smc_features._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[EnableDisableSMCFeatures] Attempt to enable SMU features High failed!\00", [57 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_enable_smc_features, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._entry_ptr.28 = internal global ptr @vega20_enable_smc_features._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[EnableDisableSMCFeatures] Attempt to disable SMU features Low failed!\00", [57 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_enable_smc_features, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_enable_smc_features._entry_ptr.32 = internal global ptr @vega20_enable_smc_features._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"[EnableDisableSMCFeatures] Attempt to disable SMU features High failed!\00", [56 x i8] zeroinitializer }, align 32
@vega20_get_enabled_smc_features._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_get_enabled_smc_features = private unnamed_addr constant [32 x i8] c"vega20_get_enabled_smc_features\00", align 1
@vega20_get_enabled_smc_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_get_enabled_smc_features, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_get_enabled_smc_features._entry_ptr = internal global ptr @vega20_get_enabled_smc_features._entry, section ".printk_index", align 4
@.str.34 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[GetEnabledSMCFeatures] Attempt to get SMU features Low failed!\00", [32 x i8] zeroinitializer }, align 32
@vega20_get_enabled_smc_features._rs.35 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_get_enabled_smc_features._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_get_enabled_smc_features, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_get_enabled_smc_features._entry_ptr.37 = internal global ptr @vega20_get_enabled_smc_features._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[GetEnabledSMCFeatures] Attempt to get SMU features High failed!\00", [63 x i8] zeroinitializer }, align 32
@vega20_set_pptable_driver_address._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_set_pptable_driver_address = private unnamed_addr constant [34 x i8] c"vega20_set_pptable_driver_address\00", align 1
@vega20_set_pptable_driver_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_set_pptable_driver_address, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_set_pptable_driver_address._entry_ptr = internal global ptr @vega20_set_pptable_driver_address._entry, section ".printk_index", align 4
@.str.39 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[SetPPtabeDriverAddress] Attempt to Set Dram Addr High Failed!\00", [33 x i8] zeroinitializer }, align 32
@vega20_set_pptable_driver_address._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_set_pptable_driver_address._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_set_pptable_driver_address, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_set_pptable_driver_address._entry_ptr.42 = internal global ptr @vega20_set_pptable_driver_address._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[SetPPtabeDriverAddress] Attempt to Set Dram Addr Low Failed!\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vega20_smu\00", [21 x i8] zeroinitializer }, align 32
@vega20_smu_funcs = dso_local constant { %struct.pp_smumgr_func, [48 x i8] } { %struct.pp_smumgr_func { ptr @.str.44, ptr @vega20_smu_init, ptr @vega20_smu_fini, ptr @vega20_start_smu, ptr null, ptr null, ptr null, ptr @vega20_get_argument, ptr @vega20_send_msg_to_smc, ptr @vega20_send_msg_to_smc_with_parameter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vega20_is_dpm_running, ptr null, ptr null, ptr @vega20_smc_table_manager, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vega20_start_smu._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_start_smu = private unnamed_addr constant [17 x i8] c"vega20_start_smu\00", align 1
@vega20_start_smu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_start_smu, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_start_smu._entry_ptr = internal global ptr @vega20_start_smu._entry, section ".printk_index", align 4
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[Vega20StartSmu] SMC is not running!\00", [59 x i8] zeroinitializer }, align 32
@vega20_start_smu._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_start_smu._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_start_smu, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_start_smu._entry_ptr.48 = internal global ptr @vega20_start_smu._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[Vega20StartSmu] Failed to set tools address!\00", [50 x i8] zeroinitializer }, align 32
@vega20_send_msg_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013amdgpu: [powerplay] Failed to send message 0x%x, response 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vega20_send_msg_to_smc\00", [41 x i8] zeroinitializer }, align 32
@vega20_send_msg_to_smc._entry_ptr = internal global ptr @vega20_send_msg_to_smc._entry, section ".printk_index", align 4
@vega20_send_msg_to_smc_with_parameter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.52, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vega20_send_msg_to_smc_with_parameter\00", [58 x i8] zeroinitializer }, align 32
@vega20_send_msg_to_smc_with_parameter._entry_ptr = internal global ptr @vega20_send_msg_to_smc_with_parameter._entry, section ".printk_index", align 4
@vega20_copy_table_from_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_copy_table_from_smc = private unnamed_addr constant [27 x i8] c"vega20_copy_table_from_smc\00", align 1
@vega20_copy_table_from_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_from_smc, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry_ptr = internal global ptr @vega20_copy_table_from_smc._entry, section ".printk_index", align 4
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid SMU Table ID!\00", [42 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._rs.54 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_from_smc, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry_ptr.56 = internal global ptr @vega20_copy_table_from_smc._entry.55, section ".printk_index", align 4
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid SMU Table version!\00", [37 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._rs.58 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_from_smc, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry_ptr.60 = internal global ptr @vega20_copy_table_from_smc._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid SMU Table Length!\00", [38 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._rs.62 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_from_smc, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry_ptr.64 = internal global ptr @vega20_copy_table_from_smc._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[CopyTableFromSMC] Attempt to Set Dram Addr High Failed!\00", [39 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._rs.66 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_from_smc, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry_ptr.68 = internal global ptr @vega20_copy_table_from_smc._entry.67, section ".printk_index", align 4
@.str.69 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[CopyTableFromSMC] Attempt to Set Dram Addr Low Failed!\00", [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_from_smc, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_from_smc._entry_ptr.72 = internal global ptr @vega20_copy_table_from_smc._entry.71, section ".printk_index", align 4
@.str.73 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[CopyTableFromSMC] Attempt to Transfer Table From SMU Failed!\00", [34 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vega20_copy_table_to_smc = private unnamed_addr constant [25 x i8] c"vega20_copy_table_to_smc\00", align 1
@vega20_copy_table_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_to_smc, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry_ptr = internal global ptr @vega20_copy_table_to_smc._entry, section ".printk_index", align 4
@vega20_copy_table_to_smc._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_to_smc, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry_ptr.76 = internal global ptr @vega20_copy_table_to_smc._entry.75, section ".printk_index", align 4
@vega20_copy_table_to_smc._rs.77 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_to_smc, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry_ptr.79 = internal global ptr @vega20_copy_table_to_smc._entry.78, section ".printk_index", align 4
@vega20_copy_table_to_smc._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_to_smc, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry_ptr.82 = internal global ptr @vega20_copy_table_to_smc._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[CopyTableToSMC] Attempt to Set Dram Addr High Failed!\00", [41 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_to_smc, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry_ptr.86 = internal global ptr @vega20_copy_table_to_smc._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[CopyTableToSMC] Attempt to Set Dram Addr Low Failed!\00", [42 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._rs.88 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vega20_copy_table_to_smc, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vega20_copy_table_to_smc._entry_ptr.90 = internal global ptr @vega20_copy_table_to_smc._entry.89, section ".printk_index", align 4
@.str.91 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[CopyTableToSMC] Attempt to Transfer Table To SMU Failed!\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 261, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 267, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 273, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 291, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 297, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 303, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 327, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 331, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 336, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 340, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 358, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 363, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 402, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 408, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 632, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"vega20_smu_funcs\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 631, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 594, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 599, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 118, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 146, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 171, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 173, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 175, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 178, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 184, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 190, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 216, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 218, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 220, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 228, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 234, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 240, i32 2 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @vega20_copy_table_from_smc._entry, ptr @vega20_copy_table_from_smc._entry.55, ptr @vega20_copy_table_from_smc._entry.59, ptr @vega20_copy_table_from_smc._entry.63, ptr @vega20_copy_table_from_smc._entry.67, ptr @vega20_copy_table_from_smc._entry.71, ptr @vega20_copy_table_from_smc._entry_ptr, ptr @vega20_copy_table_from_smc._entry_ptr.56, ptr @vega20_copy_table_from_smc._entry_ptr.60, ptr @vega20_copy_table_from_smc._entry_ptr.64, ptr @vega20_copy_table_from_smc._entry_ptr.68, ptr @vega20_copy_table_from_smc._entry_ptr.72, ptr @vega20_copy_table_to_smc._entry, ptr @vega20_copy_table_to_smc._entry.75, ptr @vega20_copy_table_to_smc._entry.78, ptr @vega20_copy_table_to_smc._entry.81, ptr @vega20_copy_table_to_smc._entry.85, ptr @vega20_copy_table_to_smc._entry.89, ptr @vega20_copy_table_to_smc._entry_ptr, ptr @vega20_copy_table_to_smc._entry_ptr.76, ptr @vega20_copy_table_to_smc._entry_ptr.79, ptr @vega20_copy_table_to_smc._entry_ptr.82, ptr @vega20_copy_table_to_smc._entry_ptr.86, ptr @vega20_copy_table_to_smc._entry_ptr.90, ptr @vega20_enable_smc_features._entry, ptr @vega20_enable_smc_features._entry.23, ptr @vega20_enable_smc_features._entry.27, ptr @vega20_enable_smc_features._entry.31, ptr @vega20_enable_smc_features._entry_ptr, ptr @vega20_enable_smc_features._entry_ptr.24, ptr @vega20_enable_smc_features._entry_ptr.28, ptr @vega20_enable_smc_features._entry_ptr.32, ptr @vega20_get_activity_monitor_coeff._entry, ptr @vega20_get_activity_monitor_coeff._entry.14, ptr @vega20_get_activity_monitor_coeff._entry.18, ptr @vega20_get_activity_monitor_coeff._entry_ptr, ptr @vega20_get_activity_monitor_coeff._entry_ptr.15, ptr @vega20_get_activity_monitor_coeff._entry_ptr.19, ptr @vega20_get_enabled_smc_features._entry, ptr @vega20_get_enabled_smc_features._entry.36, ptr @vega20_get_enabled_smc_features._entry_ptr, ptr @vega20_get_enabled_smc_features._entry_ptr.37, ptr @vega20_send_msg_to_smc._entry, ptr @vega20_send_msg_to_smc._entry_ptr, ptr @vega20_send_msg_to_smc_with_parameter._entry, ptr @vega20_send_msg_to_smc_with_parameter._entry_ptr, ptr @vega20_set_activity_monitor_coeff._entry, ptr @vega20_set_activity_monitor_coeff._entry.5, ptr @vega20_set_activity_monitor_coeff._entry.9, ptr @vega20_set_activity_monitor_coeff._entry_ptr, ptr @vega20_set_activity_monitor_coeff._entry_ptr.10, ptr @vega20_set_activity_monitor_coeff._entry_ptr.6, ptr @vega20_set_pptable_driver_address._entry, ptr @vega20_set_pptable_driver_address._entry.41, ptr @vega20_set_pptable_driver_address._entry_ptr, ptr @vega20_set_pptable_driver_address._entry_ptr.42, ptr @vega20_start_smu._entry, ptr @vega20_start_smu._entry.47, ptr @vega20_start_smu._entry_ptr, ptr @vega20_start_smu._entry_ptr.48, ptr @vega20_set_activity_monitor_coeff._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vega20_set_activity_monitor_coeff._rs.4, ptr @.str.7, ptr @vega20_set_activity_monitor_coeff._rs.8, ptr @.str.11, ptr @vega20_get_activity_monitor_coeff._rs, ptr @.str.12, ptr @vega20_get_activity_monitor_coeff._rs.13, ptr @.str.16, ptr @vega20_get_activity_monitor_coeff._rs.17, ptr @.str.20, ptr @vega20_enable_smc_features._rs, ptr @.str.21, ptr @vega20_enable_smc_features._rs.22, ptr @.str.25, ptr @vega20_enable_smc_features._rs.26, ptr @.str.29, ptr @vega20_enable_smc_features._rs.30, ptr @.str.33, ptr @vega20_get_enabled_smc_features._rs, ptr @.str.34, ptr @vega20_get_enabled_smc_features._rs.35, ptr @.str.38, ptr @vega20_set_pptable_driver_address._rs, ptr @.str.39, ptr @vega20_set_pptable_driver_address._rs.40, ptr @.str.43, ptr @.str.44, ptr @vega20_smu_funcs, ptr @vega20_start_smu._rs, ptr @.str.45, ptr @vega20_start_smu._rs.46, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @vega20_copy_table_from_smc._rs, ptr @.str.53, ptr @vega20_copy_table_from_smc._rs.54, ptr @.str.57, ptr @vega20_copy_table_from_smc._rs.58, ptr @.str.61, ptr @vega20_copy_table_from_smc._rs.62, ptr @.str.65, ptr @vega20_copy_table_from_smc._rs.66, ptr @.str.69, ptr @vega20_copy_table_from_smc._rs.70, ptr @.str.73, ptr @vega20_copy_table_to_smc._rs, ptr @vega20_copy_table_to_smc._rs.74, ptr @vega20_copy_table_to_smc._rs.77, ptr @vega20_copy_table_to_smc._rs.80, ptr @.str.83, ptr @vega20_copy_table_to_smc._rs.84, ptr @.str.87, ptr @vega20_copy_table_to_smc._rs.88, ptr @.str.91], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_activity_monitor_coeff._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_activity_monitor_coeff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_activity_monitor_coeff._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_activity_monitor_coeff._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_activity_monitor_coeff._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_activity_monitor_coeff._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_activity_monitor_coeff._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_activity_monitor_coeff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_activity_monitor_coeff._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_activity_monitor_coeff._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_activity_monitor_coeff._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_activity_monitor_coeff._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_smc_features._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_smc_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_smc_features._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_smc_features._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_smc_features._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_smc_features._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_smc_features._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_enable_smc_features._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_enabled_smc_features._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_enabled_smc_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_enabled_smc_features._rs.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_get_enabled_smc_features._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_pptable_driver_address._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_pptable_driver_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_pptable_driver_address._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_set_pptable_driver_address._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_smu_funcs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_start_smu._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_start_smu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_start_smu._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_start_smu._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_send_msg_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_send_msg_to_smc_with_parameter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._rs.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._rs.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._rs.62 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._rs.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_from_smc._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._rs.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._rs.88 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vega20_copy_table_to_smc._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vega20_is_smc_ram_running(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 61931556) #5
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_set_activity_monitor_coeff(ptr noundef %hwmgr, ptr nocapture noundef readonly %table, i16 noundef zeroext %workload_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %table3 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %table3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table3, align 8
  %size = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = call ptr @memcpy(ptr %5, ptr %table, i32 %7)
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic_funcs, align 4
  %flush_hdp = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %flush_hdp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %flush_hdp, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %cond.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 102, i32 1
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %funcs, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  br label %do.body

do.body:                                          ; preds = %cond.false, %entry.do.body_crit_edge
  %.sink = phi ptr [ %16, %cond.false ], [ %12, %entry.do.body_crit_edge ]
  tail call void %.sink(ptr noundef %3, ptr noundef null) #5
  %mc_addr = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mc_addr, align 8
  %shr = lshr i64 %18, 32
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef %conv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body23, label %if.then

if.then:                                          ; preds = %do.body
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_set_activity_monitor_coeff._rs, ptr noundef nonnull @__func__.vega20_set_activity_monitor_coeff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body23:                                        ; preds = %do.body
  %19 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mc_addr, align 8
  %conv28 = trunc i64 %20 to i32
  %call29 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 17, i32 noundef %conv28, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %do.body45, label %if.then32

if.then32:                                        ; preds = %do.body23
  %call33 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_set_activity_monitor_coeff._rs.4, ptr noundef nonnull @__func__.vega20_set_activity_monitor_coeff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.cleanup_crit_edge, label %if.then32.cleanup.sink.split_crit_edge

if.then32.cleanup.sink.split_crit_edge:           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body45:                                        ; preds = %do.body23
  %conv46 = zext i16 %workload_type to i32
  %shl = shl nuw i32 %conv46, 16
  %or = or i32 %shl, 8
  %call47 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 21, i32 noundef %or, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %do.body45.cleanup_crit_edge, label %if.then50

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then50:                                        ; preds = %do.body45
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_set_activity_monitor_coeff._rs.8, ptr noundef nonnull @__func__.vega20_set_activity_monitor_coeff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.cleanup_crit_edge, label %if.then50.cleanup.sink.split_crit_edge

if.then50.cleanup.sink.split_crit_edge:           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then50.cleanup.sink.split_crit_edge, %if.then32.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.3, %if.then.cleanup.sink.split_crit_edge ], [ @.str.7, %if.then32.cleanup.sink.split_crit_edge ], [ @.str.11, %if.then50.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then.cleanup.sink.split_crit_edge ], [ %call29, %if.then32.cleanup.sink.split_crit_edge ], [ %call47, %if.then50.cleanup.sink.split_crit_edge ]
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.11.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then50.cleanup_crit_edge, %do.body45.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call29, %if.then32.cleanup_crit_edge ], [ %call47, %if.then50.cleanup_crit_edge ], [ 0, %do.body45.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_get_activity_monitor_coeff(ptr noundef %hwmgr, ptr nocapture noundef writeonly %table, i16 noundef zeroext %workload_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %mc_addr = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mc_addr, align 8
  %shr = lshr i64 %5, 32
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef %conv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body12, label %if.then

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_get_activity_monitor_coeff._rs, ptr noundef nonnull @__func__.vega20_get_activity_monitor_coeff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #8
  br label %cleanup

do.body12:                                        ; preds = %entry
  %6 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mc_addr, align 8
  %conv17 = trunc i64 %7 to i32
  %call18 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 17, i32 noundef %conv17, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %do.body34, label %if.then21

if.then21:                                        ; preds = %do.body12
  %call22 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_get_activity_monitor_coeff._rs.13, ptr noundef nonnull @__func__.vega20_get_activity_monitor_coeff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %do.end27

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #8
  br label %cleanup

do.body34:                                        ; preds = %do.body12
  %conv35 = zext i16 %workload_type to i32
  %shl = shl nuw i32 %conv35, 16
  %or = or i32 %shl, 8
  %call36 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 20, i32 noundef %or, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %do.end51, label %if.then39

if.then39:                                        ; preds = %do.body34
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_get_activity_monitor_coeff._rs.17, ptr noundef nonnull @__func__.vega20_get_activity_monitor_coeff) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then39.cleanup_crit_edge, label %do.end45

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #8
  br label %cleanup

do.end51:                                         ; preds = %do.body34
  %asic_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %asic_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_funcs, align 4
  %invalidate_hdp = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %invalidate_hdp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %invalidate_hdp, align 4
  %tobool52.not = icmp eq ptr %11, null
  br i1 %tobool52.not, label %cond.false, label %do.end51.cond.end_crit_edge

do.end51.cond.end_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #7
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 102, i32 1
  %12 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs, align 4
  %invalidate_hdp55 = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %invalidate_hdp55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %invalidate_hdp55, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end51.cond.end_crit_edge
  %.sink = phi ptr [ %15, %cond.false ], [ %11, %do.end51.cond.end_crit_edge ]
  tail call void %.sink(ptr noundef %3, ptr noundef null) #5
  %table59 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %table59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table59, align 8
  %size = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %20 = call ptr @memcpy(ptr %table, ptr %17, i32 %19)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end45, %if.then39.cleanup_crit_edge, %do.end27, %if.then21.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call, %do.end ], [ %call, %if.then.cleanup_crit_edge ], [ %call18, %do.end27 ], [ %call18, %if.then21.cleanup_crit_edge ], [ %call36, %do.end45 ], [ %call36, %if.then39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_enable_smc_features(ptr noundef %hwmgr, i1 noundef zeroext %enable, i64 noundef %feature_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %feature_mask to i32
  %shr2 = lshr i64 %feature_mask, 32
  %conv3 = trunc i64 %shr2 to i32
  br i1 %enable, label %do.body, label %do.body31

do.body:                                          ; preds = %entry
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 8, i32 noundef %conv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body14, label %if.then5

if.then5:                                         ; preds = %do.body
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_enable_smc_features._rs, ptr noundef nonnull @__func__.vega20_enable_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body14:                                        ; preds = %do.body
  %call15 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 9, i32 noundef %conv3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %do.body14.cleanup_crit_edge, label %if.then18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %do.body14
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_enable_smc_features._rs.22, ptr noundef nonnull @__func__.vega20_enable_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body31:                                        ; preds = %entry
  %call32 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 10, i32 noundef %conv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %do.body48, label %if.then35

if.then35:                                        ; preds = %do.body31
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_enable_smc_features._rs.26, ptr noundef nonnull @__func__.vega20_enable_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.cleanup_crit_edge, label %if.then35.cleanup.sink.split_crit_edge

if.then35.cleanup.sink.split_crit_edge:           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body48:                                        ; preds = %do.body31
  %call49 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 11, i32 noundef %conv3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %do.body48.cleanup_crit_edge, label %if.then52

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52:                                        ; preds = %do.body48
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_enable_smc_features._rs.30, ptr noundef nonnull @__func__.vega20_enable_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.cleanup_crit_edge, label %if.then52.cleanup.sink.split_crit_edge

if.then52.cleanup.sink.split_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then52.cleanup.sink.split_crit_edge, %if.then35.cleanup.sink.split_crit_edge, %if.then18.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.21, %if.then5.cleanup.sink.split_crit_edge ], [ @.str.25, %if.then18.cleanup.sink.split_crit_edge ], [ @.str.29, %if.then35.cleanup.sink.split_crit_edge ], [ @.str.33, %if.then52.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then5.cleanup.sink.split_crit_edge ], [ %call15, %if.then18.cleanup.sink.split_crit_edge ], [ %call32, %if.then35.cleanup.sink.split_crit_edge ], [ %call49, %if.then52.cleanup.sink.split_crit_edge ]
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.33.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then52.cleanup_crit_edge, %do.body48.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %do.body14.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then5.cleanup_crit_edge ], [ %call15, %if.then18.cleanup_crit_edge ], [ %call32, %if.then35.cleanup_crit_edge ], [ %call49, %if.then52.cleanup_crit_edge ], [ 0, %do.body48.cleanup_crit_edge ], [ 0, %do.body14.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef writeonly %features_enabled) local_unnamed_addr #0 align 64 {
entry:
  %smc_features_low = alloca i32, align 4
  %smc_features_high = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_features_low) #5
  %0 = ptrtoint ptr %smc_features_low to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smc_features_low, align 4, !annotation !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smc_features_high) #5
  %1 = ptrtoint ptr %smc_features_high to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %smc_features_high, align 4, !annotation !170
  %cmp = icmp eq ptr %features_enabled, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %call = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 12, ptr noundef nonnull %smc_features_low) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %do.body11, label %if.then2

if.then2:                                         ; preds = %do.body
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @vega20_get_enabled_smc_features._rs, ptr noundef nonnull @__func__.vega20_get_enabled_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.34) #8
  br label %cleanup

do.body11:                                        ; preds = %do.body
  %call12 = call i32 @smum_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext 13, ptr noundef nonnull %smc_features_high) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %do.end26, label %if.then14

if.then14:                                        ; preds = %do.body11
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @vega20_get_enabled_smc_features._rs.35, ptr noundef nonnull @__func__.vega20_get_enabled_smc_features) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %do.end20

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38) #8
  br label %cleanup

do.end26:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %smc_features_low to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smc_features_low, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %smc_features_high to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smc_features_high, align 4
  %conv27 = zext i32 %5 to i64
  %shl28 = shl nuw i64 %conv27, 32
  %or = or i64 %shl28, %conv
  %6 = ptrtoint ptr %features_enabled to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %or, ptr %features_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end20, %if.then14.cleanup_crit_edge, %do.end, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end26 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %if.then2.cleanup_crit_edge ], [ %call12, %do.end20 ], [ %call12, %if.then14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_features_high) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smc_features_low) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smum_send_msg_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vega20_set_pptable_driver_address(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mc_addr, align 8
  %shr = lshr i64 %3, 32
  %conv = trunc i64 %shr to i32
  %call = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef %conv, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_set_pptable_driver_address._rs, ptr noundef nonnull @__func__.vega20_set_pptable_driver_address) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body11:                                        ; preds = %entry
  %4 = ptrtoint ptr %mc_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mc_addr, align 8
  %conv16 = trunc i64 %5 to i32
  %call17 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 17, i32 noundef %conv16, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %do.body11.cleanup_crit_edge, label %if.then20

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20:                                        ; preds = %do.body11
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_set_pptable_driver_address._rs.40, ptr noundef nonnull @__func__.vega20_set_pptable_driver_address) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.cleanup_crit_edge, label %if.then20.cleanup.sink.split_crit_edge

if.then20.cleanup.sink.split_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then20.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.43.sink = phi ptr [ @.str.39, %if.then.cleanup.sink.split_crit_edge ], [ @.str.43, %if.then20.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %if.then.cleanup.sink.split_crit_edge ], [ %call17, %if.then20.cleanup.sink.split_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.43.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then20.cleanup_crit_edge, %do.body11.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call17, %if.then20.cleanup_crit_edge ], [ 0, %do.body11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_smu_init(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  %info = alloca %struct.cgs_firmware_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #5
  %2 = call ptr @memset(ptr %info, i32 0, i32 40)
  %device = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 10
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %get_firmware_info = getelementptr inbounds %struct.cgs_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %get_firmware_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_firmware_info, align 4
  %call = tail call i32 @smu7_convert_fw_type_to_cgs(i32 noundef 0) #5
  %call3 = call i32 %8(ptr noundef %4, i32 noundef %call, ptr noundef nonnull %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %kptr = getelementptr inbounds %struct.cgs_firmware_info, ptr %info, i32 0, i32 6
  %9 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kptr, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 240) #9
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %12 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %smu_backend, align 4
  %13 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwmgr, align 4
  %handle = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 4
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 2
  %table = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 3
  %call17 = call i32 @amdgpu_bo_create_kernel(ptr noundef %14, i32 noundef 1256, i32 noundef 4096, i32 noundef 4, ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end8.free_backend_crit_edge

if.end8.free_backend_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_backend

if.end20:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call7.i.i, align 8
  %size = getelementptr inbounds %struct.smu_table_entry, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1256, ptr %size, align 4
  %17 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwmgr, align 4
  %handle31 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 4
  %mc_addr35 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 2
  %table39 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 3
  %call40 = call i32 @amdgpu_bo_create_kernel(ptr noundef %18, i32 noundef 124, i32 noundef 4096, i32 noundef 4, ptr noundef %handle31, ptr noundef %mc_addr35, ptr noundef %table39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end20.err0_crit_edge

if.end20.err0_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %err0

if.end43:                                         ; preds = %if.end20
  %arrayidx30 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx30, align 8
  %size51 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %size51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 124, ptr %size51, align 4
  %21 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwmgr, align 4
  %handle56 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5, i32 4
  %mc_addr60 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5, i32 2
  %table64 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5, i32 3
  %call65 = call i32 @amdgpu_bo_create_kernel(ptr noundef %22, i32 noundef 102400, i32 noundef 4096, i32 noundef 4, ptr noundef %handle56, ptr noundef %mc_addr60, ptr noundef %table64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end43.err1_crit_edge

if.end43.err1_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end68:                                         ; preds = %if.end43
  %arrayidx55 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx55, align 8
  %size76 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %size76 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 102400, ptr %size76, align 4
  %25 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwmgr, align 4
  %handle81 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9, i32 4
  %mc_addr85 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9, i32 2
  %table89 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9, i32 3
  %call90 = call i32 @amdgpu_bo_create_kernel(ptr noundef %26, i32 noundef 32, i32 noundef 4096, i32 noundef 4, ptr noundef %handle81, ptr noundef %mc_addr85, ptr noundef %table89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end68.err2_crit_edge

if.end68.err2_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end93:                                         ; preds = %if.end68
  %arrayidx80 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx80, align 8
  %size101 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %size101 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 32, ptr %size101, align 4
  %29 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hwmgr, align 4
  %handle106 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6, i32 4
  %mc_addr110 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6, i32 2
  %table114 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6, i32 3
  %call115 = call i32 @amdgpu_bo_create_kernel(ptr noundef %30, i32 noundef 96, i32 noundef 4096, i32 noundef 4, ptr noundef %handle106, ptr noundef %mc_addr110, ptr noundef %table114) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end93.err3_crit_edge

if.end93.err3_crit_edge:                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %err3

if.end118:                                        ; preds = %if.end93
  %arrayidx105 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %arrayidx105, align 8
  %size126 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %size126 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 96, ptr %size126, align 4
  %33 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwmgr, align 4
  %handle131 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 8, i32 4
  %mc_addr135 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 8, i32 2
  %table139 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 8, i32 3
  %call140 = call i32 @amdgpu_bo_create_kernel(ptr noundef %34, i32 noundef 128, i32 noundef 4096, i32 noundef 4, ptr noundef %handle131, ptr noundef %mc_addr135, ptr noundef %table139) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end118.err4_crit_edge

if.end118.err4_crit_edge:                         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %err4

if.end143:                                        ; preds = %if.end118
  %arrayidx130 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %arrayidx130, align 8
  %size151 = getelementptr [10 x %struct.smu_table_entry], ptr %call7.i.i, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %size151 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 128, ptr %size151, align 4
  %smu_i2c = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 98, i32 25
  %call152 = call i32 @smu_v11_0_i2c_control_init(ptr noundef %smu_i2c) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end143.cleanup_crit_edge, label %if.end143.err4_crit_edge

if.end143.err4_crit_edge:                         ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %err4

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err4:                                             ; preds = %if.end143.err4_crit_edge, %if.end118.err4_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle106, ptr noundef %mc_addr110, ptr noundef %table114) #5
  br label %err3

err3:                                             ; preds = %err4, %if.end93.err3_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle81, ptr noundef %mc_addr85, ptr noundef %table89) #5
  br label %err2

err2:                                             ; preds = %err3, %if.end68.err2_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle56, ptr noundef %mc_addr60, ptr noundef %table64) #5
  br label %err1

err1:                                             ; preds = %err2, %if.end43.err1_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle31, ptr noundef %mc_addr35, ptr noundef %table39) #5
  br label %err0

err0:                                             ; preds = %err1, %if.end20.err0_crit_edge
  call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  br label %free_backend

free_backend:                                     ; preds = %err0, %if.end8.free_backend_crit_edge
  %37 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %smu_backend, align 4
  call void @kfree(ptr noundef %38) #5
  br label %cleanup

cleanup:                                          ; preds = %free_backend, %if.end143.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %free_backend ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end143.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_smu_fini(ptr nocapture noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_backend = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %0 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smu_backend, align 4
  %2 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmgr, align 4
  %smu_i2c = getelementptr inbounds %struct.amdgpu_device, ptr %3, i32 0, i32 98, i32 25
  tail call void @smu_v11_0_i2c_control_fini(ptr noundef %smu_i2c) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %handle = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 4
  %mc_addr = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 2
  %table = getelementptr inbounds %struct.smu_table_entry, ptr %1, i32 0, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle, ptr noundef %mc_addr, ptr noundef %table) #5
  %handle12 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 4
  %mc_addr16 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 2
  %table20 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 1, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle12, ptr noundef %mc_addr16, ptr noundef %table20) #5
  %handle24 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 5, i32 4
  %mc_addr28 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 5, i32 2
  %table32 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 5, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle24, ptr noundef %mc_addr28, ptr noundef %table32) #5
  %handle36 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 9, i32 4
  %mc_addr40 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 9, i32 2
  %table44 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 9, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle36, ptr noundef %mc_addr40, ptr noundef %table44) #5
  %handle48 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 6, i32 4
  %mc_addr52 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 6, i32 2
  %table56 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 6, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle48, ptr noundef %mc_addr52, ptr noundef %table56) #5
  %handle60 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 4
  %mc_addr64 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 2
  %table68 = getelementptr [10 x %struct.smu_table_entry], ptr %1, i32 0, i32 8, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %handle60, ptr noundef %mc_addr64, ptr noundef %table68) #5
  %4 = ptrtoint ptr %smu_backend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu_backend, align 4
  tail call void @kfree(ptr noundef %5) #5
  %6 = ptrtoint ptr %smu_backend to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %smu_backend, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_start_smu(ptr noundef %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %pcie_rreg.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg.i, align 8
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 61931556) #5
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then, label %do.end8

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_start_smu._rs, ptr noundef nonnull @__func__.vega20_start_smu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end8:                                          ; preds = %entry
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %4 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smu_backend.i, align 4
  %mc_addr.i = getelementptr [10 x %struct.smu_table_entry], ptr %5, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mc_addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i28 = icmp eq i64 %7, 0
  br i1 %tobool.not.i28, label %do.end8.cleanup_crit_edge, label %if.then.i

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %do.end8
  %shr.i = lshr i64 %7, 32
  %conv.i = trunc i64 %shr.i to i32
  %call.i29 = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 18, i32 noundef %conv.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool7.not.i = icmp eq i32 %call.i29, 0
  br i1 %tobool7.not.i, label %vega20_set_tools_address.exit, label %if.then.i.if.then12_crit_edge

if.then.i.if.then12_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

vega20_set_tools_address.exit:                    ; preds = %if.then.i
  %8 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mc_addr.i, align 8
  %conv13.i = trunc i64 %9 to i32
  %call14.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 19, i32 noundef %conv13.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool11.not = icmp eq i32 %call14.i, 0
  br i1 %tobool11.not, label %vega20_set_tools_address.exit.cleanup_crit_edge, label %vega20_set_tools_address.exit.if.then12_crit_edge

vega20_set_tools_address.exit.if.then12_crit_edge: ; preds = %vega20_set_tools_address.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

vega20_set_tools_address.exit.cleanup_crit_edge:  ; preds = %vega20_set_tools_address.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %vega20_set_tools_address.exit.if.then12_crit_edge, %if.then.i.if.then12_crit_edge
  %ret.0.i35 = phi i32 [ %call14.i, %vega20_set_tools_address.exit.if.then12_crit_edge ], [ %call.i29, %if.then.i.if.then12_crit_edge ]
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_start_smu._rs.46, ptr noundef nonnull @__func__.vega20_start_smu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then12.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.49.sink = phi ptr [ @.str.45, %if.then.cleanup.sink.split_crit_edge ], [ @.str.49, %if.then12.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.then.cleanup.sink.split_crit_edge ], [ %ret.0.i35, %if.then12.cleanup.sink.split_crit_edge ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.49.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then12.cleanup_crit_edge, %vega20_set_tools_address.exit.cleanup_crit_edge, %do.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %ret.0.i35, %if.then12.cleanup_crit_edge ], [ 0, %vega20_set_tools_address.exit.cleanup_crit_edge ], [ 0, %do.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_get_argument(ptr nocapture noundef readonly %hwmgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
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
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add = add i32 %11, 658
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 15) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18 = add i32 %15, 658
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 666
  %call.i = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add.i, i32 noundef 0, i32 noundef -1) #5
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %land.lhs.true5.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true5.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 666
  %call19.i = tail call i32 %11(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0, i32 noundef 15) #5
  br label %vega20_wait_for_response.exit

cond.false.i:                                     ; preds = %land.lhs.true5.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add24.i = add i32 %19, 666
  %call25.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add24.i, i32 noundef 0) #5
  br label %vega20_wait_for_response.exit

vega20_wait_for_response.exit:                    ; preds = %cond.false.i, %cond.true.i
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %vega20_wait_for_response.exit.cond.false_crit_edge, label %land.lhs.true

vega20_wait_for_response.exit.cond.false_crit_edge: ; preds = %vega20_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %vega20_wait_for_response.exit
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %23, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add = add i32 %29, 666
  tail call void %25(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 15) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %vega20_wait_for_response.exit.cond.false_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add18 = add i32 %33, 666
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %34 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwmgr, align 4
  %virt.i38 = getelementptr inbounds %struct.amdgpu_device, ptr %35, i32 0, i32 132
  %36 = ptrtoint ptr %virt.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt.i38, align 8
  %and.i39 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.not.i40 = icmp eq i32 %and.i39, 0
  br i1 %tobool.not.i40, label %cond.end.cond.false.i47_crit_edge, label %land.lhs.true.i42

cond.end.cond.false.i47_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i47

land.lhs.true.i42:                                ; preds = %cond.end
  %funcs.i41 = getelementptr inbounds %struct.amdgpu_device, ptr %35, i32 0, i32 106, i32 2, i32 15
  %38 = ptrtoint ptr %funcs.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs.i41, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %land.lhs.true.i42.cond.false.i47_crit_edge, label %land.lhs.true3.i

land.lhs.true.i42.cond.false.i47_crit_edge:       ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i47

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i42
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool7.not.i = icmp eq ptr %41, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i47_crit_edge, label %cond.true.i45

land.lhs.true3.i.cond.false.i47_crit_edge:        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i47

cond.true.i45:                                    ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i43 = getelementptr %struct.amdgpu_device, ptr %35, i32 0, i32 130, i32 15
  %42 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i43, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add.i44 = add i32 %45, 642
  %conv.i = zext i16 %msg to i32
  tail call void %41(ptr noundef %35, i32 noundef %add.i44, i32 noundef %conv.i, i32 noundef 0, i32 noundef 15) #5
  br label %vega20_send_msg_to_smc_without_waiting.exit

cond.false.i47:                                   ; preds = %land.lhs.true3.i.cond.false.i47_crit_edge, %land.lhs.true.i42.cond.false.i47_crit_edge, %cond.end.cond.false.i47_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %35, i32 0, i32 130, i32 15
  %46 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx15.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add18.i46 = add i32 %49, 642
  %conv19.i = zext i16 %msg to i32
  tail call void @amdgpu_device_wreg(ptr noundef %35, i32 noundef %add18.i46, i32 noundef %conv19.i, i32 noundef 0) #5
  br label %vega20_send_msg_to_smc_without_waiting.exit

vega20_send_msg_to_smc_without_waiting.exit:      ; preds = %cond.false.i47, %cond.true.i45
  %50 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i48 = getelementptr %struct.amdgpu_device, ptr %51, i32 0, i32 130, i32 15
  %52 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i48, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add.i49 = add i32 %55, 666
  %call.i50 = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add.i49, i32 noundef 0, i32 noundef -1) #5
  %virt.i51 = getelementptr inbounds %struct.amdgpu_device, ptr %51, i32 0, i32 132
  %56 = ptrtoint ptr %virt.i51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt.i51, align 8
  %and.i52 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i53 = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i53, label %vega20_send_msg_to_smc_without_waiting.exit.cond.false.i65_crit_edge, label %land.lhs.true.i56

vega20_send_msg_to_smc_without_waiting.exit.cond.false.i65_crit_edge: ; preds = %vega20_send_msg_to_smc_without_waiting.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i65

land.lhs.true.i56:                                ; preds = %vega20_send_msg_to_smc_without_waiting.exit
  %funcs.i54 = getelementptr inbounds %struct.amdgpu_device, ptr %51, i32 0, i32 106, i32 2, i32 15
  %58 = ptrtoint ptr %funcs.i54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs.i54, align 4
  %tobool4.not.i55 = icmp eq ptr %59, null
  br i1 %tobool4.not.i55, label %land.lhs.true.i56.cond.false.i65_crit_edge, label %land.lhs.true5.i59

land.lhs.true.i56.cond.false.i65_crit_edge:       ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i65

land.lhs.true5.i59:                               ; preds = %land.lhs.true.i56
  %sriov_rreg.i57 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %sriov_rreg.i57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_rreg.i57, align 4
  %tobool9.not.i58 = icmp eq ptr %61, null
  br i1 %tobool9.not.i58, label %land.lhs.true5.i59.cond.false.i65_crit_edge, label %cond.true.i62

land.lhs.true5.i59.cond.false.i65_crit_edge:      ; preds = %land.lhs.true5.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i65

cond.true.i62:                                    ; preds = %land.lhs.true5.i59
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i48, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add18.i60 = add i32 %65, 666
  %call19.i61 = tail call i32 %61(ptr noundef %51, i32 noundef %add18.i60, i32 noundef 0, i32 noundef 15) #5
  br label %vega20_wait_for_response.exit67

cond.false.i65:                                   ; preds = %land.lhs.true5.i59.cond.false.i65_crit_edge, %land.lhs.true.i56.cond.false.i65_crit_edge, %vega20_send_msg_to_smc_without_waiting.exit.cond.false.i65_crit_edge
  %66 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i48, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add24.i63 = add i32 %69, 666
  %call25.i64 = tail call i32 @amdgpu_device_rreg(ptr noundef %51, i32 noundef %add24.i63, i32 noundef 0) #5
  br label %vega20_wait_for_response.exit67

vega20_wait_for_response.exit67:                  ; preds = %cond.false.i65, %cond.true.i62
  %cond.i66 = phi i32 [ %call19.i61, %cond.true.i62 ], [ %call25.i64, %cond.false.i65 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i66)
  %cmp.not = icmp eq i32 %cond.i66, 1
  br i1 %cmp.not, label %vega20_wait_for_response.exit67.if.end_crit_edge, label %do.end

vega20_wait_for_response.exit67.if.end_crit_edge: ; preds = %vega20_wait_for_response.exit67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %vega20_wait_for_response.exit67
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %msg to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %cond.i66) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %vega20_wait_for_response.exit67.if.end_crit_edge
  %cond = phi i32 [ -5, %do.end ], [ 0, %vega20_wait_for_response.exit67.if.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg, i32 noundef %parameter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 666
  %call.i = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add.i, i32 noundef 0, i32 noundef -1) #5
  %virt.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virt.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cond.false.i_crit_edge, label %land.lhs.true.i

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %land.lhs.true5.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true5.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add18.i = add i32 %15, 666
  %call19.i = tail call i32 %11(ptr noundef %1, i32 noundef %add18.i, i32 noundef 0, i32 noundef 15) #5
  br label %vega20_wait_for_response.exit

cond.false.i:                                     ; preds = %land.lhs.true5.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add24.i = add i32 %19, 666
  %call25.i = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add24.i, i32 noundef 0) #5
  br label %vega20_wait_for_response.exit

vega20_wait_for_response.exit:                    ; preds = %cond.false.i, %cond.true.i
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virt.i, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %vega20_wait_for_response.exit.cond.false_crit_edge, label %land.lhs.true

vega20_wait_for_response.exit.cond.false_crit_edge: ; preds = %vega20_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %vega20_wait_for_response.exit
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %23, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add = add i32 %29, 666
  tail call void %25(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 15) #5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %vega20_wait_for_response.exit.cond.false_crit_edge
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add18 = add i32 %33, 666
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0, i32 noundef 0) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %34 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virt.i, align 8
  %and21 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %cond.end.cond.false44_crit_edge, label %land.lhs.true23

cond.end.cond.false44_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false44

land.lhs.true23:                                  ; preds = %cond.end
  %funcs26 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %36 = ptrtoint ptr %funcs26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %funcs26, align 4
  %tobool27.not = icmp eq ptr %37, null
  br i1 %tobool27.not, label %land.lhs.true23.cond.false44_crit_edge, label %land.lhs.true28

land.lhs.true23.cond.false44_crit_edge:           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false44

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %sriov_wreg32 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %sriov_wreg32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sriov_wreg32, align 4
  %tobool33.not = icmp eq ptr %39, null
  br i1 %tobool33.not, label %land.lhs.true28.cond.false44_crit_edge, label %cond.true34

land.lhs.true28.cond.false44_crit_edge:           ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false44

cond.true34:                                      ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add43 = add i32 %43, 658
  tail call void %39(ptr noundef %1, i32 noundef %add43, i32 noundef %parameter, i32 noundef 0, i32 noundef 15) #5
  br label %cond.end50

cond.false44:                                     ; preds = %land.lhs.true28.cond.false44_crit_edge, %land.lhs.true23.cond.false44_crit_edge, %cond.end.cond.false44_crit_edge
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add49 = add i32 %47, 658
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add49, i32 noundef %parameter, i32 noundef 0) #5
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false44, %cond.true34
  %48 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hwmgr, align 4
  %virt.i81 = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 132
  %50 = ptrtoint ptr %virt.i81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %virt.i81, align 8
  %and.i82 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i82)
  %tobool.not.i83 = icmp eq i32 %and.i82, 0
  br i1 %tobool.not.i83, label %cond.end50.cond.false.i90_crit_edge, label %land.lhs.true.i85

cond.end50.cond.false.i90_crit_edge:              ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i90

land.lhs.true.i85:                                ; preds = %cond.end50
  %funcs.i84 = getelementptr inbounds %struct.amdgpu_device, ptr %49, i32 0, i32 106, i32 2, i32 15
  %52 = ptrtoint ptr %funcs.i84 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %funcs.i84, align 4
  %tobool2.not.i = icmp eq ptr %53, null
  br i1 %tobool2.not.i, label %land.lhs.true.i85.cond.false.i90_crit_edge, label %land.lhs.true3.i

land.lhs.true.i85.cond.false.i90_crit_edge:       ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i90

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i85
  %sriov_wreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %53, i32 0, i32 12
  %54 = ptrtoint ptr %sriov_wreg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sriov_wreg.i, align 4
  %tobool7.not.i = icmp eq ptr %55, null
  br i1 %tobool7.not.i, label %land.lhs.true3.i.cond.false.i90_crit_edge, label %cond.true.i88

land.lhs.true3.i.cond.false.i90_crit_edge:        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i90

cond.true.i88:                                    ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i86 = getelementptr %struct.amdgpu_device, ptr %49, i32 0, i32 130, i32 15
  %56 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i86, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add.i87 = add i32 %59, 642
  %conv.i = zext i16 %msg to i32
  tail call void %55(ptr noundef %49, i32 noundef %add.i87, i32 noundef %conv.i, i32 noundef 0, i32 noundef 15) #5
  br label %vega20_send_msg_to_smc_without_waiting.exit

cond.false.i90:                                   ; preds = %land.lhs.true3.i.cond.false.i90_crit_edge, %land.lhs.true.i85.cond.false.i90_crit_edge, %cond.end50.cond.false.i90_crit_edge
  %arrayidx15.i = getelementptr %struct.amdgpu_device, ptr %49, i32 0, i32 130, i32 15
  %60 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx15.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add18.i89 = add i32 %63, 642
  %conv19.i = zext i16 %msg to i32
  tail call void @amdgpu_device_wreg(ptr noundef %49, i32 noundef %add18.i89, i32 noundef %conv19.i, i32 noundef 0) #5
  br label %vega20_send_msg_to_smc_without_waiting.exit

vega20_send_msg_to_smc_without_waiting.exit:      ; preds = %cond.false.i90, %cond.true.i88
  %64 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwmgr, align 4
  %arrayidx.i91 = getelementptr %struct.amdgpu_device, ptr %65, i32 0, i32 130, i32 15
  %66 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i91, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add.i92 = add i32 %69, 666
  %call.i93 = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add.i92, i32 noundef 0, i32 noundef -1) #5
  %virt.i94 = getelementptr inbounds %struct.amdgpu_device, ptr %65, i32 0, i32 132
  %70 = ptrtoint ptr %virt.i94 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %virt.i94, align 8
  %and.i95 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i96, label %vega20_send_msg_to_smc_without_waiting.exit.cond.false.i108_crit_edge, label %land.lhs.true.i99

vega20_send_msg_to_smc_without_waiting.exit.cond.false.i108_crit_edge: ; preds = %vega20_send_msg_to_smc_without_waiting.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i108

land.lhs.true.i99:                                ; preds = %vega20_send_msg_to_smc_without_waiting.exit
  %funcs.i97 = getelementptr inbounds %struct.amdgpu_device, ptr %65, i32 0, i32 106, i32 2, i32 15
  %72 = ptrtoint ptr %funcs.i97 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %funcs.i97, align 4
  %tobool4.not.i98 = icmp eq ptr %73, null
  br i1 %tobool4.not.i98, label %land.lhs.true.i99.cond.false.i108_crit_edge, label %land.lhs.true5.i102

land.lhs.true.i99.cond.false.i108_crit_edge:      ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i108

land.lhs.true5.i102:                              ; preds = %land.lhs.true.i99
  %sriov_rreg.i100 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %73, i32 0, i32 13
  %74 = ptrtoint ptr %sriov_rreg.i100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sriov_rreg.i100, align 4
  %tobool9.not.i101 = icmp eq ptr %75, null
  br i1 %tobool9.not.i101, label %land.lhs.true5.i102.cond.false.i108_crit_edge, label %cond.true.i105

land.lhs.true5.i102.cond.false.i108_crit_edge:    ; preds = %land.lhs.true5.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i108

cond.true.i105:                                   ; preds = %land.lhs.true5.i102
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i91, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %add18.i103 = add i32 %79, 666
  %call19.i104 = tail call i32 %75(ptr noundef %65, i32 noundef %add18.i103, i32 noundef 0, i32 noundef 15) #5
  br label %vega20_wait_for_response.exit110

cond.false.i108:                                  ; preds = %land.lhs.true5.i102.cond.false.i108_crit_edge, %land.lhs.true.i99.cond.false.i108_crit_edge, %vega20_send_msg_to_smc_without_waiting.exit.cond.false.i108_crit_edge
  %80 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i91, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add24.i106 = add i32 %83, 666
  %call25.i107 = tail call i32 @amdgpu_device_rreg(ptr noundef %65, i32 noundef %add24.i106, i32 noundef 0) #5
  br label %vega20_wait_for_response.exit110

vega20_wait_for_response.exit110:                 ; preds = %cond.false.i108, %cond.true.i105
  %cond.i109 = phi i32 [ %call19.i104, %cond.true.i105 ], [ %call25.i107, %cond.false.i108 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i109)
  %cmp.not = icmp eq i32 %cond.i109, 1
  br i1 %cmp.not, label %vega20_wait_for_response.exit110.if.end_crit_edge, label %do.end

vega20_wait_for_response.exit110.if.end_crit_edge: ; preds = %vega20_wait_for_response.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %vega20_wait_for_response.exit110
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %msg to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %cond.i109) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %vega20_wait_for_response.exit110.if.end_crit_edge
  %cond = phi i32 [ -5, %do.end ], [ 0, %vega20_wait_for_response.exit110.if.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vega20_is_dpm_running(ptr noundef %hwmgr) #0 align 64 {
entry:
  %features_enabled = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features_enabled) #5
  %0 = ptrtoint ptr %features_enabled to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %features_enabled, align 8
  %call = call i32 @vega20_get_enabled_smc_features(ptr noundef %hwmgr, ptr noundef nonnull %features_enabled)
  %1 = ptrtoint ptr %features_enabled to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %features_enabled, align 8
  %and = and i64 %2, 783
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features_enabled) #5
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vega20_smc_table_manager(ptr noundef %hwmgr, ptr nocapture noundef %table, i16 noundef zeroext %table_id, i1 noundef zeroext %rw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %conv.i = sext i16 %table_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %table_id)
  %cmp.i = icmp slt i16 %table_id, 10
  br i1 %rw, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %do.body9.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_from_smc._rs, ptr noundef nonnull @__func__.vega20_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %do.end.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.53) #8
  br label %if.end

do.body9.i:                                       ; preds = %if.then
  %smu_backend.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %2 = ptrtoint ptr %smu_backend.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smu_backend.i, align 4
  %arrayidx.i = getelementptr [10 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not.i = icmp eq i32 %5, 0
  br i1 %cmp11.not.i, label %if.then13.i, label %do.body26.i

if.then13.i:                                      ; preds = %do.body9.i
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_from_smc._rs.54, ptr noundef nonnull @__func__.vega20_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end_crit_edge, label %do.end19.i

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57) #8
  br label %if.end

do.body26.i:                                      ; preds = %do.body9.i
  %size.i = getelementptr [10 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31.not.i = icmp eq i32 %7, 0
  br i1 %cmp31.not.i, label %if.then33.i, label %do.body46.i

if.then33.i:                                      ; preds = %do.body26.i
  %call34.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_from_smc._rs.58, ptr noundef nonnull @__func__.vega20_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.if.end_crit_edge, label %do.end39.i

if.then33.i.if.end_crit_edge:                     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end39.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.61) #8
  br label %if.end

do.body46.i:                                      ; preds = %do.body26.i
  %mc_addr.i = getelementptr [10 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 2
  %8 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mc_addr.i, align 8
  %shr.i = lshr i64 %9, 32
  %conv52.i = trunc i64 %shr.i to i32
  %call53.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef %conv52.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp eq i32 %call53.i, 0
  br i1 %cmp54.i, label %do.body69.i, label %if.then56.i

if.then56.i:                                      ; preds = %do.body46.i
  %call57.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_from_smc._rs.62, ptr noundef nonnull @__func__.vega20_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then56.i.if.end_crit_edge, label %do.end62.i

if.then56.i.if.end_crit_edge:                     ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end62.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #7
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.65) #8
  br label %if.end

do.body69.i:                                      ; preds = %do.body46.i
  %10 = ptrtoint ptr %mc_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mc_addr.i, align 8
  %conv75.i = trunc i64 %11 to i32
  %call76.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 17, i32 noundef %conv75.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp eq i32 %call76.i, 0
  br i1 %cmp77.i, label %do.body92.i, label %if.then79.i

if.then79.i:                                      ; preds = %do.body69.i
  %call80.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_from_smc._rs.66, ptr noundef nonnull @__func__.vega20_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.then79.i.if.end_crit_edge, label %do.end85.i

if.then79.i.if.end_crit_edge:                     ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end85.i:                                       ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #7
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.69) #8
  br label %if.end

do.body92.i:                                      ; preds = %do.body69.i
  %call94.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 20, i32 noundef %conv.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp95.i = icmp eq i32 %call94.i, 0
  br i1 %cmp95.i, label %do.end109.i, label %if.then97.i

if.then97.i:                                      ; preds = %do.body92.i
  %call98.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_from_smc._rs.70, ptr noundef nonnull @__func__.vega20_copy_table_from_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.then97.i.if.end_crit_edge, label %do.end103.i

if.then97.i.if.end_crit_edge:                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end103.i:                                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #7
  %call105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.73) #8
  br label %if.end

do.end109.i:                                      ; preds = %do.body92.i
  %asic_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %asic_funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic_funcs.i, align 4
  %invalidate_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %invalidate_hdp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %invalidate_hdp.i, align 4
  %tobool110.not.i = icmp eq ptr %15, null
  br i1 %tobool110.not.i, label %cond.false.i, label %do.end109.i.cond.end.i_crit_edge

do.end109.i.cond.end.i_crit_edge:                 ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.end109.i
  call void @__sanitizer_cov_trace_pc() #7
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 102, i32 1
  %16 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs.i, align 4
  %invalidate_hdp113.i = getelementptr inbounds %struct.amdgpu_hdp_funcs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %invalidate_hdp113.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %invalidate_hdp113.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %do.end109.i.cond.end.i_crit_edge
  %.sink.i = phi ptr [ %19, %cond.false.i ], [ %15, %do.end109.i.cond.end.i_crit_edge ]
  tail call void %.sink.i(ptr noundef %1, ptr noundef null) #5
  %table118.i = getelementptr [10 x %struct.smu_table_entry], ptr %3, i32 0, i32 %conv.i, i32 3
  %20 = ptrtoint ptr %table118.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %table118.i, align 8
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %24 = call ptr @memcpy(ptr %table, ptr %21, i32 %23)
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i, label %do.body9.i13, label %if.then.i9

if.then.i9:                                       ; preds = %if.else
  %call.i7 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_to_smc._rs, ptr noundef nonnull @__func__.vega20_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i8, label %if.then.i9.if.end_crit_edge, label %if.then.i9.cleanup.sink.split.i_crit_edge

if.then.i9.cleanup.sink.split.i_crit_edge:        ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then.i9.if.end_crit_edge:                      ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body9.i13:                                     ; preds = %if.else
  %smu_backend.i10 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 25
  %25 = ptrtoint ptr %smu_backend.i10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %smu_backend.i10, align 4
  %arrayidx.i11 = getelementptr [10 x %struct.smu_table_entry], ptr %26, i32 0, i32 %conv.i
  %27 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp11.not.i12 = icmp eq i32 %28, 0
  br i1 %cmp11.not.i12, label %if.then13.i16, label %do.body26.i19

if.then13.i16:                                    ; preds = %do.body9.i13
  %call14.i14 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_to_smc._rs.74, ptr noundef nonnull @__func__.vega20_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i14)
  %tobool15.not.i15 = icmp eq i32 %call14.i14, 0
  br i1 %tobool15.not.i15, label %if.then13.i16.if.end_crit_edge, label %if.then13.i16.cleanup.sink.split.i_crit_edge

if.then13.i16.cleanup.sink.split.i_crit_edge:     ; preds = %if.then13.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then13.i16.if.end_crit_edge:                   ; preds = %if.then13.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body26.i19:                                    ; preds = %do.body9.i13
  %size.i17 = getelementptr [10 x %struct.smu_table_entry], ptr %26, i32 0, i32 %conv.i, i32 1
  %29 = ptrtoint ptr %size.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp31.not.i18 = icmp eq i32 %30, 0
  br i1 %cmp31.not.i18, label %if.then33.i22, label %do.end45.i

if.then33.i22:                                    ; preds = %do.body26.i19
  %call34.i20 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_to_smc._rs.77, ptr noundef nonnull @__func__.vega20_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i20)
  %tobool35.not.i21 = icmp eq i32 %call34.i20, 0
  br i1 %tobool35.not.i21, label %if.then33.i22.if.end_crit_edge, label %if.then33.i22.cleanup.sink.split.i_crit_edge

if.then33.i22.cleanup.sink.split.i_crit_edge:     ; preds = %if.then33.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then33.i22.if.end_crit_edge:                   ; preds = %if.then33.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end45.i:                                       ; preds = %do.body26.i19
  %table50.i = getelementptr [10 x %struct.smu_table_entry], ptr %26, i32 0, i32 %conv.i, i32 3
  %31 = ptrtoint ptr %table50.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %table50.i, align 8
  %33 = call ptr @memcpy(ptr %32, ptr %table, i32 %30)
  %asic_funcs.i23 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %asic_funcs.i23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asic_funcs.i23, align 4
  %flush_hdp.i = getelementptr inbounds %struct.amdgpu_asic_funcs, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %flush_hdp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flush_hdp.i, align 4
  %tobool56.not.i = icmp eq ptr %37, null
  br i1 %tobool56.not.i, label %cond.false.i25, label %do.end45.i.do.body60.i_crit_edge

do.end45.i.do.body60.i_crit_edge:                 ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60.i

cond.false.i25:                                   ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %funcs.i24 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 102, i32 1
  %38 = ptrtoint ptr %funcs.i24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %funcs.i24, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  br label %do.body60.i

do.body60.i:                                      ; preds = %cond.false.i25, %do.end45.i.do.body60.i_crit_edge
  %.sink.i26 = phi ptr [ %41, %cond.false.i25 ], [ %37, %do.end45.i.do.body60.i_crit_edge ]
  tail call void %.sink.i26(ptr noundef %1, ptr noundef null) #5
  %mc_addr.i27 = getelementptr [10 x %struct.smu_table_entry], ptr %26, i32 0, i32 %conv.i, i32 2
  %42 = ptrtoint ptr %mc_addr.i27 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %mc_addr.i27, align 8
  %shr.i28 = lshr i64 %43, 32
  %conv66.i = trunc i64 %shr.i28 to i32
  %call67.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 16, i32 noundef %conv66.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %cmp68.i = icmp eq i32 %call67.i, 0
  br i1 %cmp68.i, label %do.body83.i, label %if.then70.i

if.then70.i:                                      ; preds = %do.body60.i
  %call71.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_to_smc._rs.80, ptr noundef nonnull @__func__.vega20_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.then70.i.if.end_crit_edge, label %if.then70.i.cleanup.sink.split.i_crit_edge

if.then70.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then70.i.if.end_crit_edge:                     ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body83.i:                                      ; preds = %do.body60.i
  %44 = ptrtoint ptr %mc_addr.i27 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %mc_addr.i27, align 8
  %conv89.i = trunc i64 %45 to i32
  %call90.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 17, i32 noundef %conv89.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp eq i32 %call90.i, 0
  br i1 %cmp91.i, label %do.body106.i, label %if.then93.i

if.then93.i:                                      ; preds = %do.body83.i
  %call94.i29 = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_to_smc._rs.84, ptr noundef nonnull @__func__.vega20_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i29)
  %tobool95.not.i = icmp eq i32 %call94.i29, 0
  br i1 %tobool95.not.i, label %if.then93.i.if.end_crit_edge, label %if.then93.i.cleanup.sink.split.i_crit_edge

if.then93.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then93.i.if.end_crit_edge:                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body106.i:                                     ; preds = %do.body83.i
  %call108.i = tail call i32 @smum_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext 21, i32 noundef %conv.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %cmp109.i = icmp eq i32 %call108.i, 0
  br i1 %cmp109.i, label %do.body106.i.if.end_crit_edge, label %if.then111.i

do.body106.i.if.end_crit_edge:                    ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then111.i:                                     ; preds = %do.body106.i
  %call112.i = tail call i32 @___ratelimit(ptr noundef nonnull @vega20_copy_table_to_smc._rs.88, ptr noundef nonnull @__func__.vega20_copy_table_to_smc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.then111.i.if.end_crit_edge, label %if.then111.i.cleanup.sink.split.i_crit_edge

if.then111.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then111.i.if.end_crit_edge:                    ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup.sink.split.i:                             ; preds = %if.then111.i.cleanup.sink.split.i_crit_edge, %if.then93.i.cleanup.sink.split.i_crit_edge, %if.then70.i.cleanup.sink.split.i_crit_edge, %if.then33.i22.cleanup.sink.split.i_crit_edge, %if.then13.i16.cleanup.sink.split.i_crit_edge, %if.then.i9.cleanup.sink.split.i_crit_edge
  %.str.91.sink.i = phi ptr [ @.str.53, %if.then.i9.cleanup.sink.split.i_crit_edge ], [ @.str.57, %if.then13.i16.cleanup.sink.split.i_crit_edge ], [ @.str.61, %if.then33.i22.cleanup.sink.split.i_crit_edge ], [ @.str.83, %if.then70.i.cleanup.sink.split.i_crit_edge ], [ @.str.87, %if.then93.i.cleanup.sink.split.i_crit_edge ], [ @.str.91, %if.then111.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.then.i9.cleanup.sink.split.i_crit_edge ], [ -22, %if.then13.i16.cleanup.sink.split.i_crit_edge ], [ -22, %if.then33.i22.cleanup.sink.split.i_crit_edge ], [ %call67.i, %if.then70.i.cleanup.sink.split.i_crit_edge ], [ %call90.i, %if.then93.i.cleanup.sink.split.i_crit_edge ], [ %call108.i, %if.then111.i.cleanup.sink.split.i_crit_edge ]
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.91.sink.i) #8
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %if.then111.i.if.end_crit_edge, %do.body106.i.if.end_crit_edge, %if.then93.i.if.end_crit_edge, %if.then70.i.if.end_crit_edge, %if.then33.i22.if.end_crit_edge, %if.then13.i16.if.end_crit_edge, %if.then.i9.if.end_crit_edge, %cond.end.i, %do.end103.i, %if.then97.i.if.end_crit_edge, %do.end85.i, %if.then79.i.if.end_crit_edge, %do.end62.i, %if.then56.i.if.end_crit_edge, %do.end39.i, %if.then33.i.if.end_crit_edge, %do.end19.i, %if.then13.i.if.end_crit_edge, %do.end.i, %if.then.i.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %cond.end.i ], [ -22, %do.end.i ], [ -22, %if.then.i.if.end_crit_edge ], [ -22, %do.end19.i ], [ -22, %if.then13.i.if.end_crit_edge ], [ -22, %do.end39.i ], [ -22, %if.then33.i.if.end_crit_edge ], [ %call53.i, %do.end62.i ], [ %call53.i, %if.then56.i.if.end_crit_edge ], [ %call76.i, %do.end85.i ], [ %call76.i, %if.then79.i.if.end_crit_edge ], [ %call94.i, %do.end103.i ], [ %call94.i, %if.then97.i.if.end_crit_edge ], [ -22, %if.then.i9.if.end_crit_edge ], [ -22, %if.then13.i16.if.end_crit_edge ], [ -22, %if.then33.i22.if.end_crit_edge ], [ %call67.i, %if.then70.i.if.end_crit_edge ], [ %call90.i, %if.then93.i.if.end_crit_edge ], [ %call108.i, %if.then111.i.if.end_crit_edge ], [ 0, %do.body106.i.if.end_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu7_convert_fw_type_to_cgs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smu_v11_0_i2c_control_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @smu_v11_0_i2c_control_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_for_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 261, i32 2}
!2 = !{ptr @vega20_set_activity_monitor_coeff._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vega20_set_activity_monitor_coeff, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vega20_set_activity_monitor_coeff._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vega20_set_activity_monitor_coeff._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vega20_set_activity_monitor_coeff._rs.4, !10, !"_rs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 267, i32 2}
!11 = !{ptr @vega20_set_activity_monitor_coeff._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @vega20_set_activity_monitor_coeff._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vega20_set_activity_monitor_coeff._rs.8, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 273, i32 2}
!16 = !{ptr @vega20_set_activity_monitor_coeff._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vega20_set_activity_monitor_coeff._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vega20_get_activity_monitor_coeff._rs, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 291, i32 2}
!21 = !{ptr @__func__.vega20_get_activity_monitor_coeff, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vega20_get_activity_monitor_coeff._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @vega20_get_activity_monitor_coeff._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vega20_get_activity_monitor_coeff._rs.13, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 297, i32 2}
!27 = !{ptr @vega20_get_activity_monitor_coeff._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @vega20_get_activity_monitor_coeff._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vega20_get_activity_monitor_coeff._rs.17, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 303, i32 2}
!32 = !{ptr @vega20_get_activity_monitor_coeff._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vega20_get_activity_monitor_coeff._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vega20_enable_smc_features._rs, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 327, i32 3}
!37 = !{ptr @__func__.vega20_enable_smc_features, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @vega20_enable_smc_features._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @vega20_enable_smc_features._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vega20_enable_smc_features._rs.22, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 331, i32 3}
!43 = !{ptr @vega20_enable_smc_features._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vega20_enable_smc_features._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vega20_enable_smc_features._rs.26, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 336, i32 3}
!48 = !{ptr @vega20_enable_smc_features._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vega20_enable_smc_features._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @vega20_enable_smc_features._rs.30, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 340, i32 3}
!53 = !{ptr @vega20_enable_smc_features._entry.31, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @vega20_enable_smc_features._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vega20_get_enabled_smc_features._rs, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 358, i32 2}
!58 = !{ptr @__func__.vega20_get_enabled_smc_features, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vega20_get_enabled_smc_features._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @vega20_get_enabled_smc_features._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vega20_get_enabled_smc_features._rs.35, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 363, i32 2}
!64 = !{ptr @vega20_get_enabled_smc_features._entry.36, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @vega20_get_enabled_smc_features._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @vega20_set_pptable_driver_address._rs, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 402, i32 2}
!69 = !{ptr @__func__.vega20_set_pptable_driver_address, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vega20_set_pptable_driver_address._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @vega20_set_pptable_driver_address._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vega20_set_pptable_driver_address._rs.40, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 408, i32 2}
!75 = !{ptr @vega20_set_pptable_driver_address._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @vega20_set_pptable_driver_address._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 632, i32 10}
!80 = !{ptr @vega20_smu_funcs, !81, !"vega20_smu_funcs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 631, i32 29}
!82 = !{ptr @vega20_start_smu._rs, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 594, i32 2}
!84 = !{ptr @__func__.vega20_start_smu, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vega20_start_smu._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @vega20_start_smu._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vega20_start_smu._rs.46, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 599, i32 2}
!90 = !{ptr @vega20_start_smu._entry.47, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @vega20_start_smu._entry_ptr.48, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 118, i32 3}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @vega20_send_msg_to_smc._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @vega20_send_msg_to_smc._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 146, i32 3}
!100 = !{ptr @vega20_send_msg_to_smc_with_parameter._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @vega20_send_msg_to_smc_with_parameter._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @vega20_copy_table_from_smc._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 171, i32 2}
!104 = !{ptr @__func__.vega20_copy_table_from_smc, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vega20_copy_table_from_smc._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @vega20_copy_table_from_smc._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @vega20_copy_table_from_smc._rs.54, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 173, i32 2}
!110 = !{ptr @vega20_copy_table_from_smc._entry.55, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @vega20_copy_table_from_smc._entry_ptr.56, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vega20_copy_table_from_smc._rs.58, !114, !"_rs", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 175, i32 2}
!115 = !{ptr @vega20_copy_table_from_smc._entry.59, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @vega20_copy_table_from_smc._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vega20_copy_table_from_smc._rs.62, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 178, i32 2}
!120 = !{ptr @vega20_copy_table_from_smc._entry.63, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @vega20_copy_table_from_smc._entry_ptr.64, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @vega20_copy_table_from_smc._rs.66, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 184, i32 2}
!125 = !{ptr @vega20_copy_table_from_smc._entry.67, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @vega20_copy_table_from_smc._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @vega20_copy_table_from_smc._rs.70, !129, !"_rs", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 190, i32 2}
!130 = !{ptr @vega20_copy_table_from_smc._entry.71, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @vega20_copy_table_from_smc._entry_ptr.72, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @vega20_copy_table_to_smc._rs, !134, !"_rs", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 216, i32 2}
!135 = !{ptr @__func__.vega20_copy_table_to_smc, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @vega20_copy_table_to_smc._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @vega20_copy_table_to_smc._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @vega20_copy_table_to_smc._rs.74, !139, !"_rs", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 218, i32 2}
!140 = !{ptr @vega20_copy_table_to_smc._entry.75, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @vega20_copy_table_to_smc._entry_ptr.76, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @vega20_copy_table_to_smc._rs.77, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 220, i32 2}
!144 = !{ptr @vega20_copy_table_to_smc._entry.78, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @vega20_copy_table_to_smc._entry_ptr.79, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @vega20_copy_table_to_smc._rs.80, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 228, i32 2}
!148 = !{ptr @vega20_copy_table_to_smc._entry.81, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @vega20_copy_table_to_smc._entry_ptr.82, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @vega20_copy_table_to_smc._rs.84, !152, !"_rs", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 234, i32 2}
!153 = !{ptr @vega20_copy_table_to_smc._entry.85, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @vega20_copy_table_to_smc._entry_ptr.86, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @vega20_copy_table_to_smc._rs.88, !157, !"_rs", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/vega20_smumgr.c", i32 240, i32 2}
!158 = !{ptr @vega20_copy_table_to_smc._entry.89, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @vega20_copy_table_to_smc._entry_ptr.90, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.91, !157, !"<string literal>", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"auto-init"}
