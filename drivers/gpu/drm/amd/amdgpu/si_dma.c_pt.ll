; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/si_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/si_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amd_ip_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_ip_block_version = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_ring_funcs = type { i32, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_buffer_funcs = type { i32, i32, ptr, i32, i32, ptr }
%struct.amdgpu_vm_pte_funcs = type { i32, ptr, ptr, ptr }
%struct.amdgpu_irq_src_funcs = type { ptr, ptr }
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

@sdma_offsets = dso_local constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 512], [24 x i8] zeroinitializer }, align 32
@si_dma_ip_funcs = internal constant { %struct.amd_ip_funcs, [44 x i8] } { %struct.amd_ip_funcs { ptr @.str, ptr @si_dma_early_init, ptr null, ptr @si_dma_sw_init, ptr @si_dma_sw_fini, ptr null, ptr @si_dma_hw_init, ptr @si_dma_hw_fini, ptr null, ptr @si_dma_suspend, ptr @si_dma_resume, ptr @si_dma_is_idle, ptr @si_dma_wait_for_idle, ptr null, ptr null, ptr @si_dma_soft_reset, ptr null, ptr @si_dma_set_clockgating_state, ptr @si_dma_set_powergating_state, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@si_dma_ip_block = dso_local constant { %struct.amdgpu_ip_block_version, [44 x i8] } { %struct.amdgpu_ip_block_version { i32 7, i32 1, i32 0, i32 0, ptr @si_dma_ip_funcs }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si_dma\00", [25 x i8] zeroinitializer }, align 32
@si_dma_ring_funcs = internal constant { %struct.amdgpu_ring_funcs, [32 x i8] } { %struct.amdgpu_ring_funcs { i32 2, i32 15, i32 -268435456, i8 0, i8 0, i32 0, i32 0, ptr @si_dma_ring_get_rptr, ptr @si_dma_ring_get_wptr, ptr @si_dma_ring_set_wptr, ptr null, ptr null, i32 51, i32 10, ptr @si_dma_ring_emit_ib, ptr @si_dma_ring_emit_fence, ptr @si_dma_ring_emit_pipeline_sync, ptr @si_dma_ring_emit_vm_flush, ptr null, ptr null, ptr @si_dma_ring_test_ring, ptr @si_dma_ring_test_ib, ptr @amdgpu_ring_insert_nop, ptr null, ptr null, ptr @si_dma_ring_pad_ib, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si_dma_ring_emit_wreg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"amdgpu: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@si_dma_buffer_funcs = internal constant { %struct.amdgpu_buffer_funcs, [40 x i8] } { %struct.amdgpu_buffer_funcs { i32 1048568, i32 5, ptr @si_dma_emit_copy_buffer, i32 1048568, i32 4, ptr @si_dma_emit_fill_buffer }, [40 x i8] zeroinitializer }, align 32
@si_dma_vm_pte_funcs = internal constant { %struct.amdgpu_vm_pte_funcs, [16 x i8] } { %struct.amdgpu_vm_pte_funcs { i32 5, ptr @si_dma_vm_copy_pte, ptr @si_dma_vm_write_pte, ptr @si_dma_vm_set_pte_pde }, [16 x i8] zeroinitializer }, align 32
@si_dma_trap_irq_funcs = internal constant { %struct.amdgpu_irq_src_funcs, [24 x i8] } { %struct.amdgpu_irq_src_funcs { ptr @si_dma_set_trap_irq_state, ptr @si_dma_process_trap_irq }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdma%d\00", [25 x i8] zeroinitializer }, align 32
@si_dma_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016[drm] si_dma_soft_reset --- not implemented !!!!!!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si_dma_soft_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/amd/amdgpu/si_dma.c\00", [60 x i8] zeroinitializer }, align 32
@si_dma_soft_reset._entry_ptr = internal global ptr @si_dma_soft_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"sdma_offsets\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 30, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"si_dma_ip_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 707, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"si_dma_ip_block\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 854, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 708, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"si_dma_ring_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 724, i32 39 }
@___asan_gen_.24 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 314, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"si_dma_buffer_funcs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 818, i32 41 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"si_dma_vm_pte_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 834, i32 41 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"si_dma_trap_irq_funcs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 757, i32 42 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 507, i32 23 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [39 x i8] c"../drivers/gpu/drm/amd/amdgpu/si_dma.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 587, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @si_dma_soft_reset._entry, ptr @si_dma_soft_reset._entry_ptr, ptr @sdma_offsets, ptr @si_dma_ip_funcs, ptr @si_dma_ip_block, ptr @.str, ptr @si_dma_ring_funcs, ptr @.str.1, ptr @si_dma_buffer_funcs, ptr @si_dma_vm_pte_funcs, ptr @si_dma_trap_irq_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_offsets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_dma_ip_funcs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_dma_ip_block to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_dma_ring_funcs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_dma_buffer_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_dma_vm_pte_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_dma_trap_irq_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_dma_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_early_init(ptr noundef %handle) #0 align 64 {
for.body.lr.ph.i:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %num_instances, align 4
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %funcs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.06.i, i32 3, i32 1
  %1 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @si_dma_ring_funcs, ptr %funcs.i, align 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp.i = icmp slt i32 %inc.i, %3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %si_dma_set_ring_funcs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

si_dma_set_ring_funcs.exit:                       ; preds = %for.body.i
  %buffer_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 3
  %4 = ptrtoint ptr %buffer_funcs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @si_dma_buffer_funcs, ptr %buffer_funcs.i, align 8
  %ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 0, i32 0, i32 3
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  %5 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ring.i, ptr %buffer_funcs_ring.i, align 4
  %vm_pte_funcs.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 11
  %6 = ptrtoint ptr %vm_pte_funcs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @si_dma_vm_pte_funcs, ptr %vm_pte_funcs.i, align 8
  %7 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp15.not.i = icmp eq i32 %8, 0
  br i1 %cmp15.not.i, label %si_dma_set_ring_funcs.exit.si_dma_set_vm_pte_funcs.exit_crit_edge, label %si_dma_set_ring_funcs.exit.for.body.i10_crit_edge

si_dma_set_ring_funcs.exit.for.body.i10_crit_edge: ; preds = %si_dma_set_ring_funcs.exit
  br label %for.body.i10

si_dma_set_ring_funcs.exit.si_dma_set_vm_pte_funcs.exit_crit_edge: ; preds = %si_dma_set_ring_funcs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_set_vm_pte_funcs.exit

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %si_dma_set_ring_funcs.exit.for.body.i10_crit_edge
  %i.016.i = phi i32 [ %inc.i8, %for.body.i10.for.body.i10_crit_edge ], [ 0, %si_dma_set_ring_funcs.exit.for.body.i10_crit_edge ]
  %sched.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.016.i, i32 3, i32 3
  %arrayidx3.i = getelementptr %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 12, i32 %i.016.i
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sched.i, ptr %arrayidx3.i, align 4
  %inc.i8 = add nuw i32 %i.016.i, 1
  %10 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_instances, align 4
  %cmp.i9 = icmp ult i32 %inc.i8, %11
  br i1 %cmp.i9, label %for.body.i10.for.body.i10_crit_edge, label %for.body.i10.si_dma_set_vm_pte_funcs.exit_crit_edge

for.body.i10.si_dma_set_vm_pte_funcs.exit_crit_edge: ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_set_vm_pte_funcs.exit

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i10

si_dma_set_vm_pte_funcs.exit:                     ; preds = %for.body.i10.si_dma_set_vm_pte_funcs.exit_crit_edge, %si_dma_set_ring_funcs.exit.si_dma_set_vm_pte_funcs.exit_crit_edge
  %.lcssa.i = phi i32 [ 0, %si_dma_set_ring_funcs.exit.si_dma_set_vm_pte_funcs.exit_crit_edge ], [ %11, %for.body.i10.si_dma_set_vm_pte_funcs.exit_crit_edge ]
  %vm_pte_num_scheds.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 65, i32 13
  %12 = ptrtoint ptr %vm_pte_num_scheds.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.lcssa.i, ptr %vm_pte_num_scheds.i, align 4
  %trap_irq.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %13 = ptrtoint ptr %trap_irq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %trap_irq.i, align 8
  %funcs.i11 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1, i32 2
  %14 = ptrtoint ptr %funcs.i11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @si_dma_trap_irq_funcs, ptr %funcs.i11, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_sw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %trap_irq = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 1
  %call = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 224, ptr noundef %trap_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @amdgpu_irq_add_id(ptr noundef %handle, i32 noundef 0, i32 noundef 244, ptr noundef %trap_irq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp41 = icmp sgt i32 %1, 0
  br i1 %cmp41, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.042, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ring9 = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.042, i32 3
  %ring_obj = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.042, i32 3, i32 4
  %4 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ring_obj, align 8
  %use_doorbell = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.042, i32 3, i32 24
  %5 = ptrtoint ptr %use_doorbell to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %use_doorbell, align 4
  %name = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.042, i32 3, i32 29
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef %i.042)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.042)
  %cmp13 = icmp ne i32 %i.042, 0
  %cond = zext i1 %cmp13 to i32
  %call14 = tail call i32 @amdgpu_ring_init(ptr noundef %handle, ptr noundef %ring9, i32 noundef 1024, ptr noundef %trap_irq, i32 noundef %cond, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call14, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_sw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sdma = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %ring = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma, i32 0, i32 %i.06, i32 3
  tail call void @amdgpu_ring_fini(ptr noundef %ring) #12
  %inc = add nuw nsw i32 %i.06, 1
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_hw_init(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp148.i = icmp sgt i32 %1, 0
  br i1 %cmp148.i, label %for.body.lr.ph.i, label %entry.si_dma_start.exit_crit_edge

entry.si_dma_start.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_start.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %gpu_addr.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 70, i32 2
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0149.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ring2.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0149.i, i32 3
  %arrayidx3.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.0149.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3.i, align 4
  %add.i = add i32 %3, 13329
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #12
  %add5.i = add i32 %3, 13330
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add5.i, i32 noundef 0, i32 noundef 0) #12
  %ring_size.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0149.i, i32 3, i32 9
  %4 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_size.i, align 8
  %div146.i = lshr i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp.i.i = icmp ugt i32 %5, 7
  %sub.i147.i = add nsw i32 %div146.i, -1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %sub.i147.i, i1 false) #12, !range !35
  %.neg = mul nsw i32 %6, -2
  %add.i.i.op = add nsw i32 %.neg, 64
  %shl.i = select i1 %cmp.i.i, i32 %add.i.i.op, i32 0
  %or.i = or i32 %shl.i, 8704
  %add42.i = add i32 %3, 13312
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add42.i, i32 noundef %or.i, i32 noundef 0) #12
  %add44.i = add i32 %3, 13314
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add44.i, i32 noundef 0, i32 noundef 0) #12
  %add46.i = add i32 %3, 13315
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add46.i, i32 noundef 0, i32 noundef 0) #12
  %7 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %gpu_addr.i, align 8
  %rptr_offs.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0149.i, i32 3, i32 6
  %9 = ptrtoint ptr %rptr_offs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rptr_offs.i, align 8
  %mul.i = shl i32 %10, 2
  %conv47.i = zext i32 %mul.i to i64
  %add48.i = add i64 %8, %conv47.i
  %add50.i = add i32 %3, 13320
  %conv51.i = trunc i64 %add48.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add50.i, i32 noundef %conv51.i, i32 noundef 0) #12
  %add53.i = add i32 %3, 13319
  %shr.i = lshr i64 %add48.i, 32
  %conv55.i = trunc i64 %shr.i to i32
  %and56.i = and i32 %conv55.i, 255
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add53.i, i32 noundef %and56.i, i32 noundef 0) #12
  %add59.i = add i32 %3, 13313
  %gpu_addr60.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0149.i, i32 3, i32 12
  %11 = ptrtoint ptr %gpu_addr60.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %gpu_addr60.i, align 8
  %shr61.i = lshr i64 %12, 8
  %conv62.i = trunc i64 %shr61.i to i32
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add59.i, i32 noundef %conv62.i, i32 noundef 0) #12
  %add65.i = add i32 %3, 13321
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add65.i, i32 noundef -2147483631, i32 noundef 0) #12
  %add67.i = add i32 %3, 13323
  %call68.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add67.i, i32 noundef 0) #12
  %and69.i = and i32 %call68.i, -268435457
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add67.i, i32 noundef %and69.i, i32 noundef 0) #12
  %wptr.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0149.i, i32 3, i32 7
  %13 = ptrtoint ptr %wptr.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %wptr.i, align 8
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add46.i, i32 noundef 0, i32 noundef 0) #12
  %or80.i = or i32 %shl.i, 12801
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add42.i, i32 noundef %or80.i, i32 noundef 0) #12
  %ready.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.0149.i, i32 3, i32 3, i32 17
  %14 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ready.i, align 4
  %call81.i = tail call i32 @amdgpu_ring_test_helper(ptr noundef %ring2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.si_dma_start.exit_crit_edge

for.body.i.si_dma_start.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_start.exit

if.end.i:                                         ; preds = %for.body.i
  %15 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp82.i = icmp eq ptr %16, %ring2.i
  br i1 %cmp82.i, label %if.then84.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then84.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %handle, i1 noundef zeroext true) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then84.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0149.i, 1
  %17 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.si_dma_start.exit_crit_edge

