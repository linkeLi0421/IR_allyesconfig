; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.kgd2kfd_shared_resources = type { i32, i32, i32, [4 x i32], ptr, i32, i32, i32, i32, i32, i64, i32 }
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
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_bo_param = type { i32, i32, i32, i32, i32, i64, i32, i8, ptr, ptr }
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
%struct.kfd_local_mem_info = type { i64, i64, i32, i32 }
%struct.kfd_cu_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x [4 x i32]] }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.86, i64, i64, i32, %struct.kref, i32 }
%union.anon.86 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ras_err_data = type { i32, i32, i32, ptr }

@amdgpu_amdkfd_total_mem_size = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@amdgpu_amdkfd_alloc_gtt_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 266, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"amdgpu: failed to allocate BO for amdkfd (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amdgpu_amdkfd_alloc_gtt_mem\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amdgpu_amdkfd_alloc_gtt_mem._entry_ptr = internal global ptr @amdgpu_amdkfd_alloc_gtt_mem._entry, section ".printk_index", align 4
@amdgpu_amdkfd_alloc_gtt_mem._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"amdgpu: (%d) failed to reserve bo for amdkfd\0A\00", [50 x i8] zeroinitializer }, align 32
@amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.7 = internal global ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.5, section ".printk_index", align 4
@amdgpu_amdkfd_alloc_gtt_mem._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 279, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"amdgpu: (%d) failed to pin bo for amdkfd\0A\00", [54 x i8] zeroinitializer }, align 32
@amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.10 = internal global ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.8, section ".printk_index", align 4
@amdgpu_amdkfd_alloc_gtt_mem._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 285, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu: %p bind failed\0A\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.13 = internal global ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.11, section ".printk_index", align 4
@amdgpu_amdkfd_alloc_gtt_mem._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"amdgpu: (%d) failed to map bo to kernel for amdkfd\0A\00", [44 x i8] zeroinitializer }, align 32
@amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.16 = internal global ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.14, section ".printk_index", align 4
@amdgpu_amdkfd_alloc_gws._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 345, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"amdgpu: failed to allocate gws BO for amdkfd (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu_amdkfd_alloc_gws\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_amdkfd_alloc_gws._entry_ptr = internal global ptr @amdgpu_amdkfd_alloc_gws._entry, section ".printk_index", align 4
@amdgpu_amdkfd_get_local_mem_info.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu_amdkfd_get_local_mem_info\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Address base: %pap public 0x%llx private 0x%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"amdgpu: Address base: %pap public 0x%llx private 0x%llx\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_emu_mode = external dso_local local_unnamed_addr global i32, align 4
@amdgpu_dmabuf_ops = external dso_local constant %struct.dma_buf_ops, align 4
@.str.23 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"amdgpu: failed to get  xgmi hops count between node %d and %d. ret = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"amdgpu: failed to get xgmi num links between node %d and %d. ret = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@amdgpu_amdkfd_submit_ib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013amdgpu: Invalid engine in IB submission: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amdgpu_amdkfd_submit_ib\00", [40 x i8] zeroinitializer }, align 32
@amdgpu_amdkfd_submit_ib._entry_ptr = internal global ptr @amdgpu_amdkfd_submit_ib._entry, section ".printk_index", align 4
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amdgpu: failed to schedule IB.\0A\00", [32 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"amdgpu: %p reserve failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", [43 x i8] zeroinitializer }, align 32
@amdgpu_bo_reserve._entry_ptr = internal global ptr @amdgpu_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.33 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [9 x i64] [i64 7, i64 32, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 7, i64 8]
@___asan_gen_.37 = private unnamed_addr constant [29 x i8] c"amdgpu_amdkfd_total_mem_size\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 40, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 265, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 273, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 279, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 285, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 291, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 344, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 407, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 525, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 549, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 638, i32 3 }
@___asan_gen_.119 = private constant [46 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 659, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [56 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 179, i32 4 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @amdgpu_amdkfd_alloc_gtt_mem._entry, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.11, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.14, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.5, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.8, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.10, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.13, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.16, ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.7, ptr @amdgpu_amdkfd_alloc_gws._entry, ptr @amdgpu_amdkfd_alloc_gws._entry_ptr, ptr @amdgpu_amdkfd_submit_ib._entry, ptr @amdgpu_amdkfd_submit_ib._entry_ptr, ptr @amdgpu_bo_reserve._entry, ptr @amdgpu_bo_reserve._entry_ptr, ptr @amdgpu_amdkfd_total_mem_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_amdkfd_total_mem_size to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_amdkfd_alloc_gtt_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_amdkfd_alloc_gws._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_amdkfd_submit_ib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_init() local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #10
  %0 = call ptr @memset(ptr %si, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %si) #10
  %freeram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 3
  %1 = ptrtoint ptr %freeram to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %freeram, align 4
  %freehigh = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 11
  %3 = ptrtoint ptr %freehigh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freehigh, align 4
  %sub = sub i32 %2, %4
  %conv = zext i32 %sub to i64
  %mem_unit = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 12
  %5 = ptrtoint ptr %mem_unit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_unit, align 4
  %conv1 = zext i32 %6 to i64
  %mul = mul nuw i64 %conv1, %conv
  store i64 %mul, ptr @amdgpu_amdkfd_total_mem_size, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #10
  ret i32 -2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_amdkfd_fini() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_amdkfd_device_probe(ptr nocapture noundef %adev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_amdkfd_device_init(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  %gpu_resources = alloca %struct.kgd2kfd_shared_resources, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kfd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 115
  %0 = ptrtoint ptr %kfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kfd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %if.then

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %gpu_resources) #10
  %2 = getelementptr inbounds i8, ptr %gpu_resources, i32 48
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %first_kfd_vmid = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 1
  %4 = ptrtoint ptr %first_kfd_vmid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_kfd_vmid, align 8
  %notmask = shl nsw i32 -1, %5
  %sub1 = add nsw i32 %notmask, 65536
  %6 = ptrtoint ptr %gpu_resources to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub1, ptr %gpu_resources, align 8
  %num_pipe_per_mec = getelementptr inbounds %struct.kgd2kfd_shared_resources, ptr %gpu_resources, i32 0, i32 1
  %num_pipe_per_mec2 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 5
  %7 = ptrtoint ptr %num_pipe_per_mec2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pipe_per_mec2, align 4
  %9 = ptrtoint ptr %num_pipe_per_mec to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %num_pipe_per_mec, align 4
  %num_queue_per_pipe = getelementptr inbounds %struct.kgd2kfd_shared_resources, ptr %gpu_resources, i32 0, i32 2
  %num_queue_per_pipe5 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 6
  %10 = ptrtoint ptr %num_queue_per_pipe5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_queue_per_pipe5, align 8
  %12 = ptrtoint ptr %num_queue_per_pipe to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_queue_per_pipe, align 8
  %cp_queue_bitmap = getelementptr inbounds %struct.kgd2kfd_shared_resources, ptr %gpu_resources, i32 0, i32 3
  %13 = call ptr @memset(ptr %cp_queue_bitmap, i32 0, i32 16)
  %sdma_doorbell_idx = getelementptr inbounds %struct.kgd2kfd_shared_resources, ptr %gpu_resources, i32 0, i32 4
  %sdma_engine = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 144, i32 13
  %14 = ptrtoint ptr %sdma_doorbell_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sdma_engine, ptr %sdma_doorbell_idx, align 4
  %non_cp_doorbells_start = getelementptr inbounds %struct.kgd2kfd_shared_resources, ptr %gpu_resources, i32 0, i32 5
  %gpuvm_size = getelementptr inbounds %struct.kgd2kfd_shared_resources, ptr %gpu_resources, i32 0, i32 10
  %max_pfn = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 5
  %15 = call ptr @memset(ptr %non_cp_doorbells_start, i32 0, i32 20)
  %16 = ptrtoint ptr %max_pfn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %max_pfn, align 8
  %shl7 = shl i64 %17, 12
  %18 = tail call i64 @llvm.umin.i64(i64 %shl7, i64 140737488355328)
  %19 = ptrtoint ptr %gpuvm_size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %gpuvm_size, align 8
  %drm_render_minor = getelementptr inbounds %struct.kgd2kfd_shared_resources, ptr %gpu_resources, i32 0, i32 11
  %render = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 7
  %20 = ptrtoint ptr %render to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %render, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %drm_render_minor to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %drm_render_minor, align 8
  %queue_bitmap = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 6, i32 8
  call void @__bitmap_complement(ptr noundef %cp_queue_bitmap, ptr noundef %queue_bitmap, i32 noundef 128) #10
  %25 = ptrtoint ptr %num_pipe_per_mec2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_pipe_per_mec2, align 4
  %27 = ptrtoint ptr %num_queue_per_pipe5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_queue_per_pipe5, align 8
  %mul19 = mul i32 %28, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mul19)
  %cmp2060 = icmp slt i32 %mul19, 128
  br i1 %cmp2060, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %mul19, %if.then.for.body_crit_edge ]
  call void @_clear_bit(i32 noundef %i.061, ptr noundef %cp_queue_bitmap) #10
  %inc = add i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %init_complete = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 115, i32 2
  %29 = ptrtoint ptr %init_complete to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %init_complete, align 8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %gpu_resources) #10
  br label %if.end37

