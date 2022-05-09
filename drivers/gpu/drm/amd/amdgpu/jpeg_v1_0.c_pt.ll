; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
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
%struct.amdgpu_job = type { %struct.drm_sched_job, ptr, %struct.amdgpu_sync, %struct.amdgpu_sync, ptr, %struct.dma_fence, ptr, i32, i32, i32, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.92, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.92 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.85, i64, i64, i32, %struct.kref, i32 }
%union.anon.85 = type { i64 }
%struct.amdgpu_ib = type { ptr, i32, i64, ptr, i32 }
%struct.amdgpu_gmc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_iv_entry = type { ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, [4 x i32], ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"jpeg_dec\00", [23 x i8] zeroinitializer }, align 32
@amdgpu_sched_hw_submission = external dso_local local_unnamed_addr global i32, align 4
@jpeg_v1_0_decode_ring_vm_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 8, i32 15, i32 33279, i8 0, i8 1, i32 1, i32 64, ptr @jpeg_v1_0_decode_ring_get_rptr, ptr @jpeg_v1_0_decode_ring_get_wptr, ptr @jpeg_v1_0_decode_ring_set_wptr, ptr null, ptr null, i32 138, i32 22, ptr @jpeg_v1_0_decode_ring_emit_ib, ptr @jpeg_v1_0_decode_ring_emit_fence, ptr null, ptr @jpeg_v1_0_decode_ring_emit_vm_flush, ptr null, ptr null, ptr @amdgpu_jpeg_dec_ring_test_ring, ptr @amdgpu_jpeg_dec_ring_test_ib, ptr @jpeg_v1_0_decode_ring_nop, ptr @jpeg_v1_0_decode_ring_insert_start, ptr @jpeg_v1_0_decode_ring_insert_end, ptr @amdgpu_ring_generic_pad_ib, ptr null, ptr null, ptr @jpeg_v1_0_ring_begin_use, ptr @vcn_v1_0_ring_end_use, ptr null, ptr null, ptr null, ptr @jpeg_v1_0_decode_ring_emit_wreg, ptr @jpeg_v1_0_decode_ring_emit_reg_wait, ptr @amdgpu_ring_emit_reg_write_reg_wait_helper, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jpeg_v1_0_set_dec_ring_funcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] JPEG decode is enabled in VM mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jpeg_v1_0_set_dec_ring_funcs\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c\00", [57 x i8] zeroinitializer }, align 32
@jpeg_v1_0_set_dec_ring_funcs._entry_ptr = internal global ptr @jpeg_v1_0_set_dec_ring_funcs._entry, section ".printk_index", align 4
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"JPEG dec: vcn dec ring may not be empty\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"JPEG dec: vcn enc ring[%d] may not be empty\0A\00", [51 x i8] zeroinitializer }, align 32
@jpeg_v1_0_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @jpeg_v1_0_set_interrupt_state, ptr @jpeg_v1_0_process_interrupt }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IH: JPEG decode TRAP\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unhandled interrupt: %d %d\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 488, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant [31 x i8] c"jpeg_v1_0_decode_ring_vm_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 545, i32 39 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 583, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 314, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 605, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 609, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"jpeg_v1_0_irq_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 586, i32 42 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 436, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [42 x i8] c"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 443, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @jpeg_v1_0_set_dec_ring_funcs._entry, ptr @jpeg_v1_0_set_dec_ring_funcs._entry_ptr, ptr @.str, ptr @jpeg_v1_0_decode_ring_vm_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @jpeg_v1_0_irq_funcs, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v1_0_decode_ring_vm_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v1_0_set_dec_ring_funcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_v1_0_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jpeg_v1_0_early_init(ptr nocapture noundef writeonly %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111
  %0 = ptrtoint ptr %jpeg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %jpeg, align 8
  %funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @jpeg_v1_0_decode_ring_vm_funcs, ptr %funcs.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  %funcs.i3 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %funcs.i3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @jpeg_v1_0_irq_funcs, ptr %funcs.i3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jpeg_v1_0_sw_init(ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 1
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 16, i32 noundef 126, ptr noundef %irq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1
  %name = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 0, i32 29
  %0 = call ptr @memcpy(ptr %name, ptr @.str, i32 9)
  %call10 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %inst, i32 noundef 512, ptr noundef %irq, i32 noundef 0, i32 noundef 1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 130, i32 16
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 8
  %arrayidx15 = getelementptr i32, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx15, align 4
  %add = add i32 %4, 546
  %external = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %external to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %external, align 4
  %internal = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 2
  %6 = ptrtoint ptr %internal to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %internal, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v1_0_sw_fini(ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 111, i32 1
  tail call void @amdgpu_ring_fini(ptr noundef %inst) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jpeg_v1_0_start(ptr noundef %adev, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cond.false_crit_edge, label %land.lhs.true

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %if.then
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %9, 1288
  tail call void %5(ptr noundef %adev, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %if.then.cond.false_crit_edge
  %arrayidx14 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 8
  %arrayidx16 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %13, 1288
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add17, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and20 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %cond.end.cond.false43_crit_edge, label %land.lhs.true22

cond.end.cond.false43_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43

land.lhs.true22:                                  ; preds = %cond.end
  %funcs25 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %16 = ptrtoint ptr %funcs25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs25, align 4
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %land.lhs.true22.cond.false43_crit_edge, label %land.lhs.true27

land.lhs.true22.cond.false43_crit_edge:           ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %sriov_wreg31 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg31, align 4
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %land.lhs.true27.cond.false43_crit_edge, label %cond.true33

land.lhs.true27.cond.false43_crit_edge:           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43

cond.true33:                                      ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx39 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx39, align 8
  %arrayidx41 = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx41, align 4
  %add42 = add i32 %23, 1290
  tail call void %19(ptr noundef %adev, i32 noundef %add42, i32 noundef 3, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end49

cond.false43:                                     ; preds = %land.lhs.true27.cond.false43_crit_edge, %land.lhs.true22.cond.false43_crit_edge, %cond.end.cond.false43_crit_edge
  %arrayidx45 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx45, align 8
  %arrayidx47 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx47, align 4
  %add48 = add i32 %27, 1290
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add48, i32 noundef 3, i32 noundef 0) #4
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false43, %cond.true33
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt, align 8
  %and52 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %cond.end49.cond.false76_crit_edge, label %land.lhs.true54

cond.end49.cond.false76_crit_edge:                ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false76

land.lhs.true54:                                  ; preds = %cond.end49
  %funcs57 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %30 = ptrtoint ptr %funcs57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs57, align 4
  %tobool58.not = icmp eq ptr %31, null
  br i1 %tobool58.not, label %land.lhs.true54.cond.false76_crit_edge, label %land.lhs.true59

land.lhs.true54.cond.false76_crit_edge:           ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false76

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %sriov_wreg63 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %sriov_wreg63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_wreg63, align 4
  %tobool64.not = icmp eq ptr %33, null
  br i1 %tobool64.not, label %land.lhs.true59.cond.false76_crit_edge, label %cond.true65

land.lhs.true59.cond.false76_crit_edge:           ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false76

cond.true65:                                      ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx71 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %34 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx71, align 8
  %arrayidx73 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx73, align 4
  %add74 = add i32 %37, 1283
  %gpu_addr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %38 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %39 to i32
  tail call void %33(ptr noundef %adev, i32 noundef %add74, i32 noundef %conv, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end85

cond.false76:                                     ; preds = %land.lhs.true59.cond.false76_crit_edge, %land.lhs.true54.cond.false76_crit_edge, %cond.end49.cond.false76_crit_edge
  %arrayidx78 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %40 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx78, align 8
  %arrayidx80 = getelementptr i32, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx80, align 4
  %add81 = add i32 %43, 1283
  %gpu_addr82 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %44 = ptrtoint ptr %gpu_addr82 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %gpu_addr82, align 8
  %conv84 = trunc i64 %45 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add81, i32 noundef %conv84, i32 noundef 0) #4
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false76, %cond.true65
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %virt, align 8
  %and88 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %cond.end85.cond.false114_crit_edge, label %land.lhs.true90

cond.end85.cond.false114_crit_edge:               ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false114

land.lhs.true90:                                  ; preds = %cond.end85
  %funcs93 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %48 = ptrtoint ptr %funcs93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %funcs93, align 4
  %tobool94.not = icmp eq ptr %49, null
  br i1 %tobool94.not, label %land.lhs.true90.cond.false114_crit_edge, label %land.lhs.true95

land.lhs.true90.cond.false114_crit_edge:          ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false114

land.lhs.true95:                                  ; preds = %land.lhs.true90
  %sriov_wreg99 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %sriov_wreg99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sriov_wreg99, align 4
  %tobool100.not = icmp eq ptr %51, null
  br i1 %tobool100.not, label %land.lhs.true95.cond.false114_crit_edge, label %cond.true101

land.lhs.true95.cond.false114_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false114

cond.true101:                                     ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx107 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %52 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx107, align 8
  %arrayidx109 = getelementptr i32, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx109, align 4
  %add110 = add i32 %55, 1284
  %gpu_addr111 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %56 = ptrtoint ptr %gpu_addr111 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %gpu_addr111, align 8
  %shr = lshr i64 %57, 32
  %conv113 = trunc i64 %shr to i32
  tail call void %51(ptr noundef %adev, i32 noundef %add110, i32 noundef %conv113, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end124

cond.false114:                                    ; preds = %land.lhs.true95.cond.false114_crit_edge, %land.lhs.true90.cond.false114_crit_edge, %cond.end85.cond.false114_crit_edge
  %arrayidx116 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %58 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx116, align 8
  %arrayidx118 = getelementptr i32, ptr %59, i32 1
  %60 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx118, align 4
  %add119 = add i32 %61, 1284
  %gpu_addr120 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %62 = ptrtoint ptr %gpu_addr120 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %gpu_addr120, align 8
  %shr121 = lshr i64 %63, 32
  %conv123 = trunc i64 %shr121 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add119, i32 noundef %conv123, i32 noundef 0) #4
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false114, %cond.true101
  %64 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %virt, align 8
  %and127 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %cond.end124.cond.false150_crit_edge, label %land.lhs.true129

cond.end124.cond.false150_crit_edge:              ; preds = %cond.end124
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false150

land.lhs.true129:                                 ; preds = %cond.end124
  %funcs132 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %66 = ptrtoint ptr %funcs132 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %funcs132, align 4
  %tobool133.not = icmp eq ptr %67, null
  br i1 %tobool133.not, label %land.lhs.true129.cond.false150_crit_edge, label %land.lhs.true134

land.lhs.true129.cond.false150_crit_edge:         ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false150

land.lhs.true134:                                 ; preds = %land.lhs.true129
  %sriov_wreg138 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %sriov_wreg138 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sriov_wreg138, align 4
  %tobool139.not = icmp eq ptr %69, null
  br i1 %tobool139.not, label %land.lhs.true134.cond.false150_crit_edge, label %cond.true140

land.lhs.true134.cond.false150_crit_edge:         ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false150

cond.true140:                                     ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx146 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %70 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx146, align 8
  %arrayidx148 = getelementptr i32, ptr %71, i32 1
  %72 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx148, align 4
  %add149 = add i32 %73, 1111
  tail call void %69(ptr noundef %adev, i32 noundef %add149, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end156

cond.false150:                                    ; preds = %land.lhs.true134.cond.false150_crit_edge, %land.lhs.true129.cond.false150_crit_edge, %cond.end124.cond.false150_crit_edge
  %arrayidx152 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %74 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx152, align 8
  %arrayidx154 = getelementptr i32, ptr %75, i32 1
  %76 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %77, 1111
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add155, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false150, %cond.true140
  %78 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %virt, align 8
  %and159 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %cond.end156.cond.false182_crit_edge, label %land.lhs.true161

cond.end156.cond.false182_crit_edge:              ; preds = %cond.end156
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false182

land.lhs.true161:                                 ; preds = %cond.end156
  %funcs164 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %80 = ptrtoint ptr %funcs164 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %funcs164, align 4
  %tobool165.not = icmp eq ptr %81, null
  br i1 %tobool165.not, label %land.lhs.true161.cond.false182_crit_edge, label %land.lhs.true166

land.lhs.true161.cond.false182_crit_edge:         ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false182

land.lhs.true166:                                 ; preds = %land.lhs.true161
  %sriov_wreg170 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %sriov_wreg170 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sriov_wreg170, align 4
  %tobool171.not = icmp eq ptr %83, null
  br i1 %tobool171.not, label %land.lhs.true166.cond.false182_crit_edge, label %cond.true172

land.lhs.true166.cond.false182_crit_edge:         ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false182

cond.true172:                                     ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx178 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %84 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx178, align 8
  %arrayidx180 = getelementptr i32, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx180, align 4
  %add181 = add i32 %87, 1289
  tail call void %83(ptr noundef %adev, i32 noundef %add181, i32 noundef 0, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end188

cond.false182:                                    ; preds = %land.lhs.true166.cond.false182_crit_edge, %land.lhs.true161.cond.false182_crit_edge, %cond.end156.cond.false182_crit_edge
  %arrayidx184 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %88 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx184, align 8
  %arrayidx186 = getelementptr i32, ptr %89, i32 1
  %90 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx186, align 4
  %add187 = add i32 %91, 1289
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add187, i32 noundef 0, i32 noundef 0) #4
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false182, %cond.true172
  %92 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %virt, align 8
  %and191 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %cond.end188.cond.false214_crit_edge, label %land.lhs.true193

cond.end188.cond.false214_crit_edge:              ; preds = %cond.end188
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false214

land.lhs.true193:                                 ; preds = %cond.end188
  %funcs196 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %94 = ptrtoint ptr %funcs196 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %funcs196, align 4
  %tobool197.not = icmp eq ptr %95, null
  br i1 %tobool197.not, label %land.lhs.true193.cond.false214_crit_edge, label %land.lhs.true198

land.lhs.true193.cond.false214_crit_edge:         ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false214

land.lhs.true198:                                 ; preds = %land.lhs.true193
  %sriov_wreg202 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %95, i32 0, i32 12
  %96 = ptrtoint ptr %sriov_wreg202 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sriov_wreg202, align 4
  %tobool203.not = icmp eq ptr %97, null
  br i1 %tobool203.not, label %land.lhs.true198.cond.false214_crit_edge, label %cond.true204

land.lhs.true198.cond.false214_crit_edge:         ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false214

cond.true204:                                     ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx210 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %98 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx210, align 8
  %arrayidx212 = getelementptr i32, ptr %99, i32 1
  %100 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx212, align 4
  %add213 = add i32 %101, 1290
  tail call void %97(ptr noundef %adev, i32 noundef %add213, i32 noundef 2, i32 noundef 0, i32 noundef 16) #4
  br label %if.end

cond.false214:                                    ; preds = %land.lhs.true198.cond.false214_crit_edge, %land.lhs.true193.cond.false214_crit_edge, %cond.end188.cond.false214_crit_edge
  %arrayidx216 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %102 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx216, align 8
  %arrayidx218 = getelementptr i32, ptr %103, i32 1
  %104 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx218, align 4
  %add219 = add i32 %105, 1290
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef %add219, i32 noundef 2, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %cond.false214, %cond.true204, %entry.if.end_crit_edge
  %virt221 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 132
  %106 = ptrtoint ptr %virt221 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %virt221, align 8
  %and223 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %if.end.cond.false245_crit_edge, label %land.lhs.true225

if.end.cond.false245_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false245

land.lhs.true225:                                 ; preds = %if.end
  %funcs228 = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 106, i32 2, i32 15
  %108 = ptrtoint ptr %funcs228 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %funcs228, align 4
  %tobool229.not = icmp eq ptr %109, null
  br i1 %tobool229.not, label %land.lhs.true225.cond.false245_crit_edge, label %land.lhs.true230

land.lhs.true225.cond.false245_crit_edge:         ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false245

land.lhs.true230:                                 ; preds = %land.lhs.true225
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %109, i32 0, i32 13
  %110 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sriov_rreg, align 4
  %tobool234.not = icmp eq ptr %111, null
  br i1 %tobool234.not, label %land.lhs.true230.cond.false245_crit_edge, label %cond.true235

land.lhs.true230.cond.false245_crit_edge:         ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false245

cond.true235:                                     ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx241 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %112 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx241, align 8
  %arrayidx243 = getelementptr i32, ptr %113, i32 1
  %114 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx243, align 4
  %add244 = add i32 %115, 1289
  %call = tail call i32 %111(ptr noundef %adev, i32 noundef %add244, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end252

cond.false245:                                    ; preds = %land.lhs.true230.cond.false245_crit_edge, %land.lhs.true225.cond.false245_crit_edge, %if.end.cond.false245_crit_edge
  %arrayidx247 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 130, i32 16
  %116 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx247, align 8
  %arrayidx249 = getelementptr i32, ptr %117, i32 1
  %118 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx249, align 4
  %add250 = add i32 %119, 1289
  %call251 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef %add250, i32 noundef 0) #4
  br label %cond.end252

cond.end252:                                      ; preds = %cond.false245, %cond.true235
  %cond = phi i32 [ %call, %cond.true235 ], [ %call251, %cond.false245 ]
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1
  %conv253 = zext i32 %cond to i64
  %wptr = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 0, i32 0, i32 7
  %120 = ptrtoint ptr %wptr to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv253, ptr %wptr, align 8
  %max_dw = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 0, i32 0, i32 10
  %121 = ptrtoint ptr %max_dw to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %max_dw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdgpu_sched_hw_submission to i32))
  %123 = load i32, ptr @amdgpu_sched_hw_submission, align 4
  %mul = mul i32 %123, %122
  %add256 = add i32 %mul, %cond
  %124 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %inst, align 8
  %arrayidx.i = getelementptr %struct.amdgpu_device, ptr %125, i32 0, i32 130, i32 16
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx4.i = getelementptr i32, ptr %127, i32 1
  %128 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx4.i, align 4
  %add.i = shl i32 %129, 2
  %shl.i = add i32 %add.i, 5184
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 0, i32 0, i32 12
  %130 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %gpu_addr.i, align 8
  %conv.i = trunc i64 %131 to i32
  %add.i.i = add i32 %129, 1303
  %and.i.i = and i32 %add.i.i, 262143
  %ring7.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1, i32 0, i32 0, i32 5
  %132 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ring7.i.i, align 4
  %inc.i.i = add i32 %add256, 1
  %arrayidx8.i.i = getelementptr i32, ptr %133, i32 %add256
  %134 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %and.i.i, ptr %arrayidx8.i.i, align 4
  %135 = add i32 %add.i, -123840
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %135)
  %136 = icmp ult i32 %135, 10240
  %137 = and i32 %shl.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 122880, i32 %137)
  %138 = icmp eq i32 %137, 122880
  %or.cond.i.i = or i1 %136, %138
  %139 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ring7.i.i, align 4
  %inc14.i.i = add i32 %add256, 2
  %arrayidx15.i.i = getelementptr i32, ptr %140, i32 %inc.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %cond.end252
  call void @__sanitizer_cov_trace_pc() #6
  %141 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile i32 0, ptr %arrayidx15.i.i, align 4
  %shr.i.i = lshr exact i32 %shl.i, 2
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit.i

if.else.i.i:                                      ; preds = %cond.end252
  call void @__sanitizer_cov_trace_pc() #6
  %142 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 %shl.i, ptr %arrayidx15.i.i, align 4
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit.i

jpeg_v1_0_decode_ring_patch_wreg.exit.i:          ; preds = %if.else.i.i, %if.then.i.i
  %shr.i.sink.i = phi i32 [ %shr.i.i, %if.then.i.i ], [ 0, %if.else.i.i ]
  %143 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx22.i.i = getelementptr i32, ptr %144, i32 %inc14.i.i
  %145 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 %shr.i.sink.i, ptr %arrayidx22.i.i, align 4
  %ptr.addr.0.i = add i32 %add256, 3
  %146 = load ptr, ptr %ring7.i.i, align 4
  %inc30.i.i = add i32 %add256, 4
  %arrayidx31.i.i = getelementptr i32, ptr %146, i32 %ptr.addr.0.i
  %147 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 %conv.i, ptr %arrayidx31.i.i, align 4
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx8.i = getelementptr i32, ptr %149, i32 1
  %150 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx8.i, align 4
  %add9.i = shl i32 %151, 2
  %shl10.i = add i32 %add9.i, 5188
  %152 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %gpu_addr.i, align 8
  %shr.i = lshr i64 %153, 32
  %conv13.i = trunc i64 %shr.i to i32
  %154 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %inst, align 8
  %arrayidx.i192.i = getelementptr %struct.amdgpu_device, ptr %155, i32 0, i32 130, i32 16
  %156 = ptrtoint ptr %arrayidx.i192.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i192.i, align 8
  %arrayidx4.i193.i = getelementptr i32, ptr %157, i32 1
  %158 = ptrtoint ptr %arrayidx4.i193.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx4.i193.i, align 4
  %add.i194.i = add i32 %159, 1303
  %and.i195.i = and i32 %add.i194.i, 262143
  %160 = load ptr, ptr %ring7.i.i, align 4
  %inc.i197.i = add i32 %add256, 5
  %arrayidx8.i198.i = getelementptr i32, ptr %160, i32 %inc30.i.i
  %161 = ptrtoint ptr %arrayidx8.i198.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile i32 %and.i195.i, ptr %arrayidx8.i198.i, align 4
  %162 = add i32 %add9.i, -123836
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %162)
  %163 = icmp ult i32 %162, 10240
  %164 = and i32 %shl10.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 122880, i32 %164)
  %165 = icmp eq i32 %164, 122880
  %or.cond.i199.i = or i1 %163, %165
  %166 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ring7.i.i, align 4
  %inc14.i200.i = add i32 %add256, 6
  %arrayidx15.i201.i = getelementptr i32, ptr %167, i32 %inc.i197.i
  br i1 %or.cond.i199.i, label %if.then.i205.i, label %if.else.i208.i

