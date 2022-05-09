; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_test.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_bo_param = type { i32, i32, i32, i32, i32, i64, i32, i8, ptr, ptr }
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
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate %d pointers\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to create VRAM object\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to pin VRAM object\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create GTT object %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to pin GTT object %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%p bind failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to map GTT object %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed GTT->VRAM copy %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to wait for GTT->VRAM fence %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to map VRAM object after copy %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Incorrect GTT->VRAM copy %d: Got 0x%p, expected 0x%p (GTT/VRAM offset 0x%16llx/0x%16llx)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed VRAM->GTT copy %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to wait for VRAM->GTT fence %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to map GTT object after copy %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Incorrect VRAM->GTT copy %d: Got 0x%p, expected 0x%p (VRAM/GTT offset 0x%16llx/0x%16llx)\0A\00", [38 x i8] zeroinitializer }, align 32
@amdgpu_do_test_moves._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016[drm] Tested GTT->VRAM and VRAM->GTT copy for GTT offset 0x%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"amdgpu_do_test_moves\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_test.c\00", [55 x i8] zeroinitializer }, align 32
@amdgpu_do_test_moves._entry_ptr = internal global ptr @amdgpu_do_test_moves._entry, section ".printk_index", align 4
@amdgpu_do_test_moves._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.17, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014amdgpu: Error while testing BO move\0A\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_do_test_moves._entry_ptr.20 = internal global ptr @amdgpu_do_test_moves._entry.18, section ".printk_index", align 4
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 179, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 54, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 69, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 77, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 90, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 99, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 104, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 111, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 126, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 132, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 141, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 150, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 172, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 178, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 187, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 196, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 213, i32 3 }
@___asan_gen_.89 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 242, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 179, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_do_test_moves._entry, ptr @amdgpu_do_test_moves._entry.18, ptr @amdgpu_do_test_moves._entry_ptr, ptr @amdgpu_do_test_moves._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_do_test_moves._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_do_test_moves._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_test_moves(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %vram_obj.i = alloca ptr, align 4
  %bp.i = alloca %struct.amdgpu_bo_param, align 8
  %gtt_map.i = alloca ptr, align 4
  %vram_map.i = alloca ptr, align 4
  %fence.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 3
  %0 = ptrtoint ptr %buffer_funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_funcs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 68, i32 4
  %2 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_funcs_ring.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_obj.i) #7
  %4 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vram_obj.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp.i) #7
  %5 = call ptr @memset(ptr %bp.i, i32 255, i32 48)
  %gart_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 7
  %6 = ptrtoint ptr %gart_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gart_size.i, align 8
  %gart_pin_size.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 129
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gart_pin_size.i, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %gart_pin_size.i) #7
  %sub.i = sub i64 %7, %call.i.i
  %conv.i = trunc i64 %sub.i to i32
  %sub1.i = add i32 %conv.i, -4194304
  %div302.i = lshr i32 %sub1.i, 20
  %8 = shl nuw nsw i32 %div302.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %div302.i) #7
  br label %out_cleanup.thread.i

if.end.i:                                         ; preds = %if.then
  %9 = getelementptr inbounds i8, ptr %bp.i, i32 16
  %10 = call ptr @memset(ptr %9, i32 0, i32 32)
  %11 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1048576, ptr %bp.i, align 8
  %byte_align.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 1
  %12 = ptrtoint ptr %byte_align.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %byte_align.i, align 4
  %domain.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 3
  %13 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %domain.i, align 4
  %type.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 6
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type.i, align 8
  %bo_ptr_size.i = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp.i, i32 0, i32 2
  %15 = ptrtoint ptr %bo_ptr_size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 568, ptr %bo_ptr_size.i, align 8
  %call4.i = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef nonnull %bp.i, ptr noundef nonnull %vram_obj.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %out_cleanup.thread.i

if.end7.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vram_obj.i, align 4
  %bdev.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bdev.i.i, align 8
  %resv32.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %17, i32 0, i32 4, i32 0, i32 9
  %20 = ptrtoint ptr %resv32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resv32.i.i.i, align 8
  %call.i.i.i.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %21, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i.i, -4
  %retval.1.i.i.i = select i1 %cmp.i.i.i, i32 -512, i32 %call.i.i.i.i
  %22 = zext i32 %retval.1.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i.i, label %do.end.i.i [
    i32 0, label %if.end13.i
    i32 -512, label %if.end7.i.out_cleanup.i_crit_edge
  ], !prof !59