for.inc.i.si_dma_start.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_start.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

si_dma_start.exit:                                ; preds = %for.inc.i.si_dma_start.exit_crit_edge, %for.body.i.si_dma_start.exit_crit_edge, %entry.si_dma_start.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.si_dma_start.exit_crit_edge ], [ %call81.i, %for.body.i.si_dma_start.exit_crit_edge ], [ 0, %for.inc.i.si_dma_start.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_hw_fini(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not.i = icmp eq i32 %1, 0
  br i1 %cmp17.not.i, label %entry.si_dma_stop.exit_crit_edge, label %for.body.lr.ph.i

entry.si_dma_stop.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_stop.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %sdma.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %buffer_funcs_ring.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %ring2.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i, i32 0, i32 %i.018.i, i32 3
  %arrayidx3.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.018.i
  %2 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3.i, align 4
  %add.i = add i32 %3, 13312
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef 0) #12
  %and.i = and i32 %call.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i, i32 noundef %and.i, i32 noundef 0) #12
  %4 = ptrtoint ptr %buffer_funcs_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_funcs_ring.i, align 4
  %cmp6.i = icmp eq ptr %5, %ring2.i
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %handle, i1 noundef zeroext false) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %6 = ptrtoint ptr %num_instances.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.si_dma_stop.exit_crit_edge

for.inc.i.si_dma_stop.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_stop.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

si_dma_stop.exit:                                 ; preds = %for.inc.i.si_dma_stop.exit_crit_edge, %entry.si_dma_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_suspend(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_instances.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %0 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_instances.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp17.not.i.i, label %entry.si_dma_hw_fini.exit_crit_edge, label %for.body.lr.ph.i.i

entry.si_dma_hw_fini.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_hw_fini.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %sdma.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107
  %buffer_funcs_ring.i.i = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 68, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ring2.i.i = getelementptr [8 x %struct.amdgpu_sdma_instance], ptr %sdma.i.i, i32 0, i32 %i.018.i.i, i32 3
  %arrayidx3.i.i = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %i.018.i.i
  %2 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3.i.i, align 4
  %add.i.i = add i32 %3, 13312
  %call.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef 0) #12
  %and.i.i = and i32 %call.i.i, -2
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add.i.i, i32 noundef %and.i.i, i32 noundef 0) #12
  %4 = ptrtoint ptr %buffer_funcs_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_funcs_ring.i.i, align 4
  %cmp6.i.i = icmp eq ptr %5, %ring2.i.i
  br i1 %cmp6.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef %handle, i1 noundef zeroext false) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %6 = ptrtoint ptr %num_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.si_dma_hw_fini.exit_crit_edge

for.inc.i.i.si_dma_hw_fini.exit_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %si_dma_hw_fini.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

si_dma_hw_fini.exit:                              ; preds = %for.inc.i.i.si_dma_hw_fini.exit_crit_edge, %entry.si_dma_hw_fini.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_resume(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @si_dma_hw_init(ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si_dma_is_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 945, i32 noundef 0) #12
  %and = and i32 %call, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_wait_for_idle(ptr noundef %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 11
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef 945, i32 noundef 0) #12
  %and.i = and i32 %call.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #12
  %inc = add nuw i32 %i.05, 1
  %3 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_soft_reset(ptr nocapture noundef readnone %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_set_clockgating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else11_crit_edge

entry.if.else11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11

land.lhs.true:                                    ; preds = %entry
  %cg_flags = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 99
  %0 = ptrtoint ptr %cg_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cg_flags, align 8
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else11_crit_edge, label %for.cond.preheader

land.lhs.true.if.else11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else11

for.cond.preheader:                               ; preds = %land.lhs.true
  %num_instances = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %2 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_instances, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp268 = icmp sgt i32 %3, 0
  br i1 %cmp268, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end36_crit_edge

for.cond.preheader.if.end36_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %if.end9.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.069)
  %cmp3 = icmp eq i32 %i.069, 0
  %. = select i1 %cmp3, i32 0, i32 512
  %add = or i32 %., 13359
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add, i32 noundef 0) #12
  %and5 = and i32 %call, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %and5, i32 %call)
  %cmp6.not = icmp eq i32 %and5, %call
  br i1 %cmp6.not, label %for.body.if.end9_crit_edge, label %if.then7

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add, i32 noundef %and5, i32 noundef 0) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body.if.end9_crit_edge
  %add10 = or i32 %., 13360
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add10, i32 noundef 256, i32 noundef 0) #12
  %inc = add nuw nsw i32 %i.069, 1
  %4 = ptrtoint ptr %num_instances to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_instances, align 4
  %cmp2 = icmp slt i32 %inc, %5
  br i1 %cmp2, label %if.end9.for.body_crit_edge, label %if.end9.if.end36_crit_edge

if.end9.if.end36_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.else11:                                        ; preds = %land.lhs.true.if.else11_crit_edge, %entry.if.else11_crit_edge
  %num_instances14 = getelementptr inbounds %struct.amdgpu_device, ptr %handle, i32 0, i32 107, i32 8
  %6 = ptrtoint ptr %num_instances14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_instances14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1570 = icmp sgt i32 %7, 0
  br i1 %cmp1570, label %if.else11.for.body16_crit_edge, label %if.else11.if.end36_crit_edge

if.else11.if.end36_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else11.for.body16_crit_edge:                   ; preds = %if.else11
  br label %for.body16

for.body16:                                       ; preds = %for.inc33.for.body16_crit_edge, %if.else11.for.body16_crit_edge
  %i.171 = phi i32 [ %inc34, %for.inc33.for.body16_crit_edge ], [ 0, %if.else11.for.body16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.171)
  %cmp17 = icmp eq i32 %i.171, 0
  %.66 = select i1 %cmp17, i32 0, i32 512
  %add21 = or i32 %.66, 13359
  %call22 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add21, i32 noundef 0) #12
  %or = or i32 %call22, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %call22)
  %cmp23.not = icmp eq i32 %or, %call22
  br i1 %cmp23.not, label %for.body16.if.end26_crit_edge, label %if.then24

for.body16.if.end26_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add21, i32 noundef %or, i32 noundef 0) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %for.body16.if.end26_crit_edge
  %add27 = or i32 %.66, 13360
  %call28 = tail call i32 @amdgpu_device_rreg(ptr noundef %handle, i32 noundef %add27, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, -16777216
  br i1 %cmp29.not, label %if.end26.for.inc33_crit_edge, label %if.then30

if.end26.for.inc33_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef %add27, i32 noundef -16777216, i32 noundef 0) #12
  br label %for.inc33

for.inc33:                                        ; preds = %if.then30, %if.end26.for.inc33_crit_edge
  %inc34 = add nuw nsw i32 %i.171, 1
  %8 = ptrtoint ptr %num_instances14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_instances14, align 4
  %cmp15 = icmp slt i32 %inc34, %9
  br i1 %cmp15, label %for.inc33.for.body16_crit_edge, label %for.inc33.if.end36_crit_edge

for.inc33.if.end36_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

for.inc33.for.body16_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16