if.then.i205.i:                                   ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %168 = ptrtoint ptr %arrayidx15.i201.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile i32 0, ptr %arrayidx15.i201.i, align 4
  %shr.i202.i = lshr exact i32 %shl10.i, 2
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit211.i

if.else.i208.i:                                   ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %169 = ptrtoint ptr %arrayidx15.i201.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile i32 %shl10.i, ptr %arrayidx15.i201.i, align 4
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit211.i

jpeg_v1_0_decode_ring_patch_wreg.exit211.i:       ; preds = %if.else.i208.i, %if.then.i205.i
  %shr.i202.sink.i = phi i32 [ %shr.i202.i, %if.then.i205.i ], [ 0, %if.else.i208.i ]
  %170 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx22.i204.i = getelementptr i32, ptr %171, i32 %inc14.i200.i
  %172 = ptrtoint ptr %arrayidx22.i204.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 %shr.i202.sink.i, ptr %arrayidx22.i204.i, align 4
  %ptr.addr.1.i = add i32 %add256, 7
  %173 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx31.i210.i = getelementptr i32, ptr %173, i32 %ptr.addr.1.i
  %174 = ptrtoint ptr %arrayidx31.i210.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile i32 %conv13.i, ptr %arrayidx31.i210.i, align 4
  %ptr.addr.2336.i = add i32 %add256, 8
  %175 = load ptr, ptr %ring7.i.i, align 4
  %inc.i = add i32 %add256, 9
  %arrayidx16.i = getelementptr i32, ptr %175, i32 %ptr.addr.2336.i
  %176 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile i32 536870912, ptr %arrayidx16.i, align 4
  %177 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %177, i32 %inc.i
  %178 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 0, ptr %arrayidx19.i, align 4
  %ptr.addr.2.i = add i32 %add256, 10
  %179 = load ptr, ptr %ring7.i.i, align 4
  %inc.1.i = add i32 %add256, 11
  %arrayidx16.1.i = getelementptr i32, ptr %179, i32 %ptr.addr.2.i
  %180 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile i32 536870912, ptr %arrayidx16.1.i, align 4
  %181 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx19.1.i = getelementptr i32, ptr %181, i32 %inc.1.i
  %182 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile i32 0, ptr %arrayidx19.1.i, align 4
  %ptr.addr.2.1.i = add i32 %add256, 12
  %183 = load ptr, ptr %ring7.i.i, align 4
  %inc.2.i = add i32 %add256, 13
  %arrayidx16.2.i = getelementptr i32, ptr %183, i32 %ptr.addr.2.1.i
  %184 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile i32 536870912, ptr %arrayidx16.2.i, align 4
  %185 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx19.2.i = getelementptr i32, ptr %185, i32 %inc.2.i
  %186 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile i32 0, ptr %arrayidx19.2.i, align 4
  %ptr.addr.2.2.i = add i32 %add256, 14
  %187 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx24.i = getelementptr i32, ptr %188, i32 1
  %189 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx24.i, align 4
  %add25.i = shl i32 %190, 2
  %shl26.i = add i32 %add25.i, 5160
  %191 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %inst, align 8
  %arrayidx.i212.i = getelementptr %struct.amdgpu_device, ptr %192, i32 0, i32 130, i32 16
  %193 = ptrtoint ptr %arrayidx.i212.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx.i212.i, align 8
  %arrayidx4.i213.i = getelementptr i32, ptr %194, i32 1
  %195 = ptrtoint ptr %arrayidx4.i213.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx4.i213.i, align 4
  %add.i214.i = add i32 %196, 1303
  %and.i215.i = and i32 %add.i214.i, 262143
  %197 = load ptr, ptr %ring7.i.i, align 4
  %inc.i217.i = add i32 %add256, 15
  %arrayidx8.i218.i = getelementptr i32, ptr %197, i32 %ptr.addr.2.2.i
  %198 = ptrtoint ptr %arrayidx8.i218.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile i32 %and.i215.i, ptr %arrayidx8.i218.i, align 4
  %199 = add i32 %add25.i, -123864
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %199)
  %200 = icmp ult i32 %199, 10240
  %201 = and i32 %shl26.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 122880, i32 %201)
  %202 = icmp eq i32 %201, 122880
  %or.cond.i219.i = or i1 %200, %202
  %203 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ring7.i.i, align 4
  %inc14.i220.i = add i32 %add256, 16
  %arrayidx15.i221.i = getelementptr i32, ptr %204, i32 %inc.i217.i
  br i1 %or.cond.i219.i, label %if.then.i225.i, label %if.else.i228.i

if.then.i225.i:                                   ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit211.i
  call void @__sanitizer_cov_trace_pc() #6
  %205 = ptrtoint ptr %arrayidx15.i221.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile i32 0, ptr %arrayidx15.i221.i, align 4
  %shr.i222.i = lshr exact i32 %shl26.i, 2
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit231.i

if.else.i228.i:                                   ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit211.i
  call void @__sanitizer_cov_trace_pc() #6
  %206 = ptrtoint ptr %arrayidx15.i221.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile i32 %shl26.i, ptr %arrayidx15.i221.i, align 4
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit231.i

jpeg_v1_0_decode_ring_patch_wreg.exit231.i:       ; preds = %if.else.i228.i, %if.then.i225.i
  %shr.i222.sink.i = phi i32 [ %shr.i222.i, %if.then.i225.i ], [ 0, %if.else.i228.i ]
  %207 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx22.i224.i = getelementptr i32, ptr %208, i32 %inc14.i220.i
  %209 = ptrtoint ptr %arrayidx22.i224.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile i32 %shr.i222.sink.i, ptr %arrayidx22.i224.i, align 4
  %ptr.addr.3.i = add i32 %add256, 17
  %210 = load ptr, ptr %ring7.i.i, align 4
  %inc30.i229.i = add i32 %add256, 18
  %arrayidx31.i230.i = getelementptr i32, ptr %210, i32 %ptr.addr.3.i
  %211 = ptrtoint ptr %arrayidx31.i230.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile i32 19, ptr %arrayidx31.i230.i, align 4
  %212 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx30.i = getelementptr i32, ptr %213, i32 1
  %214 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx30.i, align 4
  %add31.i = shl i32 %215, 2
  %shl32.i = add i32 %add31.i, 5192
  %216 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %inst, align 8
  %arrayidx.i232.i = getelementptr %struct.amdgpu_device, ptr %217, i32 0, i32 130, i32 16
  %218 = ptrtoint ptr %arrayidx.i232.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i232.i, align 8
  %arrayidx4.i233.i = getelementptr i32, ptr %219, i32 1
  %220 = ptrtoint ptr %arrayidx4.i233.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx4.i233.i, align 4
  %add.i234.i = add i32 %221, 1303
  %and.i235.i = and i32 %add.i234.i, 262143
  %222 = load ptr, ptr %ring7.i.i, align 4
  %inc.i237.i = add i32 %add256, 19
  %arrayidx8.i238.i = getelementptr i32, ptr %222, i32 %inc30.i229.i
  %223 = ptrtoint ptr %arrayidx8.i238.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile i32 %and.i235.i, ptr %arrayidx8.i238.i, align 4
  %224 = add i32 %add31.i, -123832
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %224)
  %225 = icmp ult i32 %224, 10240
  %226 = and i32 %shl32.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 122880, i32 %226)
  %227 = icmp eq i32 %226, 122880
  %or.cond.i239.i = or i1 %225, %227
  %228 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ring7.i.i, align 4
  %inc14.i240.i = add i32 %add256, 20
  %arrayidx15.i241.i = getelementptr i32, ptr %229, i32 %inc.i237.i
  br i1 %or.cond.i239.i, label %if.then.i245.i, label %if.else.i248.i

if.then.i245.i:                                   ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit231.i
  call void @__sanitizer_cov_trace_pc() #6
  %230 = ptrtoint ptr %arrayidx15.i241.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile i32 0, ptr %arrayidx15.i241.i, align 4
  %shr.i242.i = lshr exact i32 %shl32.i, 2
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit251.i

if.else.i248.i:                                   ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit231.i
  call void @__sanitizer_cov_trace_pc() #6
  %231 = ptrtoint ptr %arrayidx15.i241.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store volatile i32 %shl32.i, ptr %arrayidx15.i241.i, align 4
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit251.i

jpeg_v1_0_decode_ring_patch_wreg.exit251.i:       ; preds = %if.else.i248.i, %if.then.i245.i
  %shr.i242.sink.i = phi i32 [ %shr.i242.i, %if.then.i245.i ], [ 0, %if.else.i248.i ]
  %232 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx22.i244.i = getelementptr i32, ptr %233, i32 %inc14.i240.i
  %234 = ptrtoint ptr %arrayidx22.i244.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile i32 %shr.i242.sink.i, ptr %arrayidx22.i244.i, align 4
  %ptr.addr.4.i = add i32 %add256, 21
  %235 = load ptr, ptr %ring7.i.i, align 4
  %inc30.i249.i = add i32 %add256, 22
  %arrayidx31.i250.i = getelementptr i32, ptr %235, i32 %ptr.addr.4.i
  %236 = ptrtoint ptr %arrayidx31.i250.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store volatile i32 1, ptr %arrayidx31.i250.i, align 4
  %237 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx36.i = getelementptr i32, ptr %238, i32 1
  %239 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx36.i, align 4
  %add37.i = shl i32 %240, 2
  %shl38.i = add i32 %add37.i, 5160
  %add43.i = add i32 %240, 1299
  %and44.i = and i32 %add43.i, 262143
  %241 = load ptr, ptr %ring7.i.i, align 4
  %inc48.i = add i32 %add256, 23
  %arrayidx49.i = getelementptr i32, ptr %241, i32 %inc30.i249.i
  %242 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store volatile i32 %and44.i, ptr %arrayidx49.i, align 4
  %243 = load ptr, ptr %ring7.i.i, align 4
  %inc51.i = add i32 %add256, 24
  %arrayidx52.i = getelementptr i32, ptr %243, i32 %inc48.i
  %244 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile i32 20972032, ptr %arrayidx52.i, align 4
  %245 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx56.i = getelementptr i32, ptr %245, i32 1
  %246 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx56.i, align 4
  %add57.i = add i32 %247, 1298
  %and58.i = and i32 %add57.i, 262143
  %248 = load ptr, ptr %ring7.i.i, align 4
  %inc63.i = add i32 %add256, 25
  %arrayidx64.i = getelementptr i32, ptr %248, i32 %inc51.i
  %249 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile i32 %and58.i, ptr %arrayidx64.i, align 4
  %250 = load ptr, ptr %ring7.i.i, align 4
  %inc66.i = add i32 %add256, 26
  %arrayidx67.i = getelementptr i32, ptr %250, i32 %inc63.i
  %251 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile i32 1, ptr %arrayidx67.i, align 4
  %252 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx71.i = getelementptr i32, ptr %252, i32 1
  %253 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx71.i, align 4
  %add72.i = add i32 %254, 1303
  %and73.i = and i32 %add72.i, 262143
  %255 = load ptr, ptr %ring7.i.i, align 4
  %inc78.i = add i32 %add256, 27
  %arrayidx79.i = getelementptr i32, ptr %255, i32 %inc66.i
  %256 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store volatile i32 %and73.i, ptr %arrayidx79.i, align 4
  %257 = add i32 %add37.i, -123864
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %257)
  %258 = icmp ult i32 %257, 10240
  %259 = add i32 %add37.i, -117720
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %259)
  %260 = icmp ult i32 %259, 512
  %or.cond.i = or i1 %258, %260
  %261 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ring7.i.i, align 4
  %inc90.i = add i32 %add256, 28
  %arrayidx91.i = getelementptr i32, ptr %262, i32 %inc78.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit251.i
  call void @__sanitizer_cov_trace_pc() #6
  %263 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store volatile i32 0, ptr %arrayidx91.i, align 4
  %shr92.i = lshr exact i32 %shl38.i, 2
  %or96.i = or i32 %shr92.i, 805306368
  br label %if.end.i