if.end7.i.out_cleanup.i_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_cleanup.i

do.end.i.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 -17736
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.21, ptr noundef %17) #11
  br label %out_cleanup.i

if.end13.i:                                       ; preds = %if.end7.i
  %25 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vram_obj.i, align 4
  %call14.i = call i32 @amdgpu_bo_pin(ptr noundef %26, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #7
  br label %out_unres.i

if.end17.i:                                       ; preds = %if.end13.i
  %27 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vram_obj.i, align 4
  %call18.i = call i64 @amdgpu_bo_gpu_offset(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %sub1.i)
  %cmp19497.not.i = icmp ult i32 %sub1.i, 1048576
  br i1 %cmp19497.not.i, label %if.end17.i.for.end175.i_crit_edge, label %for.body.lr.ph.i

if.end17.i.for.end175.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end175.i

for.body.lr.ph.i:                                 ; preds = %if.end17.i
  %gart_start149.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 8
  %umax.i = call i32 @llvm.umax.i32(i32 %div302.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc174.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0498.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc174.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gtt_map.i) #7
  %29 = ptrtoint ptr %gtt_map.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %gtt_map.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vram_map.i) #7
  %30 = ptrtoint ptr %vram_map.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %vram_map.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence.i) #7
  %31 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %fence.i, align 4
  %32 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %domain.i, align 4
  %add.ptr.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.0498.i
  %call22.i = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef nonnull %bp.i, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.then24.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %i.0498.i) #7
  br label %out_lclean.i

if.end25.i:                                       ; preds = %for.body.i
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %bdev.i303.i = getelementptr inbounds %struct.amdgpu_bo, ptr %34, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %bdev.i303.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bdev.i303.i, align 8
  %resv32.i.i304.i = getelementptr inbounds %struct.amdgpu_bo, ptr %34, i32 0, i32 4, i32 0, i32 9
  %37 = ptrtoint ptr %resv32.i.i304.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %resv32.i.i304.i, align 8
  %call.i.i.i305.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %38, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i305.i)
  %cmp.i.i306.i = icmp eq i32 %call.i.i.i305.i, -4
  %retval.1.i.i307.i = select i1 %cmp.i.i306.i, i32 -512, i32 %call.i.i.i305.i
  %39 = zext i32 %retval.1.i.i307.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %retval.1.i.i307.i, label %do.end.i309.i [
    i32 0, label %if.end36.i
    i32 -512, label %if.end25.i.out_lclean_unref.i_crit_edge
  ], !prof !59

if.end25.i.out_lclean_unref.i_crit_edge:          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_lclean_unref.i

do.end.i309.i:                                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i308.i = getelementptr i8, ptr %36, i32 -17736
  %40 = ptrtoint ptr %add.ptr.i.i308.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i.i308.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.21, ptr noundef %34) #11
  br label %out_lclean_unref.i

if.end36.i:                                       ; preds = %if.end25.i
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  %call38.i = call i32 @amdgpu_bo_pin(ptr noundef %43, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %i.0498.i) #7
  br label %out_lclean_unres.i

if.end41.i:                                       ; preds = %if.end36.i
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %45, i32 0, i32 4
  %call43.i = call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  br i1 %tobool44.not.i, label %if.end47.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, ptr noundef %47) #7
  br label %out_lclean_unpin.i

if.end47.i:                                       ; preds = %if.end41.i
  %call49.i = call i64 @amdgpu_bo_gpu_offset(ptr noundef %47) #7
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 4
  %call51.i = call i32 @amdgpu_bo_kmap(ptr noundef %49, ptr noundef nonnull %gtt_map.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %i.0498.i) #7
  br label %out_lclean_unpin.i

if.end54.i:                                       ; preds = %if.end47.i
  %50 = ptrtoint ptr %gtt_map.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gtt_map.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %51, i32 1048576
  %cmp57489.i = icmp ult ptr %51, %add.ptr55.i
  br i1 %cmp57489.i, label %if.end54.i.for.body59.i_crit_edge, label %if.end54.i.for.end.i_crit_edge