if.end36:                                         ; preds = %for.inc33.if.end36_crit_edge, %if.else11.if.end36_crit_edge, %if.end9.if.end36_crit_edge, %for.cond.preheader.if.end36_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_set_powergating_state(ptr noundef %handle, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13367, i32 noundef 8192, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13366, i32 noundef 268439807, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13367, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13367, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13367, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13367, i32 noundef 0, i32 noundef 0) #12
  tail call void @amdgpu_device_wreg(ptr noundef %handle, i32 noundef 13367, i32 noundef 0, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @si_dma_ring_get_rptr(ptr nocapture noundef readonly %ring) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %wb1 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %2 = ptrtoint ptr %wb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wb1, align 4
  %rptr_offs = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 6
  %4 = ptrtoint ptr %rptr_offs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rptr_offs, align 8
  %shr = lshr i32 %5, 2
  %arrayidx = getelementptr i32, ptr %3, i32 %shr
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  %conv = zext i32 %7 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @si_dma_ring_get_wptr(ptr noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ring2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 107, i32 0, i32 0, i32 3
  %cmp = icmp ne ptr %ring2, %ring
  %cond = zext i1 %cmp to i32
  %arrayidx3 = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %cond
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %3, 13315
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %1, i32 noundef %add, i32 noundef 0) #12
  %and = lshr i32 %call, 2
  %shr = and i32 %and, 65535
  %conv = zext i32 %shr to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_ring_set_wptr(ptr noundef readonly %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ring2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 107, i32 0, i32 0, i32 3
  %cmp = icmp ne ptr %ring2, %ring
  %cond = zext i1 %cmp to i32
  %arrayidx3 = getelementptr [2 x i32], ptr @sdma_offsets, i32 0, i32 %cond
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %add = add i32 %3, 13315
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr, align 8
  %conv = trunc i64 %5 to i32
  %shl = shl i32 %conv, 2
  %and4 = and i32 %shl, 262140
  tail call void @amdgpu_device_wreg(ptr noundef %1, i32 noundef %add, i32 noundef %and4, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_ring_emit_ib(ptr noundef %ring, ptr noundef readonly %job, ptr nocapture noundef readonly %ib, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %job, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vmid1 = getelementptr inbounds %struct.amdgpu_job, ptr %job, i32 0, i32 12
  %0 = ptrtoint ptr %vmid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vmid1, align 8
  %phi.bo = shl i32 %1, 20
  %phi.bo22 = and i32 %phi.bo, 15728640
  %phi.bo23 = or i32 %phi.bo22, 1073741824
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo23, %cond.true ], [ 1073741824, %entry.cond.end_crit_edge ]
  %wptr = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wptr, align 8
  %and22163 = and i64 %3, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %and22163)
  %cmp.not64 = icmp eq i64 %and22163, 5
  br i1 %cmp.not64, label %cond.end.while.end_crit_edge, label %while.body.lr.ph

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %count_dw.i, align 8
  br label %while.body

while.body:                                       ; preds = %amdgpu_ring_write.exit.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %.pr, %while.body.lr.ph ], [ %dec.i, %amdgpu_ring_write.exit.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %while.body.amdgpu_ring_write.exit_crit_edge

while.body.amdgpu_ring_write.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %while.body.amdgpu_ring_write.exit_crit_edge
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %8 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %wptr, align 8
  %10 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask.i, align 8
  %12 = trunc i64 %9 to i32
  %idxprom.i = and i32 %11, %12
  %arrayidx.i = getelementptr i32, ptr %7, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 -268435456, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ptr_mask.i, align 8
  %16 = load i64, ptr %wptr, align 8
  %and3.i = and i64 %16, %15
  store i64 %and3.i, ptr %wptr, align 8
  %17 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %and221 = and i64 %and3.i, 7
  %cmp.not = icmp eq i64 %and221, 5
  br i1 %cmp.not, label %amdgpu_ring_write.exit.while.end_crit_edge, label %amdgpu_ring_write.exit.while.body_crit_edge

amdgpu_ring_write.exit.while.body_crit_edge:      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

amdgpu_ring_write.exit.while.end_crit_edge:       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %amdgpu_ring_write.exit.while.end_crit_edge, %cond.end.while.end_crit_edge
  %count_dw.i24 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %19 = ptrtoint ptr %count_dw.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count_dw.i24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i25 = icmp slt i32 %20, 1
  br i1 %cmp.i25, label %if.then.i26, label %while.end.amdgpu_ring_write.exit36_crit_edge

while.end.amdgpu_ring_write.exit36_crit_edge:     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit36

if.then.i26:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit36

amdgpu_ring_write.exit36:                         ; preds = %if.then.i26, %while.end.amdgpu_ring_write.exit36_crit_edge
  %ring1.i27 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %21 = ptrtoint ptr %ring1.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i27, align 4
  %23 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr, align 8
  %inc.i29 = add i64 %24, 1
  store i64 %inc.i29, ptr %wptr, align 8
  %buf_mask.i30 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %25 = ptrtoint ptr %buf_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i30, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i31 = and i32 %26, %27
  %arrayidx.i32 = getelementptr i32, ptr %22, i32 %idxprom.i31
  %28 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %cond, ptr %arrayidx.i32, align 4
  %ptr_mask.i33 = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %29 = ptrtoint ptr %ptr_mask.i33 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i33, align 8
  %31 = load i64, ptr %wptr, align 8
  %and3.i34 = and i64 %31, %30
  store i64 %and3.i34, ptr %wptr, align 8
  %32 = ptrtoint ptr %count_dw.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i24, align 8
  %dec.i35 = add i32 %33, -1
  store i32 %dec.i35, ptr %count_dw.i24, align 8
  %gpu_addr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 2
  %34 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %gpu_addr, align 8
  %36 = trunc i64 %35 to i32
  %conv7 = and i32 %36, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i35)
  %cmp.i38 = icmp slt i32 %dec.i35, 1
  br i1 %cmp.i38, label %if.then.i39, label %amdgpu_ring_write.exit36.amdgpu_ring_write.exit49_crit_edge

amdgpu_ring_write.exit36.amdgpu_ring_write.exit49_crit_edge: ; preds = %amdgpu_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit49

if.then.i39:                                      ; preds = %amdgpu_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit49

amdgpu_ring_write.exit49:                         ; preds = %if.then.i39, %amdgpu_ring_write.exit36.amdgpu_ring_write.exit49_crit_edge
  %37 = ptrtoint ptr %ring1.i27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i27, align 4
  %39 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %wptr, align 8
  %inc.i42 = add i64 %40, 1
  store i64 %inc.i42, ptr %wptr, align 8
  %41 = ptrtoint ptr %buf_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buf_mask.i30, align 8
  %43 = trunc i64 %40 to i32
  %idxprom.i44 = and i32 %42, %43
  %arrayidx.i45 = getelementptr i32, ptr %38, i32 %idxprom.i44
  %44 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %conv7, ptr %arrayidx.i45, align 4
  %45 = ptrtoint ptr %ptr_mask.i33 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ptr_mask.i33, align 8
  %47 = load i64, ptr %wptr, align 8
  %and3.i47 = and i64 %47, %46
  store i64 %and3.i47, ptr %wptr, align 8
  %48 = ptrtoint ptr %count_dw.i24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count_dw.i24, align 8
  %dec.i48 = add i32 %49, -1
  store i32 %dec.i48, ptr %count_dw.i24, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %50 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length_dw, align 4
  %52 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %gpu_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i48)
  %cmp.i51 = icmp slt i32 %dec.i48, 1
  br i1 %cmp.i51, label %if.then.i52, label %amdgpu_ring_write.exit49.amdgpu_ring_write.exit62_crit_edge

amdgpu_ring_write.exit49.amdgpu_ring_write.exit62_crit_edge: ; preds = %amdgpu_ring_write.exit49
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit62

if.then.i52:                                      ; preds = %amdgpu_ring_write.exit49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit62

amdgpu_ring_write.exit62:                         ; preds = %if.then.i52, %amdgpu_ring_write.exit49.amdgpu_ring_write.exit62_crit_edge
  %shl8 = shl i32 %51, 12
  %shr = lshr i64 %53, 32
  %conv11 = trunc i64 %shr to i32
  %and12 = and i32 %conv11, 255
  %or13 = or i32 %and12, %shl8
  %54 = ptrtoint ptr %ring1.i27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring1.i27, align 4
  %56 = ptrtoint ptr %wptr to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wptr, align 8
  %inc.i55 = add i64 %57, 1
  store i64 %inc.i55, ptr %wptr, align 8
  %58 = ptrtoint ptr %buf_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_mask.i30, align 8
  %60 = trunc i64 %57 to i32
  %idxprom.i57 = and i32 %59, %60
  %arrayidx.i58 = getelementptr i32, ptr %55, i32 %idxprom.i57
  %61 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %or13, ptr %arrayidx.i58, align 4
  %62 = ptrtoint ptr %ptr_mask.i33 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ptr_mask.i33, align 8
  %64 = load i64, ptr %wptr, align 8
  %and3.i60 = and i64 %64, %63
  store i64 %and3.i60, ptr %wptr, align 8
  %65 = ptrtoint ptr %count_dw.i24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i24, align 8
  %dec.i61 = add i32 %66, -1
  store i32 %dec.i61, ptr %count_dw.i24, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_ring_emit_fence(ptr noundef %ring, i64 noundef %addr, i64 noundef %seq, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1610612736, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %15 = trunc i64 %addr to i32
  %conv = and i32 %15, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i30 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i30, label %if.then.i31, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit41

if.then.i31:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit41

amdgpu_ring_write.exit41:                         ; preds = %if.then.i31, %amdgpu_ring_write.exit.amdgpu_ring_write.exit41_crit_edge
  %16 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring1.i, align 4
  %18 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wptr.i, align 8
  %inc.i34 = add i64 %19, 1
  store i64 %inc.i34, ptr %wptr.i, align 8
  %20 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_mask.i, align 8
  %22 = trunc i64 %19 to i32
  %idxprom.i36 = and i32 %21, %22
  %arrayidx.i37 = getelementptr i32, ptr %17, i32 %idxprom.i36
  %23 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %conv, ptr %arrayidx.i37, align 4
  %24 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ptr_mask.i, align 8
  %26 = load i64, ptr %wptr.i, align 8
  %and3.i39 = and i64 %26, %25
  store i64 %and3.i39, ptr %wptr.i, align 8
  %27 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_dw.i, align 8
  %dec.i40 = add i32 %28, -1
  store i32 %dec.i40, ptr %count_dw.i, align 8
  %shr = lshr i64 %addr, 32
  %conv3 = trunc i64 %shr to i32
  %and4 = and i32 %conv3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i40)
  %cmp.i43 = icmp slt i32 %dec.i40, 1
  br i1 %cmp.i43, label %if.then.i44, label %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge

amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge: ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit54

if.then.i44:                                      ; preds = %amdgpu_ring_write.exit41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit54

amdgpu_ring_write.exit54:                         ; preds = %if.then.i44, %amdgpu_ring_write.exit41.amdgpu_ring_write.exit54_crit_edge
  %29 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring1.i, align 4
  %31 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wptr.i, align 8
  %inc.i47 = add i64 %32, 1
  store i64 %inc.i47, ptr %wptr.i, align 8
  %33 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_mask.i, align 8
  %35 = trunc i64 %32 to i32
  %idxprom.i49 = and i32 %34, %35
  %arrayidx.i50 = getelementptr i32, ptr %30, i32 %idxprom.i49
  %36 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %and4, ptr %arrayidx.i50, align 4
  %37 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ptr_mask.i, align 8
  %39 = load i64, ptr %wptr.i, align 8
  %and3.i52 = and i64 %39, %38
  store i64 %and3.i52, ptr %wptr.i, align 8
  %40 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count_dw.i, align 8
  %dec.i53 = add i32 %41, -1
  store i32 %dec.i53, ptr %count_dw.i, align 8
  %conv5 = trunc i64 %seq to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i53)
  %cmp.i56 = icmp slt i32 %dec.i53, 1
  br i1 %cmp.i56, label %if.then.i57, label %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge

amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge: ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit67

if.then.i57:                                      ; preds = %amdgpu_ring_write.exit54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit67

amdgpu_ring_write.exit67:                         ; preds = %if.then.i57, %amdgpu_ring_write.exit54.amdgpu_ring_write.exit67_crit_edge
  %42 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring1.i, align 4
  %44 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %wptr.i, align 8
  %inc.i60 = add i64 %45, 1
  store i64 %inc.i60, ptr %wptr.i, align 8
  %46 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf_mask.i, align 8
  %48 = trunc i64 %45 to i32
  %idxprom.i62 = and i32 %47, %48
  %arrayidx.i63 = getelementptr i32, ptr %43, i32 %idxprom.i62
  %49 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %conv5, ptr %arrayidx.i63, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ptr_mask.i, align 8
  %52 = load i64, ptr %wptr.i, align 8
  %and3.i65 = and i64 %52, %51
  store i64 %and3.i65, ptr %wptr.i, align 8
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 8
  %dec.i66 = add i32 %54, -1
  store i32 %dec.i66, ptr %count_dw.i, align 8
  br i1 %tobool.not, label %amdgpu_ring_write.exit67.if.end_crit_edge, label %if.then

amdgpu_ring_write.exit67.if.end_crit_edge:        ; preds = %amdgpu_ring_write.exit67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %amdgpu_ring_write.exit67
  %add = add i64 %addr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i66)
  %cmp.i69 = icmp slt i32 %dec.i66, 1
  br i1 %cmp.i69, label %if.then.i70, label %if.then.amdgpu_ring_write.exit80_crit_edge

if.then.amdgpu_ring_write.exit80_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit80

if.then.i70:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit80

amdgpu_ring_write.exit80:                         ; preds = %if.then.i70, %if.then.amdgpu_ring_write.exit80_crit_edge
  %55 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring1.i, align 4
  %57 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %wptr.i, align 8
  %inc.i73 = add i64 %58, 1
  store i64 %inc.i73, ptr %wptr.i, align 8
  %59 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf_mask.i, align 8
  %61 = trunc i64 %58 to i32
  %idxprom.i75 = and i32 %60, %61
  %arrayidx.i76 = getelementptr i32, ptr %56, i32 %idxprom.i75
  %62 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 1610612736, ptr %arrayidx.i76, align 4
  %63 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %ptr_mask.i, align 8
  %65 = load i64, ptr %wptr.i, align 8
  %and3.i78 = and i64 %65, %64
  store i64 %and3.i78, ptr %wptr.i, align 8
  %66 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %count_dw.i, align 8
  %dec.i79 = add i32 %67, -1
  store i32 %dec.i79, ptr %count_dw.i, align 8
  %68 = trunc i64 %add to i32
  %conv8 = and i32 %68, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i79)
  %cmp.i82 = icmp slt i32 %dec.i79, 1
  br i1 %cmp.i82, label %if.then.i83, label %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge

amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge: ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit93

if.then.i83:                                      ; preds = %amdgpu_ring_write.exit80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit93

amdgpu_ring_write.exit93:                         ; preds = %if.then.i83, %amdgpu_ring_write.exit80.amdgpu_ring_write.exit93_crit_edge
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 4
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %wptr.i, align 8
  %inc.i86 = add i64 %72, 1
  store i64 %inc.i86, ptr %wptr.i, align 8
  %73 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_mask.i, align 8
  %75 = trunc i64 %72 to i32
  %idxprom.i88 = and i32 %74, %75
  %arrayidx.i89 = getelementptr i32, ptr %70, i32 %idxprom.i88
  %76 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %conv8, ptr %arrayidx.i89, align 4
  %77 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %ptr_mask.i, align 8
  %79 = load i64, ptr %wptr.i, align 8
  %and3.i91 = and i64 %79, %78
  store i64 %and3.i91, ptr %wptr.i, align 8
  %80 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count_dw.i, align 8
  %dec.i92 = add i32 %81, -1
  store i32 %dec.i92, ptr %count_dw.i, align 8
  %shr9 = lshr i64 %add, 32
  %conv11 = trunc i64 %shr9 to i32
  %and12 = and i32 %conv11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i92)
  %cmp.i95 = icmp slt i32 %dec.i92, 1
  br i1 %cmp.i95, label %if.then.i96, label %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge

amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge: ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit106

if.then.i96:                                      ; preds = %amdgpu_ring_write.exit93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit106

amdgpu_ring_write.exit106:                        ; preds = %if.then.i96, %amdgpu_ring_write.exit93.amdgpu_ring_write.exit106_crit_edge
  %82 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ring1.i, align 4
  %84 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %wptr.i, align 8
  %inc.i99 = add i64 %85, 1
  store i64 %inc.i99, ptr %wptr.i, align 8
  %86 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %buf_mask.i, align 8
  %88 = trunc i64 %85 to i32
  %idxprom.i101 = and i32 %87, %88
  %arrayidx.i102 = getelementptr i32, ptr %83, i32 %idxprom.i101
  %89 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 %and12, ptr %arrayidx.i102, align 4
  %90 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %ptr_mask.i, align 8
  %92 = load i64, ptr %wptr.i, align 8
  %and3.i104 = and i64 %92, %91
  store i64 %and3.i104, ptr %wptr.i, align 8
  %93 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count_dw.i, align 8
  %dec.i105 = add i32 %94, -1
  store i32 %dec.i105, ptr %count_dw.i, align 8
  %shr13 = lshr i64 %seq, 32
  %conv15 = trunc i64 %shr13 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i105)
  %cmp.i108 = icmp slt i32 %dec.i105, 1
  br i1 %cmp.i108, label %if.then.i109, label %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge

amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge: ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit119

if.then.i109:                                     ; preds = %amdgpu_ring_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit119

amdgpu_ring_write.exit119:                        ; preds = %if.then.i109, %amdgpu_ring_write.exit106.amdgpu_ring_write.exit119_crit_edge
  %95 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ring1.i, align 4
  %97 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %wptr.i, align 8
  %inc.i112 = add i64 %98, 1
  store i64 %inc.i112, ptr %wptr.i, align 8
  %99 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %buf_mask.i, align 8
  %101 = trunc i64 %98 to i32
  %idxprom.i114 = and i32 %100, %101
  %arrayidx.i115 = getelementptr i32, ptr %96, i32 %idxprom.i114
  %102 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 %conv15, ptr %arrayidx.i115, align 4
  %103 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %ptr_mask.i, align 8
  %105 = load i64, ptr %wptr.i, align 8
  %and3.i117 = and i64 %105, %104
  store i64 %and3.i117, ptr %wptr.i, align 8
  %106 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count_dw.i, align 8
  %dec.i118 = add i32 %107, -1
  store i32 %dec.i118, ptr %count_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %amdgpu_ring_write.exit119, %amdgpu_ring_write.exit67.if.end_crit_edge
  %108 = phi i32 [ %dec.i118, %amdgpu_ring_write.exit119 ], [ %dec.i66, %amdgpu_ring_write.exit67.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp.i121 = icmp slt i32 %108, 1
  br i1 %cmp.i121, label %if.then.i122, label %if.end.amdgpu_ring_write.exit132_crit_edge

if.end.amdgpu_ring_write.exit132_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit132

if.then.i122:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit132

amdgpu_ring_write.exit132:                        ; preds = %if.then.i122, %if.end.amdgpu_ring_write.exit132_crit_edge
  %109 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ring1.i, align 4
  %111 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %wptr.i, align 8
  %inc.i125 = add i64 %112, 1
  store i64 %inc.i125, ptr %wptr.i, align 8
  %113 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %buf_mask.i, align 8
  %115 = trunc i64 %112 to i32
  %idxprom.i127 = and i32 %114, %115
  %arrayidx.i128 = getelementptr i32, ptr %110, i32 %idxprom.i127
  %116 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 1879048192, ptr %arrayidx.i128, align 4
  %117 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %ptr_mask.i, align 8
  %119 = load i64, ptr %wptr.i, align 8
  %and3.i130 = and i64 %119, %118
  store i64 %and3.i130, ptr %wptr.i, align 8
  %120 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %count_dw.i, align 8
  %dec.i131 = add i32 %121, -1
  store i32 %dec.i131, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_ring_emit_pipeline_sync(ptr noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_drv = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2
  %sync_seq = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %sync_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_seq, align 4
  %2 = ptrtoint ptr %fence_drv to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fence_drv, align 8
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %9, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %10 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_mask.i, align 8
  %12 = trunc i64 %9 to i32
  %idxprom.i = and i32 %11, %12
  %arrayidx.i = getelementptr i32, ptr %7, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 -402653184, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %14 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ptr_mask.i, align 8
  %16 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %16, %15
  store i64 %and3.i, ptr %wptr.i, align 8
  %17 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i13 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i13, label %if.then.i14, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit24

if.then.i14:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit24

amdgpu_ring_write.exit24:                         ; preds = %if.then.i14, %amdgpu_ring_write.exit.amdgpu_ring_write.exit24_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 4
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %wptr.i, align 8
  %inc.i17 = add i64 %22, 1
  store i64 %inc.i17, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_mask.i, align 8
  %25 = trunc i64 %22 to i32
  %idxprom.i19 = and i32 %24, %25
  %arrayidx.i20 = getelementptr i32, ptr %20, i32 %idxprom.i19
  %26 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %conv, ptr %arrayidx.i20, align 4
  %27 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ptr_mask.i, align 8
  %29 = load i64, ptr %wptr.i, align 8
  %and3.i22 = and i64 %29, %28
  store i64 %and3.i22, ptr %wptr.i, align 8
  %30 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count_dw.i, align 8
  %dec.i23 = add i32 %31, -1
  store i32 %dec.i23, ptr %count_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv3 = trunc i64 %shr to i32
  %or = or i32 %conv3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i23)
  %cmp.i26 = icmp slt i32 %dec.i23, 1
  br i1 %cmp.i26, label %if.then.i27, label %amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge

amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge: ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit37

if.then.i27:                                      ; preds = %amdgpu_ring_write.exit24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit37

amdgpu_ring_write.exit37:                         ; preds = %if.then.i27, %amdgpu_ring_write.exit24.amdgpu_ring_write.exit37_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 4
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wptr.i, align 8
  %inc.i30 = add i64 %35, 1
  store i64 %inc.i30, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_mask.i, align 8
  %38 = trunc i64 %35 to i32
  %idxprom.i32 = and i32 %37, %38
  %arrayidx.i33 = getelementptr i32, ptr %33, i32 %idxprom.i32
  %39 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %or, ptr %arrayidx.i33, align 4
  %40 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ptr_mask.i, align 8
  %42 = load i64, ptr %wptr.i, align 8
  %and3.i35 = and i64 %42, %41
  store i64 %and3.i35, ptr %wptr.i, align 8
  %43 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count_dw.i, align 8
  %dec.i36 = add i32 %44, -1
  store i32 %dec.i36, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i36)
  %cmp.i39 = icmp slt i32 %dec.i36, 1
  br i1 %cmp.i39, label %if.then.i40, label %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge

amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge: ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit50

if.then.i40:                                      ; preds = %amdgpu_ring_write.exit37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit50

amdgpu_ring_write.exit50:                         ; preds = %if.then.i40, %amdgpu_ring_write.exit37.amdgpu_ring_write.exit50_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 4
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %wptr.i, align 8
  %inc.i43 = add i64 %48, 1
  store i64 %inc.i43, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf_mask.i, align 8
  %51 = trunc i64 %48 to i32
  %idxprom.i45 = and i32 %50, %51
  %arrayidx.i46 = getelementptr i32, ptr %46, i32 %idxprom.i45
  %52 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 -1, ptr %arrayidx.i46, align 4
  %53 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ptr_mask.i, align 8
  %55 = load i64, ptr %wptr.i, align 8
  %and3.i48 = and i64 %55, %54
  store i64 %and3.i48, ptr %wptr.i, align 8
  %56 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count_dw.i, align 8
  %dec.i49 = add i32 %57, -1
  store i32 %dec.i49, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i49)
  %cmp.i52 = icmp slt i32 %dec.i49, 1
  br i1 %cmp.i52, label %if.then.i53, label %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge

amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge: ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit63

if.then.i53:                                      ; preds = %amdgpu_ring_write.exit50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit63

amdgpu_ring_write.exit63:                         ; preds = %if.then.i53, %amdgpu_ring_write.exit50.amdgpu_ring_write.exit63_crit_edge
  %58 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ring1.i, align 4
  %60 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %wptr.i, align 8
  %inc.i56 = add i64 %61, 1
  store i64 %inc.i56, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_mask.i, align 8
  %64 = trunc i64 %61 to i32
  %idxprom.i58 = and i32 %63, %64
  %arrayidx.i59 = getelementptr i32, ptr %59, i32 %idxprom.i58
  %65 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 %1, ptr %arrayidx.i59, align 4
  %66 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ptr_mask.i, align 8
  %68 = load i64, ptr %wptr.i, align 8
  %and3.i61 = and i64 %68, %67
  store i64 %and3.i61, ptr %wptr.i, align 8
  %69 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %count_dw.i, align 8
  %dec.i62 = add i32 %70, -1
  store i32 %dec.i62, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i62)
  %cmp.i65 = icmp slt i32 %dec.i62, 1
  br i1 %cmp.i65, label %if.then.i66, label %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge

amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge: ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit76

if.then.i66:                                      ; preds = %amdgpu_ring_write.exit63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit76

amdgpu_ring_write.exit76:                         ; preds = %if.then.i66, %amdgpu_ring_write.exit63.amdgpu_ring_write.exit76_crit_edge
  %71 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ring1.i, align 4
  %73 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %wptr.i, align 8
  %inc.i69 = add i64 %74, 1
  store i64 %inc.i69, ptr %wptr.i, align 8
  %75 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buf_mask.i, align 8
  %77 = trunc i64 %74 to i32
  %idxprom.i71 = and i32 %76, %77
  %arrayidx.i72 = getelementptr i32, ptr %72, i32 %idxprom.i71
  %78 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 805306400, ptr %arrayidx.i72, align 4
  %79 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %ptr_mask.i, align 8
  %81 = load i64, ptr %wptr.i, align 8
  %and3.i74 = and i64 %81, %80
  store i64 %and3.i74, ptr %wptr.i, align 8
  %82 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count_dw.i, align 8
  %dec.i75 = add i32 %83, -1
  store i32 %dec.i75, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_ring_emit_vm_flush(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %gmc_funcs = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 62, i32 38
  %2 = ptrtoint ptr %gmc_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmc_funcs, align 4
  %emit_flush_gpu_tlb = getelementptr inbounds %struct.amdgpu_gmc_funcs, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %emit_flush_gpu_tlb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emit_flush_gpu_tlb, align 4
  %call = tail call i64 %5(ptr noundef %ring, i32 noundef %vmid, i64 noundef %pd_addr) #12
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
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
  store volatile i32 -536870912, ptr %arrayidx.i, align 4
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
  %cmp.i10 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i10, label %if.then.i11, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit21

if.then.i11:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit21

amdgpu_ring_write.exit21:                         ; preds = %if.then.i11, %amdgpu_ring_write.exit.amdgpu_ring_write.exit21_crit_edge
  %21 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring1.i, align 4
  %23 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %wptr.i, align 8
  %inc.i14 = add i64 %24, 1
  store i64 %inc.i14, ptr %wptr.i, align 8
  %25 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_mask.i, align 8
  %27 = trunc i64 %24 to i32
  %idxprom.i16 = and i32 %26, %27
  %arrayidx.i17 = getelementptr i32, ptr %22, i32 %idxprom.i16
  %28 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1310, ptr %arrayidx.i17, align 4
  %29 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ptr_mask.i, align 8
  %31 = load i64, ptr %wptr.i, align 8
  %and3.i19 = and i64 %31, %30
  store i64 %and3.i19, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count_dw.i, align 8
  %dec.i20 = add i32 %33, -1
  store i32 %dec.i20, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i20)
  %cmp.i23 = icmp slt i32 %dec.i20, 1
  br i1 %cmp.i23, label %if.then.i24, label %amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge

amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge: ; preds = %amdgpu_ring_write.exit21
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit34

if.then.i24:                                      ; preds = %amdgpu_ring_write.exit21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit34

amdgpu_ring_write.exit34:                         ; preds = %if.then.i24, %amdgpu_ring_write.exit21.amdgpu_ring_write.exit34_crit_edge
  %34 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ring1.i, align 4
  %36 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %wptr.i, align 8
  %inc.i27 = add i64 %37, 1
  store i64 %inc.i27, ptr %wptr.i, align 8
  %38 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buf_mask.i, align 8
  %40 = trunc i64 %37 to i32
  %idxprom.i29 = and i32 %39, %40
  %arrayidx.i30 = getelementptr i32, ptr %35, i32 %idxprom.i29
  %41 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 16711680, ptr %arrayidx.i30, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ptr_mask.i, align 8
  %44 = load i64, ptr %wptr.i, align 8
  %and3.i32 = and i64 %44, %43
  store i64 %and3.i32, ptr %wptr.i, align 8
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 8
  %dec.i33 = add i32 %46, -1
  store i32 %dec.i33, ptr %count_dw.i, align 8
  %shl = shl nuw i32 1, %vmid
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i33)
  %cmp.i36 = icmp slt i32 %dec.i33, 1
  br i1 %cmp.i36, label %if.then.i37, label %amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge

amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge: ; preds = %amdgpu_ring_write.exit34
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit47

if.then.i37:                                      ; preds = %amdgpu_ring_write.exit34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit47

amdgpu_ring_write.exit47:                         ; preds = %if.then.i37, %amdgpu_ring_write.exit34.amdgpu_ring_write.exit47_crit_edge
  %47 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ring1.i, align 4
  %49 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wptr.i, align 8
  %inc.i40 = add i64 %50, 1
  store i64 %inc.i40, ptr %wptr.i, align 8
  %51 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf_mask.i, align 8
  %53 = trunc i64 %50 to i32
  %idxprom.i42 = and i32 %52, %53
  %arrayidx.i43 = getelementptr i32, ptr %48, i32 %idxprom.i42
  %54 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %shl, ptr %arrayidx.i43, align 4
  %55 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ptr_mask.i, align 8
  %57 = load i64, ptr %wptr.i, align 8
  %and3.i45 = and i64 %57, %56
  store i64 %and3.i45, ptr %wptr.i, align 8
  %58 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count_dw.i, align 8
  %dec.i46 = add i32 %59, -1
  store i32 %dec.i46, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i46)
  %cmp.i49 = icmp slt i32 %dec.i46, 1
  br i1 %cmp.i49, label %if.then.i50, label %amdgpu_ring_write.exit47.amdgpu_ring_write.exit60_crit_edge