if.else.i:                                        ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit251.i
  call void @__sanitizer_cov_trace_pc() #6
  %264 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile i32 %shl38.i, ptr %arrayidx91.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 805306368, %if.else.i ], [ %or96.i, %if.then.i ]
  %265 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx105.i = getelementptr i32, ptr %266, i32 %inc90.i
  %267 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store volatile i32 %.sink.i, ptr %arrayidx105.i, align 4
  %ptr.addr.5.i = add i32 %add256, 29
  %268 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx108.i = getelementptr i32, ptr %268, i32 %ptr.addr.5.i
  %269 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store volatile i32 1, ptr %arrayidx108.i, align 4
  %ptr.addr.6340.i = add i32 %add256, 30
  %270 = load ptr, ptr %ring7.i.i, align 4
  %inc114.i = add i32 %add256, 31
  %arrayidx115.i = getelementptr i32, ptr %270, i32 %ptr.addr.6340.i
  %271 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store volatile i32 1610612736, ptr %arrayidx115.i, align 4
  %272 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.i = getelementptr i32, ptr %272, i32 %inc114.i
  %273 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store volatile i32 0, ptr %arrayidx118.i, align 4
  %ptr.addr.6.i = add i32 %add256, 32
  %274 = load ptr, ptr %ring7.i.i, align 4
  %inc114.1.i = add i32 %add256, 33
  %arrayidx115.1.i = getelementptr i32, ptr %274, i32 %ptr.addr.6.i
  %275 = ptrtoint ptr %arrayidx115.1.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store volatile i32 1610612736, ptr %arrayidx115.1.i, align 4
  %276 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.1.i = getelementptr i32, ptr %276, i32 %inc114.1.i
  %277 = ptrtoint ptr %arrayidx118.1.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile i32 0, ptr %arrayidx118.1.i, align 4
  %ptr.addr.6.1.i = add i32 %add256, 34
  %278 = load ptr, ptr %ring7.i.i, align 4
  %inc114.2.i = add i32 %add256, 35
  %arrayidx115.2.i = getelementptr i32, ptr %278, i32 %ptr.addr.6.1.i
  %279 = ptrtoint ptr %arrayidx115.2.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store volatile i32 1610612736, ptr %arrayidx115.2.i, align 4
  %280 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.2.i = getelementptr i32, ptr %280, i32 %inc114.2.i
  %281 = ptrtoint ptr %arrayidx118.2.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store volatile i32 0, ptr %arrayidx118.2.i, align 4
  %ptr.addr.6.2.i = add i32 %add256, 36
  %282 = load ptr, ptr %ring7.i.i, align 4
  %inc114.3.i = add i32 %add256, 37
  %arrayidx115.3.i = getelementptr i32, ptr %282, i32 %ptr.addr.6.2.i
  %283 = ptrtoint ptr %arrayidx115.3.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store volatile i32 1610612736, ptr %arrayidx115.3.i, align 4
  %284 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.3.i = getelementptr i32, ptr %284, i32 %inc114.3.i
  %285 = ptrtoint ptr %arrayidx118.3.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store volatile i32 0, ptr %arrayidx118.3.i, align 4
  %ptr.addr.6.3.i = add i32 %add256, 38
  %286 = load ptr, ptr %ring7.i.i, align 4
  %inc114.4.i = add i32 %add256, 39
  %arrayidx115.4.i = getelementptr i32, ptr %286, i32 %ptr.addr.6.3.i
  %287 = ptrtoint ptr %arrayidx115.4.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store volatile i32 1610612736, ptr %arrayidx115.4.i, align 4
  %288 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.4.i = getelementptr i32, ptr %288, i32 %inc114.4.i
  %289 = ptrtoint ptr %arrayidx118.4.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile i32 0, ptr %arrayidx118.4.i, align 4
  %ptr.addr.6.4.i = add i32 %add256, 40
  %290 = load ptr, ptr %ring7.i.i, align 4
  %inc114.5.i = add i32 %add256, 41
  %arrayidx115.5.i = getelementptr i32, ptr %290, i32 %ptr.addr.6.4.i
  %291 = ptrtoint ptr %arrayidx115.5.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store volatile i32 1610612736, ptr %arrayidx115.5.i, align 4
  %292 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.5.i = getelementptr i32, ptr %292, i32 %inc114.5.i
  %293 = ptrtoint ptr %arrayidx118.5.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store volatile i32 0, ptr %arrayidx118.5.i, align 4
  %ptr.addr.6.5.i = add i32 %add256, 42
  %294 = load ptr, ptr %ring7.i.i, align 4
  %inc114.6.i = add i32 %add256, 43
  %arrayidx115.6.i = getelementptr i32, ptr %294, i32 %ptr.addr.6.5.i
  %295 = ptrtoint ptr %arrayidx115.6.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store volatile i32 1610612736, ptr %arrayidx115.6.i, align 4
  %296 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.6.i = getelementptr i32, ptr %296, i32 %inc114.6.i
  %297 = ptrtoint ptr %arrayidx118.6.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile i32 0, ptr %arrayidx118.6.i, align 4
  %ptr.addr.6.6.i = add i32 %add256, 44
  %298 = load ptr, ptr %ring7.i.i, align 4
  %inc114.7.i = add i32 %add256, 45
  %arrayidx115.7.i = getelementptr i32, ptr %298, i32 %ptr.addr.6.6.i
  %299 = ptrtoint ptr %arrayidx115.7.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store volatile i32 1610612736, ptr %arrayidx115.7.i, align 4
  %300 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.7.i = getelementptr i32, ptr %300, i32 %inc114.7.i
  %301 = ptrtoint ptr %arrayidx118.7.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile i32 0, ptr %arrayidx118.7.i, align 4
  %ptr.addr.6.7.i = add i32 %add256, 46
  %302 = load ptr, ptr %ring7.i.i, align 4
  %inc114.8.i = add i32 %add256, 47
  %arrayidx115.8.i = getelementptr i32, ptr %302, i32 %ptr.addr.6.7.i
  %303 = ptrtoint ptr %arrayidx115.8.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store volatile i32 1610612736, ptr %arrayidx115.8.i, align 4
  %304 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.8.i = getelementptr i32, ptr %304, i32 %inc114.8.i
  %305 = ptrtoint ptr %arrayidx118.8.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store volatile i32 0, ptr %arrayidx118.8.i, align 4
  %ptr.addr.6.8.i = add i32 %add256, 48
  %306 = load ptr, ptr %ring7.i.i, align 4
  %inc114.9.i = add i32 %add256, 49
  %arrayidx115.9.i = getelementptr i32, ptr %306, i32 %ptr.addr.6.8.i
  %307 = ptrtoint ptr %arrayidx115.9.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store volatile i32 1610612736, ptr %arrayidx115.9.i, align 4
  %308 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.9.i = getelementptr i32, ptr %308, i32 %inc114.9.i
  %309 = ptrtoint ptr %arrayidx118.9.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile i32 0, ptr %arrayidx118.9.i, align 4
  %ptr.addr.6.9.i = add i32 %add256, 50
  %310 = load ptr, ptr %ring7.i.i, align 4
  %inc114.10.i = add i32 %add256, 51
  %arrayidx115.10.i = getelementptr i32, ptr %310, i32 %ptr.addr.6.9.i
  %311 = ptrtoint ptr %arrayidx115.10.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store volatile i32 1610612736, ptr %arrayidx115.10.i, align 4
  %312 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.10.i = getelementptr i32, ptr %312, i32 %inc114.10.i
  %313 = ptrtoint ptr %arrayidx118.10.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store volatile i32 0, ptr %arrayidx118.10.i, align 4
  %ptr.addr.6.10.i = add i32 %add256, 52
  %314 = load ptr, ptr %ring7.i.i, align 4
  %inc114.11.i = add i32 %add256, 53
  %arrayidx115.11.i = getelementptr i32, ptr %314, i32 %ptr.addr.6.10.i
  %315 = ptrtoint ptr %arrayidx115.11.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store volatile i32 1610612736, ptr %arrayidx115.11.i, align 4
  %316 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.11.i = getelementptr i32, ptr %316, i32 %inc114.11.i
  %317 = ptrtoint ptr %arrayidx118.11.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store volatile i32 0, ptr %arrayidx118.11.i, align 4
  %ptr.addr.6.11.i = add i32 %add256, 54
  %318 = load ptr, ptr %ring7.i.i, align 4
  %inc114.12.i = add i32 %add256, 55
  %arrayidx115.12.i = getelementptr i32, ptr %318, i32 %ptr.addr.6.11.i
  %319 = ptrtoint ptr %arrayidx115.12.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store volatile i32 1610612736, ptr %arrayidx115.12.i, align 4
  %320 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx118.12.i = getelementptr i32, ptr %320, i32 %inc114.12.i
  %321 = ptrtoint ptr %arrayidx118.12.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store volatile i32 0, ptr %arrayidx118.12.i, align 4
  %ptr.addr.6.12.i = add i32 %add256, 56
  %322 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx125.i = getelementptr i32, ptr %323, i32 1
  %324 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx125.i, align 4
  %add126.i = shl i32 %325, 2
  %shl127.i = add i32 %add126.i, 4444
  %326 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %inst, align 8
  %arrayidx.i252.i = getelementptr %struct.amdgpu_device, ptr %327, i32 0, i32 130, i32 16
  %328 = ptrtoint ptr %arrayidx.i252.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %arrayidx.i252.i, align 8
  %arrayidx4.i253.i = getelementptr i32, ptr %329, i32 1
  %330 = ptrtoint ptr %arrayidx4.i253.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx4.i253.i, align 4
  %add.i254.i = add i32 %331, 1303
  %and.i255.i = and i32 %add.i254.i, 262143
  %332 = load ptr, ptr %ring7.i.i, align 4
  %inc.i257.i = add i32 %add256, 57
  %arrayidx8.i258.i = getelementptr i32, ptr %332, i32 %ptr.addr.6.12.i
  %333 = ptrtoint ptr %arrayidx8.i258.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store volatile i32 %and.i255.i, ptr %arrayidx8.i258.i, align 4
  %334 = add i32 %add126.i, -124580
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %334)
  %335 = icmp ult i32 %334, 10240
  %336 = and i32 %shl127.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 122880, i32 %336)
  %337 = icmp eq i32 %336, 122880
  %or.cond.i259.i = or i1 %335, %337
  %338 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %ring7.i.i, align 4
  %inc14.i260.i = add i32 %add256, 58
  %arrayidx15.i261.i = getelementptr i32, ptr %339, i32 %inc.i257.i
  br i1 %or.cond.i259.i, label %if.then.i265.i, label %if.else.i268.i

if.then.i265.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %340 = ptrtoint ptr %arrayidx15.i261.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store volatile i32 0, ptr %arrayidx15.i261.i, align 4
  %shr.i262.i = lshr exact i32 %shl127.i, 2
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit271.i

if.else.i268.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %341 = ptrtoint ptr %arrayidx15.i261.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store volatile i32 %shl127.i, ptr %arrayidx15.i261.i, align 4
  br label %jpeg_v1_0_decode_ring_patch_wreg.exit271.i

jpeg_v1_0_decode_ring_patch_wreg.exit271.i:       ; preds = %if.else.i268.i, %if.then.i265.i
  %shr.i262.sink.i = phi i32 [ %shr.i262.i, %if.then.i265.i ], [ 0, %if.else.i268.i ]
  %342 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx22.i264.i = getelementptr i32, ptr %343, i32 %inc14.i260.i
  %344 = ptrtoint ptr %arrayidx22.i264.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store volatile i32 %shr.i262.sink.i, ptr %arrayidx22.i264.i, align 4
  %ptr.addr.7.i = add i32 %add256, 59
  %345 = load ptr, ptr %ring7.i.i, align 4
  %inc30.i269.i = add i32 %add256, 60
  %arrayidx31.i270.i = getelementptr i32, ptr %345, i32 %ptr.addr.7.i
  %346 = ptrtoint ptr %arrayidx31.i270.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store volatile i32 0, ptr %arrayidx31.i270.i, align 4
  %347 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %arrayidx.i, align 8
  %arrayidx131.i = getelementptr i32, ptr %348, i32 1
  %349 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx131.i, align 4
  %add132.i = shl i32 %350, 2
  %shl133.i = add i32 %add132.i, 5160
  %351 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %inst, align 8
  %arrayidx.i272.i = getelementptr %struct.amdgpu_device, ptr %352, i32 0, i32 130, i32 16
  %353 = ptrtoint ptr %arrayidx.i272.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx.i272.i, align 8
  %arrayidx4.i273.i = getelementptr i32, ptr %354, i32 1
  %355 = ptrtoint ptr %arrayidx4.i273.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx4.i273.i, align 4
  %add.i274.i = add i32 %356, 1303
  %and.i275.i = and i32 %add.i274.i, 262143
  %357 = load ptr, ptr %ring7.i.i, align 4
  %inc.i277.i = add i32 %add256, 61
  %arrayidx8.i278.i = getelementptr i32, ptr %357, i32 %inc30.i269.i
  %358 = ptrtoint ptr %arrayidx8.i278.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store volatile i32 %and.i275.i, ptr %arrayidx8.i278.i, align 4
  %359 = add i32 %add132.i, -123864
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %359)
  %360 = icmp ult i32 %359, 10240
  %361 = and i32 %shl133.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 122880, i32 %361)
  %362 = icmp eq i32 %361, 122880
  %or.cond.i279.i = or i1 %360, %362
  %363 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx15.i281.i = getelementptr i32, ptr %364, i32 %inc.i277.i
  br i1 %or.cond.i279.i, label %if.then.i285.i, label %if.else.i288.i

if.then.i285.i:                                   ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit271.i
  call void @__sanitizer_cov_trace_pc() #6
  %365 = ptrtoint ptr %arrayidx15.i281.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store volatile i32 0, ptr %arrayidx15.i281.i, align 4
  %shr.i282.i = lshr exact i32 %shl133.i, 2
  br label %jpeg_v1_0_decode_ring_set_patch_ring.exit

if.else.i288.i:                                   ; preds = %jpeg_v1_0_decode_ring_patch_wreg.exit271.i
  call void @__sanitizer_cov_trace_pc() #6
  %366 = ptrtoint ptr %arrayidx15.i281.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store volatile i32 %shl133.i, ptr %arrayidx15.i281.i, align 4
  br label %jpeg_v1_0_decode_ring_set_patch_ring.exit

jpeg_v1_0_decode_ring_set_patch_ring.exit:        ; preds = %if.else.i288.i, %if.then.i285.i
  %shr.i282.sink.i = phi i32 [ %shr.i282.i, %if.then.i285.i ], [ 0, %if.else.i288.i ]
  %inc14.i280.i = add i32 %add256, 62
  %367 = ptrtoint ptr %ring7.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx22.i284.i = getelementptr i32, ptr %368, i32 %inc14.i280.i
  %369 = ptrtoint ptr %arrayidx22.i284.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store volatile i32 %shr.i282.sink.i, ptr %arrayidx22.i284.i, align 4
  %ptr.addr.8.i = add i32 %add256, 63
  %370 = load ptr, ptr %ring7.i.i, align 4
  %arrayidx31.i290.i = getelementptr i32, ptr %370, i32 %ptr.addr.8.i
  %371 = ptrtoint ptr %arrayidx31.i290.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store volatile i32 18, ptr %arrayidx31.i290.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jpeg_v1_0_decode_ring_get_rptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx13 = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %11, 1111
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %15, 1111
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jpeg_v1_0_decode_ring_get_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_rreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx13 = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %11, 1289
  %call = tail call i32 %7(ptr noundef %1, i32 noundef %add, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 8
  %arrayidx17 = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %15, 1289
  %call19 = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add18, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call19, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_set_wptr(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %virt = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 132
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virt, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 106, i32 2, i32 15
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %arrayidx13 = getelementptr i32, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %11, 1289
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %12 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %13 to i32
  tail call void %7(ptr noundef %1, i32 noundef %add, i32 noundef %conv, i32 noundef 0, i32 noundef 16) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx16 = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 8
  %arrayidx18 = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %17, 1289
  %wptr20 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %18 = ptrtoint ptr %wptr20 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wptr20, align 8
  %conv22 = trunc i64 %19 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add19, i32 noundef %conv22, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vmid2 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %2 = ptrtoint ptr %vmid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmid2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %arrayidx4 = getelementptr i32, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %7, 1287
  %and = and i32 %add, 262143
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %8 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp slt i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %cond.end.amdgpu_ring_write.exit_crit_edge

cond.end.amdgpu_ring_write.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %cond.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %10 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %12 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %13, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %14 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_mask.i, align 8
  %16 = trunc i64 %13 to i32
  %idxprom.i = and i32 %15, %16
  %arrayidx.i = getelementptr i32, ptr %11, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %18 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ptr_mask.i, align 8
  %20 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %20, %19
  store i64 %and3.i, ptr %wptr.i, align 8
  %21 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %shl = shl i32 %cond, 4
  %or7 = or i32 %shl, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i142 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i142, label %if.then.i143, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit153_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit153_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit153

if.then.i143:                                     ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit153

amdgpu_ring_write.exit153:                        ; preds = %if.then.i143, %amdgpu_ring_write.exit.amdgpu_ring_write.exit153_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 4
  %25 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wptr.i, align 8
  %inc.i146 = add i64 %26, 1
  store i64 %inc.i146, ptr %wptr.i, align 8
  %27 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_mask.i, align 8
  %29 = trunc i64 %26 to i32
  %idxprom.i148 = and i32 %28, %29
  %arrayidx.i149 = getelementptr i32, ptr %24, i32 %idxprom.i148
  %30 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %or7, ptr %arrayidx.i149, align 4
  %31 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ptr_mask.i, align 8
  %33 = load i64, ptr %wptr.i, align 8
  %and3.i151 = and i64 %33, %32
  store i64 %and3.i151, ptr %wptr.i, align 8
  %34 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count_dw.i, align 8
  %dec.i152 = add i32 %35, -1
  store i32 %dec.i152, ptr %count_dw.i, align 8
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 8
  %arrayidx11 = getelementptr i32, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %39, 1117
  %and13 = and i32 %add12, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i152)
  %cmp.i155 = icmp slt i32 %dec.i152, 1
  br i1 %cmp.i155, label %if.then.i156, label %amdgpu_ring_write.exit153.amdgpu_ring_write.exit166_crit_edge

amdgpu_ring_write.exit153.amdgpu_ring_write.exit166_crit_edge: ; preds = %amdgpu_ring_write.exit153
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit166

if.then.i156:                                     ; preds = %amdgpu_ring_write.exit153
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit166

amdgpu_ring_write.exit166:                        ; preds = %if.then.i156, %amdgpu_ring_write.exit153.amdgpu_ring_write.exit166_crit_edge
  %40 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ring1.i, align 4
  %42 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %wptr.i, align 8
  %inc.i159 = add i64 %43, 1
  store i64 %inc.i159, ptr %wptr.i, align 8
  %44 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf_mask.i, align 8
  %46 = trunc i64 %43 to i32
  %idxprom.i161 = and i32 %45, %46
  %arrayidx.i162 = getelementptr i32, ptr %41, i32 %idxprom.i161
  %47 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %and13, ptr %arrayidx.i162, align 4
  %48 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ptr_mask.i, align 8
  %50 = load i64, ptr %wptr.i, align 8
  %and3.i164 = and i64 %50, %49
  store i64 %and3.i164, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count_dw.i, align 8
  %dec.i165 = add i32 %52, -1
  store i32 %dec.i165, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i165)
  %cmp.i168 = icmp slt i32 %dec.i165, 1
  br i1 %cmp.i168, label %if.then.i169, label %amdgpu_ring_write.exit166.amdgpu_ring_write.exit179_crit_edge

amdgpu_ring_write.exit166.amdgpu_ring_write.exit179_crit_edge: ; preds = %amdgpu_ring_write.exit166
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit179

if.then.i169:                                     ; preds = %amdgpu_ring_write.exit166
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit179

amdgpu_ring_write.exit179:                        ; preds = %if.then.i169, %amdgpu_ring_write.exit166.amdgpu_ring_write.exit179_crit_edge
  %53 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ring1.i, align 4
  %55 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %wptr.i, align 8
  %inc.i172 = add i64 %56, 1
  store i64 %inc.i172, ptr %wptr.i, align 8
  %57 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_mask.i, align 8
  %59 = trunc i64 %56 to i32
  %idxprom.i174 = and i32 %58, %59
  %arrayidx.i175 = getelementptr i32, ptr %54, i32 %idxprom.i174
  %60 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %or7, ptr %arrayidx.i175, align 4
  %61 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ptr_mask.i, align 8
  %63 = load i64, ptr %wptr.i, align 8
  %and3.i177 = and i64 %63, %62
  store i64 %and3.i177, ptr %wptr.i, align 8
  %64 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i, align 8
  %dec.i178 = add i32 %65, -1
  store i32 %dec.i178, ptr %count_dw.i, align 8
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 8
  %arrayidx22 = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %69, 1285
  %and24 = and i32 %add23, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i178)
  %cmp.i181 = icmp slt i32 %dec.i178, 1
  br i1 %cmp.i181, label %if.then.i182, label %amdgpu_ring_write.exit179.amdgpu_ring_write.exit192_crit_edge

amdgpu_ring_write.exit179.amdgpu_ring_write.exit192_crit_edge: ; preds = %amdgpu_ring_write.exit179
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit192

if.then.i182:                                     ; preds = %amdgpu_ring_write.exit179
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit192

amdgpu_ring_write.exit192:                        ; preds = %if.then.i182, %amdgpu_ring_write.exit179.amdgpu_ring_write.exit192_crit_edge
  %70 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ring1.i, align 4
  %72 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %wptr.i, align 8
  %inc.i185 = add i64 %73, 1
  store i64 %inc.i185, ptr %wptr.i, align 8
  %74 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %buf_mask.i, align 8
  %76 = trunc i64 %73 to i32
  %idxprom.i187 = and i32 %75, %76
  %arrayidx.i188 = getelementptr i32, ptr %71, i32 %idxprom.i187
  %77 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 %and24, ptr %arrayidx.i188, align 4
  %78 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ptr_mask.i, align 8
  %80 = load i64, ptr %wptr.i, align 8
  %and3.i190 = and i64 %80, %79
  store i64 %and3.i190, ptr %wptr.i, align 8
  %81 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count_dw.i, align 8
  %dec.i191 = add i32 %82, -1
  store i32 %dec.i191, ptr %count_dw.i, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %83 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %gpu_addr, align 8
  %conv = trunc i64 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i191)
  %cmp.i194 = icmp slt i32 %dec.i191, 1
  br i1 %cmp.i194, label %if.then.i195, label %amdgpu_ring_write.exit192.amdgpu_ring_write.exit205_crit_edge

amdgpu_ring_write.exit192.amdgpu_ring_write.exit205_crit_edge: ; preds = %amdgpu_ring_write.exit192
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit205

if.then.i195:                                     ; preds = %amdgpu_ring_write.exit192
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit205

amdgpu_ring_write.exit205:                        ; preds = %if.then.i195, %amdgpu_ring_write.exit192.amdgpu_ring_write.exit205_crit_edge
  %85 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ring1.i, align 4
  %87 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %wptr.i, align 8
  %inc.i198 = add i64 %88, 1
  store i64 %inc.i198, ptr %wptr.i, align 8
  %89 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %buf_mask.i, align 8
  %91 = trunc i64 %88 to i32
  %idxprom.i200 = and i32 %90, %91
  %arrayidx.i201 = getelementptr i32, ptr %86, i32 %idxprom.i200
  %92 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 %conv, ptr %arrayidx.i201, align 4
  %93 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %ptr_mask.i, align 8
  %95 = load i64, ptr %wptr.i, align 8
  %and3.i203 = and i64 %95, %94
  store i64 %and3.i203, ptr %wptr.i, align 8
  %96 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count_dw.i, align 8
  %dec.i204 = add i32 %97, -1
  store i32 %dec.i204, ptr %count_dw.i, align 8
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx, align 8
  %arrayidx32 = getelementptr i32, ptr %99, i32 1
  %100 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %101, 1286
  %and34 = and i32 %add33, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i204)
  %cmp.i207 = icmp slt i32 %dec.i204, 1
  br i1 %cmp.i207, label %if.then.i208, label %amdgpu_ring_write.exit205.amdgpu_ring_write.exit218_crit_edge

amdgpu_ring_write.exit205.amdgpu_ring_write.exit218_crit_edge: ; preds = %amdgpu_ring_write.exit205
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit218

if.then.i208:                                     ; preds = %amdgpu_ring_write.exit205
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit218