if.end37:                                         ; preds = %for.end, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_amdkfd_device_fini_sw(ptr nocapture noundef %adev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kfd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 115
  %0 = ptrtoint ptr %kfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kfd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %kfd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %kfd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_amdkfd_interrupt(ptr nocapture noundef %adev, ptr nocapture noundef %ih_ring_entry) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_amdkfd_suspend(ptr nocapture noundef %adev, i1 noundef zeroext %run_pm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_resume_iommu(ptr nocapture noundef readonly %adev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_resume(ptr nocapture noundef readonly %adev, i1 noundef zeroext %run_pm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_pre_reset(ptr nocapture noundef readonly %adev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_post_reset(ptr nocapture noundef readonly %adev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_amdkfd_gpu_reset(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef %adev) #10
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @amdgpu_device_gpu_recover(ptr noundef %adev, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_gpu_recover(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_alloc_gtt_mem(ptr noundef %adev, i32 noundef %size, ptr nocapture noundef writeonly %mem_obj, ptr nocapture noundef writeonly %gpu_addr, ptr nocapture noundef writeonly %cpu_ptr, i1 noundef zeroext %cp_mqd_gfx9) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  %bp = alloca %struct.amdgpu_bo_param, align 8
  %cpu_ptr_tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #10
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bo, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_ptr_tmp) #10
  %1 = ptrtoint ptr %cpu_ptr_tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cpu_ptr_tmp, align 4
  %2 = getelementptr inbounds i8, ptr %bp, i32 16
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %4 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %bp, align 8
  %byte_align = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %5 = ptrtoint ptr %byte_align to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %byte_align, align 4
  %domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 3
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %domain, align 4
  %flags = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4, ptr %flags, align 8
  %type = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 8
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %9 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 568, ptr %bo_ptr_size, align 8
  br i1 %cp_mqd_gfx9, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 260, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @amdgpu_bo_create(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef nonnull %bo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %call) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bo, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %14, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %14, i32 0, i32 4, i32 0, i32 9
  %17 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = call i32 @ww_mutex_lock(ptr noundef %18, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %19 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end13
    i32 -512, label %if.end5.do.end11_crit_edge
  ], !prof !67

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -17736
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28, ptr noundef %14) #13
  br label %do.end11

do.end11:                                         ; preds = %do.end.i, %if.end5.do.end11_crit_edge
  %22 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.6, i32 noundef %retval.1.i.i) #13
  br label %allocate_mem_reserve_bo_failed

if.end13:                                         ; preds = %if.end5
  %24 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bo, align 4
  %call14 = call i32 @amdgpu_bo_pin(ptr noundef %25, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %call14) #13
  br label %allocate_mem_pin_bo_failed

if.end21:                                         ; preds = %if.end13
  %28 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bo, align 4
  %tbo = getelementptr inbounds %struct.amdgpu_bo, ptr %29, i32 0, i32 4
  %call22 = call i32 @amdgpu_ttm_alloc_gart(ptr noundef %tbo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adev, align 8
  %32 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bo, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.12, ptr noundef %33) #13
  br label %allocate_mem_kmap_bo_failed

if.end29:                                         ; preds = %if.end21
  %34 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bo, align 4
  %call30 = call i32 @amdgpu_bo_kmap(ptr noundef %35, ptr noundef nonnull %cpu_ptr_tmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.15, i32 noundef %call30) #13
  br label %allocate_mem_kmap_bo_failed

if.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bo, align 4
  %40 = ptrtoint ptr %mem_obj to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %mem_obj, align 4
  %call38 = call i64 @amdgpu_bo_gpu_offset(ptr noundef %39) #10
  %41 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %call38, ptr %gpu_addr, align 8
  %42 = ptrtoint ptr %cpu_ptr_tmp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cpu_ptr_tmp, align 4
  %44 = ptrtoint ptr %cpu_ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %cpu_ptr, align 4
  %45 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bo, align 4
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %46, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %46, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %48, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %46, i32 0, i32 4, i32 6
  %49 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %50, ptr noundef null) #10
  %51 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %52, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %46, i32 0, i32 4, i32 0, i32 9
  %53 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resv.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %54) #10
  call void @ww_mutex_unlock(ptr noundef %54) #10
  br label %cleanup

allocate_mem_kmap_bo_failed:                      ; preds = %do.end35, %do.end27
  %r.0 = phi i32 [ %call22, %do.end27 ], [ %call30, %do.end35 ]
  %55 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bo, align 4
  call void @amdgpu_bo_unpin(ptr noundef %56) #10
  br label %allocate_mem_pin_bo_failed

allocate_mem_pin_bo_failed:                       ; preds = %allocate_mem_kmap_bo_failed, %do.end19
  %r.1 = phi i32 [ %call14, %do.end19 ], [ %r.0, %allocate_mem_kmap_bo_failed ]
  %57 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bo, align 4
  %tbo.i57 = getelementptr inbounds %struct.amdgpu_bo, ptr %58, i32 0, i32 4
  %bdev.i.i.i58 = getelementptr inbounds %struct.amdgpu_bo, ptr %58, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %bdev.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bdev.i.i.i58, align 8
  %lru_lock.i.i.i59 = getelementptr inbounds %struct.ttm_device, ptr %60, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i59) #10
  %resource.i.i.i60 = getelementptr inbounds %struct.amdgpu_bo, ptr %58, i32 0, i32 4, i32 6
  %61 = ptrtoint ptr %resource.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %resource.i.i.i60, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i57, ptr noundef %62, ptr noundef null) #10
  %63 = ptrtoint ptr %bdev.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bdev.i.i.i58, align 8
  %lru_lock2.i.i.i61 = getelementptr inbounds %struct.ttm_device, ptr %64, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i61) #10
  %resv.i.i62 = getelementptr inbounds %struct.amdgpu_bo, ptr %58, i32 0, i32 4, i32 0, i32 9
  %65 = ptrtoint ptr %resv.i.i62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %resv.i.i62, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %66) #10
  call void @ww_mutex_unlock(ptr noundef %66) #10
  br label %allocate_mem_reserve_bo_failed