amdgpu_ring_write.exit47.amdgpu_ring_write.exit60_crit_edge: ; preds = %amdgpu_ring_write.exit47
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit60

if.then.i50:                                      ; preds = %amdgpu_ring_write.exit47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit60

amdgpu_ring_write.exit60:                         ; preds = %if.then.i50, %amdgpu_ring_write.exit47.amdgpu_ring_write.exit60_crit_edge
  %60 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ring1.i, align 4
  %62 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wptr.i, align 8
  %inc.i53 = add i64 %63, 1
  store i64 %inc.i53, ptr %wptr.i, align 8
  %64 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buf_mask.i, align 8
  %66 = trunc i64 %63 to i32
  %idxprom.i55 = and i32 %65, %66
  %arrayidx.i56 = getelementptr i32, ptr %61, i32 %idxprom.i55
  %67 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %arrayidx.i56, align 4
  %68 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ptr_mask.i, align 8
  %70 = load i64, ptr %wptr.i, align 8
  %and3.i58 = and i64 %70, %69
  store i64 %and3.i58, ptr %wptr.i, align 8
  %71 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count_dw.i, align 8
  %dec.i59 = add i32 %72, -1
  store i32 %dec.i59, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i59)
  %cmp.i62 = icmp slt i32 %dec.i59, 1
  br i1 %cmp.i62, label %if.then.i63, label %amdgpu_ring_write.exit60.amdgpu_ring_write.exit73_crit_edge

amdgpu_ring_write.exit60.amdgpu_ring_write.exit73_crit_edge: ; preds = %amdgpu_ring_write.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit73

if.then.i63:                                      ; preds = %amdgpu_ring_write.exit60
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit73

amdgpu_ring_write.exit73:                         ; preds = %if.then.i63, %amdgpu_ring_write.exit60.amdgpu_ring_write.exit73_crit_edge
  %73 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ring1.i, align 4
  %75 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %wptr.i, align 8
  %inc.i66 = add i64 %76, 1
  store i64 %inc.i66, ptr %wptr.i, align 8
  %77 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_mask.i, align 8
  %79 = trunc i64 %76 to i32
  %idxprom.i68 = and i32 %78, %79
  %arrayidx.i69 = getelementptr i32, ptr %74, i32 %idxprom.i68
  %80 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 32, ptr %arrayidx.i69, align 4
  %81 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %ptr_mask.i, align 8
  %83 = load i64, ptr %wptr.i, align 8
  %and3.i71 = and i64 %83, %82
  store i64 %and3.i71, ptr %wptr.i, align 8
  %84 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count_dw.i, align 8
  %dec.i72 = add i32 %85, -1
  store i32 %dec.i72, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_ring_test_ring(ptr noundef %ring) #1 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #12
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %index, align 4, !annotation !36
  %call = call i32 @amdgpu_device_wb_get(ptr noundef %1, ptr noundef nonnull %index) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_addr2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 2
  %3 = ptrtoint ptr %gpu_addr2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %gpu_addr2, align 8
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %wb4 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %7 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wb4, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1377894710, ptr %arrayidx, align 4
  %call5 = call i32 @amdgpu_ring_alloc(ptr noundef %ring, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.error_free_wb_crit_edge

if.end.error_free_wb_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

if.end8:                                          ; preds = %if.end
  %mul = shl i32 %6, 2
  %conv = zext i32 %mul to i64
  %add = add i64 %4, %conv
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %10 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.end8.amdgpu_ring_write.exit_crit_edge

if.end8.amdgpu_ring_write.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %if.end8.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %14 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %15, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %16 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_mask.i, align 8
  %18 = trunc i64 %15 to i32
  %idxprom.i = and i32 %17, %18
  %arrayidx.i = getelementptr i32, ptr %13, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 536870913, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %20 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ptr_mask.i, align 8
  %22 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %22, %21
  store i64 %and3.i, ptr %wptr.i, align 8
  %23 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %conv9 = trunc i64 %add to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i51 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i51, label %if.then.i52, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit62_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit62_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit62

if.then.i52:                                      ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit62

amdgpu_ring_write.exit62:                         ; preds = %if.then.i52, %amdgpu_ring_write.exit.amdgpu_ring_write.exit62_crit_edge
  %25 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring1.i, align 4
  %27 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %wptr.i, align 8
  %inc.i55 = add i64 %28, 1
  store i64 %inc.i55, ptr %wptr.i, align 8
  %29 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_mask.i, align 8
  %31 = trunc i64 %28 to i32
  %idxprom.i57 = and i32 %30, %31
  %arrayidx.i58 = getelementptr i32, ptr %26, i32 %idxprom.i57
  %32 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %conv9, ptr %arrayidx.i58, align 4
  %33 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ptr_mask.i, align 8
  %35 = load i64, ptr %wptr.i, align 8
  %and3.i60 = and i64 %35, %34
  store i64 %and3.i60, ptr %wptr.i, align 8
  %36 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count_dw.i, align 8
  %dec.i61 = add i32 %37, -1
  store i32 %dec.i61, ptr %count_dw.i, align 8
  %shr = lshr i64 %add, 32
  %conv11 = trunc i64 %shr to i32
  %and12 = and i32 %conv11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i61)
  %cmp.i64 = icmp slt i32 %dec.i61, 1
  br i1 %cmp.i64, label %if.then.i65, label %amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge

amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge: ; preds = %amdgpu_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit75

if.then.i65:                                      ; preds = %amdgpu_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit75

amdgpu_ring_write.exit75:                         ; preds = %if.then.i65, %amdgpu_ring_write.exit62.amdgpu_ring_write.exit75_crit_edge
  %38 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ring1.i, align 4
  %40 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %wptr.i, align 8
  %inc.i68 = add i64 %41, 1
  store i64 %inc.i68, ptr %wptr.i, align 8
  %42 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_mask.i, align 8
  %44 = trunc i64 %41 to i32
  %idxprom.i70 = and i32 %43, %44
  %arrayidx.i71 = getelementptr i32, ptr %39, i32 %idxprom.i70
  %45 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %and12, ptr %arrayidx.i71, align 4
  %46 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ptr_mask.i, align 8
  %48 = load i64, ptr %wptr.i, align 8
  %and3.i73 = and i64 %48, %47
  store i64 %and3.i73, ptr %wptr.i, align 8
  %49 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count_dw.i, align 8
  %dec.i74 = add i32 %50, -1
  store i32 %dec.i74, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i74)
  %cmp.i77 = icmp slt i32 %dec.i74, 1
  br i1 %cmp.i77, label %if.then.i78, label %amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge

amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge: ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit88

if.then.i78:                                      ; preds = %amdgpu_ring_write.exit75
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit88

amdgpu_ring_write.exit88:                         ; preds = %if.then.i78, %amdgpu_ring_write.exit75.amdgpu_ring_write.exit88_crit_edge
  %51 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ring1.i, align 4
  %53 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wptr.i, align 8
  %inc.i81 = add i64 %54, 1
  store i64 %inc.i81, ptr %wptr.i, align 8
  %55 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_mask.i, align 8
  %57 = trunc i64 %54 to i32
  %idxprom.i83 = and i32 %56, %57
  %arrayidx.i84 = getelementptr i32, ptr %52, i32 %idxprom.i83
  %58 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 -559038737, ptr %arrayidx.i84, align 4
  %59 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %ptr_mask.i, align 8
  %61 = load i64, ptr %wptr.i, align 8
  %and3.i86 = and i64 %61, %60
  store i64 %and3.i86, ptr %wptr.i, align 8
  %62 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count_dw.i, align 8
  %dec.i87 = add i32 %63, -1
  store i32 %dec.i87, ptr %count_dw.i, align 8
  call void @amdgpu_ring_commit(ptr noundef %ring) #12
  %usec_timeout = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 11
  %64 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %usec_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp89.not = icmp eq i32 %65, 0
  br i1 %cmp89.not, label %amdgpu_ring_write.exit88.error_free_wb_crit_edge, label %amdgpu_ring_write.exit88.for.body_crit_edge

amdgpu_ring_write.exit88.for.body_crit_edge:      ; preds = %amdgpu_ring_write.exit88
  br label %for.body

amdgpu_ring_write.exit88.error_free_wb_crit_edge: ; preds = %amdgpu_ring_write.exit88
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %amdgpu_ring_write.exit88.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %amdgpu_ring_write.exit88.for.body_crit_edge ]
  %66 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wb4, align 4
  %68 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index, align 4
  %arrayidx16 = getelementptr i32, ptr %67, i32 %69
  %70 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %71)
  %cmp17 = icmp eq i32 %71, -272716322
  br i1 %cmp17, label %for.body.error_free_wb_crit_edge, label %if.end20

for.body.error_free_wb_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

if.end20:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748) #12
  %inc = add nuw i32 %i.090, 1
  %73 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %usec_timeout, align 8
  %cmp = icmp ult i32 %inc, %74
  br i1 %cmp, label %if.end20.for.body_crit_edge, label %if.end20.error_free_wb_crit_edge

if.end20.error_free_wb_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free_wb

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

error_free_wb:                                    ; preds = %if.end20.error_free_wb_crit_edge, %for.body.error_free_wb_crit_edge, %amdgpu_ring_write.exit88.error_free_wb_crit_edge, %if.end.error_free_wb_crit_edge
  %r.0 = phi i32 [ %call5, %if.end.error_free_wb_crit_edge ], [ -110, %amdgpu_ring_write.exit88.error_free_wb_crit_edge ], [ 0, %for.body.error_free_wb_crit_edge ], [ -110, %if.end20.error_free_wb_crit_edge ]
  %75 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %76) #12
  br label %cleanup

cleanup:                                          ; preds = %error_free_wb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %error_free_wb ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_ring_test_ib(ptr noundef %ring, i32 noundef %timeout) #1 align 64 {
entry:
  %ib = alloca %struct.amdgpu_ib, align 8
  %f = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ib) #12
  %2 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %3 = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #12
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %f, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #12
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %index, align 4, !annotation !36
  %call = call i32 @amdgpu_device_wb_get(ptr noundef %1, ptr noundef nonnull %index) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpu_addr2 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 2
  %6 = ptrtoint ptr %gpu_addr2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %gpu_addr2, align 8
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %wb4 = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 70, i32 1
  %10 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wb4, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 -1377894710, ptr %arrayidx, align 4
  %13 = call ptr @memset(ptr %ib, i32 0, i32 24)
  %call5 = call i32 @amdgpu_ib_get(ptr noundef %1, ptr noundef null, i32 noundef 256, i32 noundef 2, ptr noundef nonnull %ib) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.err0_crit_edge