amdgpu_ring_write.exit218:                        ; preds = %if.then.i208, %amdgpu_ring_write.exit205.amdgpu_ring_write.exit218_crit_edge
  %102 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ring1.i, align 4
  %104 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %wptr.i, align 8
  %inc.i211 = add i64 %105, 1
  store i64 %inc.i211, ptr %wptr.i, align 8
  %106 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %buf_mask.i, align 8
  %108 = trunc i64 %105 to i32
  %idxprom.i213 = and i32 %107, %108
  %arrayidx.i214 = getelementptr i32, ptr %103, i32 %idxprom.i213
  %109 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 %and34, ptr %arrayidx.i214, align 4
  %110 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %ptr_mask.i, align 8
  %112 = load i64, ptr %wptr.i, align 8
  %and3.i216 = and i64 %112, %111
  store i64 %and3.i216, ptr %wptr.i, align 8
  %113 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %count_dw.i, align 8
  %dec.i217 = add i32 %114, -1
  store i32 %dec.i217, ptr %count_dw.i, align 8
  %115 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %116, 32
  %conv40 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i217)
  %cmp.i220 = icmp slt i32 %dec.i217, 1
  br i1 %cmp.i220, label %if.then.i221, label %amdgpu_ring_write.exit218.amdgpu_ring_write.exit231_crit_edge

amdgpu_ring_write.exit218.amdgpu_ring_write.exit231_crit_edge: ; preds = %amdgpu_ring_write.exit218
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit231

if.then.i221:                                     ; preds = %amdgpu_ring_write.exit218
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit231

amdgpu_ring_write.exit231:                        ; preds = %if.then.i221, %amdgpu_ring_write.exit218.amdgpu_ring_write.exit231_crit_edge
  %117 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ring1.i, align 4
  %119 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %wptr.i, align 8
  %inc.i224 = add i64 %120, 1
  store i64 %inc.i224, ptr %wptr.i, align 8
  %121 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %buf_mask.i, align 8
  %123 = trunc i64 %120 to i32
  %idxprom.i226 = and i32 %122, %123
  %arrayidx.i227 = getelementptr i32, ptr %118, i32 %idxprom.i226
  %124 = ptrtoint ptr %arrayidx.i227 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile i32 %conv40, ptr %arrayidx.i227, align 4
  %125 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %ptr_mask.i, align 8
  %127 = load i64, ptr %wptr.i, align 8
  %and3.i229 = and i64 %127, %126
  store i64 %and3.i229, ptr %wptr.i, align 8
  %128 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %count_dw.i, align 8
  %dec.i230 = add i32 %129, -1
  store i32 %dec.i230, ptr %count_dw.i, align 8
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx, align 8
  %arrayidx44 = getelementptr i32, ptr %131, i32 1
  %132 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %133, 1291
  %and46 = and i32 %add45, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i230)
  %cmp.i233 = icmp slt i32 %dec.i230, 1
  br i1 %cmp.i233, label %if.then.i234, label %amdgpu_ring_write.exit231.amdgpu_ring_write.exit244_crit_edge

amdgpu_ring_write.exit231.amdgpu_ring_write.exit244_crit_edge: ; preds = %amdgpu_ring_write.exit231
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit244

if.then.i234:                                     ; preds = %amdgpu_ring_write.exit231
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit244

amdgpu_ring_write.exit244:                        ; preds = %if.then.i234, %amdgpu_ring_write.exit231.amdgpu_ring_write.exit244_crit_edge
  %134 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ring1.i, align 4
  %136 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %wptr.i, align 8
  %inc.i237 = add i64 %137, 1
  store i64 %inc.i237, ptr %wptr.i, align 8
  %138 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %buf_mask.i, align 8
  %140 = trunc i64 %137 to i32
  %idxprom.i239 = and i32 %139, %140
  %arrayidx.i240 = getelementptr i32, ptr %135, i32 %idxprom.i239
  %141 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile i32 %and46, ptr %arrayidx.i240, align 4
  %142 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %ptr_mask.i, align 8
  %144 = load i64, ptr %wptr.i, align 8
  %and3.i242 = and i64 %144, %143
  store i64 %and3.i242, ptr %wptr.i, align 8
  %145 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %count_dw.i, align 8
  %dec.i243 = add i32 %146, -1
  store i32 %dec.i243, ptr %count_dw.i, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %147 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i243)
  %cmp.i246 = icmp slt i32 %dec.i243, 1
  br i1 %cmp.i246, label %if.then.i247, label %amdgpu_ring_write.exit244.amdgpu_ring_write.exit257_crit_edge

amdgpu_ring_write.exit244.amdgpu_ring_write.exit257_crit_edge: ; preds = %amdgpu_ring_write.exit244
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit257

if.then.i247:                                     ; preds = %amdgpu_ring_write.exit244
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit257

amdgpu_ring_write.exit257:                        ; preds = %if.then.i247, %amdgpu_ring_write.exit244.amdgpu_ring_write.exit257_crit_edge
  %149 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ring1.i, align 4
  %151 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %wptr.i, align 8
  %inc.i250 = add i64 %152, 1
  store i64 %inc.i250, ptr %wptr.i, align 8
  %153 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %buf_mask.i, align 8
  %155 = trunc i64 %152 to i32
  %idxprom.i252 = and i32 %154, %155
  %arrayidx.i253 = getelementptr i32, ptr %150, i32 %idxprom.i252
  %156 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 %148, ptr %arrayidx.i253, align 4
  %157 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %ptr_mask.i, align 8
  %159 = load i64, ptr %wptr.i, align 8
  %and3.i255 = and i64 %159, %158
  store i64 %and3.i255, ptr %wptr.i, align 8
  %160 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %count_dw.i, align 8
  %dec.i256 = add i32 %161, -1
  store i32 %dec.i256, ptr %count_dw.i, align 8
  %162 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx, align 8
  %arrayidx53 = getelementptr i32, ptr %163, i32 1
  %164 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx53, align 4
  %add54 = add i32 %165, 1296
  %and55 = and i32 %add54, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i256)
  %cmp.i259 = icmp slt i32 %dec.i256, 1
  br i1 %cmp.i259, label %if.then.i260, label %amdgpu_ring_write.exit257.amdgpu_ring_write.exit270_crit_edge

amdgpu_ring_write.exit257.amdgpu_ring_write.exit270_crit_edge: ; preds = %amdgpu_ring_write.exit257
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit270

if.then.i260:                                     ; preds = %amdgpu_ring_write.exit257
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit270

amdgpu_ring_write.exit270:                        ; preds = %if.then.i260, %amdgpu_ring_write.exit257.amdgpu_ring_write.exit270_crit_edge
  %166 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ring1.i, align 4
  %168 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %wptr.i, align 8
  %inc.i263 = add i64 %169, 1
  store i64 %inc.i263, ptr %wptr.i, align 8
  %170 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %buf_mask.i, align 8
  %172 = trunc i64 %169 to i32
  %idxprom.i265 = and i32 %171, %172
  %arrayidx.i266 = getelementptr i32, ptr %167, i32 %idxprom.i265
  %173 = ptrtoint ptr %arrayidx.i266 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile i32 %and55, ptr %arrayidx.i266, align 4
  %174 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %ptr_mask.i, align 8
  %176 = load i64, ptr %wptr.i, align 8
  %and3.i268 = and i64 %176, %175
  store i64 %and3.i268, ptr %wptr.i, align 8
  %177 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %count_dw.i, align 8
  %dec.i269 = add i32 %178, -1
  store i32 %dec.i269, ptr %count_dw.i, align 8
  %gpu_addr59 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 12
  %179 = ptrtoint ptr %gpu_addr59 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %gpu_addr59, align 8
  %conv61 = trunc i64 %180 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i269)
  %cmp.i272 = icmp slt i32 %dec.i269, 1
  br i1 %cmp.i272, label %if.then.i273, label %amdgpu_ring_write.exit270.amdgpu_ring_write.exit283_crit_edge

amdgpu_ring_write.exit270.amdgpu_ring_write.exit283_crit_edge: ; preds = %amdgpu_ring_write.exit270
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit283

if.then.i273:                                     ; preds = %amdgpu_ring_write.exit270
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit283

amdgpu_ring_write.exit283:                        ; preds = %if.then.i273, %amdgpu_ring_write.exit270.amdgpu_ring_write.exit283_crit_edge
  %181 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ring1.i, align 4
  %183 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %wptr.i, align 8
  %inc.i276 = add i64 %184, 1
  store i64 %inc.i276, ptr %wptr.i, align 8
  %185 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %buf_mask.i, align 8
  %187 = trunc i64 %184 to i32
  %idxprom.i278 = and i32 %186, %187
  %arrayidx.i279 = getelementptr i32, ptr %182, i32 %idxprom.i278
  %188 = ptrtoint ptr %arrayidx.i279 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile i32 %conv61, ptr %arrayidx.i279, align 4
  %189 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %ptr_mask.i, align 8
  %191 = load i64, ptr %wptr.i, align 8
  %and3.i281 = and i64 %191, %190
  store i64 %and3.i281, ptr %wptr.i, align 8
  %192 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %count_dw.i, align 8
  %dec.i282 = add i32 %193, -1
  store i32 %dec.i282, ptr %count_dw.i, align 8
  %194 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx, align 8
  %arrayidx65 = getelementptr i32, ptr %195, i32 1
  %196 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx65, align 4
  %add66 = add i32 %197, 1297
  %and67 = and i32 %add66, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i282)
  %cmp.i285 = icmp slt i32 %dec.i282, 1
  br i1 %cmp.i285, label %if.then.i286, label %amdgpu_ring_write.exit283.amdgpu_ring_write.exit296_crit_edge

amdgpu_ring_write.exit283.amdgpu_ring_write.exit296_crit_edge: ; preds = %amdgpu_ring_write.exit283
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit296

if.then.i286:                                     ; preds = %amdgpu_ring_write.exit283
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit296

amdgpu_ring_write.exit296:                        ; preds = %if.then.i286, %amdgpu_ring_write.exit283.amdgpu_ring_write.exit296_crit_edge
  %198 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ring1.i, align 4
  %200 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %wptr.i, align 8
  %inc.i289 = add i64 %201, 1
  store i64 %inc.i289, ptr %wptr.i, align 8
  %202 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %buf_mask.i, align 8
  %204 = trunc i64 %201 to i32
  %idxprom.i291 = and i32 %203, %204
  %arrayidx.i292 = getelementptr i32, ptr %199, i32 %idxprom.i291
  %205 = ptrtoint ptr %arrayidx.i292 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile i32 %and67, ptr %arrayidx.i292, align 4
  %206 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %ptr_mask.i, align 8
  %208 = load i64, ptr %wptr.i, align 8
  %and3.i294 = and i64 %208, %207
  store i64 %and3.i294, ptr %wptr.i, align 8
  %209 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %count_dw.i, align 8
  %dec.i295 = add i32 %210, -1
  store i32 %dec.i295, ptr %count_dw.i, align 8
  %211 = ptrtoint ptr %gpu_addr59 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %gpu_addr59, align 8
  %shr72 = lshr i64 %212, 32
  %conv74 = trunc i64 %shr72 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i295)
  %cmp.i298 = icmp slt i32 %dec.i295, 1
  br i1 %cmp.i298, label %if.then.i299, label %amdgpu_ring_write.exit296.amdgpu_ring_write.exit309_crit_edge

amdgpu_ring_write.exit296.amdgpu_ring_write.exit309_crit_edge: ; preds = %amdgpu_ring_write.exit296
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit309

if.then.i299:                                     ; preds = %amdgpu_ring_write.exit296
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit309

amdgpu_ring_write.exit309:                        ; preds = %if.then.i299, %amdgpu_ring_write.exit296.amdgpu_ring_write.exit309_crit_edge
  %213 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ring1.i, align 4
  %215 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %wptr.i, align 8
  %inc.i302 = add i64 %216, 1
  store i64 %inc.i302, ptr %wptr.i, align 8
  %217 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %buf_mask.i, align 8
  %219 = trunc i64 %216 to i32
  %idxprom.i304 = and i32 %218, %219
  %arrayidx.i305 = getelementptr i32, ptr %214, i32 %idxprom.i304
  %220 = ptrtoint ptr %arrayidx.i305 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile i32 %conv74, ptr %arrayidx.i305, align 4
  %221 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %ptr_mask.i, align 8
  %223 = load i64, ptr %wptr.i, align 8
  %and3.i307 = and i64 %223, %222
  store i64 %and3.i307, ptr %wptr.i, align 8
  %224 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %count_dw.i, align 8
  %dec.i308 = add i32 %225, -1
  store i32 %dec.i308, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i308)
  %cmp.i311 = icmp slt i32 %dec.i308, 1
  br i1 %cmp.i311, label %if.then.i312, label %amdgpu_ring_write.exit309.amdgpu_ring_write.exit322_crit_edge

amdgpu_ring_write.exit309.amdgpu_ring_write.exit322_crit_edge: ; preds = %amdgpu_ring_write.exit309
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit322

if.then.i312:                                     ; preds = %amdgpu_ring_write.exit309
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit322

amdgpu_ring_write.exit322:                        ; preds = %if.then.i312, %amdgpu_ring_write.exit309.amdgpu_ring_write.exit322_crit_edge
  %226 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ring1.i, align 4
  %228 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %wptr.i, align 8
  %inc.i315 = add i64 %229, 1
  store i64 %inc.i315, ptr %wptr.i, align 8
  %230 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %buf_mask.i, align 8
  %232 = trunc i64 %229 to i32
  %idxprom.i317 = and i32 %231, %232
  %arrayidx.i318 = getelementptr i32, ptr %227, i32 %idxprom.i317
  %233 = ptrtoint ptr %arrayidx.i318 to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile i32 536870912, ptr %arrayidx.i318, align 4
  %234 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %ptr_mask.i, align 8
  %236 = load i64, ptr %wptr.i, align 8
  %and3.i320 = and i64 %236, %235
  store i64 %and3.i320, ptr %wptr.i, align 8
  %237 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %count_dw.i, align 8
  %dec.i321 = add i32 %238, -1
  store i32 %dec.i321, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i321)
  %cmp.i324 = icmp slt i32 %dec.i321, 1
  br i1 %cmp.i324, label %if.then.i325, label %amdgpu_ring_write.exit322.amdgpu_ring_write.exit335_crit_edge

amdgpu_ring_write.exit322.amdgpu_ring_write.exit335_crit_edge: ; preds = %amdgpu_ring_write.exit322
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit335

if.then.i325:                                     ; preds = %amdgpu_ring_write.exit322
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit335

amdgpu_ring_write.exit335:                        ; preds = %if.then.i325, %amdgpu_ring_write.exit322.amdgpu_ring_write.exit335_crit_edge
  %239 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ring1.i, align 4
  %241 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %wptr.i, align 8
  %inc.i328 = add i64 %242, 1
  store i64 %inc.i328, ptr %wptr.i, align 8
  %243 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %buf_mask.i, align 8
  %245 = trunc i64 %242 to i32
  %idxprom.i330 = and i32 %244, %245
  %arrayidx.i331 = getelementptr i32, ptr %240, i32 %idxprom.i330
  %246 = ptrtoint ptr %arrayidx.i331 to i32
  call void @__asan_store4_noabort(i32 %246)
  store volatile i32 0, ptr %arrayidx.i331, align 4
  %247 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %ptr_mask.i, align 8
  %249 = load i64, ptr %wptr.i, align 8
  %and3.i333 = and i64 %249, %248
  store i64 %and3.i333, ptr %wptr.i, align 8
  %250 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %count_dw.i, align 8
  %dec.i334 = add i32 %251, -1
  store i32 %dec.i334, ptr %count_dw.i, align 8
  %252 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx, align 8
  %arrayidx78 = getelementptr i32, ptr %253, i32 1
  %254 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx78, align 4
  %add79 = add i32 %255, 1299
  %and80 = and i32 %add79, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i334)
  %cmp.i337 = icmp slt i32 %dec.i334, 1
  br i1 %cmp.i337, label %if.then.i338, label %amdgpu_ring_write.exit335.amdgpu_ring_write.exit348_crit_edge

amdgpu_ring_write.exit335.amdgpu_ring_write.exit348_crit_edge: ; preds = %amdgpu_ring_write.exit335
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit348

if.then.i338:                                     ; preds = %amdgpu_ring_write.exit335
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit348

amdgpu_ring_write.exit348:                        ; preds = %if.then.i338, %amdgpu_ring_write.exit335.amdgpu_ring_write.exit348_crit_edge
  %256 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ring1.i, align 4
  %258 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %wptr.i, align 8
  %inc.i341 = add i64 %259, 1
  store i64 %inc.i341, ptr %wptr.i, align 8
  %260 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %buf_mask.i, align 8
  %262 = trunc i64 %259 to i32
  %idxprom.i343 = and i32 %261, %262
  %arrayidx.i344 = getelementptr i32, ptr %257, i32 %idxprom.i343
  %263 = ptrtoint ptr %arrayidx.i344 to i32
  call void @__asan_store4_noabort(i32 %263)
  store volatile i32 %and80, ptr %arrayidx.i344, align 4
  %264 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %ptr_mask.i, align 8
  %266 = load i64, ptr %wptr.i, align 8
  %and3.i346 = and i64 %266, %265
  store i64 %and3.i346, ptr %wptr.i, align 8
  %267 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %count_dw.i, align 8
  %dec.i347 = add i32 %268, -1
  store i32 %dec.i347, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i347)
  %cmp.i350 = icmp slt i32 %dec.i347, 1
  br i1 %cmp.i350, label %if.then.i351, label %amdgpu_ring_write.exit348.amdgpu_ring_write.exit361_crit_edge

amdgpu_ring_write.exit348.amdgpu_ring_write.exit361_crit_edge: ; preds = %amdgpu_ring_write.exit348
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit361

if.then.i351:                                     ; preds = %amdgpu_ring_write.exit348
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit361

amdgpu_ring_write.exit361:                        ; preds = %if.then.i351, %amdgpu_ring_write.exit348.amdgpu_ring_write.exit361_crit_edge
  %269 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ring1.i, align 4
  %271 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %wptr.i, align 8
  %inc.i354 = add i64 %272, 1
  store i64 %inc.i354, ptr %wptr.i, align 8
  %273 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %buf_mask.i, align 8
  %275 = trunc i64 %272 to i32
  %idxprom.i356 = and i32 %274, %275
  %arrayidx.i357 = getelementptr i32, ptr %270, i32 %idxprom.i356
  %276 = ptrtoint ptr %arrayidx.i357 to i32
  call void @__asan_store4_noabort(i32 %276)
  store volatile i32 20972032, ptr %arrayidx.i357, align 4
  %277 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %ptr_mask.i, align 8
  %279 = load i64, ptr %wptr.i, align 8
  %and3.i359 = and i64 %279, %278
  store i64 %and3.i359, ptr %wptr.i, align 8
  %280 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %count_dw.i, align 8
  %dec.i360 = add i32 %281, -1
  store i32 %dec.i360, ptr %count_dw.i, align 8
  %282 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx, align 8
  %arrayidx87 = getelementptr i32, ptr %283, i32 1
  %284 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx87, align 4
  %add88 = add i32 %285, 1298
  %and89 = and i32 %add88, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i360)
  %cmp.i363 = icmp slt i32 %dec.i360, 1
  br i1 %cmp.i363, label %if.then.i364, label %amdgpu_ring_write.exit361.amdgpu_ring_write.exit374_crit_edge

amdgpu_ring_write.exit361.amdgpu_ring_write.exit374_crit_edge: ; preds = %amdgpu_ring_write.exit361
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit374