allocate_mem_reserve_bo_failed:                   ; preds = %allocate_mem_pin_bo_failed, %do.end11
  %r.2 = phi i32 [ %retval.1.i.i, %do.end11 ], [ %r.1, %allocate_mem_pin_bo_failed ]
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo) #10
  br label %cleanup

cleanup:                                          ; preds = %allocate_mem_reserve_bo_failed, %if.end37, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %r.2, %allocate_mem_reserve_bo_failed ], [ 0, %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_ptr_tmp) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ttm_alloc_gart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_kmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @amdgpu_bo_gpu_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_amdkfd_free_gtt_mem(ptr nocapture noundef readnone %adev, ptr noundef %mem_obj) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #10
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mem_obj, ptr %bo, align 4
  %bdev.i = getelementptr inbounds %struct.amdgpu_bo, ptr %mem_obj, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bdev.i, align 8
  %resv35.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %mem_obj, i32 0, i32 4, i32 0, i32 9
  %3 = ptrtoint ptr %resv35.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resv35.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock(ptr noundef %4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %5 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %entry.amdgpu_bo_reserve.exit_crit_edge
    i32 -512, label %entry.amdgpu_bo_reserve.exit_crit_edge1
  ], !prof !67

entry.amdgpu_bo_reserve.exit_crit_edge1:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_bo_reserve.exit

entry.amdgpu_bo_reserve.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %amdgpu_bo_reserve.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 -17736
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef %mem_obj) #13
  br label %amdgpu_bo_reserve.exit