if.end54.i.for.end.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end54.i.for.body59.i_crit_edge:                ; preds = %if.end54.i
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.body59.i.for.body59.i_crit_edge, %if.end54.i.for.body59.i_crit_edge
  %gart_start.0490.i = phi ptr [ %incdec.ptr.i, %for.body59.i.for.body59.i_crit_edge ], [ %51, %if.end54.i.for.body59.i_crit_edge ]
  %52 = ptrtoint ptr %gart_start.0490.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %gart_start.0490.i, ptr %gart_start.0490.i, align 4
  %incdec.ptr.i = getelementptr ptr, ptr %gart_start.0490.i, i32 1
  %cmp57.i = icmp ult ptr %incdec.ptr.i, %add.ptr55.i
  br i1 %cmp57.i, label %for.body59.i.for.body59.i_crit_edge, label %for.body59.i.for.end.i_crit_edge

for.body59.i.for.end.i_crit_edge:                 ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body59.i.for.body59.i_crit_edge:              ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59.i

for.end.i:                                        ; preds = %for.body59.i.for.end.i_crit_edge, %if.end54.i.for.end.i_crit_edge
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  call void @amdgpu_bo_kunmap(ptr noundef %54) #7
  %call61.i = call i32 @amdgpu_copy_buffer(ptr noundef %3, i64 noundef %call49.i, i64 noundef %call18.i, i32 noundef 1048576, ptr noundef null, ptr noundef nonnull %fence.i, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.then63.i

if.then63.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %i.0498.i) #7
  br label %out_lclean_unpin.i

if.end64.i:                                       ; preds = %for.end.i
  %55 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fence.i, align 4
  %call.i311.i = call i32 @dma_fence_wait_timeout(ptr noundef %56, i1 noundef zeroext false, i32 noundef 2147483647) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i311.i)
  %tobool66.not.i = icmp sgt i32 %call.i311.i, -1
  br i1 %tobool66.not.i, label %if.end68.i, label %if.then67.i

if.then67.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %i.0498.i) #7
  br label %out_lclean_unpin.i

if.end68.i:                                       ; preds = %if.end64.i
  %57 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fence.i, align 4
  %tobool.not.i7 = icmp eq ptr %58, null
  br i1 %tobool.not.i7, label %if.end68.i.dma_fence_put.exit18_crit_edge, label %if.then.i12

if.end68.i.dma_fence_put.exit18_crit_edge:        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit18

if.then.i12:                                      ; preds = %if.end68.i
  %refcount.i8 = getelementptr inbounds %struct.dma_fence, ptr %58, i32 0, i32 6
  %call.i.i.i.i.i.i.i9 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i8, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @llvm.prefetch.p0(ptr %refcount.i8, i32 1, i32 3, i32 1) #7
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i8, ptr %refcount.i8, i32 1, ptr elementtype(i32) %refcount.i8) #7, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i10 = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i10)
  %cmp.i.i.i.i.i11 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i10, 1
  br i1 %cmp.i.i.i.i.i11, label %if.then.i.i16, label %if.end5.i.i.i.i.i14

if.end5.i.i.i.i.i14:                              ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i10)
  %.not.i.i.i.i.i13 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i10, 0
  br i1 %.not.i.i.i.i.i13, label %if.end5.i.i.i.i.i14.dma_fence_put.exit18_crit_edge, label %if.then10.i.i.i.i.i15, !prof !63

if.end5.i.i.i.i.i14.dma_fence_put.exit18_crit_edge: ; preds = %if.end5.i.i.i.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit18

if.then10.i.i.i.i.i15:                            ; preds = %if.end5.i.i.i.i.i14
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i8, i32 noundef 3) #7
  br label %dma_fence_put.exit18

if.then.i.i16:                                    ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @dma_fence_release(ptr noundef %refcount.i8) #7
  br label %dma_fence_put.exit18

dma_fence_put.exit18:                             ; preds = %if.then.i.i16, %if.then10.i.i.i.i.i15, %if.end5.i.i.i.i.i14.dma_fence_put.exit18_crit_edge, %if.end68.i.dma_fence_put.exit18_crit_edge
  %60 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %fence.i, align 4
  %61 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vram_obj.i, align 4
  %call69.i = call i32 @amdgpu_bo_kmap(ptr noundef %62, ptr noundef nonnull %vram_map.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.then71.i

if.then71.i:                                      ; preds = %dma_fence_put.exit18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %i.0498.i) #7
  br label %out_lclean_unpin.i