if.then.i364:                                     ; preds = %amdgpu_ring_write.exit361
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit374

amdgpu_ring_write.exit374:                        ; preds = %if.then.i364, %amdgpu_ring_write.exit361.amdgpu_ring_write.exit374_crit_edge
  %286 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ring1.i, align 4
  %288 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %288)
  %289 = load i64, ptr %wptr.i, align 8
  %inc.i367 = add i64 %289, 1
  store i64 %inc.i367, ptr %wptr.i, align 8
  %290 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %buf_mask.i, align 8
  %292 = trunc i64 %289 to i32
  %idxprom.i369 = and i32 %291, %292
  %arrayidx.i370 = getelementptr i32, ptr %287, i32 %idxprom.i369
  %293 = ptrtoint ptr %arrayidx.i370 to i32
  call void @__asan_store4_noabort(i32 %293)
  store volatile i32 %and89, ptr %arrayidx.i370, align 4
  %294 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %ptr_mask.i, align 8
  %296 = load i64, ptr %wptr.i, align 8
  %and3.i372 = and i64 %296, %295
  store i64 %and3.i372, ptr %wptr.i, align 8
  %297 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %count_dw.i, align 8
  %dec.i373 = add i32 %298, -1
  store i32 %dec.i373, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i373)
  %cmp.i376 = icmp slt i32 %dec.i373, 1
  br i1 %cmp.i376, label %if.then.i377, label %amdgpu_ring_write.exit374.amdgpu_ring_write.exit387_crit_edge

amdgpu_ring_write.exit374.amdgpu_ring_write.exit387_crit_edge: ; preds = %amdgpu_ring_write.exit374
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit387

if.then.i377:                                     ; preds = %amdgpu_ring_write.exit374
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit387

amdgpu_ring_write.exit387:                        ; preds = %if.then.i377, %amdgpu_ring_write.exit374.amdgpu_ring_write.exit387_crit_edge
  %299 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %ring1.i, align 4
  %301 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %wptr.i, align 8
  %inc.i380 = add i64 %302, 1
  store i64 %inc.i380, ptr %wptr.i, align 8
  %303 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %buf_mask.i, align 8
  %305 = trunc i64 %302 to i32
  %idxprom.i382 = and i32 %304, %305
  %arrayidx.i383 = getelementptr i32, ptr %300, i32 %idxprom.i382
  %306 = ptrtoint ptr %arrayidx.i383 to i32
  call void @__asan_store4_noabort(i32 %306)
  store volatile i32 2, ptr %arrayidx.i383, align 4
  %307 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %ptr_mask.i, align 8
  %309 = load i64, ptr %wptr.i, align 8
  %and3.i385 = and i64 %309, %308
  store i64 %and3.i385, ptr %wptr.i, align 8
  %310 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %count_dw.i, align 8
  %dec.i386 = add i32 %311, -1
  store i32 %dec.i386, ptr %count_dw.i, align 8
  %312 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %arrayidx, align 8
  %arrayidx96 = getelementptr i32, ptr %313, i32 1
  %314 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx96, align 4
  %add97 = add i32 %315, 1306
  %and98 = and i32 %add97, 262143
  %or101 = or i32 %and98, 855638016
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i386)
  %cmp.i389 = icmp slt i32 %dec.i386, 1
  br i1 %cmp.i389, label %if.then.i390, label %amdgpu_ring_write.exit387.amdgpu_ring_write.exit400_crit_edge

amdgpu_ring_write.exit387.amdgpu_ring_write.exit400_crit_edge: ; preds = %amdgpu_ring_write.exit387
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit400

if.then.i390:                                     ; preds = %amdgpu_ring_write.exit387
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit400

amdgpu_ring_write.exit400:                        ; preds = %if.then.i390, %amdgpu_ring_write.exit387.amdgpu_ring_write.exit400_crit_edge
  %316 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ring1.i, align 4
  %318 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %318)
  %319 = load i64, ptr %wptr.i, align 8
  %inc.i393 = add i64 %319, 1
  store i64 %inc.i393, ptr %wptr.i, align 8
  %320 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %buf_mask.i, align 8
  %322 = trunc i64 %319 to i32
  %idxprom.i395 = and i32 %321, %322
  %arrayidx.i396 = getelementptr i32, ptr %317, i32 %idxprom.i395
  %323 = ptrtoint ptr %arrayidx.i396 to i32
  call void @__asan_store4_noabort(i32 %323)
  store volatile i32 %or101, ptr %arrayidx.i396, align 4
  %324 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %ptr_mask.i, align 8
  %326 = load i64, ptr %wptr.i, align 8
  %and3.i398 = and i64 %326, %325
  store i64 %and3.i398, ptr %wptr.i, align 8
  %327 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %count_dw.i, align 8
  %dec.i399 = add i32 %328, -1
  store i32 %dec.i399, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i399)
  %cmp.i402 = icmp slt i32 %dec.i399, 1
  br i1 %cmp.i402, label %if.then.i403, label %amdgpu_ring_write.exit400.amdgpu_ring_write.exit413_crit_edge

amdgpu_ring_write.exit400.amdgpu_ring_write.exit413_crit_edge: ; preds = %amdgpu_ring_write.exit400
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit413

if.then.i403:                                     ; preds = %amdgpu_ring_write.exit400
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit413

amdgpu_ring_write.exit413:                        ; preds = %if.then.i403, %amdgpu_ring_write.exit400.amdgpu_ring_write.exit413_crit_edge
  %329 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ring1.i, align 4
  %331 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %331)
  %332 = load i64, ptr %wptr.i, align 8
  %inc.i406 = add i64 %332, 1
  store i64 %inc.i406, ptr %wptr.i, align 8
  %333 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %buf_mask.i, align 8
  %335 = trunc i64 %332 to i32
  %idxprom.i408 = and i32 %334, %335
  %arrayidx.i409 = getelementptr i32, ptr %330, i32 %idxprom.i408
  %336 = ptrtoint ptr %arrayidx.i409 to i32
  call void @__asan_store4_noabort(i32 %336)
  store volatile i32 2, ptr %arrayidx.i409, align 4
  %337 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %ptr_mask.i, align 8
  %339 = load i64, ptr %wptr.i, align 8
  %and3.i411 = and i64 %339, %338
  store i64 %and3.i411, ptr %wptr.i, align 8
  %340 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %count_dw.i, align 8
  %dec.i412 = add i32 %341, -1
  store i32 %dec.i412, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !31

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 224, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %arrayidx22 = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx22, align 4
  %add = add i32 %5, 557
  %and23 = and i32 %add, 262143
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.amdgpu_ring_write.exit_crit_edge

if.end.amdgpu_ring_write.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask.i, align 8
  %14 = trunc i64 %11 to i32
  %idxprom.i = and i32 %13, %14
  %arrayidx.i = getelementptr i32, ptr %9, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %and23, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptr_mask.i, align 8
  %18 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %18, %17
  store i64 %and3.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i172 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i172, label %if.then.i173, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit183_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit183_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit183

if.then.i173:                                     ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit183

amdgpu_ring_write.exit183:                        ; preds = %if.then.i173, %amdgpu_ring_write.exit.amdgpu_ring_write.exit183_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr.i, align 8
  %inc.i176 = add i64 %24, 1
  store i64 %inc.i176, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i178 = and i32 %26, %27
  %arrayidx.i179 = getelementptr i32, ptr %22, i32 %idxprom.i178
  %28 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %conv, ptr %arrayidx.i179, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr.i, align 8
  %and3.i181 = and i64 %31, %30
  store i64 %and3.i181, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i182 = add i32 %33, -1
  store i32 %dec.i182, ptr %count_dw.i, align 8
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 8
  %arrayidx29 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx29, align 4
  %add30 = add i32 %37, 558
  %and31 = and i32 %add30, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i182)
  %cmp.i185 = icmp slt i32 %dec.i182, 1
  br i1 %cmp.i185, label %if.then.i186, label %amdgpu_ring_write.exit183.amdgpu_ring_write.exit196_crit_edge

amdgpu_ring_write.exit183.amdgpu_ring_write.exit196_crit_edge: ; preds = %amdgpu_ring_write.exit183
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit196

if.then.i186:                                     ; preds = %amdgpu_ring_write.exit183
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit196

amdgpu_ring_write.exit196:                        ; preds = %if.then.i186, %amdgpu_ring_write.exit183.amdgpu_ring_write.exit196_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 4
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wptr.i, align 8
  %inc.i189 = add i64 %41, 1
  store i64 %inc.i189, ptr %wptr.i, align 8
  %42 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_mask.i, align 8
  %44 = trunc i64 %41 to i32
  %idxprom.i191 = and i32 %43, %44
  %arrayidx.i192 = getelementptr i32, ptr %39, i32 %idxprom.i191
  %45 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %and31, ptr %arrayidx.i192, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ptr_mask.i, align 8
  %48 = load i64, ptr %wptr.i, align 8
  %and3.i194 = and i64 %48, %47
  store i64 %and3.i194, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 8
  %dec.i195 = add i32 %50, -1
  store i32 %dec.i195, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i195)
  %cmp.i198 = icmp slt i32 %dec.i195, 1
  br i1 %cmp.i198, label %if.then.i199, label %amdgpu_ring_write.exit196.amdgpu_ring_write.exit209_crit_edge

amdgpu_ring_write.exit196.amdgpu_ring_write.exit209_crit_edge: ; preds = %amdgpu_ring_write.exit196
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit209

if.then.i199:                                     ; preds = %amdgpu_ring_write.exit196
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit209

amdgpu_ring_write.exit209:                        ; preds = %if.then.i199, %amdgpu_ring_write.exit196.amdgpu_ring_write.exit209_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 4
  %53 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wptr.i, align 8
  %inc.i202 = add i64 %54, 1
  store i64 %inc.i202, ptr %wptr.i, align 8
  %55 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_mask.i, align 8
  %57 = trunc i64 %54 to i32
  %idxprom.i204 = and i32 %56, %57
  %arrayidx.i205 = getelementptr i32, ptr %52, i32 %idxprom.i204
  %58 = ptrtoint ptr %arrayidx.i205 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %conv, ptr %arrayidx.i205, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ptr_mask.i, align 8
  %61 = load i64, ptr %wptr.i, align 8
  %and3.i207 = and i64 %61, %60
  store i64 %and3.i207, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 8
  %dec.i208 = add i32 %63, -1
  store i32 %dec.i208, ptr %count_dw.i, align 8
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 8
  %arrayidx39 = getelementptr i32, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx39, align 4
  %add40 = add i32 %67, 1294
  %and41 = and i32 %add40, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i208)
  %cmp.i211 = icmp slt i32 %dec.i208, 1
  br i1 %cmp.i211, label %if.then.i212, label %amdgpu_ring_write.exit209.amdgpu_ring_write.exit222_crit_edge

amdgpu_ring_write.exit209.amdgpu_ring_write.exit222_crit_edge: ; preds = %amdgpu_ring_write.exit209
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit222

if.then.i212:                                     ; preds = %amdgpu_ring_write.exit209
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit222

amdgpu_ring_write.exit222:                        ; preds = %if.then.i212, %amdgpu_ring_write.exit209.amdgpu_ring_write.exit222_crit_edge
  %68 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring1.i, align 4
  %70 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %wptr.i, align 8
  %inc.i215 = add i64 %71, 1
  store i64 %inc.i215, ptr %wptr.i, align 8
  %72 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf_mask.i, align 8
  %74 = trunc i64 %71 to i32
  %idxprom.i217 = and i32 %73, %74
  %arrayidx.i218 = getelementptr i32, ptr %69, i32 %idxprom.i217
  %75 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %and41, ptr %arrayidx.i218, align 4
  %76 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ptr_mask.i, align 8
  %78 = load i64, ptr %wptr.i, align 8
  %and3.i220 = and i64 %78, %77
  store i64 %and3.i220, ptr %wptr.i, align 8
  %79 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count_dw.i, align 8
  %dec.i221 = add i32 %80, -1
  store i32 %dec.i221, ptr %count_dw.i, align 8
  %conv46 = trunc i64 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i221)
  %cmp.i224 = icmp slt i32 %dec.i221, 1
  br i1 %cmp.i224, label %if.then.i225, label %amdgpu_ring_write.exit222.amdgpu_ring_write.exit235_crit_edge

amdgpu_ring_write.exit222.amdgpu_ring_write.exit235_crit_edge: ; preds = %amdgpu_ring_write.exit222
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit235

if.then.i225:                                     ; preds = %amdgpu_ring_write.exit222
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit235

amdgpu_ring_write.exit235:                        ; preds = %if.then.i225, %amdgpu_ring_write.exit222.amdgpu_ring_write.exit235_crit_edge
  %81 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i, align 4
  %83 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %wptr.i, align 8
  %inc.i228 = add i64 %84, 1
  store i64 %inc.i228, ptr %wptr.i, align 8
  %85 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_mask.i, align 8
  %87 = trunc i64 %84 to i32
  %idxprom.i230 = and i32 %86, %87
  %arrayidx.i231 = getelementptr i32, ptr %82, i32 %idxprom.i230
  %88 = ptrtoint ptr %arrayidx.i231 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 %conv46, ptr %arrayidx.i231, align 4
  %89 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ptr_mask.i, align 8
  %91 = load i64, ptr %wptr.i, align 8
  %and3.i233 = and i64 %91, %90
  store i64 %and3.i233, ptr %wptr.i, align 8
  %92 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count_dw.i, align 8
  %dec.i234 = add i32 %93, -1
  store i32 %dec.i234, ptr %count_dw.i, align 8
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx, align 8
  %arrayidx50 = getelementptr i32, ptr %95, i32 1
  %96 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %97, 1295
  %and52 = and i32 %add51, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i234)
  %cmp.i237 = icmp slt i32 %dec.i234, 1
  br i1 %cmp.i237, label %if.then.i238, label %amdgpu_ring_write.exit235.amdgpu_ring_write.exit248_crit_edge

amdgpu_ring_write.exit235.amdgpu_ring_write.exit248_crit_edge: ; preds = %amdgpu_ring_write.exit235
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit248

if.then.i238:                                     ; preds = %amdgpu_ring_write.exit235
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit248

amdgpu_ring_write.exit248:                        ; preds = %if.then.i238, %amdgpu_ring_write.exit235.amdgpu_ring_write.exit248_crit_edge
  %98 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ring1.i, align 4
  %100 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %wptr.i, align 8
  %inc.i241 = add i64 %101, 1
  store i64 %inc.i241, ptr %wptr.i, align 8
  %102 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %buf_mask.i, align 8
  %104 = trunc i64 %101 to i32
  %idxprom.i243 = and i32 %103, %104
  %arrayidx.i244 = getelementptr i32, ptr %99, i32 %idxprom.i243
  %105 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 %and52, ptr %arrayidx.i244, align 4
  %106 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %ptr_mask.i, align 8
  %108 = load i64, ptr %wptr.i, align 8
  %and3.i246 = and i64 %108, %107
  store i64 %and3.i246, ptr %wptr.i, align 8
  %109 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %count_dw.i, align 8
  %dec.i247 = add i32 %110, -1
  store i32 %dec.i247, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv57 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i247)
  %cmp.i250 = icmp slt i32 %dec.i247, 1
  br i1 %cmp.i250, label %if.then.i251, label %amdgpu_ring_write.exit248.amdgpu_ring_write.exit261_crit_edge

amdgpu_ring_write.exit248.amdgpu_ring_write.exit261_crit_edge: ; preds = %amdgpu_ring_write.exit248
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit261

if.then.i251:                                     ; preds = %amdgpu_ring_write.exit248
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit261

amdgpu_ring_write.exit261:                        ; preds = %if.then.i251, %amdgpu_ring_write.exit248.amdgpu_ring_write.exit261_crit_edge
  %111 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ring1.i, align 4
  %113 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %wptr.i, align 8
  %inc.i254 = add i64 %114, 1
  store i64 %inc.i254, ptr %wptr.i, align 8
  %115 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %buf_mask.i, align 8
  %117 = trunc i64 %114 to i32
  %idxprom.i256 = and i32 %116, %117
  %arrayidx.i257 = getelementptr i32, ptr %112, i32 %idxprom.i256
  %118 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 %conv57, ptr %arrayidx.i257, align 4
  %119 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %ptr_mask.i, align 8
  %121 = load i64, ptr %wptr.i, align 8
  %and3.i259 = and i64 %121, %120
  store i64 %and3.i259, ptr %wptr.i, align 8
  %122 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %count_dw.i, align 8
  %dec.i260 = add i32 %123, -1
  store i32 %dec.i260, ptr %count_dw.i, align 8
  %124 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx, align 8
  %arrayidx61 = getelementptr i32, ptr %125, i32 1
  %126 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx61, align 4
  %add62 = add i32 %127, 556
  %and63 = and i32 %add62, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i260)
  %cmp.i263 = icmp slt i32 %dec.i260, 1
  br i1 %cmp.i263, label %if.then.i264, label %amdgpu_ring_write.exit261.amdgpu_ring_write.exit274_crit_edge

amdgpu_ring_write.exit261.amdgpu_ring_write.exit274_crit_edge: ; preds = %amdgpu_ring_write.exit261
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit274

if.then.i264:                                     ; preds = %amdgpu_ring_write.exit261
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit274

amdgpu_ring_write.exit274:                        ; preds = %if.then.i264, %amdgpu_ring_write.exit261.amdgpu_ring_write.exit274_crit_edge
  %128 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ring1.i, align 4
  %130 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %wptr.i, align 8
  %inc.i267 = add i64 %131, 1
  store i64 %inc.i267, ptr %wptr.i, align 8
  %132 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %buf_mask.i, align 8
  %134 = trunc i64 %131 to i32
  %idxprom.i269 = and i32 %133, %134
  %arrayidx.i270 = getelementptr i32, ptr %129, i32 %idxprom.i269
  %135 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 %and63, ptr %arrayidx.i270, align 4
  %136 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %ptr_mask.i, align 8
  %138 = load i64, ptr %wptr.i, align 8
  %and3.i272 = and i64 %138, %137
  store i64 %and3.i272, ptr %wptr.i, align 8
  %139 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %count_dw.i, align 8
  %dec.i273 = add i32 %140, -1
  store i32 %dec.i273, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i273)
  %cmp.i276 = icmp slt i32 %dec.i273, 1
  br i1 %cmp.i276, label %if.then.i277, label %amdgpu_ring_write.exit274.amdgpu_ring_write.exit287_crit_edge

amdgpu_ring_write.exit274.amdgpu_ring_write.exit287_crit_edge: ; preds = %amdgpu_ring_write.exit274
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit287

if.then.i277:                                     ; preds = %amdgpu_ring_write.exit274
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit287

amdgpu_ring_write.exit287:                        ; preds = %if.then.i277, %amdgpu_ring_write.exit274.amdgpu_ring_write.exit287_crit_edge
  %141 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ring1.i, align 4
  %143 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %wptr.i, align 8
  %inc.i280 = add i64 %144, 1
  store i64 %inc.i280, ptr %wptr.i, align 8
  %145 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %buf_mask.i, align 8
  %147 = trunc i64 %144 to i32
  %idxprom.i282 = and i32 %146, %147
  %arrayidx.i283 = getelementptr i32, ptr %142, i32 %idxprom.i282
  %148 = ptrtoint ptr %arrayidx.i283 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 8, ptr %arrayidx.i283, align 4
  %149 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %ptr_mask.i, align 8
  %151 = load i64, ptr %wptr.i, align 8
  %and3.i285 = and i64 %151, %150
  store i64 %and3.i285, ptr %wptr.i, align 8
  %152 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %count_dw.i, align 8
  %dec.i286 = add i32 %153, -1
  store i32 %dec.i286, ptr %count_dw.i, align 8
  %154 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx, align 8
  %arrayidx70 = getelementptr i32, ptr %155, i32 1
  %156 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %157, 556
  %and72 = and i32 %add71, 262143
  %or75 = or i32 %and72, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i286)
  %cmp.i289 = icmp slt i32 %dec.i286, 1
  br i1 %cmp.i289, label %if.then.i290, label %amdgpu_ring_write.exit287.amdgpu_ring_write.exit300_crit_edge