amdgpu_bo_reserve.exit:                           ; preds = %do.end.i, %entry.amdgpu_bo_reserve.exit_crit_edge, %entry.amdgpu_bo_reserve.exit_crit_edge1
  %8 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bo, align 4
  tail call void @amdgpu_bo_kunmap(ptr noundef %9) #10
  tail call void @amdgpu_bo_unpin(ptr noundef %9) #10
  %tbo.i = getelementptr inbounds %struct.amdgpu_bo, ptr %9, i32 0, i32 4
  %bdev.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %9, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %11, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %9, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo.i, ptr noundef %13, ptr noundef null) #10
  %14 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %resv.i.i = getelementptr inbounds %struct.amdgpu_bo, ptr %9, i32 0, i32 4, i32 0, i32 9
  %16 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resv.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %17) #10
  tail call void @ww_mutex_unlock(ptr noundef %17) #10
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_alloc_gws(ptr noundef %adev, i32 noundef %size, ptr nocapture noundef writeonly %mem_obj) local_unnamed_addr #0 align 64 {
entry:
  %ubo = alloca ptr, align 4
  %bp = alloca %struct.amdgpu_bo_param, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ubo) #10
  %0 = ptrtoint ptr %ubo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ubo, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bp) #10
  %1 = getelementptr inbounds i8, ptr %bp, i32 16
  %2 = call ptr @memset(ptr %1, i32 0, i32 32)
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %size, ptr %bp, align 8
  %byte_align = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 1
  %4 = ptrtoint ptr %byte_align to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %byte_align, align 4
  %domain = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 3
  %5 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %domain, align 4
  %flags = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2, ptr %flags, align 8
  %resv = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 8
  %7 = ptrtoint ptr %resv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %resv, align 8
  %bo_ptr_size = getelementptr inbounds %struct.amdgpu_bo_param, ptr %bp, i32 0, i32 2
  %8 = ptrtoint ptr %bo_ptr_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 568, ptr %bo_ptr_size, align 8
  %call = call i32 @amdgpu_bo_create_user(ptr noundef %adev, ptr noundef nonnull %bp, ptr noundef nonnull %ubo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.17, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %ubo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ubo, align 4
  %13 = ptrtoint ptr %mem_obj to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %mem_obj, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ubo) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_amdkfd_free_gws(ptr nocapture noundef readnone %adev, ptr noundef %mem_obj) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #10
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mem_obj, ptr %bo, align 4
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_get_fw_version(ptr nocapture noundef readonly %adev, i32 noundef %type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb9
    i32 7, label %sw.bb11
    i32 8, label %sw.bb12
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pfp_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 12
  %1 = ptrtoint ptr %pfp_fw_version to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pfp_fw_version, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %me_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 10
  %3 = ptrtoint ptr %me_fw_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %me_fw_version, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ce_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 14
  %5 = ptrtoint ptr %ce_fw_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ce_fw_version, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mec_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 18
  %7 = ptrtoint ptr %mec_fw_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mec_fw_version, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mec2_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 20
  %9 = ptrtoint ptr %mec2_fw_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mec2_fw_version, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rlc_fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 16
  %11 = ptrtoint ptr %rlc_fw_version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rlc_fw_version, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_version, align 4
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_version16 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %fw_version16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fw_version16, align 4
  br label %return

return:                                           ; preds = %sw.bb12, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %16, %sw.bb12 ], [ %14, %sw.bb11 ], [ %12, %sw.bb9 ], [ %10, %sw.bb7 ], [ %8, %sw.bb5 ], [ %6, %sw.bb3 ], [ %4, %sw.bb1 ], [ %2, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_amdkfd_get_local_mem_info(ptr noundef %adev, ptr nocapture noundef %mem_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %mem_info, i32 0, i32 24)
  %visible_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 3
  %1 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %visible_vram_size, align 8
  %local_mem_size_public = getelementptr inbounds %struct.kfd_local_mem_info, ptr %mem_info, i32 0, i32 1
  %3 = ptrtoint ptr %local_mem_size_public to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %local_mem_size_public, align 8
  %real_vram_size = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 15
  %4 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %real_vram_size, align 8
  %6 = load i64, ptr %visible_vram_size, align 8
  %sub = sub i64 %5, %6
  %7 = ptrtoint ptr %mem_info to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sub, ptr %mem_info, align 8
  %vram_width = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 14
  %8 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vram_width, align 8
  %vram_width5 = getelementptr inbounds %struct.kfd_local_mem_info, ptr %mem_info, i32 0, i32 2
  %10 = ptrtoint ptr %vram_width5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %vram_width5, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amdgpu_amdkfd_get_local_mem_info.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amdgpu_amdkfd_get_local_mem_info, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %aper_base = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 1
  %11 = ptrtoint ptr %local_mem_size_public to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %local_mem_size_public, align 8
  %13 = ptrtoint ptr %mem_info to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mem_info, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amdgpu_amdkfd_get_local_mem_info.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.22, ptr noundef %aper_base, i64 noundef %12, i64 noundef %14) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virt, align 8
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %default_mclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 3
  %17 = ptrtoint ptr %default_mclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %default_mclk, align 4
  %div = udiv i32 %18, 100
  br label %if.end25

if.else:                                          ; preds = %do.end
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 13
  %19 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dpm_enabled, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %if.else.if.end25_crit_edge, label %if.then14

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then14:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_emu_mode to i32))
  %21 = load i32, ptr @amdgpu_emu_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp eq i32 %21, 1
  br i1 %cmp, label %if.then14.if.end25_crit_edge, label %if.else17

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.else17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 @amdgpu_dpm_get_mclk(ptr noundef %adev, i1 noundef zeroext false) #10
  %div19 = sdiv i32 %call18, 100
  br label %if.end25

