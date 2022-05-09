; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/smumgr/smu9_smumgr.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu9_smumgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@smu9_send_msg_to_smc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013amdgpu: [powerplay] Failed to send message: 0x%x, ret value: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smu9_send_msg_to_smc\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu9_smumgr.c\00", [32 x i8] zeroinitializer }, align 32
@smu9_send_msg_to_smc._entry_ptr = internal global ptr @smu9_send_msg_to_smc._entry, section ".printk_index", align 4
@smu9_send_msg_to_smc_with_parameter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013amdgpu: [powerplay] Failed message: 0x%x, input parameter: 0x%x, error code: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"smu9_send_msg_to_smc_with_parameter\00", [60 x i8] zeroinitializer }, align 32
@smu9_send_msg_to_smc_with_parameter._entry_ptr = internal global ptr @smu9_send_msg_to_smc_with_parameter._entry, section ".printk_index", align 4
@smu9_wait_for_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013amdgpu: [powerplay] No response from smu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smu9_wait_for_response\00", [41 x i8] zeroinitializer }, align 32
@smu9_wait_for_response._entry_ptr = internal global ptr @smu9_wait_for_response._entry, section ".printk_index", align 4
@smu9_wait_for_response._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smu9_wait_for_response._entry_ptr.8 = internal global ptr @smu9_wait_for_response._entry.7, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 129, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 161, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 72, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private constant [67 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu9_smumgr.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 82, i32 4 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @smu9_send_msg_to_smc._entry, ptr @smu9_send_msg_to_smc._entry_ptr, ptr @smu9_send_msg_to_smc_with_parameter._entry, ptr @smu9_send_msg_to_smc_with_parameter._entry_ptr, ptr @smu9_wait_for_response._entry, ptr @smu9_wait_for_response._entry.7, ptr @smu9_wait_for_response._entry_ptr, ptr @smu9_wait_for_response._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu9_send_msg_to_smc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu9_send_msg_to_smc_with_parameter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu9_wait_for_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu9_wait_for_response._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smu9_is_smc_ram_running(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %pcie_rreg = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %pcie_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_rreg, align 8
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 61931560) #3
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu9_send_msg_to_smc(ptr noundef %hwmgr, i16 noundef zeroext %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call fastcc i32 @smu9_wait_for_response(ptr noundef %hwmgr)
  %pp_one_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 6
  %2 = ptrtoint ptr %pp_one_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pp_one_vf, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %virt20 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt20, align 8
  %and22 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool23.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_wreg, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false_crit_edge, label %cond.true

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 679
  tail call void %9(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 15) #3
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add19 = add i32 %17, 679
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0, i32 noundef 0) #3
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool23.not, label %if.else.cond.false45_crit_edge, label %land.lhs.true24

if.else.cond.false45_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

land.lhs.true24:                                  ; preds = %if.else
  %funcs27 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs27, align 4
  %tobool28.not = icmp eq ptr %19, null
  br i1 %tobool28.not, label %land.lhs.true24.cond.false45_crit_edge, label %land.lhs.true29

land.lhs.true24.cond.false45_crit_edge:           ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %sriov_wreg33 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg33, align 4
  %tobool34.not = icmp eq ptr %21, null
  br i1 %tobool34.not, label %land.lhs.true29.cond.false45_crit_edge, label %cond.true35

land.lhs.true29.cond.false45_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

cond.true35:                                      ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx41 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx41, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add44 = add i32 %25, 666
  tail call void %21(ptr noundef %1, i32 noundef %add44, i32 noundef 0, i32 noundef 0, i32 noundef 15) #3
  br label %if.end

cond.false45:                                     ; preds = %land.lhs.true29.cond.false45_crit_edge, %land.lhs.true24.cond.false45_crit_edge, %if.else.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx47, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add50 = add i32 %29, 666
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add50, i32 noundef 0, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %cond.false45, %cond.true35, %cond.false, %cond.true
  tail call fastcc void @smu9_send_msg_to_smc_without_waiting(ptr noundef %hwmgr, i16 noundef zeroext %msg)
  %call53 = tail call fastcc i32 @smu9_wait_for_response(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call53)
  %cmp.not = icmp eq i32 %call53, 1
  br i1 %cmp.not, label %if.end.if.end56_crit_edge, label %do.end

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %msg to i32
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %call53) #6
  br label %if.end56