amdgpu_ring_write.exit287.amdgpu_ring_write.exit300_crit_edge: ; preds = %amdgpu_ring_write.exit287
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit300

if.then.i290:                                     ; preds = %amdgpu_ring_write.exit287
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit300

amdgpu_ring_write.exit300:                        ; preds = %if.then.i290, %amdgpu_ring_write.exit287.amdgpu_ring_write.exit300_crit_edge
  %158 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ring1.i, align 4
  %160 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %wptr.i, align 8
  %inc.i293 = add i64 %161, 1
  store i64 %inc.i293, ptr %wptr.i, align 8
  %162 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %buf_mask.i, align 8
  %164 = trunc i64 %161 to i32
  %idxprom.i295 = and i32 %163, %164
  %arrayidx.i296 = getelementptr i32, ptr %159, i32 %idxprom.i295
  %165 = ptrtoint ptr %arrayidx.i296 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile i32 %or75, ptr %arrayidx.i296, align 4
  %166 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %ptr_mask.i, align 8
  %168 = load i64, ptr %wptr.i, align 8
  %and3.i298 = and i64 %168, %167
  store i64 %and3.i298, ptr %wptr.i, align 8
  %169 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %count_dw.i, align 8
  %dec.i299 = add i32 %170, -1
  store i32 %dec.i299, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i299)
  %cmp.i302 = icmp slt i32 %dec.i299, 1
  br i1 %cmp.i302, label %if.then.i303, label %amdgpu_ring_write.exit300.amdgpu_ring_write.exit313_crit_edge

amdgpu_ring_write.exit300.amdgpu_ring_write.exit313_crit_edge: ; preds = %amdgpu_ring_write.exit300
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit313

if.then.i303:                                     ; preds = %amdgpu_ring_write.exit300
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit313

amdgpu_ring_write.exit313:                        ; preds = %if.then.i303, %amdgpu_ring_write.exit300.amdgpu_ring_write.exit313_crit_edge
  %171 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ring1.i, align 4
  %173 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %wptr.i, align 8
  %inc.i306 = add i64 %174, 1
  store i64 %inc.i306, ptr %wptr.i, align 8
  %175 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %buf_mask.i, align 8
  %177 = trunc i64 %174 to i32
  %idxprom.i308 = and i32 %176, %177
  %arrayidx.i309 = getelementptr i32, ptr %172, i32 %idxprom.i308
  %178 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 0, ptr %arrayidx.i309, align 4
  %179 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %ptr_mask.i, align 8
  %181 = load i64, ptr %wptr.i, align 8
  %and3.i311 = and i64 %181, %180
  store i64 %and3.i311, ptr %wptr.i, align 8
  %182 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %count_dw.i, align 8
  %dec.i312 = add i32 %183, -1
  store i32 %dec.i312, ptr %count_dw.i, align 8
  %184 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx, align 8
  %arrayidx79 = getelementptr i32, ptr %185, i32 1
  %186 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx79, align 4
  %add80 = add i32 %187, 1299
  %and81 = and i32 %add80, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i312)
  %cmp.i315 = icmp slt i32 %dec.i312, 1
  br i1 %cmp.i315, label %if.then.i316, label %amdgpu_ring_write.exit313.amdgpu_ring_write.exit326_crit_edge

amdgpu_ring_write.exit313.amdgpu_ring_write.exit326_crit_edge: ; preds = %amdgpu_ring_write.exit313
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit326

if.then.i316:                                     ; preds = %amdgpu_ring_write.exit313
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit326

amdgpu_ring_write.exit326:                        ; preds = %if.then.i316, %amdgpu_ring_write.exit313.amdgpu_ring_write.exit326_crit_edge
  %188 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ring1.i, align 4
  %190 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %wptr.i, align 8
  %inc.i319 = add i64 %191, 1
  store i64 %inc.i319, ptr %wptr.i, align 8
  %192 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %buf_mask.i, align 8
  %194 = trunc i64 %191 to i32
  %idxprom.i321 = and i32 %193, %194
  %arrayidx.i322 = getelementptr i32, ptr %189, i32 %idxprom.i321
  %195 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile i32 %and81, ptr %arrayidx.i322, align 4
  %196 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %ptr_mask.i, align 8
  %198 = load i64, ptr %wptr.i, align 8
  %and3.i324 = and i64 %198, %197
  store i64 %and3.i324, ptr %wptr.i, align 8
  %199 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %count_dw.i, align 8
  %dec.i325 = add i32 %200, -1
  store i32 %dec.i325, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i325)
  %cmp.i328 = icmp slt i32 %dec.i325, 1
  br i1 %cmp.i328, label %if.then.i329, label %amdgpu_ring_write.exit326.amdgpu_ring_write.exit339_crit_edge

amdgpu_ring_write.exit326.amdgpu_ring_write.exit339_crit_edge: ; preds = %amdgpu_ring_write.exit326
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit339

if.then.i329:                                     ; preds = %amdgpu_ring_write.exit326
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit339

amdgpu_ring_write.exit339:                        ; preds = %if.then.i329, %amdgpu_ring_write.exit326.amdgpu_ring_write.exit339_crit_edge
  %201 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ring1.i, align 4
  %203 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %wptr.i, align 8
  %inc.i332 = add i64 %204, 1
  store i64 %inc.i332, ptr %wptr.i, align 8
  %205 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %buf_mask.i, align 8
  %207 = trunc i64 %204 to i32
  %idxprom.i334 = and i32 %206, %207
  %arrayidx.i335 = getelementptr i32, ptr %202, i32 %idxprom.i334
  %208 = ptrtoint ptr %arrayidx.i335 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile i32 20972032, ptr %arrayidx.i335, align 4
  %209 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %ptr_mask.i, align 8
  %211 = load i64, ptr %wptr.i, align 8
  %and3.i337 = and i64 %211, %210
  store i64 %and3.i337, ptr %wptr.i, align 8
  %212 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %count_dw.i, align 8
  %dec.i338 = add i32 %213, -1
  store i32 %dec.i338, ptr %count_dw.i, align 8
  %214 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx, align 8
  %arrayidx88 = getelementptr i32, ptr %215, i32 1
  %216 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %217, 1298
  %and90 = and i32 %add89, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i338)
  %cmp.i341 = icmp slt i32 %dec.i338, 1
  br i1 %cmp.i341, label %if.then.i342, label %amdgpu_ring_write.exit339.amdgpu_ring_write.exit352_crit_edge

amdgpu_ring_write.exit339.amdgpu_ring_write.exit352_crit_edge: ; preds = %amdgpu_ring_write.exit339
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit352

if.then.i342:                                     ; preds = %amdgpu_ring_write.exit339
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit352

amdgpu_ring_write.exit352:                        ; preds = %if.then.i342, %amdgpu_ring_write.exit339.amdgpu_ring_write.exit352_crit_edge
  %218 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ring1.i, align 4
  %220 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %wptr.i, align 8
  %inc.i345 = add i64 %221, 1
  store i64 %inc.i345, ptr %wptr.i, align 8
  %222 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %buf_mask.i, align 8
  %224 = trunc i64 %221 to i32
  %idxprom.i347 = and i32 %223, %224
  %arrayidx.i348 = getelementptr i32, ptr %219, i32 %idxprom.i347
  %225 = ptrtoint ptr %arrayidx.i348 to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile i32 %and90, ptr %arrayidx.i348, align 4
  %226 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %ptr_mask.i, align 8
  %228 = load i64, ptr %wptr.i, align 8
  %and3.i350 = and i64 %228, %227
  store i64 %and3.i350, ptr %wptr.i, align 8
  %229 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %count_dw.i, align 8
  %dec.i351 = add i32 %230, -1
  store i32 %dec.i351, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i351)
  %cmp.i354 = icmp slt i32 %dec.i351, 1
  br i1 %cmp.i354, label %if.then.i355, label %amdgpu_ring_write.exit352.amdgpu_ring_write.exit365_crit_edge

amdgpu_ring_write.exit352.amdgpu_ring_write.exit365_crit_edge: ; preds = %amdgpu_ring_write.exit352
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit365

if.then.i355:                                     ; preds = %amdgpu_ring_write.exit352
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit365

amdgpu_ring_write.exit365:                        ; preds = %if.then.i355, %amdgpu_ring_write.exit352.amdgpu_ring_write.exit365_crit_edge
  %231 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ring1.i, align 4
  %233 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %wptr.i, align 8
  %inc.i358 = add i64 %234, 1
  store i64 %inc.i358, ptr %wptr.i, align 8
  %235 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %buf_mask.i, align 8
  %237 = trunc i64 %234 to i32
  %idxprom.i360 = and i32 %236, %237
  %arrayidx.i361 = getelementptr i32, ptr %232, i32 %idxprom.i360
  %238 = ptrtoint ptr %arrayidx.i361 to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile i32 %conv, ptr %arrayidx.i361, align 4
  %239 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %ptr_mask.i, align 8
  %241 = load i64, ptr %wptr.i, align 8
  %and3.i363 = and i64 %241, %240
  store i64 %and3.i363, ptr %wptr.i, align 8
  %242 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %count_dw.i, align 8
  %dec.i364 = add i32 %243, -1
  store i32 %dec.i364, ptr %count_dw.i, align 8
  %244 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx, align 8
  %arrayidx98 = getelementptr i32, ptr %245, i32 1
  %246 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx98, align 4
  %add99 = add i32 %247, 1296
  %and100 = and i32 %add99, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i364)
  %cmp.i367 = icmp slt i32 %dec.i364, 1
  br i1 %cmp.i367, label %if.then.i368, label %amdgpu_ring_write.exit365.amdgpu_ring_write.exit378_crit_edge

amdgpu_ring_write.exit365.amdgpu_ring_write.exit378_crit_edge: ; preds = %amdgpu_ring_write.exit365
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit378

if.then.i368:                                     ; preds = %amdgpu_ring_write.exit365
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit378

amdgpu_ring_write.exit378:                        ; preds = %if.then.i368, %amdgpu_ring_write.exit365.amdgpu_ring_write.exit378_crit_edge
  %248 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ring1.i, align 4
  %250 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %wptr.i, align 8
  %inc.i371 = add i64 %251, 1
  store i64 %inc.i371, ptr %wptr.i, align 8
  %252 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %buf_mask.i, align 8
  %254 = trunc i64 %251 to i32
  %idxprom.i373 = and i32 %253, %254
  %arrayidx.i374 = getelementptr i32, ptr %249, i32 %idxprom.i373
  %255 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_store4_noabort(i32 %255)
  store volatile i32 %and100, ptr %arrayidx.i374, align 4
  %256 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %ptr_mask.i, align 8
  %258 = load i64, ptr %wptr.i, align 8
  %and3.i376 = and i64 %258, %257
  store i64 %and3.i376, ptr %wptr.i, align 8
  %259 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %count_dw.i, align 8
  %dec.i377 = add i32 %260, -1
  store i32 %dec.i377, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i377)
  %cmp.i380 = icmp slt i32 %dec.i377, 1
  br i1 %cmp.i380, label %if.then.i381, label %amdgpu_ring_write.exit378.amdgpu_ring_write.exit391_crit_edge

amdgpu_ring_write.exit378.amdgpu_ring_write.exit391_crit_edge: ; preds = %amdgpu_ring_write.exit378
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit391

if.then.i381:                                     ; preds = %amdgpu_ring_write.exit378
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit391

amdgpu_ring_write.exit391:                        ; preds = %if.then.i381, %amdgpu_ring_write.exit378.amdgpu_ring_write.exit391_crit_edge
  %261 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ring1.i, align 4
  %263 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %wptr.i, align 8
  %inc.i384 = add i64 %264, 1
  store i64 %inc.i384, ptr %wptr.i, align 8
  %265 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %buf_mask.i, align 8
  %267 = trunc i64 %264 to i32
  %idxprom.i386 = and i32 %266, %267
  %arrayidx.i387 = getelementptr i32, ptr %262, i32 %idxprom.i386
  %268 = ptrtoint ptr %arrayidx.i387 to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile i32 %conv46, ptr %arrayidx.i387, align 4
  %269 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %ptr_mask.i, align 8
  %271 = load i64, ptr %wptr.i, align 8
  %and3.i389 = and i64 %271, %270
  store i64 %and3.i389, ptr %wptr.i, align 8
  %272 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %count_dw.i, align 8
  %dec.i390 = add i32 %273, -1
  store i32 %dec.i390, ptr %count_dw.i, align 8
  %274 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx, align 8
  %arrayidx109 = getelementptr i32, ptr %275, i32 1
  %276 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx109, align 4
  %add110 = add i32 %277, 1297
  %and111 = and i32 %add110, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i390)
  %cmp.i393 = icmp slt i32 %dec.i390, 1
  br i1 %cmp.i393, label %if.then.i394, label %amdgpu_ring_write.exit391.amdgpu_ring_write.exit404_crit_edge

amdgpu_ring_write.exit391.amdgpu_ring_write.exit404_crit_edge: ; preds = %amdgpu_ring_write.exit391
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit404

if.then.i394:                                     ; preds = %amdgpu_ring_write.exit391
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit404

amdgpu_ring_write.exit404:                        ; preds = %if.then.i394, %amdgpu_ring_write.exit391.amdgpu_ring_write.exit404_crit_edge
  %278 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ring1.i, align 4
  %280 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %wptr.i, align 8
  %inc.i397 = add i64 %281, 1
  store i64 %inc.i397, ptr %wptr.i, align 8
  %282 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %buf_mask.i, align 8
  %284 = trunc i64 %281 to i32
  %idxprom.i399 = and i32 %283, %284
  %arrayidx.i400 = getelementptr i32, ptr %279, i32 %idxprom.i399
  %285 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_store4_noabort(i32 %285)
  store volatile i32 %and111, ptr %arrayidx.i400, align 4
  %286 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %ptr_mask.i, align 8
  %288 = load i64, ptr %wptr.i, align 8
  %and3.i402 = and i64 %288, %287
  store i64 %and3.i402, ptr %wptr.i, align 8
  %289 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %count_dw.i, align 8
  %dec.i403 = add i32 %290, -1
  store i32 %dec.i403, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i403)
  %cmp.i406 = icmp slt i32 %dec.i403, 1
  br i1 %cmp.i406, label %if.then.i407, label %amdgpu_ring_write.exit404.amdgpu_ring_write.exit417_crit_edge

amdgpu_ring_write.exit404.amdgpu_ring_write.exit417_crit_edge: ; preds = %amdgpu_ring_write.exit404
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit417

if.then.i407:                                     ; preds = %amdgpu_ring_write.exit404
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit417

amdgpu_ring_write.exit417:                        ; preds = %if.then.i407, %amdgpu_ring_write.exit404.amdgpu_ring_write.exit417_crit_edge
  %291 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %ring1.i, align 4
  %293 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %wptr.i, align 8
  %inc.i410 = add i64 %294, 1
  store i64 %inc.i410, ptr %wptr.i, align 8
  %295 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %buf_mask.i, align 8
  %297 = trunc i64 %294 to i32
  %idxprom.i412 = and i32 %296, %297
  %arrayidx.i413 = getelementptr i32, ptr %292, i32 %idxprom.i412
  %298 = ptrtoint ptr %arrayidx.i413 to i32
  call void @__asan_store4_noabort(i32 %298)
  store volatile i32 %conv57, ptr %arrayidx.i413, align 4
  %299 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %ptr_mask.i, align 8
  %301 = load i64, ptr %wptr.i, align 8
  %and3.i415 = and i64 %301, %300
  store i64 %and3.i415, ptr %wptr.i, align 8
  %302 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %count_dw.i, align 8
  %dec.i416 = add i32 %303, -1
  store i32 %dec.i416, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i416)
  %cmp.i419 = icmp slt i32 %dec.i416, 1
  br i1 %cmp.i419, label %if.then.i420, label %amdgpu_ring_write.exit417.amdgpu_ring_write.exit430_crit_edge

amdgpu_ring_write.exit417.amdgpu_ring_write.exit430_crit_edge: ; preds = %amdgpu_ring_write.exit417
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit430

if.then.i420:                                     ; preds = %amdgpu_ring_write.exit417
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit430

amdgpu_ring_write.exit430:                        ; preds = %if.then.i420, %amdgpu_ring_write.exit417.amdgpu_ring_write.exit430_crit_edge
  %304 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ring1.i, align 4
  %306 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %wptr.i, align 8
  %inc.i423 = add i64 %307, 1
  store i64 %inc.i423, ptr %wptr.i, align 8
  %308 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %buf_mask.i, align 8
  %310 = trunc i64 %307 to i32
  %idxprom.i425 = and i32 %309, %310
  %arrayidx.i426 = getelementptr i32, ptr %305, i32 %idxprom.i425
  %311 = ptrtoint ptr %arrayidx.i426 to i32
  call void @__asan_store4_noabort(i32 %311)
  store volatile i32 587202560, ptr %arrayidx.i426, align 4
  %312 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %ptr_mask.i, align 8
  %314 = load i64, ptr %wptr.i, align 8
  %and3.i428 = and i64 %314, %313
  store i64 %and3.i428, ptr %wptr.i, align 8
  %315 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %count_dw.i, align 8
  %dec.i429 = add i32 %316, -1
  store i32 %dec.i429, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i429)
  %cmp.i432 = icmp slt i32 %dec.i429, 1
  br i1 %cmp.i432, label %if.then.i433, label %amdgpu_ring_write.exit430.amdgpu_ring_write.exit443_crit_edge

amdgpu_ring_write.exit430.amdgpu_ring_write.exit443_crit_edge: ; preds = %amdgpu_ring_write.exit430
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit443

if.then.i433:                                     ; preds = %amdgpu_ring_write.exit430
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit443

amdgpu_ring_write.exit443:                        ; preds = %if.then.i433, %amdgpu_ring_write.exit430.amdgpu_ring_write.exit443_crit_edge
  %317 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ring1.i, align 4
  %319 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %319)
  %320 = load i64, ptr %wptr.i, align 8
  %inc.i436 = add i64 %320, 1
  store i64 %inc.i436, ptr %wptr.i, align 8
  %321 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %buf_mask.i, align 8
  %323 = trunc i64 %320 to i32
  %idxprom.i438 = and i32 %322, %323
  %arrayidx.i439 = getelementptr i32, ptr %318, i32 %idxprom.i438
  %324 = ptrtoint ptr %arrayidx.i439 to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile i32 -1, ptr %arrayidx.i439, align 4
  %325 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %ptr_mask.i, align 8
  %327 = load i64, ptr %wptr.i, align 8
  %and3.i441 = and i64 %327, %326
  store i64 %and3.i441, ptr %wptr.i, align 8
  %328 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %count_dw.i, align 8
  %dec.i442 = add i32 %329, -1
  store i32 %dec.i442, ptr %count_dw.i, align 8
  %330 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx, align 8
  %arrayidx121 = getelementptr i32, ptr %331, i32 1
  %332 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx121, align 4
  %add122 = add i32 %333, 1303
  %and123 = and i32 %add122, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i442)
  %cmp.i445 = icmp slt i32 %dec.i442, 1
  br i1 %cmp.i445, label %if.then.i446, label %amdgpu_ring_write.exit443.amdgpu_ring_write.exit456_crit_edge