if.end25:                                         ; preds = %if.else17, %if.then14.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.then12
  %.sink = phi i32 [ %div19, %if.else17 ], [ %div, %if.then12 ], [ 0, %if.then14.if.end25_crit_edge ], [ 100, %if.else.if.end25_crit_edge ]
  %mem_clk_max23 = getelementptr inbounds %struct.kfd_local_mem_info, ptr %mem_info, i32 0, i32 3
  %22 = ptrtoint ptr %mem_clk_max23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %mem_clk_max23, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_get_mclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @amdgpu_amdkfd_get_gpu_clock_counter(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 49
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i64 %3(ptr noundef %adev) #10
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i64 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_get_max_engine_clock_in_mhz(ptr noundef %adev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %default_sclk = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 61, i32 4
  %2 = ptrtoint ptr %default_sclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %default_sclk, align 4
  %div = udiv i32 %3, 100
  br label %return

if.else:                                          ; preds = %entry
  %dpm_enabled = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 13
  %4 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dpm_enabled, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.else.return_crit_edge, label %if.then2

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @amdgpu_dpm_get_sclk(ptr noundef %adev, i1 noundef zeroext false) #10
  %div3 = sdiv i32 %call, 100
  br label %return

return:                                           ; preds = %if.then2, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %div, %if.then ], [ %div3, %if.then2 ], [ 100, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_get_sclk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @amdgpu_amdkfd_get_cu_info(ptr nocapture noundef readonly %adev, ptr nocapture noundef writeonly %cu_info) local_unnamed_addr #7 align 64 {
entry:
  %acu_info.sroa.11 = alloca { [4 x [4 x i32]], [4 x [4 x i32]] }, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %acu_info.sroa.11)
  %cu_info1 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48
  %0 = ptrtoint ptr %cu_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %acu_info.sroa.0.0.copyload = load i32, ptr %cu_info1, align 8
  %acu_info.sroa.5.0.cu_info1.sroa_idx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 1
  %1 = ptrtoint ptr %acu_info.sroa.5.0.cu_info1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %acu_info.sroa.5.0.copyload = load i32, ptr %acu_info.sroa.5.0.cu_info1.sroa_idx, align 4
  %acu_info.sroa.6.0.cu_info1.sroa_idx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 2
  %2 = ptrtoint ptr %acu_info.sroa.6.0.cu_info1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %acu_info.sroa.6.0.copyload = load i32, ptr %acu_info.sroa.6.0.cu_info1.sroa_idx, align 8
  %acu_info.sroa.7.0.cu_info1.sroa_idx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 3
  %3 = ptrtoint ptr %acu_info.sroa.7.0.cu_info1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %acu_info.sroa.7.0.copyload = load i32, ptr %acu_info.sroa.7.0.cu_info1.sroa_idx, align 4
  %acu_info.sroa.8.0.cu_info1.sroa_idx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 4
  %4 = ptrtoint ptr %acu_info.sroa.8.0.cu_info1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %acu_info.sroa.8.0.copyload = load i32, ptr %acu_info.sroa.8.0.cu_info1.sroa_idx, align 8
  %acu_info.sroa.9.0.cu_info1.sroa_idx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 5
  %5 = ptrtoint ptr %acu_info.sroa.9.0.cu_info1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %acu_info.sroa.9.0.copyload = load i32, ptr %acu_info.sroa.9.0.cu_info1.sroa_idx, align 4
  %acu_info.sroa.10.0.cu_info1.sroa_idx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 6
  %6 = ptrtoint ptr %acu_info.sroa.10.0.cu_info1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %acu_info.sroa.10.0.copyload = load i32, ptr %acu_info.sroa.10.0.cu_info1.sroa_idx, align 8
  %acu_info.sroa.11.0.cu_info1.sroa_idx = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 48, i32 7
  %7 = call ptr @memcpy(ptr %acu_info.sroa.11, ptr %acu_info.sroa.11.0.cu_info1.sroa_idx, i32 128)
  %8 = call ptr @memset(ptr %cu_info, i32 0, i32 40)
  %cu_active_number = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 3
  %9 = ptrtoint ptr %cu_active_number to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %acu_info.sroa.9.0.copyload, ptr %cu_active_number, align 4
  %cu_ao_mask = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 4
  %10 = ptrtoint ptr %cu_ao_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %acu_info.sroa.10.0.copyload, ptr %cu_ao_mask, align 4
  %cu_bitmap = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 10
  %acu_info.sroa.11.92.arrayidx2.sroa_idx = getelementptr inbounds i8, ptr %acu_info.sroa.11, i32 64
  %11 = call ptr @memcpy(ptr %cu_bitmap, ptr %acu_info.sroa.11.92.arrayidx2.sroa_idx, i32 64)
  %config = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config, align 8
  %14 = ptrtoint ptr %cu_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cu_info, align 4
  %max_sh_per_se = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 3
  %15 = ptrtoint ptr %max_sh_per_se to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_sh_per_se, align 4
  %num_shader_arrays_per_engine = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 1
  %17 = ptrtoint ptr %num_shader_arrays_per_engine to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_shader_arrays_per_engine, align 4
  %max_cu_per_sh = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 1, i32 2
  %18 = ptrtoint ptr %max_cu_per_sh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_cu_per_sh, align 8
  %num_cu_per_sh = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 2
  %20 = ptrtoint ptr %num_cu_per_sh to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_cu_per_sh, align 4
  %simd_per_cu8 = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 5
  %21 = ptrtoint ptr %simd_per_cu8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %acu_info.sroa.0.0.copyload, ptr %simd_per_cu8, align 4
  %max_waves_per_simd9 = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 6
  %22 = ptrtoint ptr %max_waves_per_simd9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %acu_info.sroa.5.0.copyload, ptr %max_waves_per_simd9, align 4
  %wave_front_size10 = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 7
  %23 = ptrtoint ptr %wave_front_size10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %acu_info.sroa.6.0.copyload, ptr %wave_front_size10, align 4
  %max_scratch_slots_per_cu11 = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 8
  %24 = ptrtoint ptr %max_scratch_slots_per_cu11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %acu_info.sroa.7.0.copyload, ptr %max_scratch_slots_per_cu11, align 4
  %lds_size12 = getelementptr inbounds %struct.kfd_cu_info, ptr %cu_info, i32 0, i32 9
  %25 = ptrtoint ptr %lds_size12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %acu_info.sroa.8.0.copyload, ptr %lds_size12, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %acu_info.sroa.11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_get_dmabuf_info(ptr nocapture noundef readonly %adev, i32 noundef %dma_buf_fd, ptr noundef writeonly %dmabuf_adev, ptr noundef writeonly %bo_size, ptr noundef %metadata_buffer, i32 noundef %buffer_size, ptr noundef %metadata_size, ptr noundef writeonly %flags) local_unnamed_addr #0 align 64 {
entry:
  %metadata_flags = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %metadata_flags) #10
  %0 = ptrtoint ptr %metadata_flags to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %metadata_flags, align 8, !annotation !68
  %call = tail call ptr @dma_buf_get(i32 noundef %dma_buf_fd) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.dma_buf, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %cmp.not = icmp eq ptr %3, @amdgpu_dmabuf_ops
  br i1 %cmp.not, label %if.end4, label %if.end.out_put_crit_edge

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.end4:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.dma_buf, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %driver = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %driver6 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %driver6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver6, align 4
  %cmp7.not = icmp eq ptr %9, %11
  br i1 %cmp7.not, label %if.end9, label %if.end4.out_put_crit_edge