if.end.err0_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0

if.end8:                                          ; preds = %if.end
  %mul = shl i32 %9, 2
  %conv = zext i32 %mul to i64
  %add = add i64 %7, %conv
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 536870913, ptr %15, align 4
  %conv10 = trunc i64 %add to i32
  %17 = load ptr, ptr %3, align 8
  %arrayidx12 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv10, ptr %arrayidx12, align 4
  %shr = lshr i64 %add, 32
  %conv14 = trunc i64 %shr to i32
  %and15 = and i32 %conv14, 255
  %19 = load ptr, ptr %3, align 8
  %arrayidx17 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and15, ptr %arrayidx17, align 4
  %21 = load ptr, ptr %3, align 8
  %arrayidx19 = getelementptr i32, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -559038737, ptr %arrayidx19, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %2, align 4
  %call20 = call i32 @amdgpu_ib_schedule(ptr noundef %ring, i32 noundef 1, ptr noundef nonnull %ib, ptr noundef null, ptr noundef nonnull %f) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end8.err1_crit_edge

if.end8.err1_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end23:                                         ; preds = %if.end8
  %24 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f, align 4
  %call24 = call i32 @dma_fence_wait_timeout(ptr noundef %25, i1 noundef zeroext false, i32 noundef %timeout) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp eq i32 %call24, 0
  br i1 %cmp, label %if.end23.err1_crit_edge, label %if.else

if.end23.err1_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp27 = icmp slt i32 %call24, 0
  br i1 %cmp27, label %if.else.err1_crit_edge, label %if.end31

if.else.err1_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %wb4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wb4, align 4
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index, align 4
  %arrayidx34 = getelementptr i32, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -272716322, i32 %31)
  %cmp35 = icmp eq i32 %31, -272716322
  %. = select i1 %cmp35, i32 0, i32 -22
  br label %err1

err1:                                             ; preds = %if.end31, %if.else.err1_crit_edge, %if.end23.err1_crit_edge, %if.end8.err1_crit_edge
  %r.0 = phi i32 [ %call20, %if.end8.err1_crit_edge ], [ %call24, %if.else.err1_crit_edge ], [ -110, %if.end23.err1_crit_edge ], [ %., %if.end31 ]
  call void @amdgpu_ib_free(ptr noundef %1, ptr noundef nonnull %ib, ptr noundef null) #12
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %err1.err0_crit_edge, label %if.then.i

err1.err0_crit_edge:                              ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0

if.then.i:                                        ; preds = %err1
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %33, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !37
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !38
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.err0_crit_edge, label %if.then10.i.i.i.i.i, !prof !39

if.end5.i.i.i.i.i.err0_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err0

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %err0

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !40
  call void @dma_fence_release(ptr noundef %refcount.i) #12
  br label %err0

err0:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.err0_crit_edge, %err1.err0_crit_edge, %if.end.err0_crit_edge
  %r.1 = phi i32 [ %call5, %if.end.err0_crit_edge ], [ %r.0, %err1.err0_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.err0_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i ], [ %r.0, %if.then.i.i ]
  %35 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index, align 4
  call void @amdgpu_device_wb_free(ptr noundef %1, i32 noundef %36) #12
  br label %cleanup

cleanup:                                          ; preds = %err0, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err0 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ib) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_insert_nop(ptr noundef, i32 noundef) #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_ring_pad_ib(ptr nocapture noundef readnone %ring, ptr nocapture noundef %ib) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %0 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length_dw, align 4
  %and4 = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not5 = icmp eq i32 %and4, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %7, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 8
  %inc = add i32 %2, 1
  %5 = ptrtoint ptr %length_dw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -268435456, ptr %arrayidx, align 4
  %7 = load i32, ptr %length_dw, align 4
  %and = and i32 %7, 7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_ring_emit_wreg(ptr nocapture noundef %ring, i32 noundef %reg, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count_dw.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp slt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.amdgpu_ring_write.exit_crit_edge

entry.amdgpu_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit

amdgpu_ring_write.exit:                           ; preds = %if.then.i, %entry.amdgpu_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring1.i, align 4
  %wptr.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %wptr.i, align 8
  %inc.i = add i64 %5, 1
  store i64 %inc.i, ptr %wptr.i, align 8
  %buf_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 14
  %6 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_mask.i, align 8
  %8 = trunc i64 %5 to i32
  %idxprom.i = and i32 %7, %8
  %arrayidx.i = getelementptr i32, ptr %3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1879048192, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.amdgpu_ring, ptr %ring, i32 0, i32 13
  %10 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptr_mask.i, align 8
  %12 = load i64, ptr %wptr.i, align 8
  %and3.i = and i64 %12, %11
  store i64 %and3.i, ptr %wptr.i, align 8
  %13 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_dw.i, align 8
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %count_dw.i, align 8
  %or = or i32 %reg, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i4 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i4, label %if.then.i5, label %amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge

amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge: ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit15

if.then.i5:                                       ; preds = %amdgpu_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit15

amdgpu_ring_write.exit15:                         ; preds = %if.then.i5, %amdgpu_ring_write.exit.amdgpu_ring_write.exit15_crit_edge
  %15 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1.i, align 4
  %17 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wptr.i, align 8
  %inc.i8 = add i64 %18, 1
  store i64 %inc.i8, ptr %wptr.i, align 8
  %19 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_mask.i, align 8
  %21 = trunc i64 %18 to i32
  %idxprom.i10 = and i32 %20, %21
  %arrayidx.i11 = getelementptr i32, ptr %16, i32 %idxprom.i10
  %22 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %or, ptr %arrayidx.i11, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ptr_mask.i, align 8
  %25 = load i64, ptr %wptr.i, align 8
  %and3.i13 = and i64 %25, %24
  store i64 %and3.i13, ptr %wptr.i, align 8
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 8
  %dec.i14 = add i32 %27, -1
  store i32 %dec.i14, ptr %count_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i14)
  %cmp.i17 = icmp slt i32 %dec.i14, 1
  br i1 %cmp.i17, label %if.then.i18, label %amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge

amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge: ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #14
  br label %amdgpu_ring_write.exit28

if.then.i18:                                      ; preds = %amdgpu_ring_write.exit15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %amdgpu_ring_write.exit28