if.end56:                                         ; preds = %do.end, %if.end.if.end56_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu9_wait_for_response(ptr noundef %hwmgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %pp_one_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 6
  %2 = ptrtoint ptr %pp_one_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pp_one_vf, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %arrayidx31 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %4 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx31, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add = add i32 %7, 679
  %call = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %virt, align 8
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.cond.false_crit_edge, label %land.lhs.true

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true9

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true9:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sriov_rreg, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %land.lhs.true9.cond.false_crit_edge, label %cond.true

land.lhs.true9.cond.false_crit_edge:              ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx31, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add22 = add i32 %17, 679
  %call23 = tail call i32 %13(ptr noundef %1, i32 noundef %add22, i32 noundef 0, i32 noundef 15) #3
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true9.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx31, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add28 = add i32 %21, 679
  %call29 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add28, i32 noundef 0) #3
  br label %cleanup

if.else:                                          ; preds = %entry
  %add34 = add i32 %7, 666
  %call35 = tail call i32 @phm_wait_for_register_unequal(ptr noundef %hwmgr, i32 noundef %add34, i32 noundef 0, i32 noundef -1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else.if.end43_crit_edge, label %do.end40

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.else.if.end43_crit_edge
  %virt44 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %22 = ptrtoint ptr %virt44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %virt44, align 8
  %and46 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.cond.false70_crit_edge, label %land.lhs.true48

if.end43.cond.false70_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false70

land.lhs.true48:                                  ; preds = %if.end43
  %funcs51 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %24 = ptrtoint ptr %funcs51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs51, align 4
  %tobool52.not = icmp eq ptr %25, null
  br i1 %tobool52.not, label %land.lhs.true48.cond.false70_crit_edge, label %land.lhs.true53

land.lhs.true48.cond.false70_crit_edge:           ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false70

land.lhs.true53:                                  ; preds = %land.lhs.true48
  %sriov_rreg57 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %sriov_rreg57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sriov_rreg57, align 4
  %tobool58.not = icmp eq ptr %27, null
  br i1 %tobool58.not, label %land.lhs.true53.cond.false70_crit_edge, label %cond.true59

land.lhs.true53.cond.false70_crit_edge:           ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false70

cond.true59:                                      ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx31, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add68 = add i32 %31, 666
  %call69 = tail call i32 %27(ptr noundef %1, i32 noundef %add68, i32 noundef 0, i32 noundef 15) #3
  br label %cleanup

cond.false70:                                     ; preds = %land.lhs.true53.cond.false70_crit_edge, %land.lhs.true48.cond.false70_crit_edge, %if.end43.cond.false70_crit_edge
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx31, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add75 = add i32 %35, 666
  %call76 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add75, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %cond.false70, %cond.true59, %cond.false, %cond.true
  %retval.0 = phi i32 [ %call23, %cond.true ], [ %call29, %cond.false ], [ %call69, %cond.true59 ], [ %call76, %cond.false70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smu9_send_msg_to_smc_without_waiting(ptr nocapture noundef readonly %hwmgr, i16 noundef zeroext %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %pp_one_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 6
  %2 = ptrtoint ptr %pp_one_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pp_one_vf, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %virt21 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt21, align 8
  %and23 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool24.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_wreg, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false_crit_edge, label %cond.true

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 677
  %conv = zext i16 %msg to i32
  tail call void %9(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 15) #3
  br label %if.end

cond.false:                                       ; preds = %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add19 = add i32 %17, 677
  %conv20 = zext i16 %msg to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add19, i32 noundef %conv20, i32 noundef 0) #3
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool24.not, label %if.else.cond.false47_crit_edge, label %land.lhs.true25

if.else.cond.false47_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false47

land.lhs.true25:                                  ; preds = %if.else
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false47_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false47_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false47

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_wreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %sriov_wreg34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_wreg34, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false47_crit_edge, label %cond.true36

land.lhs.true30.cond.false47_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx42, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add45 = add i32 %25, 642
  %conv46 = zext i16 %msg to i32
  tail call void %21(ptr noundef %1, i32 noundef %add45, i32 noundef %conv46, i32 noundef 0, i32 noundef 15) #3
  br label %if.end

cond.false47:                                     ; preds = %land.lhs.true30.cond.false47_crit_edge, %land.lhs.true25.cond.false47_crit_edge, %if.else.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx49, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add52 = add i32 %29, 642
  %conv53 = zext i16 %msg to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add52, i32 noundef %conv53, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %cond.false47, %cond.true36, %cond.false, %cond.true
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu9_send_msg_to_smc_with_parameter(ptr noundef %hwmgr, i16 noundef zeroext %msg, i32 noundef %parameter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %call = tail call fastcc i32 @smu9_wait_for_response(ptr noundef %hwmgr)
  %pp_one_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 6
  %2 = ptrtoint ptr %pp_one_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pp_one_vf, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %virt52 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt52, align 8
  %and54 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool55.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_wreg, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false_crit_edge, label %cond.true

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 679
  tail call void %9(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 15) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add19 = add i32 %17, 679
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0, i32 noundef 0) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %18 = ptrtoint ptr %virt52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %virt52, align 8
  %and22 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %cond.end.cond.false45_crit_edge, label %land.lhs.true24

cond.end.cond.false45_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

land.lhs.true24:                                  ; preds = %cond.end
  %funcs27 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %20 = ptrtoint ptr %funcs27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs27, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %land.lhs.true24.cond.false45_crit_edge, label %land.lhs.true29

land.lhs.true24.cond.false45_crit_edge:           ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %sriov_wreg33 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %sriov_wreg33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sriov_wreg33, align 4
  %tobool34.not = icmp eq ptr %23, null
  br i1 %tobool34.not, label %land.lhs.true29.cond.false45_crit_edge, label %cond.true35

land.lhs.true29.cond.false45_crit_edge:           ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false45

cond.true35:                                      ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx41 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx41, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add44 = add i32 %27, 678
  tail call void %23(ptr noundef %1, i32 noundef %add44, i32 noundef %parameter, i32 noundef 0, i32 noundef 15) #3
  br label %if.end

cond.false45:                                     ; preds = %land.lhs.true29.cond.false45_crit_edge, %land.lhs.true24.cond.false45_crit_edge, %cond.end.cond.false45_crit_edge
  %arrayidx47 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add50 = add i32 %31, 678
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add50, i32 noundef %parameter, i32 noundef 0) #3
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool55.not, label %if.else.cond.false77_crit_edge, label %land.lhs.true56

if.else.cond.false77_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false77

land.lhs.true56:                                  ; preds = %if.else
  %funcs59 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %32 = ptrtoint ptr %funcs59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %funcs59, align 4
  %tobool60.not = icmp eq ptr %33, null
  br i1 %tobool60.not, label %land.lhs.true56.cond.false77_crit_edge, label %land.lhs.true61

land.lhs.true56.cond.false77_crit_edge:           ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false77

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %sriov_wreg65 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %sriov_wreg65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sriov_wreg65, align 4
  %tobool66.not = icmp eq ptr %35, null
  br i1 %tobool66.not, label %land.lhs.true61.cond.false77_crit_edge, label %cond.true67

land.lhs.true61.cond.false77_crit_edge:           ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false77

cond.true67:                                      ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx73 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %36 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx73, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add76 = add i32 %39, 666
  tail call void %35(ptr noundef %1, i32 noundef %add76, i32 noundef 0, i32 noundef 0, i32 noundef 15) #3
  br label %cond.end83

cond.false77:                                     ; preds = %land.lhs.true61.cond.false77_crit_edge, %land.lhs.true56.cond.false77_crit_edge, %if.else.cond.false77_crit_edge
  %arrayidx79 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %40 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx79, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add82 = add i32 %43, 666
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add82, i32 noundef 0, i32 noundef 0) #3
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false77, %cond.true67
  %44 = ptrtoint ptr %virt52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %virt52, align 8
  %and86 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %cond.end83.cond.false109_crit_edge, label %land.lhs.true88