if.end4.out_put_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.end9:                                          ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -8
  %add.ptr = getelementptr i8, ptr %5, i32 -72
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 8
  %and = and i32 %13, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.out_put_crit_edge, label %if.end13

if.end9.out_put_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.end13:                                         ; preds = %if.end9
  %tobool14.not = icmp eq ptr %dmabuf_adev, null
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dmabuf_adev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %dmabuf_adev, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %bo_size, null
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %size.i = getelementptr i8, ptr %5, i32 184
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 8
  %conv = zext i32 %16 to i64
  %17 = ptrtoint ptr %bo_size to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %bo_size, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %tobool21.not = icmp eq ptr %metadata_buffer, null
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 @amdgpu_bo_get_metadata(ptr noundef %add.ptr, ptr noundef nonnull %metadata_buffer, i32 noundef %buffer_size, ptr noundef %metadata_size, ptr noundef nonnull %metadata_flags) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %r.0 = phi i32 [ %call23, %if.then22 ], [ 0, %if.end20.if.end24_crit_edge ]
  %tobool25.not = icmp eq ptr %flags, null
  br i1 %tobool25.not, label %if.end24.out_put_crit_edge, label %if.then26

if.end24.out_put_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.then26:                                        ; preds = %if.end24
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 8
  %and28 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond = select i1 %tobool29.not, i32 2, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %flags, align 4
  %flags30 = getelementptr i8, ptr %5, i32 432
  %21 = ptrtoint ptr %flags30 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %flags30, align 8
  %and31 = and i64 %22, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31)
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.then26.out_put_crit_edge, label %if.then33

if.then26.out_put_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.then33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %cond, 536870912
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %flags, align 4
  br label %out_put