if.end72.i:                                       ; preds = %dma_fence_put.exit18
  %63 = ptrtoint ptr %vram_map.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vram_map.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %64, i32 1048576
  %cmp76491.i = icmp ult ptr %64, %add.ptr74.i
  br i1 %cmp76491.i, label %for.body78.preheader.i, label %if.end72.i.for.end100.i_crit_edge

if.end72.i.for.end100.i_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100.i

for.body78.preheader.i:                           ; preds = %if.end72.i
  %65 = ptrtoint ptr %gtt_map.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gtt_map.i, align 4
  br label %for.body78.i

for.body78.i:                                     ; preds = %if.end96.i.for.body78.i_crit_edge, %for.body78.preheader.i
  %vram_start.0493.i = phi ptr [ %incdec.ptr99.i, %if.end96.i.for.body78.i_crit_edge ], [ %64, %for.body78.preheader.i ]
  %gart_start.1492.i = phi ptr [ %incdec.ptr98.i, %if.end96.i.for.body78.i_crit_edge ], [ %66, %for.body78.preheader.i ]
  %67 = ptrtoint ptr %vram_start.0493.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vram_start.0493.i, align 4
  %cmp79.not.i = icmp eq ptr %68, %gart_start.1492.i
  br i1 %cmp79.not.i, label %if.end96.i, label %if.then81.i

if.then81.i:                                      ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %gart_start149.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %gart_start149.i, align 8
  %sub84.i = sub i64 %call49.i, %70
  %idx.ext.i = trunc i64 %sub84.i to i32
  %add.ptr85.i = getelementptr i8, ptr %gart_start.1492.i, i32 %idx.ext.i
  %71 = ptrtoint ptr %gtt_map.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gtt_map.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr85.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv86.i = sext i32 %sub.ptr.sub.i to i64
  %vram_start88.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %73 = ptrtoint ptr %vram_start88.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %vram_start88.i, align 8
  %sub89.i = sub i64 %call18.i, %74
  %idx.ext90.i = trunc i64 %sub89.i to i32
  %add.ptr91.i = getelementptr i8, ptr %gart_start.1492.i, i32 %idx.ext90.i
  %sub.ptr.lhs.cast92.i = ptrtoint ptr %add.ptr91.i to i32
  %sub.ptr.sub94.i = sub i32 %sub.ptr.lhs.cast92.i, %sub.ptr.rhs.cast.i
  %conv95.i = sext i32 %sub.ptr.sub94.i to i64
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %i.0498.i, ptr noundef %68, ptr noundef %gart_start.1492.i, i64 noundef %conv86.i, i64 noundef %conv95.i) #7
  %75 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vram_obj.i, align 4
  call void @amdgpu_bo_kunmap(ptr noundef %76) #7
  br label %out_lclean_unpin.i

if.end96.i:                                       ; preds = %for.body78.i
  %77 = ptrtoint ptr %vram_start.0493.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %vram_start.0493.i, ptr %vram_start.0493.i, align 4
  %incdec.ptr98.i = getelementptr ptr, ptr %gart_start.1492.i, i32 1
  %incdec.ptr99.i = getelementptr ptr, ptr %vram_start.0493.i, i32 1
  %cmp76.i = icmp ult ptr %incdec.ptr99.i, %add.ptr74.i
  br i1 %cmp76.i, label %if.end96.i.for.body78.i_crit_edge, label %if.end96.i.for.end100.i_crit_edge

if.end96.i.for.end100.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100.i

if.end96.i.for.body78.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body78.i

for.end100.i:                                     ; preds = %if.end96.i.for.end100.i_crit_edge, %if.end72.i.for.end100.i_crit_edge
  %78 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vram_obj.i, align 4
  call void @amdgpu_bo_kunmap(ptr noundef %79) #7
  %call101.i = call i32 @amdgpu_copy_buffer(ptr noundef %3, i64 noundef %call18.i, i64 noundef %call49.i, i32 noundef 1048576, ptr noundef null, ptr noundef nonnull %fence.i, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %if.end104.i, label %if.then103.i

if.then103.i:                                     ; preds = %for.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %i.0498.i) #7
  br label %out_lclean_unpin.i