cond.end83.cond.false109_crit_edge:               ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false109

land.lhs.true88:                                  ; preds = %cond.end83
  %funcs91 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %46 = ptrtoint ptr %funcs91 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %funcs91, align 4
  %tobool92.not = icmp eq ptr %47, null
  br i1 %tobool92.not, label %land.lhs.true88.cond.false109_crit_edge, label %land.lhs.true93

land.lhs.true88.cond.false109_crit_edge:          ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false109

land.lhs.true93:                                  ; preds = %land.lhs.true88
  %sriov_wreg97 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %sriov_wreg97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sriov_wreg97, align 4
  %tobool98.not = icmp eq ptr %49, null
  br i1 %tobool98.not, label %land.lhs.true93.cond.false109_crit_edge, label %cond.true99

land.lhs.true93.cond.false109_crit_edge:          ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false109

cond.true99:                                      ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx105 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %50 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx105, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add108 = add i32 %53, 658
  tail call void %49(ptr noundef %1, i32 noundef %add108, i32 noundef %parameter, i32 noundef 0, i32 noundef 15) #3
  br label %if.end

cond.false109:                                    ; preds = %land.lhs.true93.cond.false109_crit_edge, %land.lhs.true88.cond.false109_crit_edge, %cond.end83.cond.false109_crit_edge
  %arrayidx111 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %54 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx111, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add114 = add i32 %57, 658
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add114, i32 noundef %parameter, i32 noundef 0) #3
  br label %if.end