out_put:                                          ; preds = %if.then33, %if.then26.out_put_crit_edge, %if.end24.out_put_crit_edge, %if.end9.out_put_crit_edge, %if.end4.out_put_crit_edge, %if.end.out_put_crit_edge
  %r.1 = phi i32 [ -22, %if.end.out_put_crit_edge ], [ -22, %if.end4.out_put_crit_edge ], [ %r.0, %if.then33 ], [ %r.0, %if.then26.out_put_crit_edge ], [ %r.0, %if.end24.out_put_crit_edge ], [ -22, %if.end9.out_put_crit_edge ]
  call void @dma_buf_put(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out_put, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %r.1, %out_put ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %metadata_flags) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_get_metadata(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @amdgpu_amdkfd_get_xgmi_hops_count(ptr noundef %dst, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_xgmi_get_hops_count(ptr noundef %dst, ptr noundef %src) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %physical_node_id = getelementptr inbounds %struct.amdgpu_device, ptr %dst, i32 0, i32 62, i32 39, i32 3
  %0 = ptrtoint ptr %physical_node_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %physical_node_id, align 8
  %physical_node_id3 = getelementptr inbounds %struct.amdgpu_device, ptr %src, i32 0, i32 62, i32 39, i32 3
  %2 = ptrtoint ptr %physical_node_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %physical_node_id3, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %1, i32 noundef %3, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %conv = trunc i32 %ret.0 to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_xgmi_get_hops_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_get_xgmi_bandwidth_mbytes(ptr noundef %dst, ptr noundef %src, i1 noundef zeroext %is_min) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_type = getelementptr inbounds %struct.amdgpu_device, ptr %dst, i32 0, i32 5
  %0 = ptrtoint ptr %asic_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp.not = icmp eq i32 %1, 25
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %src, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -1 to ptr), ptr %src
  br i1 %is_min, label %if.end.if.end9_crit_edge, label %cond.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

cond.end:                                         ; preds = %if.end
  %call = tail call i32 @amdgpu_xgmi_get_num_links(ptr noundef %dst, ptr noundef nonnull %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then5, label %cond.end.if.end9_crit_edge

cond.end.if.end9_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %physical_node_id = getelementptr inbounds %struct.amdgpu_device, ptr %dst, i32 0, i32 62, i32 39, i32 3
  %2 = ptrtoint ptr %physical_node_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %physical_node_id, align 8
  %physical_node_id8 = getelementptr inbounds %struct.amdgpu_device, ptr %spec.select, i32 0, i32 62, i32 39, i32 3
  %4 = ptrtoint ptr %physical_node_id8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %physical_node_id8, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %3, i32 noundef %5, i32 noundef %call) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %cond.end.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %num_links.0 = phi i32 [ 0, %if.then5 ], [ %call, %cond.end.if.end9_crit_edge ], [ 1, %if.end.if.end9_crit_edge ]
  %mul10 = mul i32 %num_links.0, 400000
  %div = sdiv i32 %mul10, 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_xgmi_get_num_links(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_get_pcie_bandwidth_mbytes(ptr nocapture noundef readonly %adev, i1 noundef zeroext %is_min) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_mlw_mask = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 19
  %0 = ptrtoint ptr %pcie_mlw_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_mlw_mask, align 4
  br i1 %is_min, label %cond.true4, label %cond.false8

cond.true4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true), !range !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %iszero = icmp eq i32 %1, 0
  %sub38 = select i1 %iszero, i32 -1, i32 %2
  %pcie_gen_mask = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 18
  %3 = ptrtoint ptr %pcie_gen_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcie_gen_mask, align 8
  %and = and i32 %4, -65536
  %5 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true), !range !72
  %6 = add nuw nsw i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %iszero6 = icmp eq i32 %and, 0
  %ffs7 = select i1 %iszero6, i32 0, i32 %6
  br label %cond.end13

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #10, !range !71
  %sub.i.op = xor i32 %7, 31
  %sub = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  %pcie_gen_mask10 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 98, i32 18
  %8 = ptrtoint ptr %pcie_gen_mask10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcie_gen_mask10, align 8
  %and11 = and i32 %9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not.i34 = icmp eq i32 %and11, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %and11, i1 true) #10, !range !71
  %sub.i35 = sub nuw nsw i32 32, %10
  %cond.i36 = select i1 %tobool.not.i34, i32 0, i32 %sub.i35
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false8, %cond.true4
  %sub39 = phi i32 [ %sub38, %cond.true4 ], [ %sub, %cond.false8 ]
  %cond14 = phi i32 [ %ffs7, %cond.true4 ], [ %cond.i36, %cond.false8 ]
  %sub15 = add nsw i32 %cond14, -1
  %shl = shl nuw i32 1, %sub39
  %shl16 = shl nuw i32 1, %sub15
  %11 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %shl, label %cond.end13.sw.epilog_crit_edge [
    i32 65536, label %sw.bb
    i32 131072, label %sw.bb17
    i32 262144, label %sw.bb18
    i32 524288, label %sw.bb19
    i32 1048576, label %sw.bb20
    i32 2097152, label %sw.bb21
    i32 4194304, label %sw.bb22
  ]

cond.end13.sw.epilog_crit_edge:                   ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb17:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb18:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb19:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb20:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb21:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb22:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb, %cond.end13.sw.epilog_crit_edge
  %num_lanes_factor.0 = phi i32 [ 0, %cond.end13.sw.epilog_crit_edge ], [ 32, %sw.bb22 ], [ 16, %sw.bb21 ], [ 12, %sw.bb20 ], [ 8, %sw.bb19 ], [ 4, %sw.bb18 ], [ 2, %sw.bb17 ], [ 1, %sw.bb ]
  %12 = zext i32 %shl16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %shl16, label %sw.epilog.sw.epilog28_crit_edge [
    i32 65536, label %sw.bb23
    i32 131072, label %sw.bb24
    i32 262144, label %sw.bb25
    i32 524288, label %sw.bb26
    i32 1048576, label %sw.bb27
  ]

sw.epilog.sw.epilog28_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

sw.bb24:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

sw.bb26:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.epilog.sw.epilog28_crit_edge
  %gen_speed_mbits_factor.0 = phi i32 [ 0, %sw.epilog.sw.epilog28_crit_edge ], [ 32000, %sw.bb27 ], [ 16000, %sw.bb26 ], [ 8000, %sw.bb25 ], [ 5000, %sw.bb24 ], [ 2500, %sw.bb23 ]
  %mul = mul nuw nsw i32 %gen_speed_mbits_factor.0, %num_lanes_factor.0
  %div33 = lshr i32 %mul, 3
  ret i32 %div33
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_submit_ib(ptr noundef %adev, i32 noundef %engine, i32 noundef %vmid, i64 noundef %gpu_addr, ptr noundef %ib_cmd, i32 noundef %ib_len) local_unnamed_addr #0 align 64 {
entry:
  %job = alloca ptr, align 4
  %f = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %job) #10
  %0 = ptrtoint ptr %job to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %job, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #10
  %1 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %f, align 4
  %2 = zext i32 %engine to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %engine, label %do.end [
    i32 4, label %sw.bb
    i32 7, label %sw.bb1
    i32 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %compute_ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 38
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ring3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ring8 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %engine) #13
  br label %err

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %ring.0 = phi ptr [ %ring8, %sw.bb4 ], [ %ring3, %sw.bb1 ], [ %compute_ring, %sw.bb ]
  %call9 = call i32 @amdgpu_job_alloc(ptr noundef %adev, i32 noundef 1, ptr noundef nonnull %job, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.err_crit_edge

sw.epilog.err_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end:                                           ; preds = %sw.epilog
  %3 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %job, align 4
  %ibs = getelementptr inbounds %struct.amdgpu_job, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ibs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibs, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 24)
  %gpu_addr11 = getelementptr inbounds %struct.amdgpu_ib, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %gpu_addr11 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %gpu_addr, ptr %gpu_addr11, align 8
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ib_cmd, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ib_len, ptr %length_dw, align 4
  %vmid12 = getelementptr inbounds %struct.amdgpu_job, ptr %4, i32 0, i32 12
  %11 = ptrtoint ptr %vmid12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %vmid, ptr %vmid12, align 8
  %call13 = call i32 @amdgpu_ib_schedule(ptr noundef %ring.0, i32 noundef 1, ptr noundef %6, ptr noundef %4, ptr noundef nonnull %f) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #10
  br label %err_ib_sched

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f, align 4
  %call.i = call i32 @dma_fence_wait_timeout(ptr noundef %13, i1 noundef zeroext false, i32 noundef 2147483647) #10
  %14 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #10
  br label %err_ib_sched