amdgpu_ring_write.exit443.amdgpu_ring_write.exit456_crit_edge: ; preds = %amdgpu_ring_write.exit443
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit456

if.then.i446:                                     ; preds = %amdgpu_ring_write.exit443
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit456

amdgpu_ring_write.exit456:                        ; preds = %if.then.i446, %amdgpu_ring_write.exit443.amdgpu_ring_write.exit456_crit_edge
  %334 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %ring1.i, align 4
  %336 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %wptr.i, align 8
  %inc.i449 = add i64 %337, 1
  store i64 %inc.i449, ptr %wptr.i, align 8
  %338 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %buf_mask.i, align 8
  %340 = trunc i64 %337 to i32
  %idxprom.i451 = and i32 %339, %340
  %arrayidx.i452 = getelementptr i32, ptr %335, i32 %idxprom.i451
  %341 = ptrtoint ptr %arrayidx.i452 to i32
  call void @__asan_store4_noabort(i32 %341)
  store volatile i32 %and123, ptr %arrayidx.i452, align 4
  %342 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %ptr_mask.i, align 8
  %344 = load i64, ptr %wptr.i, align 8
  %and3.i454 = and i64 %344, %343
  store i64 %and3.i454, ptr %wptr.i, align 8
  %345 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %count_dw.i, align 8
  %dec.i455 = add i32 %346, -1
  store i32 %dec.i455, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i455)
  %cmp.i458 = icmp slt i32 %dec.i455, 1
  br i1 %cmp.i458, label %if.then.i459, label %amdgpu_ring_write.exit456.amdgpu_ring_write.exit469_crit_edge

amdgpu_ring_write.exit456.amdgpu_ring_write.exit469_crit_edge: ; preds = %amdgpu_ring_write.exit456
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit469

if.then.i459:                                     ; preds = %amdgpu_ring_write.exit456
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit469

amdgpu_ring_write.exit469:                        ; preds = %if.then.i459, %amdgpu_ring_write.exit456.amdgpu_ring_write.exit469_crit_edge
  %347 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ring1.i, align 4
  %349 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %wptr.i, align 8
  %inc.i462 = add i64 %350, 1
  store i64 %inc.i462, ptr %wptr.i, align 8
  %351 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %buf_mask.i, align 8
  %353 = trunc i64 %350 to i32
  %idxprom.i464 = and i32 %352, %353
  %arrayidx.i465 = getelementptr i32, ptr %348, i32 %idxprom.i464
  %354 = ptrtoint ptr %arrayidx.i465 to i32
  call void @__asan_store4_noabort(i32 %354)
  store volatile i32 16316, ptr %arrayidx.i465, align 4
  %355 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %355)
  %356 = load i64, ptr %ptr_mask.i, align 8
  %357 = load i64, ptr %wptr.i, align 8
  %and3.i467 = and i64 %357, %356
  store i64 %and3.i467, ptr %wptr.i, align 8
  %358 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %count_dw.i, align 8
  %dec.i468 = add i32 %359, -1
  store i32 %dec.i468, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i468)
  %cmp.i471 = icmp slt i32 %dec.i468, 1
  br i1 %cmp.i471, label %if.then.i472, label %amdgpu_ring_write.exit469.amdgpu_ring_write.exit482_crit_edge

amdgpu_ring_write.exit469.amdgpu_ring_write.exit482_crit_edge: ; preds = %amdgpu_ring_write.exit469
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit482

if.then.i472:                                     ; preds = %amdgpu_ring_write.exit469
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit482

amdgpu_ring_write.exit482:                        ; preds = %if.then.i472, %amdgpu_ring_write.exit469.amdgpu_ring_write.exit482_crit_edge
  %360 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ring1.i, align 4
  %362 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %362)
  %363 = load i64, ptr %wptr.i, align 8
  %inc.i475 = add i64 %363, 1
  store i64 %inc.i475, ptr %wptr.i, align 8
  %364 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %buf_mask.i, align 8
  %366 = trunc i64 %363 to i32
  %idxprom.i477 = and i32 %365, %366
  %arrayidx.i478 = getelementptr i32, ptr %361, i32 %idxprom.i477
  %367 = ptrtoint ptr %arrayidx.i478 to i32
  call void @__asan_store4_noabort(i32 %367)
  store volatile i32 0, ptr %arrayidx.i478, align 4
  %368 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %368)
  %369 = load i64, ptr %ptr_mask.i, align 8
  %370 = load i64, ptr %wptr.i, align 8
  %and3.i480 = and i64 %370, %369
  store i64 %and3.i480, ptr %wptr.i, align 8
  %371 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %count_dw.i, align 8
  %dec.i481 = add i32 %372, -1
  store i32 %dec.i481, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i481)
  %cmp.i484 = icmp slt i32 %dec.i481, 1
  br i1 %cmp.i484, label %if.then.i485, label %amdgpu_ring_write.exit482.amdgpu_ring_write.exit495_crit_edge

amdgpu_ring_write.exit482.amdgpu_ring_write.exit495_crit_edge: ; preds = %amdgpu_ring_write.exit482
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit495

if.then.i485:                                     ; preds = %amdgpu_ring_write.exit482
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit495

amdgpu_ring_write.exit495:                        ; preds = %if.then.i485, %amdgpu_ring_write.exit482.amdgpu_ring_write.exit495_crit_edge
  %373 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %ring1.i, align 4
  %375 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %375)
  %376 = load i64, ptr %wptr.i, align 8
  %inc.i488 = add i64 %376, 1
  store i64 %inc.i488, ptr %wptr.i, align 8
  %377 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %buf_mask.i, align 8
  %379 = trunc i64 %376 to i32
  %idxprom.i490 = and i32 %378, %379
  %arrayidx.i491 = getelementptr i32, ptr %374, i32 %idxprom.i490
  %380 = ptrtoint ptr %arrayidx.i491 to i32
  call void @__asan_store4_noabort(i32 %380)
  store volatile i32 1, ptr %arrayidx.i491, align 4
  %381 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %381)
  %382 = load i64, ptr %ptr_mask.i, align 8
  %383 = load i64, ptr %wptr.i, align 8
  %and3.i493 = and i64 %383, %382
  store i64 %and3.i493, ptr %wptr.i, align 8
  %384 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %count_dw.i, align 8
  %dec.i494 = add i32 %385, -1
  store i32 %dec.i494, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i494)
  %cmp.i497 = icmp slt i32 %dec.i494, 1
  br i1 %cmp.i497, label %if.then.i498, label %amdgpu_ring_write.exit495.amdgpu_ring_write.exit508_crit_edge

amdgpu_ring_write.exit495.amdgpu_ring_write.exit508_crit_edge: ; preds = %amdgpu_ring_write.exit495
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit508

if.then.i498:                                     ; preds = %amdgpu_ring_write.exit495
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit508

amdgpu_ring_write.exit508:                        ; preds = %if.then.i498, %amdgpu_ring_write.exit495.amdgpu_ring_write.exit508_crit_edge
  %386 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %ring1.i, align 4
  %388 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %388)
  %389 = load i64, ptr %wptr.i, align 8
  %inc.i501 = add i64 %389, 1
  store i64 %inc.i501, ptr %wptr.i, align 8
  %390 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %buf_mask.i, align 8
  %392 = trunc i64 %389 to i32
  %idxprom.i503 = and i32 %391, %392
  %arrayidx.i504 = getelementptr i32, ptr %387, i32 %idxprom.i503
  %393 = ptrtoint ptr %arrayidx.i504 to i32
  call void @__asan_store4_noabort(i32 %393)
  store volatile i32 1879048192, ptr %arrayidx.i504, align 4
  %394 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %394)
  %395 = load i64, ptr %ptr_mask.i, align 8
  %396 = load i64, ptr %wptr.i, align 8
  %and3.i506 = and i64 %396, %395
  store i64 %and3.i506, ptr %wptr.i, align 8
  %397 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %count_dw.i, align 8
  %dec.i507 = add i32 %398, -1
  store i32 %dec.i507, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i507)
  %cmp.i510 = icmp slt i32 %dec.i507, 1
  br i1 %cmp.i510, label %if.then.i511, label %amdgpu_ring_write.exit508.amdgpu_ring_write.exit521_crit_edge

amdgpu_ring_write.exit508.amdgpu_ring_write.exit521_crit_edge: ; preds = %amdgpu_ring_write.exit508
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit521

if.then.i511:                                     ; preds = %amdgpu_ring_write.exit508
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit521

amdgpu_ring_write.exit521:                        ; preds = %if.then.i511, %amdgpu_ring_write.exit508.amdgpu_ring_write.exit521_crit_edge
  %399 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %ring1.i, align 4
  %401 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %wptr.i, align 8
  %inc.i514 = add i64 %402, 1
  store i64 %inc.i514, ptr %wptr.i, align 8
  %403 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %buf_mask.i, align 8
  %405 = trunc i64 %402 to i32
  %idxprom.i516 = and i32 %404, %405
  %arrayidx.i517 = getelementptr i32, ptr %400, i32 %idxprom.i516
  %406 = ptrtoint ptr %arrayidx.i517 to i32
  call void @__asan_store4_noabort(i32 %406)
  store volatile i32 0, ptr %arrayidx.i517, align 4
  %407 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %407)
  %408 = load i64, ptr %ptr_mask.i, align 8
  %409 = load i64, ptr %wptr.i, align 8
  %and3.i519 = and i64 %409, %408
  store i64 %and3.i519, ptr %wptr.i, align 8
  %410 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %count_dw.i, align 8
  %dec.i520 = add i32 %411, -1
  store i32 %dec.i520, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %funcs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %vmhub1 = getelementptr inbounds %struct.amdgpu_ring_funcs, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vmhub1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmhub1, align 4
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %6 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %9(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %ctx_addr_distance = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 66, i32 %5, i32 9
  %12 = ptrtoint ptr %ctx_addr_distance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctx_addr_distance, align 4
  %mul = mul i32 %13, %vmid
  %add = add i32 %mul, %11
  %conv = trunc i64 %call to i32
  tail call void @jpeg_v1_0_decode_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %add, i32 noundef %conv, i32 noundef -1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_dec_ring_test_ring(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_jpeg_dec_ring_test_ib(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_nop(ptr nocapture noundef %ring, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %0 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %wptr, align 8
  %rem = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem)
  %tobool.not = icmp ne i64 %rem, 0
  %rem1 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool2 = icmp ne i32 %rem1, 0
  %2 = or i1 %tobool2, %tobool.not
  br i1 %2, label %do.end, label %entry.if.end_crit_edge, !prof !32

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 416, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp41.not = icmp ult i32 %count, 2
  br i1 %cmp41.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %div27 = lshr i32 %count, 1
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %3 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %count_dw.i, align 8
  br label %for.body

for.body:                                         ; preds = %amdgpu_ring_write.exit40.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %.pr, %for.body.lr.ph ], [ %dec.i39, %amdgpu_ring_write.exit40.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %amdgpu_ring_write.exit40.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp slt i32 %4, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.amdgpu_ring_write.exit_crit_edge

for.body.amdgpu_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %for.body.amdgpu_ring_write.exit_crit_edge
  %5 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring1.i, align 4
  %7 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wptr, align 8
  %inc.i = add i64 %8, 1
  store i64 %inc.i, ptr %wptr, align 8
  %9 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_mask.i, align 8
  %11 = trunc i64 %8 to i32
  %idxprom.i = and i32 %10, %11
  %arrayidx.i = getelementptr i32, ptr %6, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1610612736, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ptr_mask.i, align 8
  %15 = load i64, ptr %wptr, align 8
  %and3.i = and i64 %15, %14
  store i64 %and3.i, ptr %wptr, align 8
  %16 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i29 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i29, label %if.then.i30, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit40

if.then.i30:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit40

amdgpu_ring_write.exit40:                         ; preds = %if.then.i30, %amdgpu_ring_write.exit.amdgpu_ring_write.exit40_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 4
  %20 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %wptr, align 8
  %inc.i33 = add i64 %21, 1
  store i64 %inc.i33, ptr %wptr, align 8
  %22 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_mask.i, align 8
  %24 = trunc i64 %21 to i32
  %idxprom.i35 = and i32 %23, %24
  %arrayidx.i36 = getelementptr i32, ptr %19, i32 %idxprom.i35
  %25 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %arrayidx.i36, align 4
  %26 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ptr_mask.i, align 8
  %28 = load i64, ptr %wptr, align 8
  %and3.i38 = and i64 %28, %27
  store i64 %and3.i38, ptr %wptr, align 8
  %29 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count_dw.i, align 8
  %dec.i39 = add i32 %30, -1
  store i32 %dec.i39, ptr %count_dw.i, align 8
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %div27
  br i1 %exitcond.not, label %amdgpu_ring_write.exit40.for.end_crit_edge, label %amdgpu_ring_write.exit40.for.body_crit_edge

amdgpu_ring_write.exit40.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

amdgpu_ring_write.exit40.for.end_crit_edge:       ; preds = %amdgpu_ring_write.exit40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %amdgpu_ring_write.exit40.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_insert_start(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %arrayidx3 = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %5, 1303
  %and = and i32 %add, 262143
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask.i, align 8
  %14 = trunc i64 %11 to i32
  %idxprom.i = and i32 %13, %14
  %arrayidx.i = getelementptr i32, ptr %9, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptr_mask.i, align 8
  %18 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %18, %17
  store i64 %and3.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i11 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i11, label %if.then.i12, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit22

if.then.i12:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit22

amdgpu_ring_write.exit22:                         ; preds = %if.then.i12, %amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr.i, align 8
  %inc.i15 = add i64 %24, 1
  store i64 %inc.i15, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i17 = and i32 %26, %27
  %arrayidx.i18 = getelementptr i32, ptr %22, i32 %idxprom.i17
  %28 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 429572, ptr %arrayidx.i18, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr.i, align 8
  %and3.i20 = and i64 %31, %30
  store i64 %and3.i20, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i21 = add i32 %33, -1
  store i32 %dec.i21, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i21)
  %cmp.i24 = icmp slt i32 %dec.i21, 1
  br i1 %cmp.i24, label %if.then.i25, label %amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge

amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge: ; preds = %amdgpu_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit35

if.then.i25:                                      ; preds = %amdgpu_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit35

amdgpu_ring_write.exit35:                         ; preds = %if.then.i25, %amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge
  %34 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring1.i, align 4
  %36 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %wptr.i, align 8
  %inc.i28 = add i64 %37, 1
  store i64 %inc.i28, ptr %wptr.i, align 8
  %38 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_mask.i, align 8
  %40 = trunc i64 %37 to i32
  %idxprom.i30 = and i32 %39, %40
  %arrayidx.i31 = getelementptr i32, ptr %35, i32 %idxprom.i30
  %41 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %arrayidx.i31, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ptr_mask.i, align 8
  %44 = load i64, ptr %wptr.i, align 8
  %and3.i33 = and i64 %44, %43
  store i64 %and3.i33, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 8
  %dec.i34 = add i32 %46, -1
  store i32 %dec.i34, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i34)
  %cmp.i37 = icmp slt i32 %dec.i34, 1
  br i1 %cmp.i37, label %if.then.i38, label %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge

amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge: ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit48

if.then.i38:                                      ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit48

amdgpu_ring_write.exit48:                         ; preds = %if.then.i38, %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i41 = add i64 %50, 1
  store i64 %inc.i41, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i43 = and i32 %52, %53
  %arrayidx.i44 = getelementptr i32, ptr %48, i32 %idxprom.i43
  %54 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 -2147418112, ptr %arrayidx.i44, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i46 = and i64 %57, %56
  store i64 %and3.i46, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i47 = add i32 %59, -1
  store i32 %dec.i47, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_insert_end(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %arrayidx3 = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %5, 1303
  %and = and i32 %add, 262143
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask.i, align 8
  %14 = trunc i64 %11 to i32
  %idxprom.i = and i32 %13, %14
  %arrayidx.i = getelementptr i32, ptr %9, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptr_mask.i, align 8
  %18 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %18, %17
  store i64 %and3.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i11 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i11, label %if.then.i12, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit22

if.then.i12:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit22

amdgpu_ring_write.exit22:                         ; preds = %if.then.i12, %amdgpu_ring_write.exit.amdgpu_ring_write.exit22_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr.i, align 8
  %inc.i15 = add i64 %24, 1
  store i64 %inc.i15, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i17 = and i32 %26, %27
  %arrayidx.i18 = getelementptr i32, ptr %22, i32 %idxprom.i17
  %28 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 429572, ptr %arrayidx.i18, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr.i, align 8
  %and3.i20 = and i64 %31, %30
  store i64 %and3.i20, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i21 = add i32 %33, -1
  store i32 %dec.i21, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i21)
  %cmp.i24 = icmp slt i32 %dec.i21, 1
  br i1 %cmp.i24, label %if.then.i25, label %amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge

amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge: ; preds = %amdgpu_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit35

if.then.i25:                                      ; preds = %amdgpu_ring_write.exit22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit35

amdgpu_ring_write.exit35:                         ; preds = %if.then.i25, %amdgpu_ring_write.exit22.amdgpu_ring_write.exit35_crit_edge
  %34 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring1.i, align 4
  %36 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %wptr.i, align 8
  %inc.i28 = add i64 %37, 1
  store i64 %inc.i28, ptr %wptr.i, align 8
  %38 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_mask.i, align 8
  %40 = trunc i64 %37 to i32
  %idxprom.i30 = and i32 %39, %40
  %arrayidx.i31 = getelementptr i32, ptr %35, i32 %idxprom.i30
  %41 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %arrayidx.i31, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ptr_mask.i, align 8
  %44 = load i64, ptr %wptr.i, align 8
  %and3.i33 = and i64 %44, %43
  store i64 %and3.i33, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 8
  %dec.i34 = add i32 %46, -1
  store i32 %dec.i34, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i34)
  %cmp.i37 = icmp slt i32 %dec.i34, 1
  br i1 %cmp.i37, label %if.then.i38, label %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge

amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge: ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit48

if.then.i38:                                      ; preds = %amdgpu_ring_write.exit35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit48

amdgpu_ring_write.exit48:                         ; preds = %if.then.i38, %amdgpu_ring_write.exit35.amdgpu_ring_write.exit48_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i41 = add i64 %50, 1
  store i64 %inc.i41, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i43 = and i32 %52, %53
  %arrayidx.i44 = getelementptr i32, ptr %48, i32 %idxprom.i43
  %54 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 65536, ptr %arrayidx.i44, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i46 = and i64 %57, %56
  store i64 %and3.i46, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i47 = add i32 %59, -1
  store i32 %dec.i47, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_generic_pad_ib(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_ring_begin_use(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %idle_work = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idle_work) #4
  %vcn1_jpeg1_workaround = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 11
  tail call void @mutex_lock_nested(ptr noundef %vcn1_jpeg1_workaround, i32 noundef 0) #4
  %ring_dec = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 7, i32 0, i32 4
  %call4 = tail call i32 @amdgpu_fence_wait_empty(ptr noundef %ring_dec) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_enc_rings = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 3
  %2 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_enc_rings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %cnt.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 110, i32 7, i32 0, i32 5, i32 %cnt.023
  %call9 = tail call i32 @amdgpu_fence_wait_empty(ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %cnt.023) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %cnt.023, 1
  %4 = ptrtoint ptr %num_enc_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_enc_rings, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %lnot = xor i1 %call, true
  tail call void @vcn_v1_0_set_pg_for_begin_use(ptr noundef %ring, i1 noundef zeroext %lnot) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcn_v1_0_ring_end_use(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_emit_wreg(ptr noundef %ring, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %shl = shl i32 %reg, 2
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %arrayidx4 = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %5, 1303
  %and = and i32 %add, 262143
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask.i, align 8
  %14 = trunc i64 %11 to i32
  %idxprom.i = and i32 %13, %14
  %arrayidx.i = getelementptr i32, ptr %9, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptr_mask.i, align 8
  %18 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %18, %17
  store i64 %and3.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %21 = add i32 %shl, -129024
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %21)
  %22 = icmp ult i32 %21, 10240
  %23 = and i32 %reg, 1073741696
  call void @__sanitizer_cov_trace_const_cmp4(i32 30720, i32 %23)
  %24 = icmp eq i32 %23, 30720
  %or.cond = or i1 %24, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i28 = icmp slt i32 %dec.i, 1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %amdgpu_ring_write.exit
  br i1 %cmp.i28, label %if.then.i29, label %if.then.amdgpu_ring_write.exit39_crit_edge

if.then.amdgpu_ring_write.exit39_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit39

if.then.i29:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit39

amdgpu_ring_write.exit39:                         ; preds = %if.then.i29, %if.then.amdgpu_ring_write.exit39_crit_edge
  %25 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i, align 4
  %27 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wptr.i, align 8
  %inc.i32 = add i64 %28, 1
  store i64 %inc.i32, ptr %wptr.i, align 8
  %29 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_mask.i, align 8
  %31 = trunc i64 %28 to i32
  %idxprom.i34 = and i32 %30, %31
  %arrayidx.i35 = getelementptr i32, ptr %26, i32 %idxprom.i34
  %32 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %arrayidx.i35, align 4
  %33 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ptr_mask.i, align 8
  %35 = load i64, ptr %wptr.i, align 8
  %and3.i37 = and i64 %35, %34
  store i64 %and3.i37, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_dw.i, align 8
  %dec.i38 = add i32 %37, -1
  store i32 %dec.i38, ptr %count_dw.i, align 8
  %and11 = and i32 %reg, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i38)
  %cmp.i41 = icmp slt i32 %dec.i38, 1
  br i1 %cmp.i41, label %amdgpu_ring_write.exit39.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit39.if.end_crit_edge

amdgpu_ring_write.exit39.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

amdgpu_ring_write.exit39.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.else:                                          ; preds = %amdgpu_ring_write.exit
  br i1 %cmp.i28, label %if.then.i55, label %if.else.amdgpu_ring_write.exit65_crit_edge

if.else.amdgpu_ring_write.exit65_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit65

if.then.i55:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit65

amdgpu_ring_write.exit65:                         ; preds = %if.then.i55, %if.else.amdgpu_ring_write.exit65_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 4
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wptr.i, align 8
  %inc.i58 = add i64 %41, 1
  store i64 %inc.i58, ptr %wptr.i, align 8
  %42 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_mask.i, align 8
  %44 = trunc i64 %41 to i32
  %idxprom.i60 = and i32 %43, %44
  %arrayidx.i61 = getelementptr i32, ptr %39, i32 %idxprom.i60
  %45 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %shl, ptr %arrayidx.i61, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ptr_mask.i, align 8
  %48 = load i64, ptr %wptr.i, align 8
  %and3.i63 = and i64 %48, %47
  store i64 %and3.i63, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 8
  %dec.i64 = add i32 %50, -1
  store i32 %dec.i64, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i64)
  %cmp.i67 = icmp slt i32 %dec.i64, 1
  br i1 %cmp.i67, label %amdgpu_ring_write.exit65.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit65.if.end_crit_edge

amdgpu_ring_write.exit65.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

amdgpu_ring_write.exit65.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %amdgpu_ring_write.exit65.if.end.sink.split_crit_edge, %amdgpu_ring_write.exit39.if.end.sink.split_crit_edge
  %.sink.ph = phi i32 [ %and11, %amdgpu_ring_write.exit39.if.end.sink.split_crit_edge ], [ 0, %amdgpu_ring_write.exit65.if.end.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %amdgpu_ring_write.exit65.if.end_crit_edge, %amdgpu_ring_write.exit39.if.end_crit_edge
  %.sink = phi i32 [ %and11, %amdgpu_ring_write.exit39.if.end_crit_edge ], [ 0, %amdgpu_ring_write.exit65.if.end_crit_edge ], [ %.sink.ph, %if.end.sink.split ]
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 4
  %53 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wptr.i, align 8
  %inc.i71 = add i64 %54, 1
  store i64 %inc.i71, ptr %wptr.i, align 8
  %55 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_mask.i, align 8
  %57 = trunc i64 %54 to i32
  %idxprom.i73 = and i32 %56, %57
  %arrayidx.i74 = getelementptr i32, ptr %52, i32 %idxprom.i73
  %58 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %.sink, ptr %arrayidx.i74, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ptr_mask.i, align 8
  %61 = load i64, ptr %wptr.i, align 8
  %and3.i76 = and i64 %61, %60
  store i64 %and3.i76, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.in = load i32, ptr %count_dw.i, align 8
  %63 = add i32 %.in, -1
  store i32 %63, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i80 = icmp slt i32 %63, 1
  br i1 %cmp.i80, label %if.then.i81, label %if.end.amdgpu_ring_write.exit91_crit_edge

if.end.amdgpu_ring_write.exit91_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit91

if.then.i81:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit91

amdgpu_ring_write.exit91:                         ; preds = %if.then.i81, %if.end.amdgpu_ring_write.exit91_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 4
  %66 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %wptr.i, align 8
  %inc.i84 = add i64 %67, 1
  store i64 %inc.i84, ptr %wptr.i, align 8
  %68 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf_mask.i, align 8
  %70 = trunc i64 %67 to i32
  %idxprom.i86 = and i32 %69, %70
  %arrayidx.i87 = getelementptr i32, ptr %65, i32 %idxprom.i86
  %71 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %val, ptr %arrayidx.i87, align 4
  %72 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ptr_mask.i, align 8
  %74 = load i64, ptr %wptr.i, align 8
  %and3.i89 = and i64 %74, %73
  store i64 %and3.i89, ptr %wptr.i, align 8
  %75 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_dw.i, align 8
  %dec.i90 = add i32 %76, -1
  store i32 %dec.i90, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jpeg_v1_0_decode_ring_emit_reg_wait(ptr noundef %ring, i32 noundef %reg, i32 noundef %val, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %shl = shl i32 %reg, 2
  %arrayidx = getelementptr %struct.amdgpu_device, ptr %1, i32 0, i32 130, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %arrayidx4 = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %5, 1299
  %and = and i32 %add, 262143
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %10 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %12 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_mask.i, align 8
  %14 = trunc i64 %11 to i32
  %idxprom.i = and i32 %13, %14
  %arrayidx.i = getelementptr i32, ptr %9, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %and, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %16 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ptr_mask.i, align 8
  %18 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %18, %17
  store i64 %and3.i, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i52 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i52, label %if.then.i53, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit63_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit63_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit63

amdgpu_ring_write.exit63:                         ; preds = %if.then.i53, %amdgpu_ring_write.exit.amdgpu_ring_write.exit63_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr.i, align 8
  %inc.i56 = add i64 %24, 1
  store i64 %inc.i56, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i58 = and i32 %26, %27
  %arrayidx.i59 = getelementptr i32, ptr %22, i32 %idxprom.i58
  %28 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 20972032, ptr %arrayidx.i59, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr.i, align 8
  %and3.i61 = and i64 %31, %30
  store i64 %and3.i61, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i62 = add i32 %33, -1
  store i32 %dec.i62, ptr %count_dw.i, align 8
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 8
  %arrayidx10 = getelementptr i32, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx10, align 4
  %add11 = add i32 %37, 1298
  %and12 = and i32 %add11, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i62)
  %cmp.i65 = icmp slt i32 %dec.i62, 1
  br i1 %cmp.i65, label %if.then.i66, label %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge

amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge: ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit76

if.then.i66:                                      ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit76

amdgpu_ring_write.exit76:                         ; preds = %if.then.i66, %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 4
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wptr.i, align 8
  %inc.i69 = add i64 %41, 1
  store i64 %inc.i69, ptr %wptr.i, align 8
  %42 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_mask.i, align 8
  %44 = trunc i64 %41 to i32
  %idxprom.i71 = and i32 %43, %44
  %arrayidx.i72 = getelementptr i32, ptr %39, i32 %idxprom.i71
  %45 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %and12, ptr %arrayidx.i72, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ptr_mask.i, align 8
  %48 = load i64, ptr %wptr.i, align 8
  %and3.i74 = and i64 %48, %47
  store i64 %and3.i74, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 8
  %dec.i75 = add i32 %50, -1
  store i32 %dec.i75, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i75)
  %cmp.i78 = icmp slt i32 %dec.i75, 1
  br i1 %cmp.i78, label %if.then.i79, label %amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge

amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge: ; preds = %amdgpu_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit89

if.then.i79:                                      ; preds = %amdgpu_ring_write.exit76
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit89

amdgpu_ring_write.exit89:                         ; preds = %if.then.i79, %amdgpu_ring_write.exit76.amdgpu_ring_write.exit89_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 4
  %53 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wptr.i, align 8
  %inc.i82 = add i64 %54, 1
  store i64 %inc.i82, ptr %wptr.i, align 8
  %55 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_mask.i, align 8
  %57 = trunc i64 %54 to i32
  %idxprom.i84 = and i32 %56, %57
  %arrayidx.i85 = getelementptr i32, ptr %52, i32 %idxprom.i84
  %58 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %val, ptr %arrayidx.i85, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ptr_mask.i, align 8
  %61 = load i64, ptr %wptr.i, align 8
  %and3.i87 = and i64 %61, %60
  store i64 %and3.i87, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 8
  %dec.i88 = add i32 %63, -1
  store i32 %dec.i88, ptr %count_dw.i, align 8
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 8
  %arrayidx19 = getelementptr i32, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %67, 1303
  %and21 = and i32 %add20, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i88)
  %cmp.i91 = icmp slt i32 %dec.i88, 1
  br i1 %cmp.i91, label %if.then.i92, label %amdgpu_ring_write.exit89.amdgpu_ring_write.exit102_crit_edge