if.end:                                           ; preds = %cond.false109, %cond.true99, %cond.false45, %cond.true35
  tail call fastcc void @smu9_send_msg_to_smc_without_waiting(ptr noundef %hwmgr, i16 noundef zeroext %msg)
  %call117 = tail call fastcc i32 @smu9_wait_for_response(ptr noundef %hwmgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call117)
  %cmp.not = icmp eq i32 %call117, 1
  br i1 %cmp.not, label %if.end.if.end120_crit_edge, label %do.end

if.end.if.end120_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end120

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i16 %msg to i32
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %parameter, i32 noundef %call117) #6
  br label %if.end120

if.end120:                                        ; preds = %do.end, %if.end.if.end120_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu9_get_argument(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwmgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr, align 4
  %pp_one_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 6
  %2 = ptrtoint ptr %pp_one_vf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pp_one_vf, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %virt21 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %4 = ptrtoint ptr %virt21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virt21, align 8
  %and23 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool24.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true4

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sriov_rreg, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true4.cond.false_crit_edge, label %cond.true

land.lhs.true4.cond.false_crit_edge:              ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add = add i32 %13, 678
  %call = tail call i32 %9(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 15) #3
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true4.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add19 = add i32 %17, 678
  %call20 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add19, i32 noundef 0) #3
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool24.not, label %if.else.cond.false47_crit_edge, label %land.lhs.true25

if.else.cond.false47_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false47

land.lhs.true25:                                  ; preds = %if.else
  %funcs28 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %18 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false47_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false47_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false47

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_rreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %sriov_rreg34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sriov_rreg34, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false47_crit_edge, label %cond.true36

land.lhs.true30.cond.false47_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.false47

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx42 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx42, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add45 = add i32 %25, 658
  %call46 = tail call i32 %21(ptr noundef %1, i32 noundef %add45, i32 noundef 0, i32 noundef 15) #3
  br label %cleanup

cond.false47:                                     ; preds = %land.lhs.true30.cond.false47_crit_edge, %land.lhs.true25.cond.false47_crit_edge, %if.else.cond.false47_crit_edge
  %arrayidx49 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 15
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx49, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add52 = add i32 %29, 658
  %call53 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add52, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %cond.false47, %cond.true36, %cond.false, %cond.true
  %retval.0 = phi i32 [ %call, %cond.true ], [ %call20, %cond.false ], [ %call46, %cond.true36 ], [ %call53, %cond.false47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_wait_for_register_unequal(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu9_smumgr.c", i32 129, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @smu9_send_msg_to_smc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @smu9_send_msg_to_smc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu9_smumgr.c", i32 161, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @smu9_send_msg_to_smc_with_parameter._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @smu9_send_msg_to_smc_with_parameter._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu9_smumgr.c", i32 72, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @smu9_wait_for_response._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @smu9_wait_for_response._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @smu9_wait_for_response._entry.7, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/smumgr/smu9_smumgr.c", i32 82, i32 4}
!18 = !{ptr @smu9_wait_for_response._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