if.end104.i:                                      ; preds = %for.end100.i
  %80 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fence.i, align 4
  %call.i312.i = call i32 @dma_fence_wait_timeout(ptr noundef %81, i1 noundef zeroext false, i32 noundef 2147483647) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i312.i)
  %tobool106.not.i = icmp sgt i32 %call.i312.i, -1
  br i1 %tobool106.not.i, label %if.end108.i, label %if.then107.i

if.then107.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %i.0498.i) #7
  br label %out_lclean_unpin.i

if.end108.i:                                      ; preds = %if.end104.i
  %82 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fence.i, align 4
  %tobool.not.i2 = icmp eq ptr %83, null
  br i1 %tobool.not.i2, label %if.end108.i.dma_fence_put.exit_crit_edge, label %if.then.i4

if.end108.i.dma_fence_put.exit_crit_edge:         ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then.i4:                                       ; preds = %if.end108.i
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %83, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i3 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i3, label %if.then.i.i5, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %dma_fence_put.exit

if.then.i.i5:                                     ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @dma_fence_release(ptr noundef %refcount.i) #7
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i5, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end108.i.dma_fence_put.exit_crit_edge
  %85 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %fence.i, align 4
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  %call110.i = call i32 @amdgpu_bo_kmap(ptr noundef %87, ptr noundef nonnull %gtt_map.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end113.i, label %if.then112.i

if.then112.i:                                     ; preds = %dma_fence_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %i.0498.i) #7
  br label %out_lclean_unpin.i

if.end113.i:                                      ; preds = %dma_fence_put.exit
  %88 = ptrtoint ptr %gtt_map.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %gtt_map.i, align 4
  %add.ptr114.i = getelementptr i8, ptr %89, i32 1048576
  %90 = ptrtoint ptr %vram_map.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vram_map.i, align 4
  %cmp117494.i = icmp ult ptr %89, %add.ptr114.i
  br i1 %cmp117494.i, label %if.end113.i.for.body119.i_crit_edge, label %if.end113.i.for.inc174.i_crit_edge

if.end113.i.for.inc174.i_crit_edge:               ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc174.i

if.end113.i.for.body119.i_crit_edge:              ; preds = %if.end113.i
  br label %for.body119.i

for.body119.i:                                    ; preds = %for.inc143.i.for.body119.i_crit_edge, %if.end113.i.for.body119.i_crit_edge
  %vram_start.1496.i = phi ptr [ %incdec.ptr145.i, %for.inc143.i.for.body119.i_crit_edge ], [ %91, %if.end113.i.for.body119.i_crit_edge ]
  %gart_start.2495.i = phi ptr [ %incdec.ptr144.i, %for.inc143.i.for.body119.i_crit_edge ], [ %89, %if.end113.i.for.body119.i_crit_edge ]
  %92 = ptrtoint ptr %gart_start.2495.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %gart_start.2495.i, align 4
  %cmp120.not.i = icmp eq ptr %93, %vram_start.1496.i
  br i1 %cmp120.not.i, label %for.inc143.i, label %if.then122.i

if.then122.i:                                     ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  %vram_start124.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 10
  %94 = ptrtoint ptr %vram_start124.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %vram_start124.i, align 8
  %sub125.i = sub i64 %call18.i, %95
  %idx.ext126.i = trunc i64 %sub125.i to i32
  %add.ptr127.i = getelementptr i8, ptr %vram_start.1496.i, i32 %idx.ext126.i
  %sub.ptr.lhs.cast128.i = ptrtoint ptr %add.ptr127.i to i32
  %sub.ptr.rhs.cast129.i = ptrtoint ptr %91 to i32
  %sub.ptr.sub130.i = sub i32 %sub.ptr.lhs.cast128.i, %sub.ptr.rhs.cast129.i
  %conv131.i = sext i32 %sub.ptr.sub130.i to i64
  %96 = ptrtoint ptr %gart_start149.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %gart_start149.i, align 8
  %sub134.i = sub i64 %call49.i, %97
  %idx.ext135.i = trunc i64 %sub134.i to i32
  %add.ptr136.i = getelementptr i8, ptr %vram_start.1496.i, i32 %idx.ext135.i
  %sub.ptr.lhs.cast137.i = ptrtoint ptr %add.ptr136.i to i32
  %sub.ptr.sub139.i = sub i32 %sub.ptr.lhs.cast137.i, %sub.ptr.rhs.cast129.i
  %conv140.i = sext i32 %sub.ptr.sub139.i to i64
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %i.0498.i, ptr noundef %93, ptr noundef %vram_start.1496.i, i64 noundef %conv131.i, i64 noundef %conv140.i) #7
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 4
  call void @amdgpu_bo_kunmap(ptr noundef %99) #7
  br label %out_lclean_unpin.i