amdgpu_ring_write.exit89.amdgpu_ring_write.exit102_crit_edge: ; preds = %amdgpu_ring_write.exit89
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit102

if.then.i92:                                      ; preds = %amdgpu_ring_write.exit89
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit102

amdgpu_ring_write.exit102:                        ; preds = %if.then.i92, %amdgpu_ring_write.exit89.amdgpu_ring_write.exit102_crit_edge
  %68 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring1.i, align 4
  %70 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %wptr.i, align 8
  %inc.i95 = add i64 %71, 1
  store i64 %inc.i95, ptr %wptr.i, align 8
  %72 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %buf_mask.i, align 8
  %74 = trunc i64 %71 to i32
  %idxprom.i97 = and i32 %73, %74
  %arrayidx.i98 = getelementptr i32, ptr %69, i32 %idxprom.i97
  %75 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %and21, ptr %arrayidx.i98, align 4
  %76 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ptr_mask.i, align 8
  %78 = load i64, ptr %wptr.i, align 8
  %and3.i100 = and i64 %78, %77
  store i64 %and3.i100, ptr %wptr.i, align 8
  %79 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count_dw.i, align 8
  %dec.i101 = add i32 %80, -1
  store i32 %dec.i101, ptr %count_dw.i, align 8
  %81 = add i32 %shl, -129024
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %81)
  %82 = icmp ult i32 %81, 10240
  %83 = and i32 %reg, 1073741696
  call void @__sanitizer_cov_trace_const_cmp4(i32 30720, i32 %83)
  %84 = icmp eq i32 %83, 30720
  %or.cond = or i1 %84, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i101)
  %cmp.i104 = icmp slt i32 %dec.i101, 1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %amdgpu_ring_write.exit102
  br i1 %cmp.i104, label %if.then.i105, label %if.then.amdgpu_ring_write.exit115_crit_edge

if.then.amdgpu_ring_write.exit115_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit115

if.then.i105:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit115

amdgpu_ring_write.exit115:                        ; preds = %if.then.i105, %if.then.amdgpu_ring_write.exit115_crit_edge
  %85 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ring1.i, align 4
  %87 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %wptr.i, align 8
  %inc.i108 = add i64 %88, 1
  store i64 %inc.i108, ptr %wptr.i, align 8
  %89 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %buf_mask.i, align 8
  %91 = trunc i64 %88 to i32
  %idxprom.i110 = and i32 %90, %91
  %arrayidx.i111 = getelementptr i32, ptr %86, i32 %idxprom.i110
  %92 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 0, ptr %arrayidx.i111, align 4
  %93 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %ptr_mask.i, align 8
  %95 = load i64, ptr %wptr.i, align 8
  %and3.i113 = and i64 %95, %94
  store i64 %and3.i113, ptr %wptr.i, align 8
  %96 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count_dw.i, align 8
  %dec.i114 = add i32 %97, -1
  store i32 %dec.i114, ptr %count_dw.i, align 8
  %and29 = and i32 %reg, 262143
  %or32 = or i32 %and29, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i114)
  %cmp.i117 = icmp slt i32 %dec.i114, 1
  br i1 %cmp.i117, label %amdgpu_ring_write.exit115.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit115.if.end_crit_edge

amdgpu_ring_write.exit115.if.end_crit_edge:       ; preds = %amdgpu_ring_write.exit115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

amdgpu_ring_write.exit115.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.else:                                          ; preds = %amdgpu_ring_write.exit102
  br i1 %cmp.i104, label %if.then.i131, label %if.else.amdgpu_ring_write.exit141_crit_edge

if.else.amdgpu_ring_write.exit141_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit141

if.then.i131:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit141

amdgpu_ring_write.exit141:                        ; preds = %if.then.i131, %if.else.amdgpu_ring_write.exit141_crit_edge
  %98 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ring1.i, align 4
  %100 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %wptr.i, align 8
  %inc.i134 = add i64 %101, 1
  store i64 %inc.i134, ptr %wptr.i, align 8
  %102 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %buf_mask.i, align 8
  %104 = trunc i64 %101 to i32
  %idxprom.i136 = and i32 %103, %104
  %arrayidx.i137 = getelementptr i32, ptr %99, i32 %idxprom.i136
  %105 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 %shl, ptr %arrayidx.i137, align 4
  %106 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %ptr_mask.i, align 8
  %108 = load i64, ptr %wptr.i, align 8
  %and3.i139 = and i64 %108, %107
  store i64 %and3.i139, ptr %wptr.i, align 8
  %109 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %count_dw.i, align 8
  %dec.i140 = add i32 %110, -1
  store i32 %dec.i140, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i140)
  %cmp.i143 = icmp slt i32 %dec.i140, 1
  br i1 %cmp.i143, label %amdgpu_ring_write.exit141.if.end.sink.split_crit_edge, label %amdgpu_ring_write.exit141.if.end_crit_edge

amdgpu_ring_write.exit141.if.end_crit_edge:       ; preds = %amdgpu_ring_write.exit141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

amdgpu_ring_write.exit141.if.end.sink.split_crit_edge: ; preds = %amdgpu_ring_write.exit141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %amdgpu_ring_write.exit141.if.end.sink.split_crit_edge, %amdgpu_ring_write.exit115.if.end.sink.split_crit_edge
  %.sink.ph = phi i32 [ %or32, %amdgpu_ring_write.exit115.if.end.sink.split_crit_edge ], [ 805306368, %amdgpu_ring_write.exit141.if.end.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %amdgpu_ring_write.exit141.if.end_crit_edge, %amdgpu_ring_write.exit115.if.end_crit_edge
  %.sink = phi i32 [ %or32, %amdgpu_ring_write.exit115.if.end_crit_edge ], [ 805306368, %amdgpu_ring_write.exit141.if.end_crit_edge ], [ %.sink.ph, %if.end.sink.split ]
  %111 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ring1.i, align 4
  %113 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %wptr.i, align 8
  %inc.i147 = add i64 %114, 1
  store i64 %inc.i147, ptr %wptr.i, align 8
  %115 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %buf_mask.i, align 8
  %117 = trunc i64 %114 to i32
  %idxprom.i149 = and i32 %116, %117
  %arrayidx.i150 = getelementptr i32, ptr %112, i32 %idxprom.i149
  %118 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 %.sink, ptr %arrayidx.i150, align 4
  %119 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %ptr_mask.i, align 8
  %121 = load i64, ptr %wptr.i, align 8
  %and3.i152 = and i64 %121, %120
  store i64 %and3.i152, ptr %wptr.i, align 8
  %122 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.in = load i32, ptr %count_dw.i, align 8
  %123 = add i32 %.in, -1
  store i32 %123, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cmp.i156 = icmp slt i32 %123, 1
  br i1 %cmp.i156, label %if.then.i157, label %if.end.amdgpu_ring_write.exit167_crit_edge

if.end.amdgpu_ring_write.exit167_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_ring_write.exit167

if.then.i157:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %amdgpu_ring_write.exit167

amdgpu_ring_write.exit167:                        ; preds = %if.then.i157, %if.end.amdgpu_ring_write.exit167_crit_edge
  %124 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ring1.i, align 4
  %126 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %wptr.i, align 8
  %inc.i160 = add i64 %127, 1
  store i64 %inc.i160, ptr %wptr.i, align 8
  %128 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %buf_mask.i, align 8
  %130 = trunc i64 %127 to i32
  %idxprom.i162 = and i32 %129, %130
  %arrayidx.i163 = getelementptr i32, ptr %125, i32 %idxprom.i162
  %131 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile i32 %mask, ptr %arrayidx.i163, align 4
  %132 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %ptr_mask.i, align 8
  %134 = load i64, ptr %wptr.i, align 8
  %and3.i165 = and i64 %134, %133
  store i64 %and3.i165, ptr %wptr.i, align 8
  %135 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %count_dw.i, align 8
  %dec.i166 = add i32 %136, -1
  store i32 %dec.i166, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_emit_reg_write_reg_wait_helper(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_fence_wait_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcn_v1_0_set_pg_for_begin_use(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jpeg_v1_0_set_interrupt_state(ptr nocapture noundef readnone %adev, ptr nocapture noundef readnone %source, i32 noundef %type, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jpeg_v1_0_process_interrupt(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #4
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %1)
  %cond = icmp eq i32 %1, 126
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %inst = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 111, i32 1
  %call = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %inst) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %src_data = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 10
  %2 = ptrtoint ptr %src_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_data, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %3) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c", i32 488, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c", i32 583, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jpeg_v1_0_set_dec_ring_funcs._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jpeg_v1_0_set_dec_ring_funcs._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @jpeg_v1_0_decode_ring_vm_funcs, !9, !"jpeg_v1_0_decode_ring_vm_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c", i32 545, i32 39}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c", i32 605, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c", i32 609, i32 4}
!16 = !{ptr @jpeg_v1_0_irq_funcs, !17, !"jpeg_v1_0_irq_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c", i32 586, i32 42}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c", i32 436, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/jpeg_v1_0.c", i32 443, i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!"branch_weights", i32 1, i32 2000}