err_ib_sched:                                     ; preds = %if.end16, %if.then15
  %ret.0 = phi i32 [ %call13, %if.then15 ], [ %14, %if.end16 ]
  %15 = ptrtoint ptr %job to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %job, align 4
  call void @amdgpu_job_free(ptr noundef %16) #10
  br label %err

err:                                              ; preds = %err_ib_sched, %sw.epilog.err_crit_edge, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ %call9, %sw.epilog.err_crit_edge ], [ %ret.0, %err_ib_sched ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %job) #10
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_job_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_job_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_amdkfd_set_compute_idle(ptr noundef %adev, i1 noundef zeroext %idle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lnot = xor i1 %idle, true
  %call = tail call i32 @amdgpu_dpm_switch_power_profile(ptr noundef %adev, i32 noundef 5, i1 noundef zeroext %lnot) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_switch_power_profile(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_amdkfd_is_kfd_vmid(ptr nocapture noundef readonly %adev, i32 noundef %vmid) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kfd = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 115
  %0 = ptrtoint ptr %kfd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kfd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %first_kfd_vmid = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 65, i32 1
  %2 = ptrtoint ptr %first_kfd_vmid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_kfd_vmid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vmid)
  %cmp = icmp ule i32 %3, %vmid
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_flush_gpu_tlb_vmid(ptr noundef %adev, i16 noundef zeroext %vmid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %1)
  %cmp = icmp eq i32 %1, 141
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %num_vmhubs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 67
  %2 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vmhubs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp114.not = icmp eq i32 %3, 0
  br i1 %cmp114.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %conv = zext i16 %vmid to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmc_funcs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %adev, i32 noundef %conv, i32 noundef %i.015, i32 noundef 0) #10
  %inc = add nuw i32 %i.015, 1
  %8 = ptrtoint ptr %num_vmhubs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vmhubs, align 8
  %cmp1 = icmp ult i32 %inc, %9
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gmc_funcs3 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %10 = ptrtoint ptr %gmc_funcs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gmc_funcs3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %conv5 = zext i16 %vmid to i32
  tail call void %13(ptr noundef %adev, i32 noundef %conv5, i32 noundef 0, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_amdkfd_flush_gpu_tlb_pasid(ptr noundef %adev, i16 noundef zeroext %pasid, i32 noundef %flush_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %1)
  %cmp = icmp eq i32 %1, 141
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 38
  %2 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmc_funcs, align 4
  %flush_gpu_tlb_pasid = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flush_gpu_tlb_pasid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_gpu_tlb_pasid, align 4
  %call = tail call i32 %5(ptr noundef %adev, i16 noundef zeroext %pasid, i32 noundef %flush_type, i1 noundef zeroext %cmp) #10
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_amdkfd_have_atomics_support(ptr nocapture noundef readonly %adev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %have_atomics_support = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 24
  %0 = ptrtoint ptr %have_atomics_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %have_atomics_support, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_amdkfd_ras_poison_consumption_handler(ptr noundef %adev, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  %err_data = alloca %struct.ras_err_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %err_data) #10
  %0 = call ptr @memset(ptr %err_data, i32 0, i32 16)
  %connected_to_cpu = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 62, i32 39, i32 8
  %1 = ptrtoint ptr %connected_to_cpu to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %connected_to_cpu, align 8, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 @amdgpu_umc_poison_handler(ptr noundef %adev, ptr noundef nonnull %err_data, i1 noundef zeroext %reset) #10
  br label %if.end4

if.else:                                          ; preds = %entry
  br i1 %reset, label %if.then3, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.else
  %call.i = tail call zeroext i1 @amdgpu_device_should_recover_gpu(ptr noundef %adev) #10
  br i1 %call.i, label %if.then.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @amdgpu_device_gpu_recover(ptr noundef %adev, ptr noundef null) #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then3.if.end4_crit_edge, %if.else.if.end4_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %err_data) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_umc_poison_handler(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 265, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 273, i32 3}
!10 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 279, i32 3}
!14 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 285, i32 3}
!18 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 291, i32 3}
!22 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @amdgpu_amdkfd_alloc_gtt_mem._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 344, i32 3}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @amdgpu_amdkfd_alloc_gws._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @amdgpu_amdkfd_alloc_gws._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 407, i32 2}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @amdgpu_amdkfd_get_local_mem_info.__UNIQUE_ID_ddebug345, !30, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!34 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 525, i32 3}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 549, i32 3}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 638, i32 3}
!41 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @amdgpu_amdkfd_submit_ib._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @amdgpu_amdkfd_submit_ib._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 659, i32 3}
!46 = !{ptr @amdgpu_amdkfd_total_mem_size, !47, !"amdgpu_amdkfd_total_mem_size", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 40, i32 10}
!48 = distinct !{null, !49, !"kfd_initialized", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.c", i32 42, i32 13}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_object.h", i32 179, i32 4}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @amdgpu_bo_reserve._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @amdgpu_bo_reserve._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!68 = !{!"auto-init"}
!69 = !{i64 2148296079, i64 2148296084, i64 2148296097, i64 2148296141, i64 2148296175, i64 2148296196}
!70 = !{i8 0, i8 2}
!71 = !{i32 0, i32 33}
!72 = !{i32 16, i32 33}