for.inc143.i:                                     ; preds = %for.body119.i
  %incdec.ptr144.i = getelementptr ptr, ptr %gart_start.2495.i, i32 1
  %incdec.ptr145.i = getelementptr ptr, ptr %vram_start.1496.i, i32 1
  %cmp117.i = icmp ult ptr %incdec.ptr144.i, %add.ptr114.i
  br i1 %cmp117.i, label %for.inc143.i.for.body119.i_crit_edge, label %for.inc143.i.for.inc174.i_crit_edge

for.inc143.i.for.inc174.i_crit_edge:              ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc174.i

for.inc143.i.for.body119.i_crit_edge:             ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body119.i

out_lclean_unpin.i:                               ; preds = %if.then122.i, %if.then112.i, %if.then107.i, %if.then103.i, %if.then81.i, %if.then71.i, %if.then67.i, %if.then63.i, %if.then53.i, %if.then45.i
  %r.1.i = phi i32 [ %call43.i, %if.then45.i ], [ %call51.i, %if.then53.i ], [ %call61.i, %if.then63.i ], [ %call.i311.i, %if.then67.i ], [ %call69.i, %if.then71.i ], [ 0, %if.then81.i ], [ %call101.i, %if.then103.i ], [ %call.i312.i, %if.then107.i ], [ %call110.i, %if.then112.i ], [ 0, %if.then122.i ]
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 4
  call void @amdgpu_bo_unpin(ptr noundef %101) #7
  br label %out_lclean_unres.i

out_lclean_unres.i:                               ; preds = %out_lclean_unpin.i, %if.then40.i
  %r.2.i = phi i32 [ %call38.i, %if.then40.i ], [ %r.1.i, %out_lclean_unpin.i ]
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  %tbo.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %103, i32 0, i32 4
  %bdev.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %103, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bdev.i.i.i.i, align 8
  %lru_lock.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %105, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i) #7
  %resource.i.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %103, i32 0, i32 4, i32 6
  %106 = ptrtoint ptr %resource.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %resource.i.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i.i, ptr noundef %107, ptr noundef null) #7
  %108 = ptrtoint ptr %bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bdev.i.i.i.i, align 8
  %lru_lock2.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %109, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i) #7
  %resv.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %103, i32 0, i32 4, i32 0, i32 9
  %110 = ptrtoint ptr %resv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %resv.i.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %111) #7
  call void @ww_mutex_unlock(ptr noundef %111) #7
  br label %out_lclean_unref.i

out_lclean_unref.i:                               ; preds = %out_lclean_unres.i, %do.end.i309.i, %if.end25.i.out_lclean_unref.i_crit_edge
  %r.3.i = phi i32 [ %retval.1.i.i307.i, %do.end.i309.i ], [ %r.2.i, %out_lclean_unres.i ], [ %retval.1.i.i307.i, %if.end25.i.out_lclean_unref.i_crit_edge ]
  call void @amdgpu_bo_unref(ptr noundef %add.ptr.i) #7
  br label %out_lclean.i

out_lclean.i:                                     ; preds = %out_lclean_unref.i, %if.then24.i
  %r.4.i = phi i32 [ %call22.i, %if.then24.i ], [ %r.3.i, %out_lclean_unref.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0498.i)
  %cmp156502.not.i = icmp eq i32 %i.0498.i, 0
  br i1 %cmp156502.not.i, label %out_lclean.i.for.end164.i_crit_edge, label %out_lclean.i.for.body158.i_crit_edge

out_lclean.i.for.body158.i_crit_edge:             ; preds = %out_lclean.i
  br label %for.body158.i

out_lclean.i.for.end164.i_crit_edge:              ; preds = %out_lclean.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end164.i