amdgpu_ring_write.exit28:                         ; preds = %if.then.i18, %amdgpu_ring_write.exit15.amdgpu_ring_write.exit28_crit_edge
  %28 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring1.i, align 4
  %30 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %wptr.i, align 8
  %inc.i21 = add i64 %31, 1
  store i64 %inc.i21, ptr %wptr.i, align 8
  %32 = ptrtoint ptr %buf_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_mask.i, align 8
  %34 = trunc i64 %31 to i32
  %idxprom.i23 = and i32 %33, %34
  %arrayidx.i24 = getelementptr i32, ptr %29, i32 %idxprom.i23
  %35 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %val, ptr %arrayidx.i24, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ptr_mask.i, align 8
  %38 = load i64, ptr %wptr.i, align 8
  %and3.i26 = and i64 %38, %37
  store i64 %and3.i26, ptr %wptr.i, align 8
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 8
  %dec.i27 = add i32 %40, -1
  store i32 %dec.i27, ptr %count_dw.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_wb_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wb_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ib_schedule(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ib_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @si_dma_emit_copy_buffer(ptr nocapture noundef %ib, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %byte_count, i1 noundef zeroext %tmz) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %byte_count, 1048575
  %or = or i32 %and, 872415232
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %dst_offset to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc4 = add i32 %6, 1
  store i32 %inc4, ptr %length_dw, align 4
  %arrayidx5 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx5, align 4
  %conv7 = trunc i64 %src_offset to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc10 = add i32 %9, 1
  store i32 %inc10, ptr %length_dw, align 4
  %arrayidx11 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %arrayidx11, align 4
  %shr = lshr i64 %dst_offset, 32
  %conv13 = trunc i64 %shr to i32
  %and14 = and i32 %conv13, 255
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %12, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and14, ptr %arrayidx18, align 4
  %shr19 = lshr i64 %src_offset, 32
  %conv21 = trunc i64 %shr19 to i32
  %and22 = and i32 %conv21, 255
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc25 = add i32 %15, 1
  store i32 %inc25, ptr %length_dw, align 4
  %arrayidx26 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and22, ptr %arrayidx26, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @si_dma_emit_fill_buffer(ptr nocapture noundef %ib, i32 noundef %src_data, i64 noundef %dst_offset, i32 noundef %byte_count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %div25 = lshr i32 %byte_count, 2
  %and = and i32 %div25, 1048575
  %or = or i32 %and, -805306368
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %dst_offset to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc4 = add i32 %6, 1
  store i32 %inc4, ptr %length_dw, align 4
  %arrayidx5 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx5, align 4
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc8 = add i32 %9, 1
  store i32 %inc8, ptr %length_dw, align 4
  %arrayidx9 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %src_data, ptr %arrayidx9, align 4
  %sh.diff = lshr i64 %dst_offset, 16
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl12 = and i32 %tr.sh.diff, -65536
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc15 = add i32 %12, 1
  store i32 %inc15, ptr %length_dw, align 4
  %arrayidx16 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl12, ptr %arrayidx16, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @si_dma_vm_copy_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %src, i32 noundef %count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 3
  %and = and i32 %mul, 1048568
  %or = or i32 %and, 872415232
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc4 = add i32 %6, 1
  store i32 %inc4, ptr %length_dw, align 4
  %arrayidx5 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx5, align 4
  %conv7 = trunc i64 %src to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc10 = add i32 %9, 1
  store i32 %inc10, ptr %length_dw, align 4
  %arrayidx11 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %arrayidx11, align 4
  %shr = lshr i64 %pe, 32
  %conv13 = trunc i64 %shr to i32
  %and14 = and i32 %conv13, 255
  %11 = load ptr, ptr %ptr, align 8
  %12 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %12, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and14, ptr %arrayidx18, align 4
  %shr19 = lshr i64 %src, 32
  %conv21 = trunc i64 %shr19 to i32
  %and22 = and i32 %conv21, 255
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %length_dw, align 4
  %inc25 = add i32 %15, 1
  store i32 %inc25, ptr %length_dw, align 4
  %arrayidx26 = getelementptr i32, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and22, ptr %arrayidx26, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_vm_write_pte(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %value, i32 noundef %count, i32 noundef %incr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 1
  %and = and i32 %mul, 1048574
  %or = or i32 %and, 536870912
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %2 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length_dw, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe to i32
  %5 = load ptr, ptr %ptr, align 8
  %6 = load i32, ptr %length_dw, align 4
  %inc4 = add i32 %6, 1
  store i32 %inc4, ptr %length_dw, align 4
  %arrayidx5 = getelementptr i32, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx5, align 4
  %shr = lshr i64 %pe, 32
  %conv7 = trunc i64 %shr to i32
  %8 = load ptr, ptr %ptr, align 8
  %9 = load i32, ptr %length_dw, align 4
  %inc10 = add i32 %9, 1
  store i32 %inc10, ptr %length_dw, align 4
  %arrayidx11 = getelementptr i32, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv7, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp.not41 = icmp eq i32 %mul, 0
  br i1 %cmp.not41, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv26 = zext i32 %incr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ndw.043 = phi i32 [ %mul, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %value.addr.042 = phi i64 [ %value, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %conv14 = trunc i64 %value.addr.042 to i32
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr, align 8
  %13 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length_dw, align 4
  %inc17 = add i32 %14, 1
  store i32 %inc17, ptr %length_dw, align 4
  %arrayidx18 = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv14, ptr %arrayidx18, align 4
  %shr19 = lshr i64 %value.addr.042, 32
  %conv21 = trunc i64 %shr19 to i32
  %16 = load ptr, ptr %ptr, align 8
  %17 = load i32, ptr %length_dw, align 4
  %inc24 = add i32 %17, 1
  store i32 %inc24, ptr %length_dw, align 4
  %arrayidx25 = getelementptr i32, ptr %16, i32 %17
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv21, ptr %arrayidx25, align 4
  %add = add i64 %value.addr.042, %conv26
  %sub = add i32 %ndw.043, -2
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si_dma_vm_set_pte_pde(ptr nocapture noundef %ib, i64 noundef %pe, i64 noundef %addr, i32 noundef %count, i32 noundef %incr, i64 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not87 = icmp eq i32 %count, 0
  br i1 %tobool.not87, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %and = and i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  %ptr = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 3
  %length_dw = getelementptr inbounds %struct.amdgpu_ib, ptr %ib, i32 0, i32 1
  %conv17 = trunc i64 %flags to i32
  %shr22 = lshr i64 %flags, 32
  %conv24 = trunc i64 %shr22 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %pe.addr.090 = phi i64 [ %pe, %while.body.lr.ph ], [ %add, %while.body.while.body_crit_edge ]
  %addr.addr.089 = phi i64 [ %addr, %while.body.lr.ph ], [ %add53, %while.body.while.body_crit_edge ]
  %count.addr.088 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %mul = shl i32 %count.addr.088, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1048574)
  %extract.t = trunc i64 %addr.addr.089 to i32
  %extract = lshr i64 %addr.addr.089, 32
  %extract.t86 = trunc i64 %extract to i32
  %value.0.off0 = select i1 %tobool1.not, i32 0, i32 %extract.t
  %value.0.off32 = select i1 %tobool1.not, i32 0, i32 %extract.t86
  %or = or i32 %0, 606076928
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptr, align 8
  %3 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length_dw, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %length_dw, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %arrayidx, align 4
  %conv = trunc i64 %pe.addr.090 to i32
  %6 = load ptr, ptr %ptr, align 8
  %7 = load i32, ptr %length_dw, align 4
  %inc7 = add i32 %7, 1
  store i32 %inc7, ptr %length_dw, align 4
  %arrayidx8 = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %arrayidx8, align 4
  %shr = lshr i64 %pe.addr.090, 32
  %conv10 = trunc i64 %shr to i32
  %and11 = and i32 %conv10, 255
  %9 = load ptr, ptr %ptr, align 8
  %10 = load i32, ptr %length_dw, align 4
  %inc14 = add i32 %10, 1
  store i32 %inc14, ptr %length_dw, align 4
  %arrayidx15 = getelementptr i32, ptr %9, i32 %10
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and11, ptr %arrayidx15, align 4
  %12 = load ptr, ptr %ptr, align 8
  %13 = load i32, ptr %length_dw, align 4
  %inc20 = add i32 %13, 1
  store i32 %inc20, ptr %length_dw, align 4
  %arrayidx21 = getelementptr i32, ptr %12, i32 %13
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv17, ptr %arrayidx21, align 4
  %15 = load ptr, ptr %ptr, align 8
  %16 = load i32, ptr %length_dw, align 4
  %inc27 = add i32 %16, 1
  store i32 %inc27, ptr %length_dw, align 4
  %arrayidx28 = getelementptr i32, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv24, ptr %arrayidx28, align 4
  %18 = load ptr, ptr %ptr, align 8
  %19 = load i32, ptr %length_dw, align 4
  %inc32 = add i32 %19, 1
  store i32 %inc32, ptr %length_dw, align 4
  %arrayidx33 = getelementptr i32, ptr %18, i32 %19
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %value.0.off0, ptr %arrayidx33, align 4
  %21 = load ptr, ptr %ptr, align 8
  %22 = load i32, ptr %length_dw, align 4
  %inc39 = add i32 %22, 1
  store i32 %inc39, ptr %length_dw, align 4
  %arrayidx40 = getelementptr i32, ptr %21, i32 %22
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %value.0.off32, ptr %arrayidx40, align 4
  %24 = load ptr, ptr %ptr, align 8
  %25 = load i32, ptr %length_dw, align 4
  %inc43 = add i32 %25, 1
  store i32 %inc43, ptr %length_dw, align 4
  %arrayidx44 = getelementptr i32, ptr %24, i32 %25
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %incr, ptr %arrayidx44, align 4
  %27 = load ptr, ptr %ptr, align 8
  %28 = load i32, ptr %length_dw, align 4
  %inc47 = add i32 %28, 1
  store i32 %inc47, ptr %length_dw, align 4
  %arrayidx48 = getelementptr i32, ptr %27, i32 %28
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx48, align 4
  %mul49 = shl nuw nsw i32 %0, 2
  %conv50 = zext i32 %mul49 to i64
  %add = add i64 %pe.addr.090, %conv50
  %div85 = lshr exact i32 %0, 1
  %mul51 = mul i32 %div85, %incr
  %conv52 = zext i32 %mul51 to i64
  %add53 = add i64 %addr.addr.089, %conv52
  %sub = sub i32 %count.addr.088, %div85
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_set_trap_irq_state(ptr noundef %adev, ptr nocapture noundef readnone %src, i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog14_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.sw.epilog14_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog14

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %state, label %sw.bb.sw.epilog14_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
  ]

sw.bb.sw.epilog14_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog14

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13323, i32 noundef 0) #12
  %and = and i32 %call, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13323, i32 noundef %and, i32 noundef 0) #12
  br label %sw.epilog14

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13323, i32 noundef 0) #12
  %or = or i32 %call3, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13323, i32 noundef %or, i32 noundef 0) #12
  br label %sw.epilog14

sw.bb4:                                           ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %state, label %sw.bb4.sw.epilog14_crit_edge [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb8
  ]

sw.bb4.sw.epilog14_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog14

sw.bb5:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13835, i32 noundef 0) #12
  %and7 = and i32 %call6, -2
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13835, i32 noundef %and7, i32 noundef 0) #12
  br label %sw.epilog14

sw.bb8:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @amdgpu_device_rreg(ptr noundef %adev, i32 noundef 13835, i32 noundef 0) #12
  %or10 = or i32 %call9, 1
  tail call void @amdgpu_device_wreg(ptr noundef %adev, i32 noundef 13835, i32 noundef %or10, i32 noundef 0) #12
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.bb8, %sw.bb5, %sw.bb4.sw.epilog14_crit_edge, %sw.bb2, %sw.bb1, %sw.bb.sw.epilog14_crit_edge, %entry.sw.epilog14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si_dma_process_trap_irq(ptr noundef %adev, ptr nocapture noundef readnone %source, ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %src_id = getelementptr inbounds %struct.amdgpu_iv_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %src_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %1)
  %cmp = icmp eq i32 %1, 224
  %ring5 = getelementptr %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 1, i32 3
  %ring = getelementptr inbounds %struct.amdgpu_device, ptr %adev, i32 0, i32 107, i32 0, i32 0, i32 3
  %ring5.sink = select i1 %cmp, ptr %ring, ptr %ring5
  %call6 = tail call zeroext i1 @amdgpu_fence_process(ptr noundef %ring5.sink) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_fence_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_irq_add_id(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ring_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_ring_test_helper(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_ttm_set_buffer_funcs_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @sdma_offsets, !1, !"sdma_offsets", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 30, i32 11}
!2 = !{ptr @si_dma_ip_block, !3, !"si_dma_ip_block", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 854, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 708, i32 10}
!6 = !{ptr @si_dma_ip_funcs, !7, !"si_dma_ip_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 707, i32 34}
!8 = !{ptr @si_dma_ring_funcs, !9, !"si_dma_ring_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 724, i32 39}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_ring.h", i32 314, i32 3}
!12 = !{ptr @si_dma_buffer_funcs, !13, !"si_dma_buffer_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 818, i32 41}
!14 = !{ptr @si_dma_vm_pte_funcs, !15, !"si_dma_vm_pte_funcs", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 834, i32 41}
!16 = !{ptr @si_dma_trap_irq_funcs, !17, !"si_dma_trap_irq_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 757, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 507, i32 23}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/si_dma.c", i32 587, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @si_dma_soft_reset._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @si_dma_soft_reset._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i32 0, i32 33}
!36 = !{!"auto-init"}
!37 = !{i64 2148463069}
!38 = !{i64 2148377533, i64 2148377565, i64 2148377594, i64 2148377628, i64 2148377659, i64 2148377682}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2149546694}