for.body158.i:                                    ; preds = %for.body158.i.for.body158.i_crit_edge, %out_lclean.i.for.body158.i_crit_edge
  %i.1503.in.i = phi i32 [ %i.1503.i, %for.body158.i.for.body158.i_crit_edge ], [ %i.0498.i, %out_lclean.i.for.body158.i_crit_edge ]
  %i.1503.i = add nsw i32 %i.1503.in.i, -1
  %arrayidx159.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.1503.i
  %112 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx159.i, align 4
  call void @amdgpu_bo_unpin(ptr noundef %113) #7
  %114 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx159.i, align 4
  %tbo.i313.i = getelementptr inbounds %struct.amdgpu_bo, ptr %115, i32 0, i32 4
  %bdev.i.i.i314.i = getelementptr inbounds %struct.amdgpu_bo, ptr %115, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %bdev.i.i.i314.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bdev.i.i.i314.i, align 8
  %lru_lock.i.i.i315.i = getelementptr inbounds %struct.ttm_device, ptr %117, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i315.i) #7
  %resource.i.i.i316.i = getelementptr inbounds %struct.amdgpu_bo, ptr %115, i32 0, i32 4, i32 6
  %118 = ptrtoint ptr %resource.i.i.i316.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %resource.i.i.i316.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i313.i, ptr noundef %119, ptr noundef null) #7
  %120 = ptrtoint ptr %bdev.i.i.i314.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bdev.i.i.i314.i, align 8
  %lru_lock2.i.i.i317.i = getelementptr inbounds %struct.ttm_device, ptr %121, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i317.i) #7
  %resv.i.i318.i = getelementptr inbounds %struct.amdgpu_bo, ptr %115, i32 0, i32 4, i32 0, i32 9
  %122 = ptrtoint ptr %resv.i.i318.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %resv.i.i318.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %123) #7
  call void @ww_mutex_unlock(ptr noundef %123) #7
  call void @amdgpu_bo_unref(ptr noundef %arrayidx159.i) #7
  %cmp156.i = icmp sgt i32 %i.1503.in.i, 1
  br i1 %cmp156.i, label %for.body158.i.for.body158.i_crit_edge, label %for.body158.i.for.end164.i_crit_edge

for.body158.i.for.end164.i_crit_edge:             ; preds = %for.body158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end164.i

for.body158.i.for.body158.i_crit_edge:            ; preds = %for.body158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body158.i

for.end164.i:                                     ; preds = %for.body158.i.for.end164.i_crit_edge, %out_lclean.i.for.end164.i_crit_edge
  %124 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fence.i, align 4
  %tobool165.not.i = icmp eq ptr %125, null
  br i1 %tobool165.not.i, label %for.end164.i.cleanup.thread.i_crit_edge, label %if.then.i.i

for.end164.i.cleanup.thread.i_crit_edge:          ; preds = %for.end164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.then.i.i:                                      ; preds = %for.end164.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %125, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %126, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup.thread.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !63

if.end5.i.i.i.i.i.i.cleanup.thread.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %cleanup.thread.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @dma_fence_release(ptr noundef %refcount.i.i) #7
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup.thread.i_crit_edge, %for.end164.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_map.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gtt_map.i) #7
  br label %for.end175.i

for.inc174.i:                                     ; preds = %for.inc143.i.for.inc174.i_crit_edge, %if.end113.i.for.inc174.i_crit_edge
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i, align 4
  call void @amdgpu_bo_kunmap(ptr noundef %128) #7
  %129 = ptrtoint ptr %gart_start149.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %gart_start149.i, align 8
  %sub150.i = sub i64 %call49.i, %130
  %call151.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i64 noundef %sub150.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_map.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gtt_map.i) #7
  %inc.i = add nuw nsw i32 %i.0498.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc174.i.for.end175.i_crit_edge, label %for.inc174.i.for.body.i_crit_edge

for.inc174.i.for.body.i_crit_edge:                ; preds = %for.inc174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc174.i.for.end175.i_crit_edge:              ; preds = %for.inc174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end175.i

for.end175.i:                                     ; preds = %for.inc174.i.for.end175.i_crit_edge, %cleanup.thread.i, %if.end17.i.for.end175.i_crit_edge
  %r.6.i = phi i32 [ %r.4.i, %cleanup.thread.i ], [ 0, %if.end17.i.for.end175.i_crit_edge ], [ 0, %for.inc174.i.for.end175.i_crit_edge ]
  %131 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vram_obj.i, align 4
  call void @amdgpu_bo_unpin(ptr noundef %132) #7
  br label %out_unres.i

out_unres.i:                                      ; preds = %for.end175.i, %if.then16.i
  %r.7.i = phi i32 [ %call14.i, %if.then16.i ], [ %r.6.i, %for.end175.i ]
  %133 = ptrtoint ptr %vram_obj.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vram_obj.i, align 4
  %tbo.i319.i = getelementptr inbounds %struct.amdgpu_bo, ptr %134, i32 0, i32 4
  %bdev.i.i.i320.i = getelementptr inbounds %struct.amdgpu_bo, ptr %134, i32 0, i32 4, i32 1
  %135 = ptrtoint ptr %bdev.i.i.i320.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bdev.i.i.i320.i, align 8
  %lru_lock.i.i.i321.i = getelementptr inbounds %struct.ttm_device, ptr %136, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i321.i) #7
  %resource.i.i.i322.i = getelementptr inbounds %struct.amdgpu_bo, ptr %134, i32 0, i32 4, i32 6
  %137 = ptrtoint ptr %resource.i.i.i322.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %resource.i.i.i322.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i319.i, ptr noundef %138, ptr noundef null) #7
  %139 = ptrtoint ptr %bdev.i.i.i320.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bdev.i.i.i320.i, align 8
  %lru_lock2.i.i.i323.i = getelementptr inbounds %struct.ttm_device, ptr %140, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i323.i) #7
  %resv.i.i324.i = getelementptr inbounds %struct.amdgpu_bo, ptr %134, i32 0, i32 4, i32 0, i32 9
  %141 = ptrtoint ptr %resv.i.i324.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %resv.i.i324.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %142) #7
  call void @ww_mutex_unlock(ptr noundef %142) #7
  br label %out_cleanup.i

out_cleanup.thread.i:                             ; preds = %if.then6.i, %if.then.i
  %retval.0.i.i327.ph.i = phi ptr [ null, %if.then.i ], [ %call8.i.i.i, %if.then6.i ]
  call void @kfree(ptr noundef %retval.0.i.i327.ph.i) #7
  br label %do.end180.i

out_cleanup.i:                                    ; preds = %out_unres.i, %do.end.i.i, %if.end7.i.out_cleanup.i_crit_edge
  %r.8.i = phi i32 [ %retval.1.i.i.i, %do.end.i.i ], [ %r.7.i, %out_unres.i ], [ %retval.1.i.i.i, %if.end7.i.out_cleanup.i_crit_edge ]
  call void @amdgpu_bo_unref(ptr noundef nonnull %vram_obj.i) #7
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.8.i)
  %tobool176.not.i = icmp eq i32 %r.8.i, 0
  br i1 %tobool176.not.i, label %out_cleanup.i.amdgpu_do_test_moves.exit_crit_edge, label %out_cleanup.i.do.end180.i_crit_edge

out_cleanup.i.do.end180.i_crit_edge:              ; preds = %out_cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end180.i

out_cleanup.i.amdgpu_do_test_moves.exit_crit_edge: ; preds = %out_cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %amdgpu_do_test_moves.exit

do.end180.i:                                      ; preds = %out_cleanup.i.do.end180.i_crit_edge, %out_cleanup.thread.i
  %call182.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %amdgpu_do_test_moves.exit

amdgpu_do_test_moves.exit:                        ; preds = %do.end180.i, %out_cleanup.i.amdgpu_do_test_moves.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vram_obj.i) #7
  br label %if.end

if.end:                                           ; preds = %amdgpu_do_test_moves.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_copy_buffer(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 54, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 69, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 77, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 90, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 99, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 104, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 111, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 126, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 132, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 141, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 150, i32 5}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 172, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 178, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 187, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 196, i32 5}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 213, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @amdgpu_do_test_moves._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @amdgpu_do_test_moves._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_test.c", i32 242, i32 3}
!38 = !{ptr @amdgpu_do_test_moves._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @amdgpu_do_test_moves._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @amdgpu_bo_reserve._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @amdgpu_bo_reserve._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!60 = !{!"auto-init"}
!61 = !{i64 2148446558}
!62 = !{i64 2148361022, i64 2148361054, i64 2148361083, i64 2148361117, i64 2148361148, i64 2148361171}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2149530183}
